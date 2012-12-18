using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Site.Pages
{
    public partial class Mendeleev : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            Library.DTO.ProductDetail item = new Library.DTO.ProductDetail();
            item = new Library.BLL.ProductDetailManager().GetbyMenuDetailID(new Guid("9CC0B198-5220-4F07-B0D0-833DFEC12207"));
            if (item != null)
            {
                Lismeendeleev.Text = item.Content.ToLanguage(this.SelectLanguage);
            
            }
            else
            {
                Lismeendeleev.Text = "Under Contruction!!!";
            }
        }
    }
}