<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ALNWebsite.Site.Pages.SignIn" %>
<%@ Register Src="~/Site/Control/LogInControl.ascx" TagPrefix="uc" TagName="LoginControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <uc:LoginControl ID="lognin" runat="server" />
</div>    
</asp:Content>
