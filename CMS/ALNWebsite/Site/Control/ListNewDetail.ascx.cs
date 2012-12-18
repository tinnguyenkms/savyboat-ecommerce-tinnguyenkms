using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.BLL;
using Library.DTO;
using Library.Presentation;
using Library.Utility;
namespace ALNWebsite.Site.Control
{
    public partial class ListNewDetail : BaseUserControl
    {
        private static NewsManager newsmg = new NewsManager();
        public Guid catID
        {
            set { id = value; }
        }
        private Guid id;
        private const int _pageSize = 10;
        private static int _totalPages = 0;
        private int _pageIdx = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                try
                {
                    BindData();
                }
                catch(Exception ex)
                {
                    Label lbl = new Label();
                    lbl.Text = "Updating";
                }
        }
        protected void repListPost_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                NewsDetail curPost = (NewsDetail)e.Item.DataItem;
                HyperLink hplLinkFromTitle = (HyperLink)e.Item.FindControl("hplLinkFromTitle");
                HyperLink hplLinkFromImage = (HyperLink)e.Item.FindControl("hplLinkFromImage");
                //HyperLink hplReadMore = (HyperLink)e.Item.FindControl("hplReadMore");
                Image imgThumbnail = (Image)e.Item.FindControl("imgThumbnail");
                Literal lblDescription = (Literal)e.Item.FindControl("lblDescription");
                Label lblDateCreated = (Label)e.Item.FindControl("lblDateCreated");
                Label lblUserCreated = (Label)e.Item.FindControl("lblUserCreated");
                HtmlImage new_icon = e.Item.FindControl("new_icon") as HtmlImage;
                hplLinkFromTitle.Text = curPost.Title.ToLanguage(this.SelectLanguage);

                if (curPost.GroupId == WebSercurity.GetGroupIdCurrentUser() || curPost.GroupId == 0)
                {
                    hplLinkFromTitle.NavigateUrl = "~/Site/Pages/Post.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title.ToLanguage(this.SelectLanguage);
                    hplLinkFromImage.NavigateUrl = "~/Site/Pages/Post.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title.ToLanguage(this.SelectLanguage);
                }
                else
                {
                    hplLinkFromTitle.NavigateUrl = "~/Site/Pages/SignIn.aspx" + "?lasturl=~/Site/Pages/ProductDetail.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title.ToLanguage(this.SelectLanguage);
                    hplLinkFromImage.NavigateUrl = "~/Site/Pages/SignIn.aspx" + "?lasturl=~/Site/Pages/ProductDetail.aspx?id=" + curPost.Id.ToString() + "&Page=" + curPost.Title.ToLanguage(this.SelectLanguage);
                }
                //hplReadMore.NavigateUrl = "~/Post.aspx?id=" + curPost.PostId.ToString();
                if (curPost.ImageAvatar != null)
                    imgThumbnail.ImageUrl = curPost.ImageAvatar;
                else
                    imgThumbnail.Visible = false;
                if (curPost.Contents.ToLanguage(this.SelectLanguage).Length > 200)
                {
                    lblDescription.Text = Library.Utility.FunctionUtility.TrimDescription(curPost.Contents.ToLanguage(this.SelectLanguage).ToLower(), 200);
                    //hplReadMore.Visible = true;
                }
                else
                {
                    lblDescription.Text = curPost.Contents.ToLanguage(this.SelectLanguage);
                    //hplReadMore.Visible = false;
                }
                lblUserCreated.Text = " ";
                lblDateCreated.Text = "Post dated :" + curPost.CreatedDate.ToString("dd/MM/yyyy");                
                
