<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/TwoColumn.master" AutoEventWireup="true" 
CodeBehind="Moneybackguarantee.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.Moneybackguarantee" %>
<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
    <nopCommerce:Topic ID="topicPrivacyInfo" runat="server" TopicName="MoneyBackGuarantee ">
    </nopCommerce:Topic>
</asp:Content>

