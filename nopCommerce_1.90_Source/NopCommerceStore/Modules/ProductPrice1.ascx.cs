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
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.CustomerManagement;
using NopSolutions.NopCommerce.BusinessLogic.Directory;
using NopSolutions.NopCommerce.BusinessLogic.Localization;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.Tax;
using NopSolutions.NopCommerce.Common.Utils;
using System.Text.RegularExpressions;
using System.Globalization;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class ProductPrice1Control: BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
                this.lblSale.Visible = visiblelable;
            }
        }

        private void BindData()
        {
            var productVariant = this.ProductService.GetProductVariantById(this.ProductVariantId);
            if (productVariant != null)
            {
                if (!this.SettingManager.GetSettingValueBoolean("Common.HidePricesForNonRegistered") ||
                        (NopContext.Current.User != null &&
                        !NopContext.Current.User.IsGuest))
                {
                    if (productVariant.CustomerEntersPrice)
                    {
                        phOldPrice.Visible = false;
                        lblPrice.Visible = false;
                        lblPriceValue.Visible = false;
                        phDiscount.Visible = false;

                        lblCustomerEnterPrice.Visible = true;
                        lblCustomerEnterPrice.Text = GetLocaleResourceString("Products.EnterProductPrice");
                    }
                    else
                    {
                        if (productVariant.CallForPrice)
                        {
                            lblPriceValue.Text = GetLocaleResourceString("Products.CallForPrice");
                            phOldPrice.Visible = false;
                            phDiscount.Visible = false;
                        }
                        else
                        {
                            decimal taxRate = decimal.Zero;
                            decimal oldPriceBase = this.TaxService.GetPrice(productVariant, productVariant.OldPrice, out taxRate);
                            decimal finalPriceWithoutDiscountBase = this.TaxService.GetPrice(productVariant, PriceHelper.GetFinalPrice(productVariant, false), out taxRate);
                            decimal finalPriceWithDiscountBase = this.TaxService.GetPrice(productVariant, PriceHelper.GetFinalPrice(productVariant, true), out taxRate);

                            decimal oldPrice = this.CurrencyService.ConvertCurrency(oldPriceBase, this.CurrencyService.PrimaryStoreCurrency, NopContext.Current.WorkingCurrency);
                            decimal finalPriceWithoutDiscount = this.CurrencyService.ConvertCurrency(finalPriceWithoutDiscountBase, this.CurrencyService.PrimaryStoreCurrency, NopContext.Current.WorkingCurrency);
                            decimal finalPriceWithDiscount = this.CurrencyService.ConvertCurrency(finalPriceWithDiscountBase, this.CurrencyService.PrimaryStoreCurrency, NopContext.Current.WorkingCurrency);

                            if (finalPriceWithoutDiscountBase != oldPriceBase && oldPriceBase > decimal.Zero)
                            {
                                lblOldPrice.Text = PriceHelper.FormatPrice(oldPrice);
                                lblPriceValue.Text = PriceHelper.FormatPrice(finalPriceWithoutDiscount);
                                phOldPrice.Visible = true;
                            }
                            else
                            {
                                lblPriceValue.Text = PriceHelper.FormatPrice(finalPriceWithoutDiscount);
                                phOldPrice.Visible = false;
                            }

                            if (finalPriceWithoutDiscountBase != finalPriceWithDiscountBase)
                            {
                                lblFinalPriceWithDiscount.Text = PriceHelper.FormatPrice(finalPriceWithDiscount);
                                phDiscount.Visible = true;
                            }
                            else
                            {
                                phDiscount.Visible = false;
                            }

                            if (phDiscount.Visible)
                            {
                                lblPriceValue.CssClass = string.Empty;
                            }
                            else
                            {
                                lblPriceValue.CssClass = "productPrice";
                            }

                            if (phDiscount.Visible || phOldPrice.Visible)
                            {
                                lblPrice.Text = GetLocaleResourceString("Products.FinalPriceWithoutDiscount");
                            }
                            if (this.SettingManager.GetSettingValueBoolean("ProductAttribute.EnableDynamicPriceUpdate"))
                            {
                                string pattern = this.SettingManager.GetSettingValue("ProductAttribute.PricePattern", "(?<val>(\\d+[\\s\\,\\.]?)+)");
                                string replacement = String.Format("<span class=\"price-val-for-dyn-upd-{0}\">${{val}}</span> ", productVariant.ProductVariantId);

                                if (finalPriceWithoutDiscountBase != finalPriceWithDiscountBase)
                                {
                                    lblFinalPriceWithDiscount.Text = Regex.Replace(lblFinalPriceWithDiscount.Text, pattern, replacement);
                                }
                                else
                                {
                                    lblPriceValue.Text = Regex.Replace(lblPriceValue.Text, pattern, replacement);
                                }
                            }
                        }
                    }
                }
                else
                {
                    this.Visible = false;
                }
            }
            else
            {
                this.Visible = false;
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            if(this.SettingManager.GetSettingValueBoolean("ProductAttribute.EnableDynamicPriceUpdate"))
            {
                var productVariant = this.ProductService.GetProductVariantById(this.ProductVariantId);
                if(productVariant != null && !productVariant.CallForPrice)
                {
                    decimal taxRate = decimal.Zero;
                    decimal finalPriceWithoutDiscountBase = this.TaxService.GetPrice(productVariant, PriceHelper.GetFinalPrice(productVariant, false), out taxRate);
                    decimal finalPriceWithoutDiscount = this.CurrencyService.ConvertCurrency(finalPriceWithoutDiscountBase, this.CurrencyService.PrimaryStoreCurrency, NopContext.Current.WorkingCurrency);

                    decimal finalPriceWithDiscountBase = this.TaxService.GetPrice(productVariant, PriceHelper.GetFinalPrice(productVariant, true), out taxRate);
                    decimal finalPriceWithDiscount = this.CurrencyService.ConvertCurrency(finalPriceWithDiscountBase, this.CurrencyService.PrimaryStoreCurrency, NopContext.Current.WorkingCurrency);

                    float val = (float)(finalPriceWithoutDiscountBase != finalPriceWithDiscountBase ? finalPriceWithDiscount : finalPriceWithoutDiscount);
                    string key = String.Format("PriceValForDynUpd_{0}", productVariant.ProductVariantId);
                    string script = String.Format(CultureInfo.InvariantCulture, "var priceValForDynUpd_{0} = {1};", productVariant.ProductVariantId, val);

                    Page.ClientScript.RegisterClientScriptBlock(GetType(), key, script, true);
                }
            }
            base.OnPreRender(e);
        }

        public int ProductVariantId
        {
            get
            {
                object obj2 = this.ViewState["ProductVariantId"];
                if (obj2 != null)
                    return (int)obj2;
                else
                    return 0;
            }
            set
            {
                this.ViewState["ProductVariantId"] = value;
            }
        }
        public bool visiblelable
        {
            get
            {
                object obj2 = this.ViewState["visiblelable"];
                if (obj2 != null)
                    return true;
                else
                    return false;
            }
            set
            {
                this.ViewState["visiblelable"] = value;
            }
        }
    }
}