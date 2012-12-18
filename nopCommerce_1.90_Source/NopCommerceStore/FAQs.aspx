<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/TwoColumn.master" AutoEventWireup="true" CodeBehind="FAQs.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.FAQs" %>

<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="Server">
    <nopCommerce:Topic ID="topicConditionsInfo" runat="server" TopicName="FAQs">
    </nopCommerce:Topic>
</asp:Content>
