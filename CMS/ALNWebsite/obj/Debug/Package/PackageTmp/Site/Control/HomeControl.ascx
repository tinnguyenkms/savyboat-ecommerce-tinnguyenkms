<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeControl.ascx.cs" Inherits="ALNWebsite.Site.Control.HomeControl" %>
<div class="Box" style="height:150px;">
   <div class="Backgroudtitle" id="Box">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true"></asp:Label>
    </div>    
    <div>
  
        <asp:Repeater ID="rpList" runat="server" OnItemDataBound="repListPost_ItemDataBound" >
            <ItemTemplate>
                <div style="padding-left:2px; font-weight:bold; padding-bottom:3px;">
                   <asp:HyperLink ID="hpTitle" runat ="server" ></asp:HyperLink><img id="new_icon" runat="server"  />
                </div>
            </ItemTemplate>        
        </asp:Repeater>   
  
    </div>
</div>
