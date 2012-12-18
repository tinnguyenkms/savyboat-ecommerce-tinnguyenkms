<%@ Page Title="FAQs" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="FQAs.aspx.cs" Inherits="ALNWebsite.Site.Pages.FQAs" %>
<%@ Register Src="~/Site/Control/PageMultiTab.ascx" TagPrefix="uc" TagName="Faqs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID ="panel12" runat="server" />
<uc:Faqs ID="faqscontrol" runat="server" />
</asp:Content>
