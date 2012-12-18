<%@ Page Title="Pilot" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Pilot.aspx.cs" Inherits="ALNWebsite.Site.Pages.Pilot" %>
<%@ Register src="../Control/Pilot.ascx" tagname="Pilot" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Pilot ID="Pilot1" runat="server" />
</asp:Content>
