/* UrlRewritingNet.UrlRewrite
 * Version 2.0
 * 
 * This Library is Copyright 2006 by Albert Weinert and Thomas Bandt.
 * 
 * http://der-albert.com, http://blog.thomasbandt.de
 * 
 * This Library is provided as is. No warrenty is expressed or implied.
 * 
 * You can use these Library in free and commercial projects without a fee.
 * 
 * No charge should be made for providing these Library to a third party.
 * 
 * It is allowed to modify the source to fit your special needs. If you 
 * made improvements you should make it public available by sending us 
 * your modifications or publish it on your site. If you publish it on 
 * your own site you have to notify us. This is not a commitment that we 
 * include your modifications. 
 * 
 * This Copyright notice must be included in the modified source code.
 * 
 * You are not allowed to build a commercial rewrite engine based on 
 * this code.
 * 
 * Based on http://weblogs.asp.net/fmarguerie/archive/2004/11/18/265719.aspx
 * 
 * For further informations see: http://www.urlrewriting.net/
 */

using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Web;
using System.Configuration.Provider;
using UrlRewritingNet.Configuration.Provider;

namespace UrlRewritingNet.Configuration
{
    public sealed class UrlRewriteSection : ConfigurationSection
    {

        [ConfigurationProperty("rewriteOnlyVirtualUrls", DefaultValue = true)]
        public bool RewriteOnlyVirtualUrls
        {
            get
            {
                return (bool)base["rewriteOnlyVirtualUrls"];
            }
            set
            {
                base["rewriteOnlyVirtualUrls"] = value;
            }
        }

        [ConfigurationProperty("defaultProvider", IsRequired = false, DefaultValue = "RegEx")]
        public string DefaultProvider
        {
            get
            {
                return (string)base["defaultProvider"];
            }
            set
            {
                base["defaultProvider"] = value;
            }
        }

        [ConfigurationProperty("defaultPage", IsRequired = false, DefaultValue = "")]
        public string DefaultPage
        {
            get
            {
                return (string)base["defaultPage"];
            }
            set
            {
                base["defaultPage"] = value;
            }
        }


        [ConfigurationProperty("providers")]
        public ProviderSettingsCollection Providers
        {
            get
            {
                return (ProviderSettingsCollection)base["providers"];
            }
        }

        [ConfigurationProperty("rewrites")]
        public RewriteSettingsCollection Rewrites
        {
            get
            {
                return (RewriteSettingsCollection)base["rewrites"];
            }
        }

        [ConfigurationProperty("contextItemsPrefix", DefaultValue = "")]
        public string ContextItemsPrefix
        {
            get
            {
                return (string)base["contextItemsPrefix"];
            }
            set
            {
                base["contextItemsPrefix"] = value;
            }
        }

        [ConfigurationProperty("xmlns", DefaultValue = "")]
        public string XmlNs
        {
            get
            {
                return (string)base["xmlns"];
            }
            set
            {
                base["xmlns"] = value;
            }
        }

    }
}
