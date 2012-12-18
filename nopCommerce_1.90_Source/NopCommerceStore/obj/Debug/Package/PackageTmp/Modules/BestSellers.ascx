<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.BestSellersControl"
    CodeBehind="BestSellers.ascx.cs" %>
       <%@ Register TagPrefix="nopCommerce" TagName="ProductPrice1" Src="~/Modules/ProductPrice1.ascx" %>
<div class="bestsellers">      
    <asp:DataList ID="dlCatalog" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
        RepeatLayout="Table" OnItemDataBound="dlCatalog_ItemDataBound" ItemStyle-CssClass="item-box" EnableViewState="false">
        <HeaderTemplate>
            <div class="headeritem-box">
                 <img src="../App_Themes/darkOrange/images/Savyboat/Best Seller.png" />
            </div>
            <div class="headeritem-box">
                <img src="../App_Themes/darkOrange/images/Savyboat/Best Seller.png" />
            </div>
           <div class="headeritem-box">
                 <img src="../App_Themes/darkOrange/images/Savyboat/Best Seller.png" />
            </div>
            <div class="headeritem-box">
                 <img src="../App_Themes/darkOrange/images/Savyboat/Best Seller.png" />
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="product-item">
                <div class="picture">
                    <asp:HyperLink ID="hlImageLink" runat="server" />
                </div>
                <h2 class="product-title">
                    <asp:HyperLink ID="hlProduct" runat="server" />
                </h2>
                <h2 class="product-price">
                       <nopCommerce:ProductPrice1 ID="ctrlProductPrice" runat="server"  />
                </h2>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
