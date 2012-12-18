using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Library.BLL;
using Library.DTO;
using Library.Presentation;
using System.Web.UI.HtmlControls;
namespace ALNWebsite.Site.Control
{
    public partial class ListProductByCategory : BaseUserControl
    {
        private static MenuDetailManger ItemMG = new MenuDetailManger();
        PagedDataSource pds = new PagedDataSource();
        public IList<ProductDetail> DataSource
        {
            get
            {
                return (IList<ProductDetail>)ViewState["DataSource"];
            }
            set
            {
                if (NumberItem > 0)
                    ViewState["DataSource"] = value.Take(NumberItem).ToList();
                else
                    ViewState["DataSource"] = value;
                pds.DataSource = (IList<ProductDetail>)ViewState["DataSource"];
                pds.AllowPaging = true;
                pds.PageSize = 10;
                pds.CurrentPageIndex = CurrentPage;
                lstProduct.DataSource = pds;
                lstProduct.DataBind();
                doPaging();
            }
        }
        public int NumberItem
        {
            get;
            set;
        }
        protected void lstProduct_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                ProductDetail item = e.Item.DataItem as ProductDetail;
                LinkButton linkview = e.Item.FindControl("lbtnProduct") as LinkButton;
                Label lblName = e.Item.FindControl("lblName") as Label;
                Literal ltshortcontent = e.Item.FindControl("ltShortContent") as Literal;
                HtmlImage new_icon = e.Item.FindControl("new_icon") as HtmlImage;
                lblName.Text = item.Name.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                ltshortcontent.Text = Library.Utility.FunctionUtility.DisbleHyperlink(Library.Utility.FunctionUtility.TrimDescription(item.Content.ToLanguage(this.SelectLanguage), 1000));
                if (item.GroupId == WebSercurity.GetGroupIdCurrentUser() || WebSercurity.GetGroupIdCurrentUser()==6)                
                    linkview.Text = ">>Read More<<";                                
                else
                    linkview.Text = ">>Please Sign In<<";
                linkview.CommandArgument = item.Id.ToString() + "/" + item.GroupId.ToString();
                if (item.Timeexpiration > DateTime.Now)
                {
                    new_icon.Visible = true;
                    new_icon.Src = "~/images/newsIcon.gif";
                }
                else
                    new_icon.Visible = false;
                
            }
        }
        protected void linkitem1_onclick(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            string id = lbtn.CommandArgument;
            string[] liststring = new string[2];
            liststring = id.Split('/');
            int groupid = int.Parse(liststring[1]);
            if (groupid==0|| groupid==6)
                Response.Redirect("~/Site/Pages/ProductDetail.aspx" + "?id=" + liststring[0]);
            else
                Response.Redirect("~/Site/Pages/SignIn.aspx" + "?lasturl=ProductDetail.aspx?id=" + liststring[0]);
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
        private void doPaging()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("PageIndex");
            dt.Columns.Add("PageText");
            for (int i = 0; i < pds.PageCount; i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i + 1;
                dt.Rows.Add(dr);
            }

            dlPaging.DataSource = dt;
            dlPaging.DataBind();
        }
        protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
            if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
            {
                lnkbtnPage.Enabled = false;
                lnkbtnPage.Font.Bold = true;
            }
        }
        public int CurrentPage
        {

            get
            {
                if (this.ViewState["CurrentPage"] == null)
                    return 0;
                else
                    return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
            }

            set
            {
                this.ViewState["CurrentPage"] = value;
            }

        }
        protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("lnkbtnPaging"))
            {
                CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
             //   BindGrid();
                pds.DataSource = (IList<ProductDetail>)ViewState["DataSource"];
                pds.AllowPaging = true;
                pds.PageSize = 10;
                pds.CurrentPageIndex = CurrentPage;
                lstProduct.DataSource = pds;
                lstProduct.DataBind();
                doPaging();
                
            }
        }
        
    }
}