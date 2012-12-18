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
    public partial class LogInControl : System.Web.UI.UserControl
    {
        private string _Url = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["lastUrl"] != null)
                _Url = string.Format(Request.QueryString["lasturl"]);

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
                if (_Url != string.Empty)
                    Response.Redirect(_Url);
                else
                // user.DateLogged = DateTime.Now;
                //  WebUser.Update(user);
                //if (Request.QueryString["lasturl"] != null)
                //{
                //    string lasturl = Request.QueryString["lasturl"].ToString();
                //    Response.Redirect("~/Admin/" + lasturl + "/" + lasturl + ".aspx");
                //}
                //else
                //    Response.Redirect("~/Admin/Default.aspx");
                Response.Redirect("");
            }
            else
                panelmeg.Alert("Please Try!");
        }
        public string LastUrl
        {
            set { _Url = value; }
        }
    }
}