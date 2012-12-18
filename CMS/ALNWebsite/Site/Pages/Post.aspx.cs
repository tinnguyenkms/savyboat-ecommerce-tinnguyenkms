using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.BLL;
using Library.DTO;
namespace ALNWebsite.Site.Pages
{
    public partial class Post : BasePage
    {

        private string titlepage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (Request.QueryString["Id"] != null)
                {
                    titlepage = Request.QueryString["Page"];
                    Title = titlepage;
                    string id = Request.QueryString["Id"];
                    BindData(id);
                    senjobcontrol.Pageid = new Guid(id);
                }
        }
        private void BindData(string id)
        {
            Library.DTO.NewsDetail item = new Library.DTO.NewsDetail();
            item = new Library.BLL.NewsDetailManager().GETBYIT(new Guid(id));
            if (item != null)
            {
                litcontent.Text = item.Contents.ToLanguage(this.SelectLanguage);
                lblTitle.Text = titlepage;
                if(!string.IsNullOrEmpty(item.Tag))
                {
                HtmlMeta keywords = new HtmlMeta();
                keywords.Name = "keywords";
                keywords.Content = item.Tag;
                Page.Header.Controls.Add(keywords);
                }

            }
            else
            {
                litcontent.Text = "Under Contruction!!!";
            }
        }
    }
}