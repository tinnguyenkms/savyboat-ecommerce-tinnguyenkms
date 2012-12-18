using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Pages
{
    public partial class ListContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                if (Request.QueryString["id"] != null)
                {
                    string titlepage = string.Format( Request.QueryString["Page"]);
                    Title = titlepage;
                    string id = Request.QueryString["id"];
                    ListDetail.catID = new Guid(id);
                    ListDetail.Title = titlepage;
                    if (Request.QueryString["PageNo"] != null)
                    {
                        int i = int.Parse(Request.QueryString["PageNo"]);
                        ListDetail.PageNo = i -1;
                    }
                }
        }
    }
}