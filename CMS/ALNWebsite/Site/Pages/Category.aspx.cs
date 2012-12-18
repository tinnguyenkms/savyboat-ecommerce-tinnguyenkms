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
    public partial class Cetagory :BasePage
    {
        private static ProductDetailManager bll = new ProductDetailManager();
        private static MenuManager bllmenu = new MenuManager();
        private static MenuDetailManger bllmenudetail = new MenuDetailManger();
        PagedDataSource pds = new PagedDataSource();
        ProductDetail item = new ProductDetail();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            if (Request.QueryString["id"] != null)
            {
                Title = Request.QueryString["Name"];
                string id = Request.QueryString["id"];
                MenuDetail detail = bllmenudetail.GETBYID(new Guid(id));
                if (detail.Parent.Count>0)
                {
                    Category.DataSource = detail.Parent;
                    Category.NumberItem = 16;
                    Category.Title = detail.Name.ToLanguage(this.SelectLanguage);
                    
                }
                else if(detail.ProductDetails.Count>0)
                {
                    ListProductByCategory.DataSource = detail.ProductDetails.Where(p=>p.Status==0).ToList();
                    ListProductByCategory.NumberItem = 3;
                    ListProductByCategory.Title = detail.Name.ToLanguage(this.SelectLanguage);
                    ListProductByCategory.CurrentPage = 0;
                }
            }
        }
    }
}