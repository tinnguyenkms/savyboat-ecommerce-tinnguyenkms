using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using Telerik.Web.UI;
namespace ALNWebsite.Site.Control
{
    public partial class PartnerList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            IList<Partner> partnerlist = new PartnerManager().Getlist();
            dlPartner.DataSource = partnerlist;
            dlPartner.DataBind();
        }
        protected void dlPartner_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                Partner item = (Partner)e.Item.DataItem;
                RadBinaryImage ilogo = e.Item.FindControl("ilogo") as RadBinaryImage;
                LinkButton lbtncompany = e.Item.FindControl("lbtnCompanyname") as LinkButton;
                ilogo.ImageUrl = item.ImageUrl;
                ilogo.DescriptionUrl = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                lbtncompany.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                lbtncompany.PostBackUrl = item.HttpLink;
            }
        }
    }
}