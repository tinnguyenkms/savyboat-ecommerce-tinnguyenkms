using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibary.Objects;
using ClassLibary.Objects.Enumerable;

namespace ALNWebsite
{
    public partial class About : System.Web.UI.Page
    {
        LanguageContent obj = new LanguageContent();
        protected void Page_Load(object sender, EventArgs e)
        {
            string vn = "Con meo";
            string en = "Con cho";
            obj = LanguageUtils.ReadLanguageContent(vn, en);
            Response.Write(obj.ToLanguage(Languages.Vietnamese));

        }

    }
}
