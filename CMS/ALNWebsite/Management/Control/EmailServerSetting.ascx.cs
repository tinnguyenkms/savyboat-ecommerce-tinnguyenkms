using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using Library.Utility;
namespace ALNWebsite.Management.Control
{
    public partial class EmailServerSetting : System.Web.UI.UserControl
    {
        private static EmailSettingManager emailmg = new EmailSettingManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindEmail();
        }
        private void BindEmail()
        {
            IList<Library.DTO.EmailSetting> itemeditlist = new List<Library.DTO.EmailSetting>();
           itemeditlist = emailmg.GetAll();
           if (itemeditlist.Count > 0)
           {
               Library.DTO.EmailSetting itemedit = new Library.DTO.EmailSetting();
               itemedit = itemeditlist.First();
               this.EmailId = itemedit.Id;
               txtDisplayName.Text = itemedit.DisplayName;
               txtEmail.Text = itemedit.Email;
               txtHostServer.Text = itemedit.HostServer;
               txtPassword.Text = itemedit.Password;
               txtPortServer.Text = itemedit.PortServer.ToString();
               if (itemedit.EnableSSl)
                   cbSSL.Checked = true;
           }
           else
           {
               btnTest.Enabled = false;
           }
        }
        protected void btnSave_Onclick(object sender, EventArgs e)
        {
            SaveEmail();            
        }
        protected void btnReset_Onclick(object sender, EventArgs e)
        {
            ResetAll();
        }
        protected void btnTest_Onclick(object sender, EventArgs e)
        {
            SendTest();
        }
        private void SendTest()
        {
            try
            {
                string url = Request.Url.ToString();
                Utility.SendMail(txtEmail.Text, "Test Email", "Test Email Server from web :" + url, "");
                panel.Alert("Cấu hình thành công");
            }
            catch( Exception ex)
            {
                panel.Alert("Vui lòng kiểm tra lại thông tin email server" + ex.Message);
            }

        }
        private void ResetAll()
        {
            txtDisplayName.Text = "";
            txtEmail.Text = "";
            txtHostServer.Text = "";
            txtPassword.Text = "";
            txtPortServer.Text = "";
        }
        private Library.DTO.EmailSetting SaveEmail()
        {
            Library.DTO.EmailSetting item = new Library.DTO.EmailSetting();
            try
            {
                
                item.DisplayName = txtDisplayName.Text;
                item.Email = txtEmail.Text;
                if (cbSSL.Checked)
                    item.EnableSSl = cbSSL.Checked;
                else
                    item.EnableSSl = false;
                item.HostServer = txtHostServer.Text;
                item.Password = txtPassword.Text;
                item.PortServer = int.Parse(txtPortServer.Text);
                if (EmailId == Guid.Empty)
                {
                    emailmg.Add(item);
                    panel.Alert("Lưu thành công");
                    btnTest.Enabled = true;
                }
                else
                {
                    item.Id = this.EmailId;
                    emailmg.Update(item);
                    panel.Alert("Cập nhật thành công");
                    HttpContext.Current.Session[Constant.CACHE_EMAILSETTING] = null;
                }
                
            }
            catch { }
            this.EmailId = item.Id;
            return item;
            
        }
        public Guid EmailId
        {
            get
            {
                if (ViewState["EmailId"] != null)
                {
                    return new Guid(ViewState["EmailId"].ToString());
                }
                return Guid.Empty;
            }
            set
            {
                ViewState["EmailId"] = value.ToString();
            }
        }
    }
}