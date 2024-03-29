//------------------------------------------------------------------------------
// The contents of this file are subject to the nopCommerce Public License Version 1.0 ("License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at  http://www.nopCommerce.com/License.aspx. 
// 
// Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 
// See the License for the specific language governing rights and limitations under the License.
// 
// The Original Code is nopCommerce.
// The Initial Developer of the Original Code is NopSolutions.
// All Rights Reserved.
// 
// Contributor(s): _______. 
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic.Measures;
using NopSolutions.NopCommerce.BusinessLogic.Profile;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Administration.Modules
{
    public partial class MeasureWeightInfoControl : BaseNopAdministrationUserControl
    {
        private void BindData()
        {
            MeasureWeight measureWeight = this.MeasureService.GetMeasureWeightById(this.MeasureWeightId);
            if (measureWeight != null)
            {
                this.txtName.Text = measureWeight.Name;
                this.txtSystemKeyword.Text = measureWeight.SystemKeyword;
                this.txtRatio.Value = measureWeight.Ratio;
                this.txtDisplayOrder.Value = measureWeight.DisplayOrder;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.BindData();
            }
        }

        public MeasureWeight SaveInfo()
        {
            string name = txtName.Text;
            string systemKeyword = txtSystemKeyword.Text;
            decimal ratio = txtRatio.Value;
            int displayOrder = txtDisplayOrder.Value;

            MeasureWeight measureWeight = this.MeasureService.GetMeasureWeightById(this.MeasureWeightId);
            if (measureWeight != null)
            {
                measureWeight.Name = name;
                measureWeight.SystemKeyword = systemKeyword;
                measureWeight.Ratio = ratio;
                measureWeight.DisplayOrder = displayOrder;
                this.MeasureService.UpdateMeasureWeight(measureWeight);
            }
            else
            {
                measureWeight = new MeasureWeight()
                {
                    Name = name,
                    SystemKeyword = systemKeyword,
                    Ratio = ratio,
                    DisplayOrder = displayOrder
                };
                this.MeasureService.InsertMeasureWeight(measureWeight);
            }

            return measureWeight;
        }

        public int MeasureWeightId
        {
            get
            {
                return CommonHelper.QueryStringInt("MeasureWeightId");
            }
        }
    }
}