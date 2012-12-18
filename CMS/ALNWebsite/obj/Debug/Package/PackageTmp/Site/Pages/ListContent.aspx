<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="ListContent.aspx.cs" Inherits="ALNWebsite.Site.Pages.ListContent" %>
<%@ Register Src="~/Site/Control/ListNewDetail.ascx" TagPrefix="uc" TagName="ListDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:ListDetail id="ListDetail" runat="server" />
</asp:Content>
