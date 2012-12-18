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
using ClassLibary;
using ClassLibary.Objects;
namespace ALNWebsite.Management.News
{
    public partial class NewsManagement : BaseAdmin
    {
        private static MenuDetailManger newsManager = new MenuDetailManger();
        private static Library.BLL.NewsDetailManager newsMg = new Library.BLL.NewsDetailManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNews();
            }
        }               
        private MenuDetail BindMenuDetail(Guid id)
        {
            return newsManager.GETBYID(id);
        }
        protected void radGridPosts_ItemDataBound(object sender, GridItemEventArgs e)
        {            
            if (e.Item is GridDataItem)
            {
                NewsDetail item = (NewsDetail)e.Item.DataItem;
                Literal ltContent = e.Item.FindControl("ltContent") as Literal;                
                CheckBox cbpermission = e.Item.FindControl("cbPermission") as CheckBox;
                RadBinaryImage img = e.Item.FindControl("Image") as RadBinaryImage;
                Label tilte = e.Item.FindControl("lbltilte") as Label;
                if (item != null)
                {
                    tilte.Text = item.Title.ToLanguage(this.SelectLanguage);
                    ltContent.Text = FunctionUtility.TrimDescription(item.Contents.ToLanguage(this.SelectLanguage), 100);                    
                    img.ImageUrl = item.ImageAvatar;
                    if (item.GroupId == (int)Library.Utility.UserRole.Member)
                        cbpermission.Checked = true;                    
                }

            }
        }            
        private void BindNews()
        {
            Listproduct.ListSource = Getlist();           
        }
        private IList<Library.DTO.MenuDetail> Getlist()
        {
            IList<Library.DTO.MenuDetail> item = new List<Library.DTO.MenuDetail>();
            IList<MenuDetail> item1 = new List<MenuDetail>();
            IList<MenuDetail> item2 = new List<MenuDetail>();
            IList<MenuDetail> item21 = new List<MenuDetail>();
            IList<MenuDetail> item3 = new List<MenuDetail>();
            item = newsManager.GETALL().Where(p => p.ObjectType == 2 || p.ObjectType == 3).ToList();
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
        protected void radGridPosts_InsertCommand(object source, Telerik.Web.UI.GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
            NewsDetail newProduct = new NewsDetail();
            RadTextBox txttitle = userControl.FindControl("rtxtProductName") as RadTextBox;
            RadEditor reDescriptio = userControl.FindControl("reDescription") as RadEditor;
            RadTextBox txttitlevn = userControl.FindControl("rtxtProductNamevn") as RadTextBox;
            RadEditor reDescriptiovn = userControl.FindControl("reDescriptionvn") as RadEditor;
            CheckBox cb = userControl.FindControl("cbformember") as CheckBox;
            TextBox txttag = userControl.FindControl("txttag") as TextBox;
            RadDatePicker radtimeend = userControl.FindControl("radngayhethan") as RadDatePicker;
            if (cb.Checked)
                newProduct.GroupId = 3;
            else
                newProduct.GroupId = 0;
            newProduct.Title = LanguageUtils.ReadLanguageContent(txttitlevn.Text, txttitle.Text);
            newProduct.Contents = LanguageUtils.ReadLanguageContent(reDescriptiovn.Text, reDescriptio.Content);
            newProduct.CreatedDate = DateTime.Now;
            newProduct.MenuDetails = BindData(Listproduct.Menudetailid);
            newProduct.Tag = txttag.Text;
            newProduct.Timeexpiration = radtimeend.SelectedDate.Value;
            newsMg.ADD(newProduct);


        }
        protected void Onitemclick(object sender, EventArgs e)
        {
            this.radGridPosts.MasterTableView.Rebind();
        }
        protected void radGridPosts_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {
            if (Listproduct.Menudetailid != Guid.Empty)
            {
                this.radGridPosts.DataSource = BindData(Listproduct.Menudetailid).NewsDetails.Where(p => p.Status == 0).OrderByDescending(p => p.CreatedDate).ToList();
            }

        }
        private MenuDetail BindData(Guid id)
        {
            MenuDetail item = new MenuDetail();
            item = new MenuDetailManger().GETBYID(id);
            return item;
        }
        protected void radGridPosts_DeleteCommand(object source, GridCommandEventArgs e)
        {
            string ID = (e.Item as GridDataItem).OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Id"].ToString();
            NewsDetail item = newsMg.GETBYIT(new Guid(ID));
            item.Status = 1;
            newsMg.UPDATE(item);
        }
        protected void radGridPosts_EditCommand(object source, GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            string ID = editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["Id"].ToString();
            UserControl userControl = (UserControl)e.Item.FindControl(GridEditFormItem.EditFormUserControlID);
            NewsDetail itemUpdae = new NewsDetail();
            itemUpdae = newsMg.GETBYIT(new Guid(ID));
            itemUpdae.Title = LanguageUtils.ReadLanguageContent((userControl.FindControl("rtxtProductNameVN") as RadTextBox).Text, (userControl.FindControl("rtxtProductName") as RadTextBox).Text);
            itemUpdae.Contents = LanguageUtils.ReadLanguageContent((userControl.FindControl("reDescriptionVN") as RadEditor).Content, (userControl.FindControl("reDescription") as RadEditor).Content);
            itemUpdae.Tag = (userControl.FindControl("txttag") as TextBox).Text;
            itemUpdae.Timeexpiration = (userControl.FindControl("radngayhethan") as RadDatePicker).SelectedDate;
            if ((userControl.FindControl("cbformember") as CheckBox).Checked == true)
                itemUpdae.GroupId = 3;
            else
                itemUpdae.GroupId = 0;
            newsMg.UPDATE(itemUpdae);
        }
        protected void radGridPosts_PreRender(object sender, System.EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.radGridPosts.MasterTableView.Rebind();

            }
        }
    }
}