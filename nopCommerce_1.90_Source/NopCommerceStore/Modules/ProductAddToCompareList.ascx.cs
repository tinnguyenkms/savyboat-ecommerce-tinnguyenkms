//------------------------------------------------------------------------------
// The contents of this file are subject to the nopCommerce Public License Version 1.0 ("License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at  http://www.nopCommerce.com/License.aspx. 
// 
// Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 
// See the License for the specific language governing rights and limitations under the License.
// 
// The Original Code is nopCommerce.
// The Initial Developer of the Original Code is NopSolutions.
// All Rights Reserved.
// 
// Contributor(s): _______. 
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class ProductAddToCompareList: BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindData();
        }

        protected void BindData()
        {
            var product = this.ProductService.GetProductById(this.ProductId);
            if (product != null)
            {
                this.Visible = this.ProductService.CompareProductsEnabled;
            }
            else
                this.Visible = false;
        }

        protected void btnAddToCompareList_Click(object sender, EventArgs e)
        {
            var product = this.ProductService.GetProductById(this.ProductId);
            if (product != null)
            {
                this.ProductService.AddProductToCompareList(product.ProductId);
                Response.Redirect("~/compareproducts.aspx");
            }
            else
                Response.Redirect(CommonHelper.GetStoreLocation());
        }

        public int ProductId
        {
            get
            {
                return CommonHelper.QueryStringInt("ProductId");
            }
        }
    }
}