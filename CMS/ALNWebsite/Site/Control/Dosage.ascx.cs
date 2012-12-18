using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.BLL;
using Library.DTO;
namespace ALNWebsite.Site.Control
{
    public partial class Dosage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static DogseManager dogmg = new DogseManager();
        protected void Btncalculation_Click(object sender, EventArgs e)
        {
            Dogse item = new Dogse();
            Dogse item2 = new Dogse();
            string infulent = InfluentCOD(TxtInfluentCOD.Text.Trim()).ToString();
            LblInfluents.Text = TxtInfluentCOD.Text.Trim();
            LblInfluents0.Text = TxtInfluentCOD.Text.Trim();
            string ae = Aeration(TxtAeration.Text.Trim()).ToString();
            lblAerations.Text = TxtAeration.Text.Trim();
            lblAerations0.Text = TxtAeration.Text.Trim();
            item = dogmg.Tryvalue(infulent, ae, 0);
            item2 = dogmg.Tryvalue(infulent, ae, 1);
            // TxtInfluentCOD.Text = "";
            // TxtAeration.Text = "";

            if (item != null)
            {
                lblday.Text = item.Days_1_5;
                lblweek26.Text = item.Weeks_2_6;
                lblweek7.Text = item.Weeks_7;

            }
            if (item2 != null)
            {

                lblday0.Text = item2.Days_1_5;
                lblweek27.Text = item2.Weeks_2_6;
                lblweek28.Text = item2.Weeks_7;
            }
        }
        private int InfluentCOD(string InfluentCOD)
        {
            int A = 0;
            int temp = int.Parse(InfluentCOD);
            if (temp > 0 && temp < 1000)
                A = 500;
            else if (temp >= 1000 && temp < 2000)
                A = 1000;
            else
                A = 2000;
            return A;
        }
        private int Aeration(string Aera)
        {
            int B = 0;
            int temp = int.Parse(Aera);
            if (temp > 0 && temp <= 100)
                B = 100;
            else if (temp > 100 && temp <= 250)
                B = 250;
            else if (temp > 250 && temp <= 500)
                B = 500;
            else if (temp > 500 && temp <= 750)
                B = 750;
            else if (temp > 750 && temp <= 1000)
                B = 1000;
            else if (temp > 1000 && temp <= 1500)
                B = 1500;
            else if (temp > 1500 && temp <= 2000)
                B = 2000;
            else
                B = 3000;
            return B;
        }
    }
}