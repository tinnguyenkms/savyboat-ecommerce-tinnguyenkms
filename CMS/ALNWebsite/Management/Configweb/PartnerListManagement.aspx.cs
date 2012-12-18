using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using Library.BLL;
using ClassLibary;
using ClassLibary.Objects;
using Telerik.Web.UI;
namespace ALNWebsite.Management.Configweb
{
    public partial class PartnerListManagement : BaseAdmin
    {
        private static PartnerManager pm = new PartnerManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void BindData()
        {
            IList<Library.DTO.Partner> listitem = new List<Library.DTO.Partner>();
            listitem = pm.Getlist().OrderByDescending(p => p.CreatedDate).ToList();
            if (listitem != null)
            {
                radGridPosts.DataSource = listitem;
                radGridPosts.DataBind();
            }
        }
        protected void radGridPosts_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {
            this.radGridPosts.DataSource = pm.Getlist().OrderByDescending(p => p.CreatedDate).ToList();
        }
        protected void radGridPosts_ItemDataBound(object source, GridItemEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
                Partner item = (Partner)e.Item.DataItem;
                LinkButton ltContentVN = e.Item.FindControl("hpContentVN") as LinkButton;
                Literal ltContentEN = e.Item.FindControl("ltContentEN") as Literal;
                Literal ltdisplay = e.Item.FindControl("ltdisplay") as Literal;
                RadBinaryImage radimage = e.Item.FindControl("radlogo") as RadBinaryImage;
                ltContentVN.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                ltContentVN.CommandArgument = item.Id.ToString();
                ltContentEN.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                ltdisplay.Text = item.HttpLink;
                radimage.ImageUrl = item.ImageUrl;
            }
        }
        protected void radGridPosts_EditCommand(object source, GridCommandEventArgs e)
        {
            if (e.Item is GridDataItem)
            {
                Partner item = (Partner)e.Item.DataItem;
                txtNameen.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                txtNamevn.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
         
            }
        }
        protected void hpcontentedit(object sender, EventArgs e)
        {
            Reset();
            LinkButton btn = (LinkButton)sender;
            Library.DTO.Partner item = pm.GetById(new Guid(btn.CommandArgument));
            _item = item;
            txtNameen.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
            txtNamevn.Text = item.CompanyName.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
            txtLink.Text = item.HttpLink;
            imagelogo.Src = item.ImageUrl;
        }
        protected void radGridPosts_DeleteCommand(object source, GridCommandEventArgs e)
        {
            string ID = (e.Item as GridDataItem).OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Id"].ToString();
            Library.DTO.Partner itemdelete = new Partner();
            itemdelete = pm.GetById(new Guid(ID));
            itemdelete.Status = 1;
            pm.Update(itemdelete);
        }
        protected void btnSave_Onclick(object sender, EventArgs e)
        {
            Save();
        }
        protected void btnReset_Onclick(object sender, EventArgs e)
        {
            Reset();
        }
        private void Reset()
        {
            txtLink.Text = "";
            txtNameen.Text = "";
            txtNamevn.Text = "";
            cbalnwebsite.Checked = false;
            cbforum.Checked = false;
        }
        private void SaveImage()
        {
            string path2 = "~/images/PartNerLogo/";                                    
            if (this.flogo.HasFile)
            {
                string pathnew = path2 + base.Server.HtmlEncode(this.flogo.FileName);                            
                flogo.SaveAs(MapPath(pathnew));
            }
            this.Imagepath = path2 + base.Server.HtmlEncode(this.flogo.FileName);
        }
        public string Imagepath
        {
            get
            {
                string result;
                if (this.ViewState["Imagepath"] != null)
                {
                    result = this.ViewState["Imagepath"].ToString();
                }
                else
                {
                    result = null;
                }
                return result;
            }
            set
            {
                this.ViewState["Imagepath"] = value.ToString();
            }
        }
        private void Save()
        {
            try
            {
                Partner item = new Partner();
                if (this._item != null)
                {
                    item = this._item;
                }
                item.CompanyName = LanguageUtils.ReadLanguageContent(new string[]
				{
					this.txtNamevn.Text,
					this.txtNameen.Text
				});
                item.CreatedDate = System.DateTime.Now;
                item.HttpLink = string.Format(this.txtLink.Text, new object[0]);
                if (this.flogo.HasFile)
                {
                    this.SaveImage();
                    item.ImageUrl = this.Imagepath;
                }
                item.Status = 0;
                if (this._item != null)
                {
                    pm.Update(item);
                }
                else
                {
                    pm.Add(item);
                }
                this.radPanel.Alert("Save Successful");
            }
            catch (System.Exception ex)
            {
                this.radPanel.Alert(ex.Message);
            }
        }
        public Partner _item
        {
            get
            {
                Partner result;
                if (this.ViewState["_item"] != null)
                {
                    result = (this.ViewState["_item"] as Partner);
                }
                else
                {
                    result = null;
                }
                return result;
            }
            set
            {
                this.ViewState["_item"] = value;
            }
        }
    }
}