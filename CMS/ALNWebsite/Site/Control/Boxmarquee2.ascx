<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Boxmarquee2.ascx.cs" Inherits="ALNWebsite.Site.Control.Boxmarquee2" %>
<div>
<telerik:RadRotator  ID="rotatorFocus2"  runat="server"  
        ScrollDirection="Left"
        OnItemDataBound= "rotatorFocus2_ItemDataBound"                 
        Width="200"
        Height="20"
        RotatorType="AutomaticAdvance"
        ItemWidth="200"
        ItemHeight="20"
        FrameDuration="2000"
        ScrollDuration  =  "2000">
    <ItemTemplate>


         <div  style="vertical-align:middle;width:100%; text-align:center; color:Red; background-color:Aqua;">
            <asp:Literal  ID="lblFocusItem"  runat="server"  /></div>
    </ItemTemplate>
</telerik:RadRotator>
</div>
