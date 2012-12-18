using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Control
{
    public partial class ProductDetailControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string Title
        {
            set
            {
                lblTitle.Text = value;
            }
            get
            {
                return lblTitle.Text;
            }
        }
        public string ProductDetailInfo
        {
            set
            {
                ltDetailProduct.Text = value;
            }
            get
            {
                return ltDetailProduct.Text;
            }
        }
    }
}