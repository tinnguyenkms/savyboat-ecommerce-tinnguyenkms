using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Pages
{
    public partial class FQAs : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["n"] != null)
                {
                    int n = int.Parse(Request.QueryString["n"]);
                    faqscontrol.n = n;
                }
                faqscontrol.MenuDetailID = new Guid("76DA220D-EEA9-47F4-9EF2-C65E26BC4410");
                Getlocation(new Guid("76DA220D-EEA9-47F4-9EF2-C65E26BC4410"),panel12);
            }
                
        }
    }
}