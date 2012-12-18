using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Control
{
    public partial class ListMenuVertical : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            BindMenu();
        }
        private void BindMenu()
        {
            menu.Parentid = new Guid("56CDBBDF-4110-4F1B-96CE-67F53C82CD08");
            menu2.Parentid = new Guid("948D40EA-0013-4A2A-A376-9E00D7E6DA62");
            menu3.Parentid = new Guid("5DF46EFB-5FC9-4077-B6BF-7804A1C86E8F");
            menu4.Parentid = new Guid("8E171CEA-FAB0-47E8-8C37-F1DC7B60B1EF");
        }
    }
}