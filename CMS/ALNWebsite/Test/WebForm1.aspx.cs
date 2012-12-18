using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Test
{
    public partial class WebForm1 : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Library.DTO.Menu menuitem = new Library.DTO.Menu();
                menuitem = new MenuManager().GETBYID(new Guid("56CDBBDF-4110-4F1B-96CE-67F53C82CD08"));  
                IList<MenuDetail> list = new List<MenuDetail>();
                list =menuitem.MenuDetails.OrderBy(p => p.MenuOrder).ToList();
                tree.DataSource = list;
                tree.DataBind();
            }
        }
        
        
        RadTreeNode InitMenu(RadTreeNode found, IList<Library.DTO.MenuDetail> value)
        {
            foreach (MenuDetail item in value)
            {
                RadTreeNode node = new RadTreeNode();

                node.Text = item.Name.ToLanguage(this.SelectLanguage);                
                node.Value = item.Id.ToString();
                found.Nodes.Add(node);
                if (item.Parent != null)
                    InitMenu(found, item.Parent);
            }
            return found;
        }

        protected void treeBound(object sender, EventArgs e)
        {
            
        }

     
    }
}