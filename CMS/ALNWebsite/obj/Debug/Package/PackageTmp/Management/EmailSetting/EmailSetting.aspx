<%@ Page Title="Email Setting" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="EmailSetting.aspx.cs" Inherits="ALNWebsite.Management.EmailSetting.EmailSetting" %>
<%@ Register Src="~/Management/Control/EmailServerSetting.ascx" TagName="Emailsetting" TagPrefix="uc" %>
<%@ Register Src="~/Management/Control/EmailUserSetting.ascx" TagName="EmailUser" TagPrefix="uc" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:auto;">
<div>
<uc:Emailsetting ID="emailsetting1" runat="server" />
</div>
<div style="clear:both;">
------------------------------------------------------------------------------------------<br />
------------------------------------------------------------------------------------------
</div>
<div>
    <uc:EmailUser ID="EmailUser1" runat="server" />
</div>
</div>
</asp:Content>
