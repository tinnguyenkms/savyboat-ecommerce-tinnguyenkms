<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListMenuVertical.ascx.cs" Inherits="ALNWebsite.Site.Control.ListMenuVertical" %>
<%@ Register Src="~/Site/Control/MenuVertical.ascx" TagPrefix="uc" TagName="MenuVertical" %>
<div>
    <div>
        <uc:MenuVertical ID="menu" runat="server" />
    </div>
    <div height="15px">&nbsp;</div>
    <div>
        <uc:MenuVertical ID="menu2" runat="server" />
    </div>
    <div height="15px">&nbsp;</div>
    <div>
        <uc:MenuVertical ID="menu3" runat="server" />
    </div>
    <div height="15px">&nbsp;</div>
    <div>
        <uc:MenuVertical ID="menu4" runat="server" />
    </div>
</div>