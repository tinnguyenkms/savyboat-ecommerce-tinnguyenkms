using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Site.Control
{
    public partial class Boxmarquee2 : BaseUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            IList<ConfigWed> listconfigweb = new ConfigWebManager().GetListByObjectType(2);
            if (listconfigweb != null)
            {
                rotatorFocus2.DataSource = listconfigweb.Select(p => p.Content.ToLanguage(this.SelectLanguage)).ToList();
                rotatorFocus2.DataBind();
            }
        }
        protected void rotatorFocus2_ItemDataBound(object sender, Telerik.Web.UI.RadRotatorEventArgs e)
        {            
            Literal focusItem = e.Item.FindControl("lblFocusItem") as Literal;
            focusItem.Text = e.Item.DataItem.ToString();
        }
    }
}