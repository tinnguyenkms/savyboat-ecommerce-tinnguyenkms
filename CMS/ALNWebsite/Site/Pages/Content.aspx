<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Content.aspx.cs" Inherits="ALNWebsite.Site.Pages.Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div>
    <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="20px" ></asp:Label>
 </div>
 <div>
    <asp:Literal ID="litcontent" runat="server"/>
</div>
</asp:Content>
