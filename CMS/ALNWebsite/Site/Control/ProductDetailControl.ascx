<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductDetailControl.ascx.cs" Inherits="ALNWebsite.Site.Control.ProductDetailControl" %>
<div>
<asp:Panel runat="server" ID="PanelTitle">
    <asp:Label runat="server" ID="lblTitle" Font-Bold="true" Font-Size="20px"></asp:Label>
</asp:Panel>
</div>
<div>
    <asp:Literal ID= "ltDetailProduct" runat="server" />
</div>

