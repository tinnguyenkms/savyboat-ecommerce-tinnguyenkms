<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="ChangeMyPassword.aspx.cs" Inherits="ALNWebsite.Management.ChangeMyPassword" %>
<%@ Register Src="~/Management/Control/ChangeMyPassword.ascx" TagName="changepass" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:changepass ID="changepasscontrol" runat="server" />
</asp:Content>
