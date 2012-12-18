using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.BLL;
using Library.DTO;
using Library.Utility;
namespace ALNWebsite.Site.Control
{
    public partial class HomeControl : BaseUserControl
    {
        private Guid _id = Guid.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            MenuDetail cat = new MenuDetail();
            if (_id != Guid.Empty)
            {
                cat = new MenuDetailManger().GETBYID(_id);
                if (cat != null)
                {
                    IList<NewsDetail> listnew = new List<NewsDetail>();
                    listnew = cat.NewsDetails.Where(p => p.Status == 0).ToList();
                    listnew = listnew.OrderByDescending(p => p.CreatedDate).ToList();
                    rpList.DataSource = listnew.Take(2).ToList();
                    rpList.DataBind();
                    lblTitle.Text = cat.Name.ToLanguage(this.SelectLanguage);
                }

            }
        }
        public Guid MenuDetailId
        {
            set { _id = value; }
        }
        protected void repListPost_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                NewsDetail curPost = (NewsDetail)e.Item.DataItem;
                HyperLink hplLinkFromTitle = (HyperLink)e.Item.FindControl("hpTitle");
                //Label lblDateCreated = (Label)e.Item.FindControl("lblDateCreated");
                HtmlImage new_icon = e.Item.FindControl("new_icon") as HtmlImage;
                hplLinkFromTitle.Text = "*" + curPost.Title.ToLanguage(this.SelectLanguage);
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
    }
}