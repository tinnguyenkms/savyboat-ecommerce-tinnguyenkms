<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.InfoBlockControl"
    CodeBehind="InfoBlock.ascx.cs" %>
<div class="block block-info">
    <div class="title">
        <%=GetLocaleResourceString("Footer.Sitename")%>
    </div>
    <div class="clear">
    </div>
    <div class="listbox">
        <ul>
            <li><a href="<%=Page.ResolveUrl("~/contactus.aspx")%>">
                <%=GetLocaleResourceString("ContactUs.ContactUs")%></a> </li>
            <li><a href="<%=Page.ResolveUrl("~/aboutus.aspx")%>">
                <%=GetLocaleResourceString("Content.AboutUs")%></a></li>
            <% if (this.BlogService.BlogEnabled)
               { %>
            <li><a href="<%= SEOHelper.GetBlogUrl()%>">
                <%=GetLocaleResourceString("Blog.Blog")%></a></li>
            <%} %>            
            <% if (this.ProductService.RecentlyAddedProductsEnabled)
               { %>
            <li><a href="<%=Page.ResolveUrl("~/recentlyaddedproducts.aspx")%>">
                <%=GetLocaleResourceString("Products.NewProducts")%></a></li>
            <%} %>
            <% if (this.ProductService.RecentlyViewedProductsEnabled)
               { %>
            <li><a href="<%=Page.ResolveUrl("~/recentlyviewedproducts.aspx")%>">
                <%=GetLocaleResourceString("Products.RecentlyViewedProducts")%></a></li>
            <%} %>
            <% if (this.ProductService.CompareProductsEnabled)
               { %>
            <li><a href="<%=Page.ResolveUrl("~/compareproducts.aspx")%>">
                <%=GetLocaleResourceString("Products.CompareProductsList")%></a></li>
            <%} %>
            <li><a href="<%=Page.ResolveUrl("~/sitemap.aspx")%>">
                <%=GetLocaleResourceString("Content.Sitemap")%></a></li>
            
            
        </ul>
    </div>
</div>
