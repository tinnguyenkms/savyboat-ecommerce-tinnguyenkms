using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Master
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindMenu();
        }
        private void BindMenu()
        {
            MenuHor.Parentid = new Guid("09394C9B-7FB5-4B06-AB78-57D50C325BA7");
        }
        
           
    }
}