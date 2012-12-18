using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.DTO;
using Library.BLL;
using ClassLibary.Objects;
using ClassLibary.Objects.Enumerable;
namespace ALNWebsite.Site.Control
{
    public partial class MenuVertical : BaseUserControl
    {       
            private static MenuManager menumg = new MenuManager();
            protected void Page_Load(object sender, EventArgs e)
            {
                ////if (!IsPostBack)
                ////{
                //if (Request.QueryString["Id"] != null)
                //    IdSelect = new Guid(Request.QueryString["Id"].ToString());
                if (Parentid != Guid.Empty)
                {
                    Library.DTO.Menu itemmenu = menumg.GETBYID(Parentid);
                    lblTitle.Text = itemmenu.Name.ToLanguage(this.SelectLanguage);
                    DataSource = itemmenu.MenuDetails.OrderBy(p => p.MenuOrder).ToList();
                }
           // }
            }
          
            protected void RptItems_ItemDataBound(object sender, RepeaterItemEventArgs e)
            {
                if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
                {
                    Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    LinkButton lblCaption = e.Item.FindControl("lblCaption") as LinkButton;                    
                    lblCaption.CommandArgument = item.Id.ToString();
                    lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);                    
                    if (item.Parent != null && item.MenuType==true)
                    {
                        Repeater repter = e.Item.FindControl("RptItems1") as Repeater;
                        repter.DataSource = item.Parent.OrderBy(p=>p.MenuOrder).ToList();
                        repter.DataBind();                                                                                                                        
                        
                    }

                }
            }
            protected void RptItems_ItemDataBound1(object sender, RepeaterItemEventArgs e)
            {
                if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
                {
                    Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    LinkButton lblCaption = e.Item.FindControl("lblCaption1") as LinkButton;
                    lblCaption.CommandArgument = item.Id.ToString();
                    lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);
                    if (item.Parent != null)
                    {
                        Repeater repter = e.Item.FindControl("RptItems2") as Repeater;
                        repter.DataSource = item.Parent.OrderBy(p => p.MenuOrder).ToList();
                        repter.DataBind();                                            
                    }

                }
            }
            protected void RptItems_ItemDataBound2(object sender, RepeaterItemEventArgs e)
            {
                if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
                {
                    Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    LinkButton lblCaption = e.Item.FindControl("lblCaption2") as LinkButton;
                    lblCaption.CommandArgument = item.Id.ToString();
                    lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);
                    if (item.Parent != null)
                    {
                        Repeater repter = e.Item.FindControl("RptItems3") as Repeater;
                        repter.DataSource = item.Parent.OrderBy(p => p.MenuOrder).ToList();
                        repter.DataBind();                                            
                    }

                }
            }
            protected void RptItems_ItemDataBound3(object sender, RepeaterItemEventArgs e)
            {
                if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
                {
                    Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    LinkButton lblCaption = e.Item.FindControl("lblCaption3") as LinkButton;
                    lblCaption.CommandArgument = item.Id.ToString();
                    lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);
                    if (item.Parent != null)
                    {
                        Repeater repter = e.Item.FindControl("RptItems4") as Repeater;
                        repter.DataSource = item.Parent.OrderBy(p => p.MenuOrder).ToList();
                        repter.DataBind();                             
                    }

                }
            }
            protected void RptItems_ItemDataBound4(object sender, RepeaterItemEventArgs e)
            {
                if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
                {
                    Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    LinkButton lblCaption = e.Item.FindControl("lblCaption4") as LinkButton;
                    lblCaption.CommandArgument = item.Id.ToString();
                    lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage) ;
                    if (item.Parent != null)
                    {
                                               
                    }

                }
            }
            //private void CreatMenuCon(IList<MenuDetail> listdetail )
            //{
            //    Repeater rptmenucon = new Repeater();
            //    rptmenucon.DataSource = listdetail;
            //    rptmenucon.DataBind();
            //    rptmenucon.ItemDataBound += new RepeaterItemEventHandler(RptItemsnew_ItemDataBound);
            //}
            //protected void RptItemsnew_ItemDataBound(object sender, RepeaterItemEventArgs e)
            //{
            //    if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            //    {
            //        Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                    
            //        LinkButton lbtn = new LinkButton();
            //        lbtn.Text = item.Name;
            //        lbtn.CommandArgument = item.Id.ToString();
            //        if (item.Parent != null)
            //        {
            //            CreatMenuCon(item.Parent);
            //        }
            //    }
            //}

            protected void lblCaption_Click(object sender, EventArgs e)
            {
                LinkButton lbtn = (LinkButton)sender;
                string id = lbtn.CommandArgument;
                MenuDetail item = new MenuDetailManger().GETBYID(new Guid(id));
                if (item.NavigateURL == null && item.ObjectType == 0)
                    Response.Redirect("~/Site/Pages/Category.aspx" + "?id=" + id + "&name=" + item.Name.ToLanguage(this.SelectLanguage));
                else if (item.ObjectType == 1)
                    Response.Redirect("~/Site/Pages/Content.aspx" + "?id=" + id + "&Page=" + item.Name.ToLanguage(this.SelectLanguage));
                else if (item.NavigateURL==null &&  item.ObjectType == 2)
                    Response.Redirect("~/Site/Pages/ListContent.aspx" + "?id=" + id + "&Page=" + item.Name.ToLanguage(this.SelectLanguage));
                else if (item.NavigateURL == null && item.ObjectType == 3)
                    Response.Redirect("~/Site/Pages/MultiPage.aspx" + "?id=" + id + "&Page=" + item.Name.ToLanguage(this.SelectLanguage));
                else
                    Response.Redirect(item.NavigateURL);
            }

            public IList<MenuDetail> DataSource
            {
                get
                {
                    return (IList<MenuDetail>)ViewState["DataSource"];
                }
                set
                {
                    ViewState["DataSource"] = value;
                    RptItems.DataSource = value;
                    RptItems.DataBind();
                }
            }
            public Guid IdSelect
            {
                get;
                set;
            }
            public Guid Parentid
            {
                get{
                    if (ViewState["Parentid"] == null)
                    {
                        return Guid.Empty;
                    }
                    else
                    {
                        return (Guid)ViewState["Parentid"];
                    }
                }

                set
                {
                    ViewState["Parentid"] = value;
                }
            }
        }
    
}