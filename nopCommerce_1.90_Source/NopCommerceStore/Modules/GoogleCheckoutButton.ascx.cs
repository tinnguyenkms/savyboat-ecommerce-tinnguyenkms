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
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;
using GCheckout.AutoGen;
using GCheckout.Checkout;
using GCheckout.Util;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Audit;
using NopSolutions.NopCommerce.BusinessLogic.CustomerManagement;
using NopSolutions.NopCommerce.BusinessLogic.Directory;
using NopSolutions.NopCommerce.BusinessLogic.Localization;
using NopSolutions.NopCommerce.BusinessLogic.Orders;
using NopSolutions.NopCommerce.BusinessLogic.Payment;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.Products.Attributes;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.BusinessLogic.Shipping;
using NopSolutions.NopCommerce.BusinessLogic.Tax;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.Payment.Methods.GoogleCheckout;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class GoogleCheckoutButton: BaseNopFrontendUserControl
    {
        public void BindData()
        {
            bool displayButton = true;

            var gcPaymentMethod = this.PaymentService.GetPaymentMethodBySystemKeyword("GoogleCheckout");
            if (gcPaymentMethod == null || !gcPaymentMethod.IsActive)
            {
                displayButton = false;
            }

            NopSolutions.NopCommerce.BusinessLogic.Orders.ShoppingCart cart = null;
            if (displayButton)
            {
                cart = this.ShoppingCartService.GetCurrentShoppingCart(ShoppingCartTypeEnum.ShoppingCart);
                if (cart.Count == 0)
                {
                    displayButton = false;
                }
            }

            if (displayButton)
            {
                bool minOrderSubtotalAmountOK = this.OrderService.ValidateMinOrderSubtotalAmount(cart, NopContext.Current.User);
                if (!minOrderSubtotalAmountOK)
                {
                    displayButton = false;
                }
            }

            if (displayButton)
            {
                if (cart.IsRecurring && this.PaymentService.SupportRecurringPayments(gcPaymentMethod.PaymentMethodId) == RecurringPaymentTypeEnum.NotSupported)
                {
                    displayButton = false;
                }
            }
            this.Visible = displayButton;

            GCheckoutButton1.UseHttps = CommonHelper.IsCurrentConnectionSecured();
        }

        protected void PostCartToGoogle(object sender, ImageClickEventArgs e)
        { 
            //user validation
            if (NopContext.Current.User == null && this.CustomerService.AnonymousCheckoutAllowed)
            {
                //create anonymous record
                this.CustomerService.CreateAnonymousUser();
            }

            if ((NopContext.Current.User == null) || (NopContext.Current.User.IsGuest && !this.CustomerService.AnonymousCheckoutAllowed))
            {
                string loginURL = SEOHelper.GetLoginPageUrl(true);
                Response.Redirect(loginURL);
            }

            //USD for US dollars, GBP for British pounds, SEK for Swedish krona, EUR for Euro etc
            GCheckoutButton1.Currency = this.CurrencyService.PrimaryStoreCurrency.CurrencyCode;
            var Req = GCheckoutButton1.CreateRequest();
            var googleCheckoutPaymentProcessor = new GoogleCheckoutPaymentProcessor();

            NopSolutions.NopCommerce.BusinessLogic.Orders.ShoppingCart cart = this.ShoppingCartService.GetCurrentShoppingCart(ShoppingCartTypeEnum.ShoppingCart);
            var Resp = googleCheckoutPaymentProcessor.PostCartToGoogle(Req, cart);
            if (Resp.IsGood)
            {
                Response.Redirect(Resp.RedirectUrl);
            }
            else
            {
                Response.Clear();
                Response.Write("Resp.RedirectUrl = " + Resp.RedirectUrl + "<br />");
                Response.Write("Resp.IsGood = " + Resp.IsGood + "<br />");
                Response.Write("Resp.ErrorMessage = " + Server.HtmlEncode(Resp.ErrorMessage) + "<br />");
                Response.Write("Resp.ResponseXml = " + Server.HtmlEncode(Resp.ResponseXml) + "<br />");
                Response.End();
            }
        }

    }
}