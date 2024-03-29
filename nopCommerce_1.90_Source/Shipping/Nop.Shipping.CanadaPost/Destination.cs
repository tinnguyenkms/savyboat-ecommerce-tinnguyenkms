﻿//------------------------------------------------------------------------------
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

using System.Runtime.Serialization;
using System.Text;

namespace NopSolutions.NopCommerce.Shipping.Methods.CanadaPost
{
    /// <summary>
    /// Information on where the parcel will be shipped to
    /// </summary>
    [DataContract]
    public class Destination
    {
        #region Utilities
        /// <summary>
        /// Build an XML string with the destination informations.
        /// </summary>
        /// <param name="includeComments">if set to <c>true</c> [include comments].</param>
        /// <returns></returns>
        internal string ToXml(bool includeComments)
        {
            var xmlString = new StringBuilder();
            // if we want to include the comments in the xml
            if (includeComments)
            {
                xmlString.AppendLine("<!--********************************-->");
                xmlString.AppendLine("<!-- City where the parcel will be  -->");
                xmlString.AppendLine("<!-- shipped to                     -->");
                xmlString.AppendLine("<!--********************************-->");
            }
            xmlString.AppendLine("<city> " + this.City + " </city>");
            // if we want to include the comments in the xml
            if (includeComments)
            {
                xmlString.AppendLine("<!--********************************-->");
                xmlString.AppendLine("<!-- Province (Canada) or State (US)-->");
                xmlString.AppendLine("<!-- where the parcel will be       -->");
                xmlString.AppendLine("<!-- shipped to                     -->");
                xmlString.AppendLine("<!--********************************-->");
            }
            xmlString.AppendLine("<provOrState> " + this.StateOrProvince + " </provOrState>");
            // if we want to include the comments in the xml
            if (includeComments)
            {
                xmlString.AppendLine("<!--********************************-->");
                xmlString.AppendLine("<!-- Country or ISO Country code    -->");
                xmlString.AppendLine("<!-- where the parcel will be       -->");
                xmlString.AppendLine("<!-- shipped to                     -->");
                xmlString.AppendLine("<!--********************************-->");
            }
            xmlString.AppendLine("<country>  " + this.Country + " </country>");
            // if we want to include the comments in the xml
            if (includeComments)
            {
                xmlString.AppendLine("<!--********************************-->");
                xmlString.AppendLine("<!-- Postal Code (or ZIP) where the -->");
                xmlString.AppendLine("<!-- parcel will be shipped to      -->");
                xmlString.AppendLine("<!--********************************-->");
            }
            xmlString.AppendLine("<postalCode> " + this.PostalCode + "</postalCode>");

            return xmlString.ToString();
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the City where the parcel will be shipped to.
        /// </summary>
        /// <value>The city.</value>
        [DataMember]
        public string City { get; set; }

        /// <summary>
        /// Gets or sets the Province (Canada) or State (US) where the parcel will be shipped to.
        /// </summary>
        /// <value>The state or province.</value>
        [DataMember]
        public string StateOrProvince { get; set; }

        /// <summary>
        /// Gets or sets the Country or ISO Country code where the parcel will be shipped to.
        /// </summary>
        /// <value>The country.</value>
        [DataMember]
        public string Country { get; set; }

        /// <summary>
        /// Gets or sets the Postal Code (or ZIP) where the parcel will be shipped to.
        /// </summary>
        /// <value>The postal code.</value>
        [DataMember]
        public string PostalCode { get; set; }

        #endregion
    }
}
