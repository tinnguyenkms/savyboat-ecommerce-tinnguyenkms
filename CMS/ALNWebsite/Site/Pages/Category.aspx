<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="ALNWebsite.Site.Pages.Cetagory" %>
<%@ Register Src="~/Site/Control/ProductList.ascx" TagPrefix="uc" TagName="Category" %>
<%@ Register Src="~/Site/Control/ListProductByCategory.ascx" TagPrefix="uc" TagName="ListProductByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:Category id="Category" runat="server" />
    <uc:ListProductByCategory id="ListProductByCategory" runat="server" />
</asp:Content>
