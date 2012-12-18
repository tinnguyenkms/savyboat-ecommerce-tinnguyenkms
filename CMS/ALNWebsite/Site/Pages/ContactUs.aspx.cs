using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
namespace ALNWebsite.Site.Pages
{
    public partial class ContactUs : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            BindData();
        }
        private void BindData()
        {
            Library.DTO.ProductDetail item = new Library.DTO.ProductDetail();
            item = new ProductDetailManager().GETBYID(new Guid("FBBA195D-8D3C-4CBA-B4EE-939AF4ADA0A6"));
            ltContactus.Text = item.Content.ToLanguage(this.SelectLanguage);
        }
    }
}