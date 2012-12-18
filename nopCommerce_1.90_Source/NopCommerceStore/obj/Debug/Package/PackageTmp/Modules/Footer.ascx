<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.FooterControl"
    CodeBehind="Footer.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="StoreThemeSelector" Src="~/Modules/StoreThemeSelector.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="InfoBlock" Src="~/Modules/InfoBlock.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="InfoBlock2" Src="~/Modules/InfoBlock2.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="InfoBlock3" Src="~/Modules/InfoBlock3.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="CategoryNavigation" Src="~/Modules/CategoryNavigation.ascx" %>
<div class="footer">
    <div class="clear">
            </div>   
    <div>
        <div style="float:left; width:25%; text-align:left;">
        <nopCommerce:InfoBlock ID="ctrlInfoBlock" runat="server" />
            <div class="clear">
            </div>        
        </div>
        <div style="float:left; width:25%;text-align:left;">
        <nopCommerce:CategoryNavigation ID="ctrlCategoryNavigation" runat="server" />
            <div class="clear">
            </div>
        </div>
         <div style="float:left; width:25%;text-align:left;">
        <nopCommerce:InfoBlock3 ID="ctrlInfoBlock3" runat="server" />
            <div class="clear">
            </div>        
        </div>

        <div style="float:right; width:25%;text-align:left;">
        <nopCommerce:InfoBlock2 ID="ctrlInfoBlock2" runat="server" />
            <div class="clear">
            </div>        
        </div>
    </div>
    <div class="clear"></div>
    <div class="footer-poweredby" style="color:White!important;">
        Powered by <a href="http://www.nopcommerce.com/">nopCommerce</a>
        <%--Would you like to remove the "Powered by nopCommerce" link in the bottom of the footer? 
        Find more info here http://www.nopcommerce.com/copyrightremoval.aspx--%>
    </div>
    <div class="footer-disclaimer">
        <%=String.Format(GetLocaleResourceString("Content.CopyrightNotice"), 
                                    DateTime.Now.Year.ToString(), 
                                    this.SettingManager.StoreName)%>
    </div>
    <div class="footer-storetheme">
        <nopCommerce:StoreThemeSelector ID="ctrlStoreTheme" runat="server" />
    </div>
</div>
