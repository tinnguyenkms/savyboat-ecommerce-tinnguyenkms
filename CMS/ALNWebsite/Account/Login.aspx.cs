using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Presentation;
namespace ALNWebsite.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }
        protected void Btnlogin_click(object sender, EventArgs e)
        {
            UserLogIn();
            
        }
        private void UserLogIn()
        {
            TextBox txtUserName = FindControl("UserName") as TextBox;
            TextBox txtPassword = FindControl("Password") as TextBox;
            if (WebSercurity.CheckUserLogIn(txtUserName.Text, txtPassword.Text))
            {
                WebUser user = WebUser.GetUser(txtUserName.Text);
                WebSercurity.LogIn(txtUserName.Text, txtPassword.Text);
                // user.DateLogged = DateTime.Now;
                //  WebUser.Update(user);
                //if (Request.QueryString["lasturl"] != null)
                //{
                //    string lasturl = Request.QueryString["lasturl"].ToString();
                //    Response.Redirect("~/Admin/" + lasturl + "/" + lasturl + ".aspx");
                //}
                //else
                //    Response.Redirect("~/Admin/Default.aspx");
                // panelmeg.Alert("WelCome");
            }
            else
            {
             //   panelmeg.Alert("Please Try!");
            }
        }

    }
}
