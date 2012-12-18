using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Pages
{
    public partial class Job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["n"] != null)
                {
                    int n = int.Parse(Request.QueryString["n"]);
                    jobcontrol.n = n;
                }
                jobcontrol.MenuDetailID = new Guid("19b421b2-18c3-4990-a359-39e3977cdbf7");
                Session["emailaddress"] = "careers@aln.com.vn";
            }

        }
    }
}