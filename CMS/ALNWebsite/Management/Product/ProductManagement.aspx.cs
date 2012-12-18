using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using Library.Utility;
using Telerik.Web.UI;
using ClassLibary.Objects;
namespace ALNWebsite.Management.Product
{
    public partial class ProductManagement1 : BaseAdmin
    {
        private static MenuDetailManger menudtmg = new MenuDetailManger();
        private static ProductDetailManager productmg = new ProductDetailManager();        
        
        protected void Onitemclick( object sender, EventArgs e )
        {
            this.radGridPosts.MasterTableView.Rebind();
        }
        protected void radGridPosts_PreRender(object sender, System.EventArgs e)
        {
            if (!this.IsPostBack)
            {               
                this.radGridPosts.MasterTableView.Rebind();
                
            }
        }
        protected void radGridPosts_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {            
            if (Listproduct.Menudetailid != Guid.Empty)
            {
                this.radGridPosts.DataSource = BindData(Listproduct.Menudetailid).ProductDetails.Where(p => p.Status == 0).OrderByDescending(p => p.CreatedDate).ToList();                
            }
           
        }        
        private MenuDetail BindData(Guid id)
        {
            MenuDetail item = new MenuDetail();
            item = new MenuDetailManger().GETBYID(id);
            return item;
        }
        protected void radGridPosts_ItemDataBound(object source, GridItemEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
              //  GridDataItem item = e.Item as GridDataItem;
                ProductDetail currentPost = (ProductDetail)e.Item.DataItem;
                CheckBox cb = e.Item.FindControl("cbmember") as CheckBox;
                Literal ltcontent = e.Item.FindControl("ltContent") as Literal;
                Literal ltname = e.Item.FindControl("ltname") as Literal;
                if (currentPost.GroupId == 3)
                    cb.Checked = true;
                ltcontent.Text = FunctionUtility.TrimDescription(currentPost.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese), 100);
                ltname.Text = currentPost.Name.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
            }
          
        }
        protected void radGridPosts_ItemCommand(object source, GridCommandEventArgs e)
        {
            if (e.CommandName == RadGrid.InitInsertCommandName)
            {
                e.Canceled = true;
            }

        }
        protected void radGridPosts_DeleteCommand(object source, GridCommandEventArgs e)
        {
            string ID = (e.Item as GridDataItem).OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Id"].ToString();
            ProductDetail item = productmg.GETBYID(new Guid(ID));
            item.Status = 1;
            productmg.UPDATE(item);
        }
        protected void radGridPosts_EditCommand(object source, GridCommandEventArgs e)
        {
            try
            {
                GridEditableItem editedItem = e.Item as GridEditableItem;
                string ID = editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["Id"].ToString();
                UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
                ProductDetail itemUpdae = new ProductDetail();
                itemUpdae = productmg.GETBYID(new Guid(ID));
                itemUpdae.Name = LanguageUtils.ReadLanguageContent((userControl.FindControl("rtxtProductName") as RadTextBox).Text,"");
                itemUpdae.Content = LanguageUtils.ReadLanguageContent((userControl.FindControl("reDescriptionvn") as RadEditor).Content, (userControl.FindControl("reDescription") as RadEditor).Content);
                itemUpdae.Tag = (userControl.FindControl("txttag") as TextBox).Text;
                if((userControl.FindControl("radngayhethan") as RadDatePicker).SelectedDate.HasValue)
                itemUpdae.Timeexpiration = (userControl.FindControl("radngayhethan") as RadDatePicker).SelectedDate;
                if ((userControl.FindControl("cbformember") as CheckBox).Checked == true)
                    itemUpdae.GroupId = 3;
                else
                    itemUpdae.GroupId = 0;
                productmg.UPDATE(itemUpdae);
            }
            catch(Exception ex)
            {
                throw ex;
            }

        }
        protected void radGridPosts_InsertCommand(object source, GridCommandEventArgs e)
        {
            try
            {
                GridEditableItem editedItem = e.Item as GridEditableItem;
                UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
                ProductDetail newProduct = new ProductDetail();
                RadTextBox txttitle = userControl.FindControl("rtxtProductName") as RadTextBox;
                RadEditor reDescriptio = userControl.FindControl("reDescription") as RadEditor;
                RadEditor reDescriptiovn = userControl.FindControl("reDescriptionvn") as RadEditor;
                CheckBox cb = userControl.FindControl("cbformember") as CheckBox;
                TextBox txttag = userControl.FindControl("txttag") as TextBox;
                RadDatePicker radtimeend = userControl.FindControl("radngayhethan") as RadDatePicker;
               // RadUpload rabupload = userControl.FindControl("radupload") as RadUpload;
                //rabupload.TargetFolder = "~/images";
                if (cb.Checked)
                    newProduct.GroupId = 3;
                else
                    newProduct.GroupId = 0;
                //newProduct.ImageUrl = rabupload.TemplateSourceDirectory;
                newProduct.Name = LanguageUtils.ReadLanguageContent(txttitle.Text,"");
                newProduct.Content = LanguageUtils.ReadLanguageContent(reDescriptiovn.Content, reDescriptio.Content);
                newProduct.CreatedDate = DateTime.Now;
                newProduct.MenuDetails = BindData(Listproduct.Menudetailid);
                newProduct.Tag = txttag.Text;
                newProduct.Timeexpiration = radtimeend.SelectedDate;
                productmg.ADD(newProduct);
            }
            catch(Exception ex)
            {
                throw ex;
            }
            
        }     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!Request.IsAuthenticated)
                {
                    Response.Redirect("~/Management/Login.aspx");
                    Response.End();
                }
                Listproduct.SourceID = new Guid("56CDBBDF-4110-4F1B-96CE-67F53C82CD08");
            }
          
        }
    }
}