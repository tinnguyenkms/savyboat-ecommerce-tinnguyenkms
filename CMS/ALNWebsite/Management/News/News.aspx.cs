using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Library.BLL;
using Library.DTO;
using Library.Utility;
namespace ALNWebsite.Management.News
{
    public partial class News : BasePage
    {
        private static MenuDetailManger newsManager = new MenuDetailManger();
        private static Library.BLL.NewsManager newsMg = new Library.BLL.NewsManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindNews();
        }     
        protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem && e.Item.IsInEditMode)
            {
                //GridBinaryImageColumnEditor editor = ((GridEditableItem)e.Item).EditManager.GetColumnEditor("Upload") as GridBinaryImageColumnEditor;
                //RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", editor.RadUploadControl.ClientID));
            }
            else if (e.Item is GridDataItem )
            {               
                MenuDetail item = (MenuDetail)e.Item.DataItem;
                Label lbltile = e.Item.FindControl("lblTitle1") as Label;
                Label lblcontent = e.Item.FindControl("lblDescription1") as Label;                                
                if (item != null)
                {
                    if(item.Menu!=null)
                    lblcontent.Text = item.Menu.Name.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                    lbltile.Text = item.Name.ToLanguage(this.SelectLanguage);                                        
                }
            }
            if (e.Item.OwnerTableView.Name == "NewsDetail")
            {
                GridDataItem item = (GridDataItem)e.Item;
                
                Label lbltile = e.Item.FindControl("lblTitle") as Label;
                Label lblcontent = e.Item.FindControl("lblDescription") as Label;
                if (item != null)
                {
                    
                }
            }
        }
        private void BindNews()
        {
            RadGrid1.DataSource = Getlist().Where(p => p.ObjectType == 2).ToList();            
            RadGrid1.DataBind();
        }
        private IList<Library.DTO.MenuDetail> Getlist()
        {
            IList<Library.DTO.MenuDetail> listnews = new List<Library.DTO.MenuDetail>();
            listnews = newsManager.GETALL();
            return listnews;
        }
        protected void RadGrid1_ItemUpdated(object source, Telerik.Web.UI.GridUpdatedEventArgs e)
        {
           
            if (e.Exception != null)
            {
                e.KeepInEditMode = true;
                e.ExceptionHandled = true;
              
            }
            else
            {
              
            }
        }

        protected void RadGrid1_ItemInserted(object source, GridInsertedEventArgs e)
        {
           
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
           
            }
            else
            {
           
            }
        }

        protected void RadGrid1_ItemDeleted(object source, GridDeletedEventArgs e)
        {
           
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
           
            }
            else
            {
           
            }
        }

        protected void RadGrid1_InsertCommand(object source, GridCommandEventArgs e)
        {
            if ("Orders".Equals(e.Item.OwnerTableView.Name))
            {
                GridDataItem parentItem = (GridDataItem)e.Item.OwnerTableView.ParentItem;
           
            }
            else if ("Details".Equals(e.Item.OwnerTableView.Name))
            {
                GridDataItem parentItem = (GridDataItem)e.Item.OwnerTableView.ParentItem;
           
            }
        }
    }
}