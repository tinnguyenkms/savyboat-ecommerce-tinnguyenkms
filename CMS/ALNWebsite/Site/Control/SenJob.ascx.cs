using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Utility;
namespace ALNWebsite.Site.Control
{
    public partial class SenJob : BaseUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                string path = @"\Uploads\AttachFile\";
                string apppath = Request.PhysicalApplicationPath;
                string savepath = string.Empty;
                if (fupload.HasFile)
                {
                    savepath = apppath + path + Server.HtmlEncode(fupload.FileName);
                    fupload.SaveAs(savepath);
                }
                string body = "<table><tr><td>Name :</td><td>@name</td></tr><tr><td>Phone :</td><td>@phone</td></tr><tr><td>Address :</td><td>@address</td></tr><tr><td>Email :</td><td>@email</td></tr><tr><td>Subject :</td><td>@Subject</td></tr><tr><td>Content :</td><td>@content</td></tr></table>";
                body = body.Replace("@name",name.Text);
                body = body.Replace("@phone", Phone.Text);
                body = body.Replace("@address",address.Text);
                body = body.Replace("@email",email.Text);
                body = body.Replace("@content", rtxtContent.Text);
                body = body.Replace("@Subject", rtxtSubject.Text);
                
                if (Session["emailaddress"] != null)
                {
                    Utility.SendMail(Session["emailaddress"].ToString(), "Nộp hồ sơ" + name.Text, body, savepath);
                    Session["emailaddress"] = null;
                }
                else
                    Utility.SendMail(this.EmailAdmin, "Nộp hồ sơ" + name.Text, body, savepath);
            }
            catch { ;}
            try
            {
                Utility.SendMail(email.Text, "Cảm ơn bạn đã gửi email cho ALN", "Chúng tôi sẽ liên hệ với ban" + name.Text + "trong thoi gian sớm nhất", "");
                panel.Alert("Cảm ơn đã liên hệ với ALN");
                Resetall();
            }
            catch { ;}
        }
        private void Resetall()
        {
            name.Text = "";
            email.Text = "";
            address.Text = "";
            Phone.Text = "";
        }
        public Guid Pageid
        {
            set {
            }
        }
    }
}