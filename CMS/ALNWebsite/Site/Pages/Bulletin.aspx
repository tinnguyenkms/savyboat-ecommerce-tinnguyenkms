<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Bulletin.aspx.cs" Inherits="ALNWebsite.Site.Pages.Bulletin" %>
<%@ Register Src="~/Site/Control/PageMultiTab.ascx" TagPrefix="uc" TagName="Bullet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:Bullet ID ="bullet" runat="server" />
</asp:Content>
