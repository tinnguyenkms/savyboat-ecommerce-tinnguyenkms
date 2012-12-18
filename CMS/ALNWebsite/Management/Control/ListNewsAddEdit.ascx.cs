using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Library.DTO;
using Library.BLL;
namespace ALNWebsite.Management.Control
{
    public partial class ListNewsAddEdit : BaseUserControl
    {
        private static NewsDetailManager newsManager = new NewsDetailManager();
        private static NewsManager newsMg = new NewsManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNews();
            }
        }
        protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem && e.Item.IsInEditMode)
            {
                GridBinaryImageColumnEditor editor = ((GridEditableItem)e.Item).EditManager.GetColumnEditor("Upload") as GridBinaryImageColumnEditor;
                RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", editor.RadUploadControl.ClientID));
            }
            else if (e.Item is GridDataItem )
            {
                NewsDetail item = (NewsDetail)e.Item.DataItem;
                Label lbltile = e.Item.FindControl("lblTitle") as Label;
                Label lblcontent = e.Item.FindControl("lblDescription") as Label;
                
                RadBinaryImage img = e.Item.FindControl("Image") as RadBinaryImage;
                if (item != null)
                {
                    lblcontent.Text = TrimDescription(item.Contents.ToLanguage(this.SelectLanguage));
                    lbltile.Text = item.Title.ToLanguage(this.SelectLanguage);
                    img.ImageUrl = item.ImageAvatar;
                }
                
            }
        }

        protected void RadGrid1_ItemCreated(object sender, GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem && e.Item.IsInEditMode)
            {
                GridBinaryImageColumnEditor editor = ((GridEditableItem)e.Item).EditManager.GetColumnEditor("Upload") as GridBinaryImageColumnEditor;
                TableCell cell = (TableCell)editor.RadUploadControl.Parent;
                CustomValidator validator = new CustomValidator();
                validator.ErrorMessage = "Please select file to be uploaded";
                validator.ClientValidationFunction = "validateRadUpload";
                validator.Display = ValidatorDisplay.Dynamic;
                cell.Controls.Add(validator);
            }
        }
        private void BindDatatoGrid(Guid id)
        {
            IList<NewsDetail> listdetail = new List<NewsDetail>();
            listdetail = Getlist().Where(p => p.Id == id).First().NewsDetails;
            RadGrid1.DataSource = listdetail;
            RadGrid1.DataBind();
        }
        private void BindNews()
        {
            rcbbNewsPages.DataSource = Getlist();
            rcbbNewsPages.DataTextField = "Name";
            rcbbNewsPages.DataValueField = "Id";
            rcbbNewsPages.DataBind();
        }
        private IList<Library.DTO.News> Getlist()
        {
            IList<Library.DTO.News> listnews = new List<Library.DTO.News>();
            listnews = newsMg.GETALL();
            return listnews;
        }

        protected void rcbbNewsPages_SelectedIndexChanged(object o, RadComboBoxSelectedIndexChangedEventArgs e)
        {
            BindDatatoGrid(new Guid(rcbbNewsPages.SelectedValue));
        }
        protected void btnView_Click(object sender, EventArgs e)
        {
            BindDatatoGrid(new Guid(rcbbNewsPages.SelectedValue));
        }
        protected string TrimDescription(string description)
        {
            if (!string.IsNullOrEmpty(description) && description.Length > 200)
            {
                return string.Concat(description.Substring(0, 200), "...");
            }
            return description;
        }
    }
}