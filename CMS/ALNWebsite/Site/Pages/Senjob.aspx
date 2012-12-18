<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Senjob.aspx.cs" Inherits="ALNWebsite.Site.Pages.Senjob" %>
<%@ Register Src="~/Site/Control/SenJob.ascx" TagPrefix="uc" TagName="senjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<uc:senjob ID="senjobcontrol" runat="server" /> 
</asp:Content>
