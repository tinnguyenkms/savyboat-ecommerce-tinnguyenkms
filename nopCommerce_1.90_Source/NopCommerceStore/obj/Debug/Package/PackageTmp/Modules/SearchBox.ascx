<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.SearchBoxControl"
    CodeBehind="SearchBox.ascx.cs" %>
<ul>
    <li>
        <asp:TextBox ID="txtSearchTerms" runat="server" SkinID="SearchBoxText" Text="<% $NopResources:Search.SearchStoreTooltip %>" />&nbsp;
    </li>
    <li>
        <asp:ImageButton runat="server" ID="btnSearch" OnClick="btnSearch_Click" Text="<% $NopResources:Search.SearchButton %>"
            CssClass="searchboxbutton" CausesValidation="false" 
            ImageUrl="~/App_Themes/darkOrange/images/Button-Search.png" />        
    </li>
</ul>
