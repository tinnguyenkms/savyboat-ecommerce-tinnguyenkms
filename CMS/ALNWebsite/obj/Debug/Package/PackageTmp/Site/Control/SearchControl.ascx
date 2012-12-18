<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchControl.ascx.cs" Inherits="ALNWebsite.Site.Control.SearchControl" %>
<div class="SearchControl">
    <div style="float:left; padding-left:40px; vertical-align:middle;"><telerik:RadTextBox ID="rtxtSearch" runat="server" Width="180px" />
    </div>
    <div style="float:right;"> <asp:Button ID="btnSearch" runat="server" Text="Go" /></div>
</div>
