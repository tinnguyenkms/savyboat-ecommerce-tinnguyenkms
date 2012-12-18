<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeAndSearchControl.ascx.cs" Inherits="ALNWebsite.Site.Control.TimeAndSearchControl" %>
<%@ Register Src="~/Site/Control/SearchControl.ascx" TagPrefix="uc" TagName="SearchControl" %>
<%@ Register Src="~/Site/Control/BoxMarquee.ascx" TagPrefix="uc" TagName="BoxMarquee" %>
<div class="TimeandSearchControl">
    <div style="float:left">
    <asp:Label ID="lblSelectLanguage" runat="server" BackColor="Red" />
                <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="true" 
                    Width="80px" onselectedindexchanged="ddlLanguage_SelectIndexChange" >
                 
                </asp:DropDownList>
    </div>
    <div style="float:left;">
        <uc:BoxMarquee ID="BoxMarqueecontrol" runat="server" />
    </div>
    <div style="float:right; text-align:right"> <uc:SearchControl id="search" runat="server"></uc:SearchControl>
</div>
