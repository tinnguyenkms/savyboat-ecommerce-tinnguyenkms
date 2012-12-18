<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="ALNWebsite.Site.Pages.calculator" %>
<%@ Register Src="~/Site/Control/calculator.ascx" TagPrefix="uc" TagName="Canculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc:Canculator ID="calculassdstor" runat="server" />
</asp:Content>
