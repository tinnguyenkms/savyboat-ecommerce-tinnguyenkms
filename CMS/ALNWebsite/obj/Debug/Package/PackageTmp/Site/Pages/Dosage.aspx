<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Dosage.aspx.cs" Inherits="ALNWebsite.Site.Pages.Dosage" %>
<%@ Register Src="~/Site/Control/DosageControl.ascx"  TagPrefix="uc" TagName="Dogse"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc:Dogse ID="Dogse" runat="server" />
</asp:Content>
