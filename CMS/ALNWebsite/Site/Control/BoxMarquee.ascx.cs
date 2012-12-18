using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
namespace ALNWebsite.Site.Control
{
    public partial class BoxMarquee : BaseUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            IList<ConfigWed> listconfigweb = new ConfigWebManager().GetListByObjectType(1);
            if (listconfigweb != null)
            {
                rotatorFocus.DataSource = listconfigweb.Select(p=>p.Content.ToLanguage(this.SelectLanguage)).ToList();
                rotatorFocus.DataBind();
            }
        }
        protected void rotatorFocus_ItemDataBound(object sender, Telerik.Web.UI.RadRotatorEventArgs e)
        {            
            Literal focusItem = e.Item.FindControl("lblFocusItem") as Literal;
            focusItem.Text = e.Item.DataItem.ToString();
        }
    }
}