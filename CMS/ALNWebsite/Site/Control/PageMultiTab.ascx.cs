﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using Telerik.Web.UI;
using System.Web.UI.HtmlControls;
using ClassLibary.Objects;
using Library.DTO.BE;
namespace ALNWebsite.Site.Control
{
    public partial class PageMultiTab : BaseUserControl
    {
        private static MenuManager menumg = new MenuManager();
        private static MenuDetailManger menudmg = new MenuDetailManger();
        private Guid _id = Guid.Empty;
        Library.DTO.Menu item = new Library.DTO.Menu();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindTadStrip(_id);
        }
        private void BindTadStrip(Guid Id)
        {
            if (_id != Guid.Empty)
            {
                item = menumg.GETBYID(Id);
                lblTitle.Text = item.Name.ToLanguage(this.SelectLanguage);
                radtab.DataSource = item.MenuDetails.OrderBy(p => p.MenuOrder).ToList();
            }
            else if (_Menudetail != null)
            {
                radtab.DataSource = _Menudetail.Parent.OrderBy(p => p.MenuOrder).ToList();
                lblTitle.Text = _Menudetail.Name.ToLanguage(this.SelectLanguage);
            }

            radtab.DataBind();
        }
        protected void RadTabStrip1_TabDataBound(object sender, RadTabStripEventArgs e)
        {
            MenuDetail item = (MenuDetail)e.Tab.DataItem;
            Label lblcontent = e.Tab.FindControl("lblContent") as Label;
            lblcontent.Text = item.Name.ToLanguage(this.SelectLanguage);
            RadPageView pageview1 = new RadPageView();
            pageview1.ID = item.Name.ToLanguage(this.SelectLanguage);                        
            Repeater listnews = new Repeater();
            listnews.HeaderTemplate = new MyTemplate(ListItemType.Header);
            listnews.ItemTemplate = new MyTemplate(ListItemType.Item);
            listnews.FooterTemplate = new MyTemplate(ListItemType.Footer);
            var listnew = from n in item.NewsDetails
                          where n.Status == 0
                          orderby n.CreatedDate descending
                          select n;
            IList<NewsDetail> newlist = new List<NewsDetail>();
            IList<NewDetaiBE> newlist2 = new List<NewDetaiBE>();
            newlist = listnew.ToList();
            foreach (NewsDetail en in newlist)
            {
                NewDetaiBE itemnew = new NewDetaiBE();
                itemnew.Title = en.Title.ToLanguage(this.SelectLanguage);
                itemnew.CreatedDate = en.CreatedDate;
                itemnew.ID = en.Id;
                newlist2.Add(itemnew);
            }

            if (_takerow != 0)
                listnews.DataSource = newlist2.Take(_takerow).ToList();
            else
                listnews.DataSource = newlist2;

            //if (_takerow != 0)
            //    listnews.DataSource = item.NewsDetails.Where(p => p.Status == 0).OrderByDescending(p => p.CreatedDate).Take(_takerow).ToList();
            //else
            //    listnews.DataSource = item.NewsDetails.Where(p => p.Status == 0).OrderByDescending(p => p.CreatedDate).ToList();
            
           //listnews.ItemDataBound += new RepeaterItemEventHandler(repListPost_ItemDataBound);
            listnews.DataBind();
            
            pageview1.Controls.Add(listnews);
            pageview1.BorderStyle = BorderStyle.Solid;
            pageview1.BorderWidth = Unit.Pixel(1);
            pageview1.BorderColor = System.Drawing.Color.Black;
            
            Multipage1.PageViews.Add(pageview1);
        }
        public class MyTemplate : ITemplate
        {            
            ListItemType templateType;                
            public MyTemplate(ListItemType type)
            {
                templateType = type;                    
            }
            public void InstantiateIn(System.Web.UI.Control container)
            {
                PlaceHolder lc = new PlaceHolder();                
                HyperLink linktitle = new HyperLink();
                linktitle.ID = "linkttitle";
                HtmlImage new_icon = new HtmlImage();
                new_icon.ID = "imagenew";
                switch (templateType)
                {
                    case ListItemType.Header:
                        lc.Controls.Add(new LiteralControl( "<TABLE border=1>"));
                        break;
                    case ListItemType.Item:
                        lc.Controls.Add(new LiteralControl("<tr><td>"));
                        lc.Controls.Add(linktitle);
                        lc.Controls.Add(new_icon);
                        lc.Controls.Add(new LiteralControl("</td></tr>"));
                        lc.DataBinding += new EventHandler(lc_DataBinding);
                        
                        break;
                   
                    case ListItemType.Footer:
                        lc.Controls.Add(new LiteralControl("</TABLE>"));
                        break;
                }                                                
                container.Controls.Add(lc);                                                                
            
                
            }

            protected void lc_DataBinding(object sender, EventArgs e)
            {                                                
                PlaceHolder ph = (PlaceHolder)sender;
                RepeaterItem ri = (RepeaterItem)ph.NamingContainer;
                string item2Value = (string)DataBinder.Eval(ri.DataItem, "Title");
                DateTime item3Value = (DateTime)DataBinder.Eval(ri.DataItem, "CreatedDate");
                Guid Id = (Guid)DataBinder.Eval(ri.DataItem, "Id");
                TimeSpan timespan = DateTime.Now - item3Value;
                ((HyperLink)ph.FindControl("linkttitle")).Text = "* " + item2Value;
                ((HyperLink)ph.FindControl("linkttitle")).NavigateUrl = "~/Site/Pages/Post.aspx?id=" + Id.ToString() + "&Page=" + item2Value;
                if (timespan.TotalDays < 7)
                {
                    ((HtmlImage)ph.FindControl("imagenew")).Visible = true;
                    ((HtmlImage)ph.FindControl("imagenew")).Src = "~/images/newsIcon.gif";
                }
            }
        }
        //protected void repListPost_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
                
        //        NewsDetail curPost = (NewsDetail)e.Item.DataItem;
        //        HyperLink hplLinkFromTitle = e.Item.FindControl("linkttitle") as HyperLink;
        //        HtmlImage new_icon = e.Item.FindControl("imagenew") as HtmlImage;
        //        hplLinkFromTitle.Text = "* " + curPost.Title;                
                 
                
        //        //lblDateCreated.Text = curPost.CreatedDate.ToString();
        //        TimeSpan timespan = DateTime.Now - curPost.CreatedDate;
        //        if (timespan.TotalDays < 7)
        //        {
        //            new_icon.Visible = true;
        //            new_icon.Src = "~/images/newsIcon.gif" ;
        //        }
        //        else
        //            new_icon.Visible = false;
        //        hplLinkFromTitle.NavigateUrl = "~/Site/Pages/Post.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title;
                
                
        //    }
        //}
        protected void tabstrip_Prerender(object sender, EventArgs e)
        {

            radtab.Tabs[_n].Selected = true;
            Multipage1.PageViews[_n].Selected = true;
        }
        public Guid Menuid
        {
            set { _id = value; }
        }
        public Guid MenuDetailID
        {
            set
            {
                _Menudetail = menudmg.GETBYID(value);
            }
        }
        private MenuDetail _Menudetail = null;
        private int _n = 0;
        public int n
        {
            set
            {
                _n = value;
            }
        }
        private int _takerow = 0;
        public int Takerow
        {
            set { _takerow = value; }
        }
    }
}