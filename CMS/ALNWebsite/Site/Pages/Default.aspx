<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ALNWebsite.Site.Pages.Default" %>
<%@ Register Src="~/Site/Control/Contents.ascx" TagPrefix="uc" TagName="Content" %>
<%@ Register Src="~/Site/Control/HomeControl.ascx" TagPrefix="uc" TagName="Controlview" %>
<%@ Register Src="~/Site/Control/Home.ascx"  TagPrefix="uc" TagName="Homecontrol"%>
<%@ Register Src="~/Site/Control/HomeControlMutitab.ascx" TagPrefix="uc" TagName="HomeMulti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="Home">
     <div>
       <uc:Homecontrol Id="Homecontrol" runat="server" />
     </div>   
     <div style="margin-bottom:10px;">
        <%--<telerik:RadBinaryImage ID="bimag" runat="server" ImageUrl="~/images/Home1.png" Width="100%" ResizeMode="Fit" />        --%>
         <embed src='<%= ResolveUrl("~/Uploads/flv/banner1.swf") %>' width="100%" height="150px" quality="high"  type="application/x-shockwave-flash" menu="true" wmode="transparent"></embed>
    </div>
    <div class="left"><uc:HomeMulti ID="controlview1" runat="server" /></div>
    <div class="right"><uc:HomeMulti ID="controlview2" runat="server" /></div>
    <div style="clear:both; margin-bottom:10px;"></div>
    <div class="left"><uc:HomeMulti ID="HomeMulti1" runat="server" /></div>
    <div class="right"><uc:HomeMulti ID="controlview4" runat="server" /></div>
    <div style="clear:both; margin-bottom:10px;">&nbsp;</div>
</div>
</asp:Content>
