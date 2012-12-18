using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Pages
{
    public partial class Bulletin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["n"] != null)
                {
                    int n = int.Parse(Request.QueryString["n"]);
                    bullet.n = n;
                }
                bullet.MenuDetailID = new Guid("2C1449E4-20AE-40BC-A9F4-C6F045327A9B");
            }
                
        }
    }
}