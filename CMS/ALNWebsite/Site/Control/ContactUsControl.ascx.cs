using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using Library.Utility;
using System.IO;
namespace ALNWebsite.Site.Control
{
    public partial class ContactUsControl : BaseUserControl
    {
        private static ContactUsManager bll = new ContactUsManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_click(object sender, EventArgs e)
        {
            Savecontact();
        }
        private void Savecontact()
        {
            try
            {
                ContactUs item = new ContactUs();
                item.Name = rtxtName.Text;
                item.Email = rtxtEmail.Text;
                item.Subject = rtxtSubject.Text;
                item.Telephone = rtxttelephone.Text;
                item.CreatedDate = DateTime.Now;
                item.Comments = rtxtComment.Text;
                bll.ADD(item);
                panel.Alert("Thanks for submit!!!");
                string path = Server.MapPath("Template/ContactUsTemplate.txt");
                //string strbody = Library.Utility.Utility.GetBodyEmail(path);
                string strbody = File.ReadAllText("D:\\Working 2\\WebApplication Project\\SavyBoardSolution\\SavyBoat\\Template\\ContactUsTemplate.txt");
                strbody = strbody.Replace("[@Name]", item.Name);
                strbody = strbody.Replace("[@Email]", item.Email);
                strbody = strbody.Replace("[@Comment]", item.Comments);
                strbody = strbody.Replace("[@CreatedDate]", item.CreatedDate.ToString());
                strbody = strbody.Replace("[@Telephone]", item.Telephone);
                strbody = strbody.Replace("[@Subject]", item.Subject);

                string path1 = @"\Uploads\AttachFile\";
                string apppath = Request.PhysicalApplicationPath;
                string savepath = string.Empty;
                if (fupload.HasFile)
                {
                    savepath = apppath + path1 + Server.HtmlEncode(fupload.FileName);
                    fupload.SaveAs(savepath);
                }
                Library.Utility.Utility.SendMail(this.EmailAdmin, item.Subject, strbody,savepath);
            }
            catch (Exception ex)
            {
            }
        }
        
    }
}