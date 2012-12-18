using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Site.Control
{
    public partial class MultiPage : BaseUserControl
    {
        private static MenuDetailManger menudmg = new MenuDetailManger();
        private Guid _id = Guid.Empty;
        public Guid Menudetailid
        {
            set { _id = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindTadStrip();
        }
        private void BindTadStrip()
        {
            if (_id != Guid.Empty)
            {
                MenuDetail item = menudmg.GETBYID(_id);
                IList<NewsDetail> listContent = new List<NewsDetail>();
                listContent = item.NewsDetails.Where(p => p.Status == 0).OrderBy(p => p.Title.ToLanguage(this.SelectLanguage)).ToList();
                multipage.DataSource = listContent;
                multipage.DataBind();
            }
        }
        protected void RadTabStrip1_TabDataBound(object sender, RadTabStripEventArgs e)
        {
            NewsDetail item = (NewsDetail)e.Tab.DataItem;
            Label lblcontent = e.Tab.FindControl("lblContent") as Label;
            Literal ltcontent = new Literal();
            lblcontent.Text = item.Title.ToLanguage(this.SelectLanguage);
            ltcontent.Text = item.Contents.ToLanguage(this.SelectLanguage);
            RadPageView pageview1 = new RadPageView();
            pageview1.ID = item.Title.ToLanguage(this.SelectLanguage);
            pageview1.Controls.Add(ltcontent);
            pageview1.BorderStyle = BorderStyle.Solid;
            pageview1.BorderWidth = Unit.Pixel(1);
            pageview1.BorderColor = System.Drawing.Color.Black;
            
            pagetad.PageViews.Add(pageview1);
        }
        protected void tabstrip_Prerender(object sender, EventArgs e)
        {
            multipage.Tabs[0].Selected = true;
            pagetad.PageViews[0].Selected = true;
        }
    }
}