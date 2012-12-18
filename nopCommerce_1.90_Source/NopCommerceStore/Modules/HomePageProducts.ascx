<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.HomePageProductsControl"
    CodeBehind="HomePageProducts.ascx.cs" %>
    <%@ Register TagPrefix="nopCommerce" TagName="ProductPrice1" Src="~/Modules/ProductPrice1.ascx" %>
<div class="home-page-product-grid">        
    <asp:DataList ID="dlCatalog" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
        RepeatLayout="Table" OnItemDataBound="dlCatalog_ItemDataBound" ItemStyle-CssClass="item-box" EnableViewState="false">
        <ItemTemplate>
            <div class="product-item">
                <div class="picture">
                    <asp:HyperLink ID="hlImageLink" runat="server"  />
                </div>
                <h2 class="product-title">
                    <asp:HyperLink ID="hlProduct" runat="server" />
                </h2>
                <h2 class="product-price">
                      <nopCommerce:ProductPrice1 ID="ctrlProductPrice" runat="server"  />
                </h2>
                <div class="buttonbuynow">
                <asp:ImageButton ID="ibtnBuynow" runat="server"  ImageUrl="~/App_Themes/darkOrange/images/Savyboat/ButtonBuyNow.png" OnClick="ibtnBuynow_Click" />
                    
                </div>
            </div>
        </ItemTemplate>        
    </asp:DataList>
</div>
