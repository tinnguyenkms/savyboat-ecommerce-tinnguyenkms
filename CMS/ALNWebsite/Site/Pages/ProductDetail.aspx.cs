using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using System.Web.UI.HtmlControls;
namespace ALNWebsite.Site.Pages
{
    public partial class ProductDetail : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                if (Request.QueryString["id"] != null)
                {
                    string id = Request.QueryString["id"];
                    Library.DTO.ProductDetail item = new ProductDetailManager().GETBYID(new Guid(id));
                    Title = item.Name.ToLanguage(this.SelectLanguage);
                    
                    View.Title = item.Name.ToLanguage(this.SelectLanguage);
                    View.ProductDetailInfo = item.Content.ToLanguage(this.SelectLanguage);
                    if (!string.IsNullOrEmpty(item.Tag))
                    {
                        HtmlMeta keywords = new HtmlMeta();
                        keywords.Name = "keywords";
                        keywords.Content = item.Tag;
                        Page.Header.Controls.Add(keywords);
                    }
                }

        }
    }
}