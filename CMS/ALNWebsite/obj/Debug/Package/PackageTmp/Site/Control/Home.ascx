<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="ALNWebsite.Site.Control.Home" %>
<div class="Register">
    <div class="ColLeft">
       <telerik:RadBinaryImage ID="rbimg" runat="server" ResizeMode="Fit" ImageUrl="~/images/green-technology.jpg" Width="200px" />
    </div>
    <div class="ColRight" style="width:60%">
        <div class="titlehome"><asp:Label ID="lbltitle" runat="server"></asp:Label></div>
        <div class="titleContent">
        <asp:Literal ID="ltcontent" runat="server"></asp:Literal><asp:HyperLink ID="hpreadmore" runat="server"></asp:HyperLink>
        </div>
    </div>
</div>
