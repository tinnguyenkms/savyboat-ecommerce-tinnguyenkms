<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ThreeColumn.master" AutoEventWireup="true" CodeBehind="returnsinfo.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.returnsinfo" %>
<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <nopCommerce:Topic ID="topicPrivacyInfo" runat="server" TopicName="returninfo">
    </nopCommerce:Topic>
</asp:Content>
