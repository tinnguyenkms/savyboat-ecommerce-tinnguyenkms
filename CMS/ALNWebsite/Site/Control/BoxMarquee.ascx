<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BoxMarquee.ascx.cs" Inherits="ALNWebsite.Site.Control.BoxMarquee" %>
<div style="background-color:#FFFFCC;box-shadow:2px 2px 18px #100000; width:570px;height:20px;">
<telerik:RadRotator  ID="rotatorFocus"  runat="server"  
        ScrollDirection="Left"
        OnItemDataBound  =  "rotatorFocus_ItemDataBound"                 
        Width="570"
        Height="20"
        RotatorType="AutomaticAdvance"
        ItemWidth="570"
        ItemHeight="20"
        FrameDuration="2000"
        ScrollDuration  =  "2000">
    <ItemTemplate>


         <div  style="vertical-align:middle;width:100%; text-align:center; color:Green; font-weight:bold;">
            <asp:Literal  ID="lblFocusItem"  runat="server"  /></div>
    </ItemTemplate>
</telerik:RadRotator>
</div>