                if(curPost.Timeexpiration>DateTime.Now)
                {
                    new_icon.Visible = true;
                    new_icon.Src ="~/images/newsIcon.gif";
                }
                else
                    new_icon.Visible = false;
            }
        }
        private void BindPager()
        {
            divPager.Visible = false;

            if (_totalPages > 0)
            {
                if (_pageIdx > _totalPages)
                    return;

                divPager.InnerHtml = "<strong>Page: </strong>";
                divPager.Visible = true;
                if (_totalPages <= 10)
                {
                    for (int i = 0; i < _totalPages; i++)
                    {
                        HtmlGenericControl control;
                        if (_pageIdx == i)
                        {
                            control = new HtmlGenericControl("span");
                            control.Attributes["class"] = "spanPagerControlSelected";
                        }
                        else
                        {
                            control = new HtmlGenericControl("a");
                            control.Attributes["class"] = "spanPagerControlUnselected";
                            control.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (i + 1).ToString();
                        }
                        control.InnerHtml = "&nbsp;" + "&nbsp;" + (i + 1).ToString();
                        divPager.Controls.Add(control);
                    }
                }
                else
                {
                    if (_pageIdx < 9)
                    {
                        for (int i = 0; i < 10; i++)
                        {
                            HtmlGenericControl control;
                            if (_pageIdx == i)
                            {
                                control = new HtmlGenericControl("span");
                                control.Attributes["class"] = "spanPagerControlSelected";
                            }
                            else
                            {
                                control = new HtmlGenericControl("a");
                                control.Attributes["class"] = "spanPagerControlUnselected";
                                control.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (i + 1).ToString();
                            }
                            control.InnerHtml = "&nbsp;" + "&nbsp;" + (i + 1).ToString();
                            divPager.Controls.Add(control);
                        }
                        HtmlGenericControl control1;
                        if (_totalPages - 10 >= 2)
                        {
                            control1 = new HtmlGenericControl("span");
                            control1.Attributes["class"] = "spanPagerControlUnselected";
                            control1.InnerHtml = "...";
                            divPager.Controls.Add(control1);
                        }
                        control1 = new HtmlGenericControl("a");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (_totalPages).ToString();
                        control1.InnerHtml = (_totalPages).ToString();
                        divPager.Controls.Add(control1);

                    }
                    else if (_pageIdx > _totalPages - 10 && _pageIdx < _totalPages)
                    {
                        HtmlGenericControl control1;
                        control1 = new HtmlGenericControl("a");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=1";
                        control1.InnerHtml = "&nbsp;" + "1";
                        divPager.Controls.Add(control1);

                        control1 = new HtmlGenericControl("span");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.InnerHtml = "...";
                        divPager.Controls.Add(control1);

                        int j = _totalPages - 10;

                        for (int i = j; i < _totalPages; i++)
                        {
                            HtmlGenericControl control;
                            if (_pageIdx == i)
                            {
                                control = new HtmlGenericControl("span");
                                control.Attributes["class"] = "spanPagerControlSelected";
                            }
                            else
                            {
                                control = new HtmlGenericControl("a");
                                control.Attributes["class"] = "spanPagerControlUnselected";
                                control.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (i + 1).ToString();
                            }
                            control.InnerHtml = "&nbsp;" + "&nbsp;" + (i + 1).ToString();
                            divPager.Controls.Add(control);
                        }
                    }
                    else
                    {
                        HtmlGenericControl control1;
                        control1 = new HtmlGenericControl("a");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=1";
                        control1.InnerHtml = "&nbsp;" + "&nbsp;" + "1";
                        divPager.Controls.Add(control1);

                        control1 = new HtmlGenericControl("span");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.InnerHtml = "...";
                        divPager.Controls.Add(control1);

                        int j = _pageIdx - 4;
                        int k = _pageIdx + 4;

                        for (int i = j; i < k; i++)
                        {
                            HtmlGenericControl control;
                            if (_pageIdx == i)
                            {
                                control = new HtmlGenericControl("span");
                                control.Attributes["class"] = "spanPagerControlSelected";
                            }
                            else
                            {
                                control = new HtmlGenericControl("a");
                                control.Attributes["class"] = "spanPagerControlUnselected";
                                control.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (i + 1).ToString();
                            }
                            control.InnerHtml = "&nbsp;" + "&nbsp;" + (i + 1).ToString();
                            divPager.Controls.Add(control);
                        }

                        control1 = new HtmlGenericControl("span");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.InnerHtml = "...";
                        divPager.Controls.Add(control1);

                        control1 = new HtmlGenericControl("a");
                        control1.Attributes["class"] = "spanPagerControlUnselected";
                        control1.Attributes["href"] = "ListContent.aspx?id=" + id.ToString() + "&Page=" + lblPagetile.Text + "&PageNo=" + (_totalPages).ToString();
                        control1.InnerHtml = (_totalPages).ToString();
                        divPager.Controls.Add(control1);
                    }

                }
            }
        }
        private void BindData()
        {
            if (id != Guid.Empty)
            {
                MenuDetail cat = new MenuDetail();
                cat = new MenuDetailManger().GETBYID(id);
                if (cat != null)
                {
                    IList<NewsDetail> listnew = new List<NewsDetail>();
                    listnew = cat.NewsDetails.Where(p => p.Status == 0).ToList() ;
                    listnew = listnew.OrderByDescending(p => p.CreatedDate).ToList();
                    _totalPages = listnew.Count / _pageSize + (((listnew.Count % _pageSize) > 0) ? (1) : (0));

                    repListPost.DataSource = GetPostListForPage(_pageIdx, _pageSize, listnew); ;
                    repListPost.DataBind();
                    
                    BindPager();
                }
            }
        }
        private List<NewsDetail> GetPostListForPage(int pageIdx, int pageSize, IList<NewsDetail> srcList)
        {
            int start = pageIdx * pageSize;
            int end = start + pageSize;
            if (end > srcList.Count)
            {
                end = srcList.Count ;
            }
            List<NewsDetail> slicedList = new List<NewsDetail>();
            for (int i = start; i < end; i++)
            {
                slicedList.Add(srcList[i]);
            }
            return slicedList;
        }
        public string Title
        {
            set { lblPagetile.Text = value; }
        }
        public int PageNo
        {
            set { _pageIdx = value; }
        }
    }
}