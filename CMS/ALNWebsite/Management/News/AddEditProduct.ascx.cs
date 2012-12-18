using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using ClassLibary;
using ClassLibary.Objects;
namespace ALNWebsite.Management.News
{
    public partial class AddEditProduct : System.Web.UI.UserControl
    {

        private Object _dataItem = null;

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // Put user code to initialize the page here
        }

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        ///        Required method for Designer support - do not modify
        ///        the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {

            this.DataBinding += new System.EventHandler(this.Product_DataBinding);
        }
        #endregion

        public object DataItem
        {
            get
            {
                return this._dataItem;
            }
            set
            {
                this._dataItem = value;
            }
        }
        protected void Product_DataBinding(object sender, System.EventArgs e)
        {
            try
            {

                LanguageContent tocValue = DataBinder.Eval(DataItem, "Title") as LanguageContent;
                LanguageContent tocValue1 = DataBinder.Eval(DataItem, "Contents") as LanguageContent;
                object tocValue2 = DataBinder.Eval(DataItem, "GroupId");
                object tocValue3 = DataBinder.Eval(DataItem, "Tag");
                object tocValue4 = DataBinder.Eval(DataItem, "Timeexpiration");
                if (tocValue.ToString() != null)
                {
                    rtxtProductName.Text = tocValue.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                    rtxtProductNamevn.Text = tocValue.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                    reDescription.Content = tocValue1.ToLanguage(ClassLibary.Objects.Enumerable.Languages.English);
                    reDescriptionVN.Content = tocValue1.ToLanguage(ClassLibary.Objects.Enumerable.Languages.Vietnamese);
                    if (tocValue2.ToString() != "")
                        if (int.Parse(tocValue2.ToString()) == 3)
                            cbformember.Checked = true;
                    txttag.Text = tocValue3.ToString();
                    radngayhethan.SelectedDate = DateTime.Parse(tocValue4.ToString());
                }
            }
            catch { }
            
        }
        

    }
}