using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Presentation;
using Library.BLL;
namespace calculator.control
{
    public partial class Pilot : System.Web.UI.UserControl
    {
        private static ProductDetailManager productmg = new ProductDetailManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            if (WebSercurity.IsLogged() == true)
                Button1.Text = "Calculator";
            else
                Button1.Text = "Sign In";
        }
        private void BindData()
        {
            string a = "0";
            string b = "25";
            string c = "50";
            string d = "75";
            string e = "100";
            string f = "200";
            string g = "300";
            string h = "400";
            string j = "500";
            string k = "800";
            lbl1.Text = d;
            lbl2.Text = d;
            lbl3.Text = d;
            lbl4.Text = d;
            lbl5.Text = d;
            lbl6.Text = e;
            lbl7.Text = e;
            lbl8.Text = e;
            lbl9.Text = e;
            lbl10.Text = e;
            lbl11.Text = c;
            lbl12.Text = c;
            lbl13.Text = c;
            lbl14.Text = c;
            lbl15.Text = c;
            lbl16.Text = e;
            lbl17.Text = e;
            lbl18.Text = e;
            lbl19.Text = e;
            lbl20.Text = a;
            lbl21.Text = a;
            lbl22.Text = a;
            lbl23.Text = a;
            lbl24.Text = a;
            lbl25.Text = a;
            lbl26.Text = k;
            lbl27.Text = a;
            lbl28.Text = a;
            lbl29.Text = a;
            lbl30.Text = a;
            lbl31.Text = c;
            lbl32.Text = c;
            lbl33.Text = c;
            lbl34.Text = c;
            lbl35.Text = c;
            lbl36.Text = c;
            lbl37.Text = c;
            lbl38.Text = c;
            lbl39.Text = c;
            lbl40.Text = e;
            lbl41.Text = e;
            lbl42.Text = e;
            lbl43.Text = e;
            lbl44.Text = e;
            lbl45.Text = e;
            lbl46.Text = e;
            lbl47.Text = e;
            lbl48.Text = e;
            lbl49.Text = c;
            lbl50.Text = c;
            lbl51.Text = c;
            lbl52.Text = c;
            lbl53.Text = c;
            lbl54.Text = c;
            lbl55.Text = c;
            lbl56.Text = c;
            lbl57.Text = c;
            lbl58.Text = a;
            lbl59.Text = a;
            lbl60.Text = a;
            lbl61.Text = a;
            lbl62.Text = a;
            lbl63.Text = a;
            lbl64.Text = a;
            lbl65.Text = a;
            lbl66.Text = a;
            lbl67.Text = e;
            lbl68.Text = e;
            lbl69.Text = f;
            lbl70.Text = f;
            lbl71.Text = f;
            lbl72.Text = f;
            lbl73.Text = g;
            lbl74.Text = g;
            lbl75.Text = g;
            lbl76.Text = e;
            lbl77.Text = e;
            lbl78.Text = f;
            lbl79.Text = f;
            lbl80.Text = f;
            lbl81.Text = f;
            lbl82.Text = g;
            lbl83.Text = g;
            lbl84.Text = g;
            lbl85.Text = b;
            lbl86.Text = b;
            lbl87.Text = b;
            lbl88.Text = b;
            lbl89.Text = b;
            lbl90.Text = b;
            lbl91.Text = b;
            lbl92.Text = e;
            lbl93.Text =  e;
            lbl94.Text = e;
            lbl95.Text = e;
            lbl96.Text = e;
            lbl97.Text = e;
            lbl98.Text = e;
            lbl99.Text = c;
            lbl100.Text = c;
            lbl101.Text = c;
            lbl102.Text = c;
            lbl103.Text = c;
            lbl104.Text = c;
            lbl105.Text = c;
            lbl106.Text = a;
            lbl107.Text = a;
            lbl108.Text = a;
            lbl109.Text = a;
            lbl110.Text = a;
            lbl111.Text = a;
            lbl112.Text = a;
            lbl113.Text = g;
            lbl114.Text = h;
            lbl115.Text = h;
            lbl116.Text = h;
            lbl117.Text = j;
            lbl118.Text = j;
            lbl119.Text = j;
            lbl120.Text = g;
            lbl121.Text = h;
            lbl122.Text = h;
            lbl123.Text = h;
            lbl124.Text = j;
            lbl125.Text = j;
            lbl126.Text = j;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (WebSercurity.IsLogged() == true)
            {
                if (productmg.CheckProductName(txtpilot.Text.Trim()))
                {
                    BindData();
                    lblproductname.Text =txtpilot.Text.ToString() ;
                    
                }
                else
                {
                    panel.Alert("Invalid Product Name");
                }
            }
            else
                Response.Redirect("~/Site/Pages/SignIn.aspx" + "?lasturl=Pilot.aspx");
        }
    }
}