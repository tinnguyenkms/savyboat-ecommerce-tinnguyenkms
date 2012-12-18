using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculator.control
{
    public partial class calculator : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           double a=0;
           if (int.Parse(RadioButtonList1.SelectedValue) == 1)
           {
               a = double.Parse(txtpercent_to_ppm.Text.Trim()) / 10000;
               //a = Math.Round(a, 10);
               lbloutput.Text = a.ToString() + " Ppm";


           }
           else
           {
               if(int.Parse(RadioButtonList1.SelectedValue)==2)
               a = double.Parse(txtpercent_to_ppm.Text.Trim()) * 10000;
               lbloutput.Text = a.ToString() + " % ";
           }
          

        }

        protected void Btndecimalppm_Click(object sender, EventArgs e)
        {
            decimal b=0;
            if (int.Parse(Rdbdecimalppm.SelectedValue) == 3)
            {
                b = decimal.Parse(Txtdecimalppm.Text.Trim()) / 1000000;
                lbldecimal.Text =b.ToString() ;
            }
            else
            {
                b = decimal.Parse(Txtdecimalppm.Text.Trim()) * 1000000;
                lbldecimal.Text = b.ToString() + " ppm ";
            }
            Txtdecimalppm.Text = "";
            txtppmtoppb.Text = "";
            lbloutput.Text = "Output";
            lblppmtoppb.Text = "Output";
        }

        protected void btnppmtoppb_Click(object sender, EventArgs e)
        {
            double c=0;
            if (int.Parse(RadioButtonList2.SelectedValue) == 4)
            {
                c= double.Parse(txtppmtoppb.Text.Trim())/1000;
               lblppmtoppb.Text=c.ToString()+" P(ppm) ";
            }
            else
            {
                c= double.Parse(txtppmtoppb.Text.Trim())*1000;
                lblppmtoppb.Text = c.ToString() + " P(ppb) ";
            }
            Txtdecimalppm.Text = "";
            txtpercent_to_ppm.Text = "";
            lbldecimal.Text = "Output";
            lbloutput.Text = "Output";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            lbltextchange.Text = txtPercentage.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            decimal a = 0;
            a = decimal.Parse(txtPercentage.Text.Trim()) / 100;
            lblPercentage.Text = a.ToString();
        }

        protected void btnab_Click(object sender, EventArgs e)
        {
            decimal x = 0 ;
            decimal y = 0;
            decimal z;
            x = decimal.Parse(txta.Text.Trim());
            y = decimal.Parse(txtb.Text.Trim());
            z = x * y / 100;
            lblab.Text = z.ToString();
        }

        protected void btncalu_Click(object sender, EventArgs e)
        {
            decimal h = 0;
            decimal g = 0;
            decimal j;
            h = decimal.Parse(txta0.Text.Trim());
            g = decimal.Parse(txta1.Text.Trim());
            j = (h / g) * 100;
            lblxy.Text = j.ToString();
        }

        protected void btnincrease_Click(object sender, EventArgs e)
        {
            decimal p = 0;
            decimal o = 0;
           
            decimal u ;
            p= decimal.Parse(txta2.Text.Trim());
            o = decimal.Parse(txta3.Text.Trim());

            u = 100 * (p - o) / o;
            lblx1.Text = txta3.Text;
            lblincrease.Text = u.ToString();

        }

        protected void btnnghin_Click(object sender, EventArgs e)
        {
            decimal k = 0;
            k = decimal.Parse(txtnghin.Text.Trim())/1000;
            lblngan.Text = txtnghin.Text;
            lblnghin.Text = k.ToString();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtpercent_to_ppm.Text = "";
            lbloutput.Text = "Output";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Txtdecimalppm.Text = "";
            lbldecimal.Text = "Output";
        }

        protected void btnreset2_Click(object sender, EventArgs e)
        {
            txtppmtoppb.Text = "";
            lblppmtoppb.Text = "Output";
        }

        protected void btnrerset3_Click(object sender, EventArgs e)
        {
            txta.Text = "";
            txtb.Text = "";
            lblab.Text = "Value";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txta0.Text = "";
            txta1.Text = "";
            lblxy.Text = "0";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            txta2.Text = "";
            txta3.Text = "";
            lblincrease.Text = "0";
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            lbltextchange.Text = ".";
            txtPercentage.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            txtnghin.Text = "";
            lblnghin.Text="Output";
                lblngan.Text=".";
        }
       
    }
}