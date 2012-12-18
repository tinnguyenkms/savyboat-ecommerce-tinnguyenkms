<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultiPage.ascx.cs" Inherits="ALNWebsite.Site.Control.MultiPage" %>
<div>
    <telerik:RadTabStrip ID="multipage" runat="server" Skin="Telerik"   OnTabDataBound="RadTabStrip1_TabDataBound" MultiPageID="pagetad" OnPreRender="tabstrip_Prerender" >
        <TabTemplate>
            <asp:Label ID="lblContent" runat="server" Width="2px" />
        </TabTemplate>
        
    </telerik:RadTabStrip>    
    <telerik:RadMultiPage ID="pagetad" runat="server" SkinID="Vista" >  
    </telerik:RadMultiPage>
</div>
