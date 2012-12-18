<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="ALNWebsite.Site.Pages.Job" %>
<%@ Register Src="~/Site/Control/PageMultiTab.ascx" TagPrefix="uc" TagName="Job"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc:Job ID="jobcontrol" runat="server" />

</asp:Content>
