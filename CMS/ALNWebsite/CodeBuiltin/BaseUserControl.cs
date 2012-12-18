using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClassLibary;
using ClassLibary.Objects;
using ClassLibary.Objects.Enumerable;
using Library.DTO;
using Library.BLL;
    public class BaseUserControl: System.Web.UI.UserControl
    {
        
        public Languages SelectLanguage
        {
            get {
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
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Languages lang = SelectLanguage;
            
        }
        public void LangContent(string vn, string en, System.Web.UI.WebControls.Label lbl)
        {
            LanguageContent obj = new LanguageContent();
            obj = LanguageUtils.ReadLanguageContent(vn, en);
            lbl.Text = obj.ToLanguage(this.SelectLanguage);
        }
        public User CurrentUser
        {
            get
            {
                return ContextManager.GetActor();
            }

        }
        public string EmailAdmin
        {
            get
            {
                //return ContextManager.GetEmailInfo().Email;
                return "customercare@aln.com.vn";
            }
        }
        public static void CreateMessageAlert(System.Web.UI.Page senderPage, string alertMsg, string alertKey)
        {
            string strScript = "<script language=JavaScript>alert('" + alertMsg + "')</script>";
            if (!(senderPage.IsStartupScriptRegistered(alertKey))) senderPage.RegisterStartupScript(alertKey, strScript);
        }
        public void CreateMessageAlert(System.Web.UI.Page senderPage, string alertMsg, string redirectURL, string alertKey)
        {
            string strScript = "<script language=JavaScript>alert('" + alertMsg + "')";
            if (!string.IsNullOrEmpty(redirectURL))
            {
                strScript += ";window.location.href='" + redirectURL + "'";
            }
            strScript += "</script>";
            if (!(senderPage.ClientScript.IsStartupScriptRegistered(alertKey)))
                senderPage.ClientScript.RegisterStartupScript(typeof(string), alertKey, strScript);
        }
    }
