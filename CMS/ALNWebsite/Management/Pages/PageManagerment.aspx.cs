using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using Library.Utility;
using Telerik.Web.UI;
using ClassLibary.Objects;
namespace ALNWebsite.Management.Pages
{
    public partial class PageManagerment : BaseAdmin
    {
        private static ProductDetailManager productmg = new ProductDetailManager();
        private static MenuDetailManger menudetailmg = new MenuDetailManger();
        private ProductDetail item;
                  
        protected void radGridPosts_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {
            if (Listproduct.Menudetailid != Guid.Empty)
            {
                MenuDetail item = new MenuDetail();
                foreach (MenuDetail itemi in BindData())
                {
                    if (itemi.Id == Listproduct.Menudetailid)
                    {
                        item = itemi; break;
                    }
                    else if (itemi.Parent.Count > 0)
                    {
                        foreach (MenuDetail itemii in itemi.Parent)
                        {
                            if (itemii.Id == Listproduct.Menudetailid)
                            {
                                item = itemii; break;
                            }
                        }
                    }
                }                
                this.radGridPosts.DataSource = item.ProductDetails;
            }
        }
        private IList<MenuDetail> BindData()
        {
            IList<MenuDetail> item = new List<MenuDetail>();
            IList<MenuDetail> item1 = new List<MenuDetail>();
            IList<MenuDetail> item2 = new List<MenuDetail>();
            IList<MenuDetail> item21 = new List<MenuDetail>();
            IList<MenuDetail> item3 = new List<MenuDetail>();    
            item = new MenuDetailManger().GETALL().Where(p=>p.ObjectType==1).ToList();
            foreach (MenuDetail itemitem in item)
            {
                if (itemitem.Parent.Count > 0)
                {
                    item1.Add(itemitem);
                }
                else
                    item2.Add(itemitem);
            }
            if (item1 != null)
            {
                foreach (MenuDetail item1item in item1)
                {
                    foreach (MenuDetail item1item1 in item1item.Parent)
                    {
                        foreach (MenuDetail item2item in item2)
                        {
                            if (item2item.Id == item1item1.Id)
                                item21.Add(item2item);
                        }                        
                    }
                    item3.Add(item1item);
                }
                foreach (MenuDetail item21item21 in item21)
                {
                    MenuDetail itemindex = item2.Where(p => p.Id == item21item21.Id).First();
                    item2.RemoveAt(item2.IndexOf(itemindex));
                }
            }
            if (item2 != null)
            {
                foreach (MenuDetail item2item in item2)
                {
                    item3.Add(item2item);
                }
            }


            return item3;
        }
        protected void Onitemclick(object sender, EventArgs e)
        {
            this.radGridPosts.MasterTableView.Rebind();
        }
        protected void radGridPosts_ItemDataBound(object source, GridItemEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
                  GridDataItem item = e.Item as GridDataItem;
                  ProductDetail currentPost = (ProductDetail)e.Item.DataItem;
                  Label lblname = e.Item.FindControl("lblNamePage") as Label;
                  Literal ltContent = e.Item.FindControl("ltContent") as Literal;                    
                  ltContent.Text = FunctionUtility.TrimDescription(currentPost.Content.ToLanguage(this.SelectLanguage),100);
                  lblname.Text = currentPost.MenuDetails.Name.ToLanguage(this.SelectLanguage);

            }

        }
        protected void radGridPosts_ItemCommand(object source, GridCommandEventArgs e)
        {
            if (e.CommandName == RadGrid.InitInsertCommandName)
            {
                e.Canceled = true;
            }

        }       
        protected void radGridPosts_EditCommand(object source, GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            string ID = editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["Id"].ToString();
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
            ProductDetail itemUpdae = new ProductDetail();
            itemUpdae = productmg.GETBYID(new Guid(ID));
            itemUpdae.CreatedDate = DateTime.Now;
            itemUpdae.Content = LanguageUtils.ReadLanguageContent((userControl.FindControl("reContentPagevn") as RadEditor).Content, (userControl.FindControl("reContentPage") as RadEditor).Content);
            
            productmg.UPDATE(itemUpdae);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listproduct.ListSource = BindData();
            }
        }
        protected void radGridPosts_InsertCommand(object source, GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
            ProductDetail newProduct = new ProductDetail();

            RadEditor reDescriptio = userControl.FindControl("reContentPage") as RadEditor;
            RadEditor reDescriptiovn = userControl.FindControl("reContentPagevn") as RadEditor;

            newProduct.Content = LanguageUtils.ReadLanguageContent(reDescriptiovn.Content, reDescriptio.Content);
            newProduct.CreatedDate = DateTime.Now;
            newProduct.MenuDetails = BindData(Listproduct.Menudetailid);
            productmg.ADD(newProduct);
        }
        private MenuDetail BindData(Guid id)
        {
            MenuDetail item = new MenuDetail();
            item = new MenuDetailManger().GETBYID(id);
            return item;
        }
       
    }

}