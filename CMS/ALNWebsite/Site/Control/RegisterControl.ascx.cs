using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using Library.Utility;
namespace ALNWebsite.Site.Control
{
    public partial class RegisterControl : System.Web.UI.UserControl
    {
        UserManger usermg = new UserManger();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindCountry();
        }
        private void BindCountry()
        {
            Telerik.Web.UI.RadComboBoxItem item = new Telerik.Web.UI.RadComboBoxItem();
            item.Text = "Select...";
            rcbbCountry.DataSource = FunctionUtility.BindListCountry();
            rcbbCountry.DataBind();
            rcbbCountry.Items.Insert(0, item);

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (rcCaptcha.IsValid)
            {
                User user = new User();
                user.Email = rtxtEmail.Text.Trim();
                //if (usermg.CheckEmail(user.Email))
                //{
                //    lblErrorMessage.Text = "<br/>* Tên tài khoản hoặc email đã được sử dụng *";
                //    return;
                //}
                //else
                //    lblErrorMessage.Text = "";
                user.Name = rtxtAccountName.Text.Trim();
                if (usermg.CheckUserName(user.Name))
                {
                    panel.Alert("Already Exists UserName"); return;
                }
                user.Password = (Utility.CreateMD5Hash(rtxtPassword.Text));
                user.IsVisible = true;
                user.DateCreated = DateTime.Now;
                user.DateLogged = DateTime.Now;
                user.Group = 3;
                //user.LastName = txtLastName.Text;
                //user.FirstName = txtFirstName.Text;
                user.Address1 = rtxtAddress.Text;
                //user.Address2 = txtAddress2.Text;
                //user.CityName = rtxtCity.Text;
                user.CountryName = rcbbCountry.SelectedValue.ToString();
                //user.ZipCode = rtxtZipCode.Text;
                user.Status = (int)UserRole.usernewregistr;
                user.BusinessField = rtxtBusinessField.Text;
                user.BusinessType = Rb.SelectedValue;
                user.CompanyName = rtxtCompany.Text;
                user.ContactPerson = rtxtContactPersion.Text;
                user.Content = rtxtContent.Text;
                user.Fax = rtxtFax.Text;
                user.HandPhone = rtxtHandPhone.Text;
                user.PersionalWebsite = rtxtWebsite.Text;
                user.Contractor = rtxtContractor.Text;
                user.SubContractor = rtxtSubContractor.Text;                
                usermg.Add(user);
                
                string body = "Hello " + rtxtContactPersion.Text +  "<br />";
                body += "Please click verify link :";
                Library.Utility.Utility.SendMail(user.Email, "WelCome to ALN.com.vn : Please Confirm Subscription", body,"");
                //    Response.Redirect("~/Site/RegisterSuccess.aspx");
                panel.Alert("Register Success! Please Check Email");

            }
        }
    }
}