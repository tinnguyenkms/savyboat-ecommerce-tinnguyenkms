using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Library.BLL;
using Library.DTO;
using Library.DTO.BE;
namespace ALNWebsite.Site.Pages
{
    public partial class Sitemap : BasePage
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!base.IsPostBack)
            {
                this.BindData();
            }
        }
        private void BindData()
        {
            foreach (SitemapDTO item in ContextManager.listsitemap())
            {
                RadTreeNode node = new RadTreeNode();
                node.Text = item.Name.ToLanguage(this.SelectLanguage);
                node.Attributes.Add("Name", item.Name.ToLanguage(this.SelectLanguage));
                node.Value = item.Id.ToString();
                node.ToolTip = item.Name.ToLanguage(this.SelectLanguage);
                node.NavigateUrl = item.NavigateUrl;
                if (item.ListSitemap != null)
                {
                    node = this.Childs(node, item.ListSitemap);
                }
                node.Expanded = true;
                this.radtree.Nodes.Add(node);
            }
        }
        protected void radtree_NodeClick(object sender, RadTreeNodeEventArgs e)
        {
        }
        private RadTreeNode Childs(RadTreeNode found, System.Collections.Generic.IList<SitemapDTO> value)
        {
            foreach (SitemapDTO item in value)
            {
                RadTreeNode node = new RadTreeNode();
                if (item.Name != null)
                {
                    node.Text = item.Name.ToLanguage(this.SelectLanguage);
                    if(node.Text=="")
                        node.Text = item.Name.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                    node.Attributes.Add("Name", item.Name.ToLanguage(this.SelectLanguage));
                    node.Value = item.Id.ToString();
                    node.ToolTip = item.Name.ToLanguage(this.SelectLanguage);
                    node.NavigateUrl = item.NavigateUrl;
                    if (item.ListSitemap != null)
                    {
                        node = this.Childs(node, item.ListSitemap);
                    }
                    node.Expanded = true;
                    if (item.CreatedDate >= System.DateTime.Now)
                    {
                        node.ImageUrl = "~/images/newsIcon.gif";
                    }
                    found.Nodes.Add(node);
                }
            }
            return found;
        }
    }
}