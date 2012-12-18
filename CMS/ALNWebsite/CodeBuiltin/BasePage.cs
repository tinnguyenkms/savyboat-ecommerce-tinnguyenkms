using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Library.BLL;
using Library.DTO;
using ClassLibary.Objects.Enumerable;



    public class BasePage : System.Web.UI.Page
    {
        private static MenuDetailManger menudelailmg = new MenuDetailManger();
        private static MenuManager menumg = new MenuManager();
        private static ProductDetailManager productmg = new ProductDetailManager();
        public Panel Getlocation(Guid id, Panel panel1)
        {
            MenuDetail item = new MenuDetail();
            Label lbl = new Label();
            lbl.Text = " >> ";
            panel1.Controls.Clear();
            if (id != Guid.Empty)
            {
                item = menudelailmg.GETBYID(id);
                if (item != null)
                {
                    LinkButton hp1 = new LinkButton();
                    hp1.Text = item.Name.ToLanguage(SelectLanguage);
                    hp1.CommandArgument = item.Id.ToString();
                    panel1.Controls.Add(hp1);
                    panel1.Controls.Add(lbl);
                    if (item.Menu != null)
                    {
                        LinkButton hp2 = new LinkButton();
                        hp2.Text = item.Parent[0].Name.ToLanguage(SelectLanguage);
                        hp2.ID = item.Parent[0].Id.ToString();
                        panel1.Controls.Add(hp2);
                    }
                }
            }
            return panel1;
        }
        public Languages SelectLanguage
        {
            get
            {
                if (Session["SelectLanguage"] == null)
                {
                    return ClassLibary.Objects.Enumerable.Languages.English;
                }
                else
                {
                    return (Languages)Session["SelectLanguage"];
                }
            }

            set { Session["SelectLanguage"] = value; }

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            

        }
        public string EmailAdmin
        {
            get
            {
                //return ContextManager.GetEmailInfo().Email;
                return string.Format("customercare@aln.com.vn");
            }
        }
      }
