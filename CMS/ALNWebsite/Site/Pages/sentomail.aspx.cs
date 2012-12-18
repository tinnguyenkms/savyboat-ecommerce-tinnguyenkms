using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Utility;
using System.Configuration;

namespace ALNWebsite.Site.Pages
{
    public partial class sentomail : BasePage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
               BindCountry() ;
        }
        protected void btnSend_click(object sender, EventArgs e)
        {
            if (rcCaptcha.IsValid)
            {
                try
                {
                    string path = ConfigurationManager.AppSettings["mailtemplate"];
                    string bodyemail = Utility.GetBodyEmail(path);

                    bodyemail = bodyemail.Replace("@email".ToString(), txtEmail.Text.ToString());
                    bodyemail = bodyemail.Replace("@Companyname", Txtcompany.Text.ToString());
                    bodyemail = bodyemail.Replace("@Businesstype", Rb.Text);
                    bodyemail = bodyemail.Replace("@Businessfield", txtbusinessfield.Text);
                    bodyemail = bodyemail.Replace("@Country", rcbbCountry.Text);
                    bodyemail = bodyemail.Replace("@Address", Txtaddress.Text);
                    bodyemail = bodyemail.Replace("@Tel", txttel.Text);
                    bodyemail = bodyemail.Replace("@Fax", txtfax.Text);
                    bodyemail = bodyemail.Replace("@ContactPerson", txtContactperson.Text);
                    bodyemail = bodyemail.Replace("@HandPhone", txtHandphone.Text);
                    bodyemail = bodyemail.Replace("@Contractor", txtContractor.Text);
                    bodyemail = bodyemail.Replace("@PersonalWebsite", txtWebsite.Text);
                    bodyemail = bodyemail.Replace("@Content", txtContent.Text);

                    string path1 = @"\Uploads\AttachFile\";
                    string apppath = Request.PhysicalApplicationPath;
                    string savepath = string.Empty;
                    if (fupload.HasFile)
                    {
                        savepath = apppath + path1 + Server.HtmlEncode(fupload.FileName);
                        fupload.SaveAs(savepath);
                    }
                    Utility.SendMail(this.EmailAdmin, "Email to us", bodyemail, savepath);
                    panel.Alert("Thank you");
                    txtEmail.Text = "";
                    Txtcompany.Text = "";
                    Rb.Text = "";
                    rcbbCountry.Text = "";
                    Txtaddress.Text = "";
                    txttel.Text = "";
                    txtfax.Text = "";
                    txtContactperson.Text = "";
                    txtHandphone.Text = "";
                    txtContractor.Text = "";
                    txtWebsite.Text = "";
                    txtContent.Text = "";
                    txtbusinessfield.Text = "";
                }
                catch { ;}
            }
        }
        private void BindCountry()
        {
            Telerik.Web.UI.RadComboBoxItem item = new Telerik.Web.UI.RadComboBoxItem();
            item.Text = "Select...";
            rcbbCountry.DataSource = FunctionUtility.BindListCountry();
            rcbbCountry.DataBind();
            rcbbCountry.Items.Insert(0, item);
            txtbusinessfield.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            Txtcompany.Text = "";
            Rb.Text = "";
            rcbbCountry.Text = "";
            Txtaddress.Text = "";
            txttel.Text = "";
            txtfax.Text = "";
            txtContactperson.Text = "";
            txtHandphone.Text = "";
            txtContractor.Text = "";
            txtWebsite.Text = "";
            txtContent.Text = "";
            txtbusinessfield.Text = "";
           
        }        
    }
}