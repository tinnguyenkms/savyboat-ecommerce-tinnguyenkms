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
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic.Audit;
using NopSolutions.NopCommerce.BusinessLogic.Products.Attributes;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Administration.Modules
{
    public partial class ProductAttributeDetailsControl : BaseNopAdministrationUserControl
    {
        protected ProductAttribute Save()
        {
            ProductAttribute productAttribute = ctrlProductAttributeInfo.SaveInfo();

            this.CustomerActivityService.InsertActivity(
                "EditProductAttribute",
                GetLocaleResourceString("ActivityLog.EditProductAttribute"),
                productAttribute.Name);

            return productAttribute;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {

                    ProductAttribute productAttribute = Save();
                    Response.Redirect("ProductAttributes.aspx");
                }
                catch (Exception exc)
                {
                    ProcessException(exc);
                }
            }
        }

        protected void SaveAndStayButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {

                    ProductAttribute productAttribute = Save();
                    Response.Redirect("ProductAttributeDetails.aspx?ProductAttributeID=" + productAttribute.ProductAttributeId.ToString());
                }
                catch (Exception exc)
                {
                    ProcessException(exc);
                }
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            try
            {
                ProductAttribute productAttribute = this.ProductAttributeService.GetProductAttributeById(this.ProductAttributeId);
                if (productAttribute != null)
                {
                    this.ProductAttributeService.DeleteProductAttribute(productAttribute.ProductAttributeId);

                    this.CustomerActivityService.InsertActivity(
                        "DeleteProductAttribute",
                        GetLocaleResourceString("ActivityLog.DeleteProductAttribute"),
                        productAttribute.Name);
                }
                Response.Redirect("ProductAttributes.aspx");
            }
            catch (Exception exc)
            {
                ProcessException(exc);
            }
        }

        public int ProductAttributeId
        {
            get
            {
                return CommonHelper.QueryStringInt("ProductAttributeId");
            }
        }
    }
}