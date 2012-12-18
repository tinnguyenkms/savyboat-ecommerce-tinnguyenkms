<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master2.Master" AutoEventWireup="true" CodeBehind="MultiPage.aspx.cs" Inherits="ALNWebsite.Site.Pages.MultiPage" %>
<%@ Register Src="~/Site/Control/MultiPage.ascx" TagPrefix="uc" TagName="MultiPageControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div>
    <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="20px" Text="Terminology" ></asp:Label>
 </div>
<div>
    <uc:MultiPageControl ID="multipagecontrol" runat="server" />
</div>
</asp:Content>
