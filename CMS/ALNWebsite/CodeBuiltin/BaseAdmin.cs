using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Telerik.Web.UI;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Threading;
using System.Globalization;
using ClassLibary.Objects.Enumerable;

    public partial class BaseAdmin:Page
    {
        protected virtual void Page_PreInit(object sender, System.EventArgs args)
        {
            if (!Request.IsAuthenticated)
            {
                Response.Redirect("~/Management/Login.aspx");
                Response.End();
            }
        }
        public Languages SelectLanguage
        {
            get
            {
                if (Session["SelectLanguage"] == null)
                {
                    return ClassLibary.Objects.Enumerable.Languages.English;
                }
                else
                {
                    return (Languages)Session["SelectLanguage"];
                }
            }

            set { Session["SelectLanguage"] = value; }

        }
    }
