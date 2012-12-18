using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.DTO;
using Library.BLL;
using Telerik.Web.UI;
namespace ALNWebsite.Site.Control
{
    public partial class HomeControlMutitab : BaseUserControl
    {
        private static MenuManager menumg = new MenuManager();
        private static MenuDetailManger menudmg = new MenuDetailManger();
        private Guid _id = Guid.Empty;
        Library.DTO.Menu item = new Library.DTO.Menu();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindTadStrip(_id);
        }
        private void BindTadStrip(Guid Id)
        {
            if (_id != Guid.Empty)
            {               
                item = menumg.GETBYID(Id);
                lblTitle.Text = item.Name.ToLanguage(this.SelectLanguage);
                radtab.DataSource = item.MenuDetails.OrderBy(p => p.MenuOrder).ToList();
            }
            else if (_Menudetail != null)
            {
                radtab.DataSource = _Menudetail.Parent.OrderBy(p => p.MenuOrder).ToList();
                lblTitle.Text = _Menudetail.Name.ToLanguage(this.SelectLanguage);
            }
            
            radtab.DataBind();
        }
        protected void RadTabStrip1_TabDataBound(object sender, RadTabStripEventArgs e)
        {
            MenuDetail item = (MenuDetail)e.Tab.DataItem;
            Label lblcontent = e.Tab.FindControl("lblContent") as Label;            
            lblcontent.Text = item.Name.ToLanguage(this.SelectLanguage);            
            RadPageView pageview1 = new RadPageView();
            pageview1.ID = item.Name.ToLanguage(this.SelectLanguage);
            Repeater listnews = new Repeater();
            if(_takerow!=0)
            listnews.DataSource = item.NewsDetails.Where(q=>q.Status==0).OrderByDescending(p=>p.CreatedDate).Take(_takerow).ToList();
            else
                listnews.DataSource = item.NewsDetails.Where(q => q.Status == 0).OrderByDescending(p => p.CreatedDate).ToList();
            listnews.ItemTemplate = new MyTemplate();
            listnews.ItemDataBound += new RepeaterItemEventHandler(repListPost_ItemDataBound);
            listnews.DataBind();
            
            pageview1.Controls.Add(listnews);
            //pageview1.BorderStyle = BorderStyle.Solid;
            //pageview1.BorderWidth = Unit.Pixel(1);
            //pageview1.BorderColor = System.Drawing.Color.Black;
            Multipage1.PageViews.Add(pageview1);
        }
        public class MyTemplate : ITemplate
        {            
            public void InstantiateIn(System.Web.UI.Control container)
            {
                HyperLink linktitle = new HyperLink();
                linktitle.ID = "linkttitle";
                HtmlImage new_icon = new HtmlImage();
                new_icon.ID = "imagenew";
                container.Controls.Add(linktitle);
                container.Controls.Add(new_icon);               
            }
        }
        protected void repListPost_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                NewsDetail curPost = (NewsDetail)e.Item.DataItem;
                HyperLink hplLinkFromTitle = e.Item.FindControl("linkttitle") as HyperLink;
                HtmlImage new_icon = e.Item.FindControl("imagenew") as HtmlImage;
                hplLinkFromTitle.Text = "<br/>" + "* " + curPost.Title.ToLanguage(this.SelectLanguage);
                //lblDateCreated.Text = curPost.CreatedDate.ToString();
                TimeSpan timespan = DateTime.Now - curPost.CreatedDate;
                if (timespan.TotalDays < (int)Library.Utility.Enum.Timespannews)
                {
                    new_icon.Visible = true;
                    new_icon.Src = "~/images/newsIcon.gif";
                }
                else
                    new_icon.Visible = false;
                hplLinkFromTitle.NavigateUrl = "~/Site/Pages/Post.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title.ToLanguage(this.SelectLanguage);
            }
        }
        protected void tabstrip_Prerender(object sender, EventArgs e)
        {
            
            radtab.Tabs[_n].Selected = true;
            Multipage1.PageViews[_n].Selected = true;
        }
        public Guid Menuid
        {
            set { _id = value; }
        }
        public Guid MenuDetailID
        {
            set
            {
                _Menudetail = menudmg.GETBYID(value);
            }
        }
        private MenuDetail _Menudetail = null;
        private int _n = 0;
        public int n
        {
            set
            {
                _n = value;
            }
        }
        private int _takerow = 0;
        public int Takerow
        {
            set { _takerow = value; }
        }
    }
}