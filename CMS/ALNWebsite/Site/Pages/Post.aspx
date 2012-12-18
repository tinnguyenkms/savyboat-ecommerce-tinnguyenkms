<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="ALNWebsite.Site.Pages.Post" %>
<%@ Register Src="~/Site/Control/SenJob.ascx" TagName="SentJob" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="margin-bottom:20px; padding-left:10px;">
    <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
 </div>
 <div style="width:100%; margin:0px; padding-left:10px;">
    <asp:Literal ID="litcontent" runat="server"/>
</div>
<div> 
<uc:SentJob ID="senjobcontrol" runat="server" />
</div>
</asp:Content>
