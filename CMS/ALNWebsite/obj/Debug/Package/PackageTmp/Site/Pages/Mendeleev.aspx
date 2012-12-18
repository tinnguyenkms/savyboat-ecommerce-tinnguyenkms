<%@ Page Title="Mendeleev" Language="C#" MasterPageFile="~/Site/Master/Master2.Master" AutoEventWireup="true" CodeBehind="Mendeleev.aspx.cs" Inherits="ALNWebsite.Site.Pages.Mendeleev" %>
<%@ Register Src="~/Site/Control/tuanhoan.ascx" TagPrefix="uc" TagName="tuanhoancontrol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
<asp:Label ID="lbltitle" runat="server"></asp:Label>
</div>
<div>
<asp:Literal ID="Lismeendeleev" runat="server"></asp:Literal>
</div>
<div style="height:600px">
<uc:tuanhoancontrol ID="tuanhoancontrol1" runat="server" />
    
</div>
</asp:Content>
 