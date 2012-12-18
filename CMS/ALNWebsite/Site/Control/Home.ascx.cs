using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using Library.Utility;
using System.Web.UI.HtmlControls;
namespace ALNWebsite.Site.Control
{
    public partial class Home : BaseUserControl
    {
        private Guid _id = Guid.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if(_id!=Guid.Empty)
                BindData(_id);
        }
        private void BindData( Guid id)
        {
            ProductDetail item = new ProductDetailManager().GetbyMenuDetailID(id);
            lbltitle.Text = item.MenuDetails.Name.ToLanguage(this.SelectLanguage);
            ltcontent.Text = FunctionUtility.TrimDescription(item.Content.ToLanguage(this.SelectLanguage), 300);
            hpreadmore.Text = "<br/> " +">> Read more";
            hpreadmore.NavigateUrl = "~/Site/Pages/Content.aspx?id=" + item.MenuDetails.Id + "&Page=" + item.MenuDetails.Name.ToLanguage(this.SelectLanguage);

        }
        public Guid Menudetailid
        {
            set { _id = value; }
        }
    }
}