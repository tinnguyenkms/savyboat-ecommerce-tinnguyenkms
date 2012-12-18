<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductList.ascx.cs"
Inherits="ALNWebsite.Site.Control.ProductList" %>
<asp:Panel runat="server" ID="PanelTitle">
    <asp:Label runat="server" ID="lblTitle" Font-Bold="true" Font-Size="20px"></asp:Label>
</asp:Panel>
<asp:DataList runat="server" RepeatLayout="Flow" ID="lstProduct" RepeatDirection="Horizontal" RepeatColumns="3"
    OnItemDataBound="lstProduct_ItemDataBound">
    <ItemTemplate>
        <div class="ProductItem" align="center" style="float: left">
            <asp:ImageButton runat="server" ID="ProductImage" Width="100%" Height="100%" OnClick="linkitem1_onclick" CommandArgument= <%#Eval("ID") %> />
            <div style=" float:left;">
                <asp:Label runat="server" ID="lblName" Width="150px"></asp:Label>
                <br />
                <asp:Label runat="server" ID="lblCost"></asp:Label>
            </div>
        </div>
    </ItemTemplate>
    <ItemStyle Width="200" />
</asp:DataList>