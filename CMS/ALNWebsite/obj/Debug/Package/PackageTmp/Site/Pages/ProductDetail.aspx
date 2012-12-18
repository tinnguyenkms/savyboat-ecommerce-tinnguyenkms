<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="ALNWebsite.Site.Pages.ProductDetail" %>
<%@ Register Src="~/Site/Control/ProductDetailControl.ascx" TagPrefix="uc" TagName="Viewdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:Viewdetail ID="View" runat="server" />
</asp:Content>
