using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Utility;
namespace ALNWebsite.Site.Control
{
    public partial class ProjectForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindCountry();
        }
        private void BindCountry()
        {
            Telerik.Web.UI.RadComboBoxItem item = new Telerik.Web.UI.RadComboBoxItem();
            item.Text = "Select...";
            rcbbCountry.DataSource = FunctionUtility.BindListCountry();
            rcbbCountry.DataBind();
            rcbbCountry.Items.Insert(0, item);

        }
    }
}