using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DMS.BLL;
using System.Web.Security;
namespace DMS.UserControl
{
    public partial class MenuBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadToolBar1_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
        {
            string value = e.Item.Value;
            switch (value)
            {
                case "LogOut":
                    {
                        ContextManager.ClearCache();
                        Session.Abandon();
                        FormsAuthentication.SignOut();
                        Response.Redirect("~/Management/Login.aspx");
                        break;
                    }
                
                case "ChangPwd":
                    {
                        Response.Redirect("~/Management/ChangeMyPassword.aspx");
                        break;
                    }
            }
        }
    }
}