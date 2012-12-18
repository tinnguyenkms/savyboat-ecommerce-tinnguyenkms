using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Control
{
    public partial class TimeAndSearchControl : BaseUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)          
                BindCombobox();
        }
        private void SetLanguage()
        {
            int i = int.Parse(ddlLanguage.SelectedValue);
            Session["index"] = i;
            switch(i)
            {
                case 1: this.SelectLanguage = ClassLibary.Objects.Enumerable.Languages.Vietnamese;
                        
                    break;
                case 0: this.SelectLanguage = ClassLibary.Objects.Enumerable.Languages.English; break;
            }
            
        }
        private void BindCombobox()
        {
            
            ddlLanguage.Items.Add(new ListItem("EngLish","0",true));
            ddlLanguage.Items.Add(new ListItem("Việt Nam", "1"));
            if (Session["index"] != null)
            {
                ddlLanguage.Items[(int)Session["index"]].Selected = true;
            }
            string vn = "Chọn Ngôn ngữ";
            string en = "Select Language";
            LangContent(vn, en, lblSelectLanguage);
        }
        

        protected void ddlLanguage_SelectIndexChange(object sender, EventArgs e)
        {
            SetLanguage();
            Response.Redirect(Request.RawUrl);
        }
    }
}