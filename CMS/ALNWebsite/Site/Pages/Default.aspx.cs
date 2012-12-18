using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALNWebsite.Site.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Title = string.Format("ALN-Viet Nam");
                controlview1.MenuDetailID = new Guid("37240cf4-8737-47fe-bf95-94e4c3df2814");
                controlview1.Takerow = 5;
                controlview2.MenuDetailID = new Guid("0789d29b-375b-4ca1-b830-e4da0559b0db");
                controlview2.Takerow = 5;
                HomeMulti1.MenuDetailID = new Guid("76da220d-eea9-47f4-9ef2-c65e26bc4410");
                HomeMulti1.Takerow = 5;
                controlview4.Menuid = new Guid("5DF46EFB-5FC9-4077-B6BF-7804A1C86E8F");
                controlview4.Takerow = 5;
                Homecontrol.Menudetailid = new Guid("9c2287a0-4a36-4592-80bb-a9213a77a211");
            }
        }
    }
}