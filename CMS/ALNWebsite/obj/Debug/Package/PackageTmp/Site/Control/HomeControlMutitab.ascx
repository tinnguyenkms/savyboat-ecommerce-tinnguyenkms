<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeControlMutitab.ascx.cs" Inherits="ALNWebsite.Site.Control.HomeControlMutitab" %>
<div class="Box" style="height:280px;">
   <div class="Backgroudtitle" id="Box">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true"></asp:Label>
    </div>    
    <div>
        <telerik:RadTabStrip ID="radtab" runat="server" MultiPageID="Multipage1" OnTabDataBound="RadTabStrip1_TabDataBound" OnPreRender="tabstrip_Prerender" Skin="Telerik">
            <TabTemplate>
            <asp:Label ID="lblContent" runat="server" Width="70px"  Font-Size="11px" />
        </TabTemplate>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage ID="Multipage1" runat="server">
        </telerik:RadMultiPage>          
    </div>
</div>

