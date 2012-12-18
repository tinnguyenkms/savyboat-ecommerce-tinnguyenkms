using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.DTO;
using ClassLibary.Objects;
using ClassLibary.Objects.Enumerable;
namespace ALNWebsite.Management.Pages
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
            LanguageContent tocValue1 = DataBinder.Eval(DataItem, "Content") as LanguageContent;
            
            reContentPage.Content = tocValue1.ToLanguage(Languages.English);
            reContentPagevn.Content = tocValue1.ToLanguage(Languages.Vietnamese);
        }
        

    }
}