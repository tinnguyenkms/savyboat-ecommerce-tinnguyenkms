using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using Library.Presentation;
namespace ALNWebsite.Site.Control
{
    public partial class MenuHorizol : BaseUserControl
    {
        private static MenuManager menumg = new MenuManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                if (Request.QueryString["Id"] != null)
                    IdSelect = new Guid(Request.QueryString["Id"].ToString());
                DataSource = menumg.GETBYID(Parentid).MenuDetails.OrderBy(p => p.MenuOrder).ToList();
                BindLabel();
            }
        }
        private void BindLabel()
        {
            string loginen = "Login";
            string loginvn = "Đăng nhập";
            LangContent(loginvn, loginen, lblLogin);
            string contactvn = "Liên hệ";
            string contacten = "Contact";
            LangContent(contactvn, contacten, lblContact);
            string registervn = "Đăng ký";
            string registeren = "Register";
            LangContent(registervn, registeren, lblRegister);
        }

        protected void RptItems_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                Library.DTO.MenuDetail item = e.Item.DataItem as Library.DTO.MenuDetail;
                LinkButton lblCaption = e.Item.FindControl("lblCaption") as LinkButton;
                //Image imageMenu = e.Item.FindControl("imageMenu") as Image;
                lblCaption.CommandArgument = item.Id.ToString();
                lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);
                //if(item.ImageUrl!= null)
                //imageMenu.ImageUrl = item.ImageUrl;
                if (item.Parent != null&& item.MenuType== true)
                {
                    Repeater repter = e.Item.FindControl("RptItems2") as Repeater;
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
                LinkButton lblCaption = e.Item.FindControl("lblCaption2") as LinkButton;
                //Image imageMenu = e.Item.FindControl("imageMenu") as Image;
                lblCaption.CommandArgument = item.Id.ToString();
                lblCaption.Text = item.Name.ToLanguage(this.SelectLanguage);
                
                

            }
        }
        protected void lblCaption_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            string id = lbtn.CommandArgument;
            MenuDetail item = new MenuDetailManger().GETBYID(new Guid(id));
            if (item.NavigateURL == null && item.ObjectType == 0)
                Response.Redirect("~/Site/Pages/Category.aspx" + "?id=" + id + "&name=" + item.Name.ToLanguage(this.SelectLanguage));
            else if (item.ObjectType == 1)
                Response.Redirect("~/Site/Pages/Content.aspx" + "?id=" + id + "&Page=" + item.Name.ToLanguage(this.SelectLanguage));
            else if (item.NavigateURL == null && item.ObjectType == 2)
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
            get;
            set;
        }
        protected void Btnlogin_click(object sender, EventArgs e)
        {
            UserLogIn();
        }
        private void UserLogIn()
        {
            
            if (WebSercurity.CheckUserLogIn(txtUsername.Text, txtPassword.Text))
            {
                WebUser user = WebUser.GetUser(txtUsername.Text);
                WebSercurity.LogIn(txtUsername.Text, txtPassword.Text);
               // user.DateLogged = DateTime.Now;
              //  WebUser.Update(user);
                //if (Request.QueryString["lasturl"] != null)
                //{
                //    string lasturl = Request.QueryString["lasturl"].ToString();
                //    Response.Redirect("~/Admin/" + lasturl + "/" + lasturl + ".aspx");
                //}
                //else
                //    Response.Redirect("~/Admin/Default.aspx");
                panelmeg.Alert("WelCome");
            }
            else
                panelmeg.Alert("Please Try!");
        }

    }
}
