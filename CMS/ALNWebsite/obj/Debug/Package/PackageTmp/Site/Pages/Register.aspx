<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ALNWebsite.Site.Pages.Register" %>
<%@ Register Src="~/Site/Control/RegisterControl.ascx" TagPrefix="uc" TagName="RegisterControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:RegisterControl ID="RegisterControl" runat="server" />
</asp:Content>
