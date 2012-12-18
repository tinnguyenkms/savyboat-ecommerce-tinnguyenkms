using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using System.Configuration;
using System.ComponentModel;
namespace ALNWebsite.Site.Control
{
    public partial class ProductList : BaseUserControl
    {
        private static MenuDetailManger ItemMG = new MenuDetailManger();        
        public IList<MenuDetail> DataSource
        {
            get
            {
                return (IList<MenuDetail>)ViewState["DataSource"];
            }
            set
            {
                if (NumberItem > 0)
                    ViewState["DataSource"] = value.Take(NumberItem).ToList();
                else
                    ViewState["DataSource"] = value;
                lstProduct.DataSource = (IList<MenuDetail>)ViewState["DataSource"];                
                lstProduct.DataBind();
            }
        }     

        protected void linkitem1_onclick(object sender, EventArgs e)
        {
            ImageButton lbtn = (ImageButton)sender;
            string id = lbtn.CommandArgument;
            MenuDetail item = new MenuDetailManger().GETBYID(new Guid(id));
            if (item.NavigateURL == null && item.ObjectType == 0)
                Response.Redirect("~/Site/Pages/Category.aspx" + "?id=" + id + "&name=" + item.Name);
        }
        
        protected void lstProduct_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                MenuDetail item = e.Item.DataItem as MenuDetail;
                ImageButton ProductImage = e.Item.FindControl("ProductImage") as ImageButton;
                Label lblName = e.Item.FindControl("lblName") as Label;
                Label lblCost = e.Item.FindControl("lblCost") as Label;
                if (item.ImageUrl == null)
                    ProductImage.ImageUrl = "~/Uploads/android_logo.jpg";
                else
                ProductImage.ImageUrl = item.ImageUrl;
                ProductImage.ApplyStyle(ImageStyle);
                lblName.Text = item.Name.ToLanguage(this.SelectLanguage);
                lblName.ApplyStyle(NameStyle);                
                lblCost.ApplyStyle(CostStyle);
            }
        }
       
        public int RepeatColumns
        {
            set
            {
                lstProduct.RepeatColumns = value;
            }
        }
        public int NumberItem
        {
            get;
            set;
        }
        public string Title
        {
            set
            {
                lblTitle.Text = value;
            }
            get
            {
                return lblTitle.Text;
            }
        }
        Style _Imagestyle = new Style();
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [Description("Image Product Style")]
        [NotifyParentProperty(true)]
        [Category("Style")]
        public virtual Style ImageStyle
        {
            set
            {
                _Imagestyle = value;
                lstProduct.DataBind();
            }
            get
            {
                return _Imagestyle;
            }
        }
        Style _nameStyle = new Style();
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [Description("Product Name Style")]
        [NotifyParentProperty(true)]
        [Category("Style")]
        public virtual Style NameStyle
        {
            set
            {
                _nameStyle = value;
                lstProduct.DataBind();
            }
            get
            {
                return _nameStyle;
            }
        }
        Style _coststyle = new Style();
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [Description("Product Cost Style")]
        [NotifyParentProperty(true)]
        [Category("Style")]
        public virtual Style CostStyle
        {
            set
            {
                _coststyle = value;
                lstProduct.DataBind();
            }
            get
            {
                return _coststyle;
            }
        }
        Style _titlestyle = new Style();
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        [Description("Product Cost Style")]
        [NotifyParentProperty(true)]
        [Category("Style")]
        public virtual Style TitleStyle
        {
            set
            {
                _titlestyle = value;
                PanelTitle.ApplyStyle(value);
            }
            get
            {
                return _titlestyle;
            }
        }
    }
}