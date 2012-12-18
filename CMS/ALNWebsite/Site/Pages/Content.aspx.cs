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
    public partial class Content :BasePage
    {
        private string titlepage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            if (Request.QueryString["id"] != null)
            {
                titlepage = Request.QueryString["Page"];
                Title = titlepage;
                string id = Request.QueryString["id"];
                BindData(id);
            }
        }
        private void BindData(string id)
        {
            Library.DTO.ProductDetail item = new Library.DTO.ProductDetail();
            item = new Library.BLL.ProductDetailManager().GetbyMenuDetailID(new Guid(id));
            if (item != null)
            {
                litcontent.Text = item.Content.ToLanguage(this.SelectLanguage);
                lblTitle.Text = titlepage;
            }
            else
            {
                litcontent.Text = "Under Contruction!!!";
            }
        }
    }
}