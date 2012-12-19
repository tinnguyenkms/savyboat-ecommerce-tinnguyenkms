<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ProductBoxMainCategory"
    CodeBehind="ProductBoxMainCategory.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductPrice2" Src="~/Modules/ProductPrice2.ascx" %>
<div class="product-item-main">
    <div class="picture">
        <asp:HyperLink ID="hlImageLink" runat="server" />
    </div>    
    <h2 class="product-title">
        <asp:HyperLink ID="hlProduct" runat="server" />
    </h2>
    <h2 class="prices">         
        <nopCommerce:ProductPrice2 ID="ctrlProductPrice" runat="server" ProductID='<%#Eval("ProductId") %>' />        
    </h2>
    <%--<div class="description">
        <asp:Literal runat="server" ID="lShortDescription"></asp:Literal>
    </div>--%>
    <div class="add-info">
       
        <div class="buttons">
            <asp:Button runat="server" ID="btnProductDetails" OnCommand="btnProductDetails_Click"
                Text="<% $NopResources:Products.ProductDetails %>" ValidationGroup="ProductDetails"
                CommandArgument='<%# Eval("ProductId") %>' CssClass="productgridproductdetailbutton" /><br />
            <asp:Button runat="server" ID="btnAddToCart" OnCommand="btnAddToCart_Click" Text="<% $NopResources:Products.AddToCart %>"
                ValidationGroup="ProductDetails" CommandArgument='<%# Eval("ProductId") %>' CssClass="productgridaddtocartbutton" />
        </div>
    </div>                   
</div>
