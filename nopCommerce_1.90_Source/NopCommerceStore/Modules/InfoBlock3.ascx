<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.InfoBlockControl3"
    CodeBehind="InfoBlock3.ascx.cs" %>
<div class="block block-info">
    <div class="title">
        <%=GetLocaleResourceString("Footer.YourOrder")%>
    </div>
    <div class="clear">
    </div>
    <div class="listbox">
        <ul>
                    
          <li><a href="<%=Page.ResolveUrl("~/shoppingcart.aspx") %>">
                <%=GetLocaleResourceString("Footer.OrderStatus")%>
          </a></li>
          <li><a href="<%=Page.ResolveUrl("~/shippinginfo.aspx")%>">
                <%=GetLocaleResourceString("Content.Shipping&Delivery")%></a></li>            
        <li><a href="<%=Page.ResolveUrl("~/returnsinfo.aspx")%>">
                <%=GetLocaleResourceString("Content.Returns")%></a></li>
        </ul>
    </div>
</div>
