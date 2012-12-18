using System;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Telerik.Web.UI;
using System.Collections.Generic;
using Library.BLL;
using Library.DTO;
namespace ALNWebsite.Management.Product
{
    public partial class ProductList : BaseUserControl
    {
        private static readonly object EventSelectClick = new object();
        RadTreeView tree = new RadTreeView();
        private Guid _id = Guid.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            tree = drop.Items[0].FindControl("Tree") as RadTreeView;
            if (!IsPostBack)
            {
                string st = "<script type=\"text/javascript\" language=\"javascript\">";
                st += "function " + drop.ClientID + "Click(sender, args)";
                st += "{";
                st += "     var comboBox = $find('" + drop.ClientID + "');";
                st += "     var node = args.get_node();";                
                st += "     comboBox.hideDropDown();";
                st += "}";
                st += "</script>";
                AddScript.Text = st;                
                tree.OnClientNodeClicking = drop.ClientID + "Click";
                BindGrade(tree);
            }
            if (tree.SelectedNode != null)
            {
                drop.SelectedIndex = 0;
                drop.Items[0].Text = tree.SelectedNode.ToolTip;
                tree.SelectedNode.ExpandParentNodes();
            }
            if (AutoPostBack)
                tree.NodeClick += new RadTreeViewEventHandler(tree_NodeClick);
            
        }
        public event EventHandler<EventArgs> SelectClick
        {
            add
            {
                this.Events.AddHandler(EventSelectClick, value);
            }
            remove
            {
                this.Events.RemoveHandler(EventSelectClick, value);
            }
        }
        void tree_NodeClick(object sender, RadTreeNodeEventArgs e)
        {
            EventHandler<EventArgs> eventHandler = (EventHandler<EventArgs>)this.Events[EventSelectClick];
            if (eventHandler != null)
            {
                eventHandler(this, e);
            }
        }
        private void BindGrade(RadTreeView tree)
        {
            IList<MenuDetail> listmenu = new List<MenuDetail>();
            if (_id != Guid.Empty)
            {
                Library.DTO.Menu itemmenu = new Library.DTO.Menu();
                itemmenu = new MenuManager().GETBYID(_id);
                listmenu = itemmenu.MenuDetails;
            }
            else
                listmenu = _listSoure;
            foreach (MenuDetail item in listmenu.OrderBy(p => p.MenuOrder).ToList())
            {
                RadTreeNode node = new RadTreeNode();
                node.Text = item.Name.ToLanguage(this.SelectLanguage);
                node.Attributes.Add("Name", item.Name.ToLanguage(this.SelectLanguage));
                node.Value = item.Id.ToString();
                node.ToolTip = item.Name.ToLanguage(this.SelectLanguage);
                if (item.Parent != null)
                    node = Childs(node, item.Parent.OrderBy(p => p.MenuOrder).ToList());
                tree.Nodes.Add(node);
            }
        }
        RadTreeNode Childs(RadTreeNode found, IList<MenuDetail> value)
        {
            foreach (MenuDetail item in value)
            {
                RadTreeNode node = new RadTreeNode();
                node.Text = item.Name.ToLanguage(this.SelectLanguage);
                node.Attributes.Add("Name", item.Name.ToLanguage(this.SelectLanguage));
                node.Value = item.Id.ToString();
                node.ToolTip = item.Name.ToLanguage(this.SelectLanguage);
                if (item.Parent != null)
                    node = Childs(node, item.Parent.OrderBy(p => p.MenuOrder).ToList());
                found.Nodes.Add(node);
            }
            return found;
        }
        public Guid Menudetailid
        {
            get
            {
                Guid id = Guid.Empty;
                if(tree.SelectedNode!=null)
                {
                     RadTreeNode node = tree.SelectedNode;
                     id = new Guid(node.Value);
                }
                return id;
            }
        }
        public bool AutoPostBack
        {
            get;
            set;
        }
        public Guid SourceID
        {
            set {
                _id = value;
            }
        }
        private IList<MenuDetail> _listSoure;
        public IList<MenuDetail> ListSource
        {
            set { _listSoure = value; }
        }

    }
}