using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Management.Control
{
    public partial class EmailUserSetting : System.Web.UI.UserControl
    {
        private static EmailUserManager emailmg = new EmailUserManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_onclick(object sender, EventArgs e)
        {
            try
            {
                emailmg.AddList(listtosave());
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        IList<EmailUser> listtosave()
        {
            IList<EmailUser> listtemp = new List<EmailUser>();

            if (txtMailCareer.Text != "")
            {
                EmailUser item = new EmailUser();
                item.DisPlayName = "Career";
                item.Email = txtMailCareer.Text;
                listtemp.Add(item);
            }
            if (txtMailAllweb.Text != "")
            {
                EmailUser item = new EmailUser();
                item.DisPlayName = "ALN Company";
                item.Email = txtMailAllweb.Text;
                listtemp.Add(item);
            }
            if (txtmailforum.Text != "")
            {
                EmailUser item = new EmailUser();
                item.DisPlayName = "Forum ALN";                
                item.Email = txtmailforum.Text;
                listtemp.Add(item);
            }

            return listtemp;
        }
    }
}