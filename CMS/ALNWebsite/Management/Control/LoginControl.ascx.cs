using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Presentation;
namespace ALNWebsite.Management.Control
{
    public partial class LoginControl : System.Web.UI.UserControl, IUserLoginView
    {
        #region IUserLoginView
        public string tg;
        int groupType;
        public string Username
        {
            get
            {
                return this.objLogin.UserName.Trim();
            }
        }
        public int GroupType
        {
            get
            {
                if (ViewState["groupType"] != null)//return 6;
                    return (int)ViewState["groupType"];
                else
                    return 6;
            }
            set
            {
                ViewState["groupType"] = value;
            }
        }
        public string Password
        {
            get
            {
                return this.objLogin.Password.Trim();
            }
        }
       
        public string Title
        {
            set
            {
                Label lblLogin = this.objLogin.FindControl("lblLogin") as Label;
                if (lblLogin != null) lblLogin.Text = value;
                tg = value;
            }
            get
            {
                Label lblLogin = this.objLogin.FindControl("lblLogin") as Label;
                return lblLogin.Text;
            }
        }

        public bool RememberMe
        {
            get
            {
                return this.objLogin.RememberMeSet;
            }
        }

        #endregion

        private UserLoginPresenter userLoginPresenter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (objLogin.FailureText != "")
                {
                    objLogin.FailureText = "Sai mật khẩu!";
                }
            }
            PanelScript.ResponseScripts.Add(string.Format("SetDefaultButtonId('{0}');", objLogin.FindControl("LoginButton").ClientID));
            this.userLoginPresenter = new UserLoginPresenter(this);
        }
        protected void objLogin_LoggedIn(object sender, EventArgs e)
        {
            this.userLoginPresenter.Dispatch();

        }

        protected void objLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
                this.userLoginPresenter.Authenticate();
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}