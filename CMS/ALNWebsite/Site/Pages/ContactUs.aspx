<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ALNWebsite.Site.Pages.ContactUs" %>
<%@ Register Src="~/Site/Control/ContactUsControl.ascx" TagPrefix="uc" TagName="ModuleContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
<div style="text-align:right">
 <a href="sentomail.aspx" onclick="return popitup('sentomail.aspx')"target="_self" type="text/html"><asp:Image ID="Image4" runat="server" ImageUrl="~/images/tell4.jpg" /></a>
</div>
    <div>
        <asp:Literal ID="ltContactus" runat="server"></asp:Literal>
    </div>
    <%--<div>
        <uc:ModuleContact id="ModuleContact" runat="server" />
    </div>--%>
</div>
<script language="javascript" type="text/javascript">
<!--
    function popitup(url) {
        newwindow = window.open(url, 'name', 'height=auto,width=600');
        if (window.focus) { newwindow.focus() }
        return false;
    }

// -->
</script>
</asp:Content>
