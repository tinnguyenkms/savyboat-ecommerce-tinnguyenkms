using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
using ClassLibary;
using ClassLibary.Objects;
using Telerik.Web.UI;
namespace ALNWebsite.Management.Configweb
{
    public partial class NoticeManagement : BaseAdmin
    {
        private static ConfigWebManager cfmg = new ConfigWebManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        private void BindData()
        {
            IList<Library.DTO.ConfigWed> listitem = new List<Library.DTO.ConfigWed>();
            listitem = cfmg.GetList().OrderByDescending(p=>p.CreatedDate).ToList();
            if (listitem != null)
            {
                radGridPosts.DataSource = listitem;
                radGridPosts.DataBind();
            }
        }
        protected void radGridPosts_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {
            this.radGridPosts.DataSource = cfmg.GetList().OrderByDescending(p => p.CreatedDate).ToList();
        }
        protected void radGridPosts_ItemDataBound(object source, GridItemEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
                ConfigWed item = (ConfigWed)e.Item.DataItem;
                LinkButton ltContentVN = e.Item.FindControl("hpContentVN") as LinkButton;
                Literal ltContentEN = e.Item.FindControl("ltContentEN") as Literal;
                Literal ltdisplay = e.Item.FindControl("ltdisplay") as Literal;
                ltContentVN.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                ltContentVN.CommandArgument = item.Id.ToString();
                ltContentEN.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                if (item.ObjectType == 1)
                    ltdisplay.Text = "ALN Center";
                if (item.ObjectType == 2)
                    ltdisplay.Text = "ALN Left";
                if (item.ObjectType == 4)
                    ltdisplay.Text = "Forum";
            }
        }
        protected void radGridPosts_EditCommand(object source, GridCommandEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
                ConfigWed item = (ConfigWed)e.Item.DataItem;
                txtNoticeen.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                txtNoticevn.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
            }
        }
        protected void hpcontentedit(object sender, EventArgs e)
        {
            Reset();
            LinkButton btn = (LinkButton)sender;
            Library.DTO.ConfigWed item = cfmg.GetById(new Guid(btn.CommandArgument));
            _item = item;
            txtNoticeen.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
            txtNoticevn.Text = item.Content.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
            if (item.ObjectType == 1)
                cbalnwebsite.Checked = true;
            if (item.ObjectType == 2)
                cbalbleft.Checked = true;
            if (item.ObjectType == 4)
                cbforum.Checked = true;

        }
        protected void radGridPosts_DeleteCommand(object source, GridCommandEventArgs e)
        {
            string ID = (e.Item as GridDataItem).OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Id"].ToString();
            Library.DTO.ConfigWed itemdelete = new ConfigWed();
            itemdelete = cfmg.GetById(new Guid(ID));
            itemdelete.Status = 1;
            cfmg.Update(itemdelete);
        }
        protected void btnSave_Onclick(object sender, EventArgs e)
        {
            bool flag = false;
            flag = Save();
            if (flag == true)
            {
                radpanel.Alert("Save success!");
                Reset();
                this.radGridPosts.Rebind();
            }
            else
                radpanel.Alert("Error System");
        }
        protected void btnReset_Onclick(object sender, EventArgs e)
        {
            Reset();
        }
        private void Reset()
        {
            txtNoticeen.Text = "";
            txtNoticevn.Text = "";
            cbalbleft.Checked = false;
            cbalnwebsite.Checked = false;
                cbforum.Checked= false;
        }
        private bool Save()
        {
            bool flag = false;
            IList<Library.DTO.ConfigWed> listitem = new List<Library.DTO.ConfigWed>();
            if (cbalnwebsite.Checked == true)
            {
                Library.DTO.ConfigWed item = new Library.DTO.ConfigWed();
                if (_item != null)
                    item = _item;
                item.Content = LanguageUtils.ReadLanguageContent(txtNoticevn.Text, txtNoticeen.Text);
                item.CreatedDate = DateTime.Now;
                item.ObjectType = 1;
                item.Title = LanguageUtils.ReadLanguageContent("tv","en");
                listitem.Add(item);
            }
            if (cbalbleft.Checked == true)
            {
                Library.DTO.ConfigWed item = new Library.DTO.ConfigWed();
                if (_item != null)
                    item = _item;
                item.Content = LanguageUtils.ReadLanguageContent(txtNoticevn.Text, txtNoticeen.Text);
                item.CreatedDate = DateTime.Now;
                item.ObjectType = 2;
                item.Title = LanguageUtils.ReadLanguageContent("tv", "en");
                listitem.Add(item);
            }
            if (cbforum.Checked == true)
            {
                Library.DTO.ConfigWed item = new Library.DTO.ConfigWed();
                if (_item != null)
                    item = _item;
                item.Content = LanguageUtils.ReadLanguageContent(txtNoticevn.Text, txtNoticeen.Text);
                item.CreatedDate = DateTime.Now;
                item.Title = LanguageUtils.ReadLanguageContent("tv", "en");
                item.ObjectType = 4;
                listitem.Add(item);
            }
            
            if (listitem != null)
            {
                try
                {
                    if (_item != null)
                    {
                        cfmg.UpdateList(listitem);
                        _item = new ConfigWed();
                    }
                    else
                        cfmg.AddList(listitem);
                    flag = true;
                }
                catch
                {
                    flag = false;
                }  
            }
            else
            {
                radpanel.Alert("Please choose notice type");
            }
            return flag;
        }
        public Library.DTO.ConfigWed _item
        {
            get
            {
                if (ViewState["_item"] != null)
                {
                    return ViewState["_item"] as Library.DTO.ConfigWed;
                }
                return null;
            }
            set
            {
                ViewState["_item"] = value;
            }
        }
    }
}