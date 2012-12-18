<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="ProjectAdd.aspx.cs" Inherits="ALNWebsite.Site.Pages.ProjectAdd" %>
<%@ Register Src="~/Site/Control/ProjectForm.ascx" TagPrefix="uc" TagName="ProjectForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc:ProjectForm id="ProjectForm" runat="server" />
</asp:Content>
