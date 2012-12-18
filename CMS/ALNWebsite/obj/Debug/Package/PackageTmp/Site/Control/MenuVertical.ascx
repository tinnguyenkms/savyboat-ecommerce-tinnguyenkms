<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuVertical.ascx.cs" Inherits="ALNWebsite.Site.Control.MenuVertical" %>
<div class="Box">
    <div class="Backgroudtitle" id="Box">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true"></asp:Label>
    </div>    
    <div id="side_nav" class="side_nav">
             <ul class="clearfix" >
                <asp:Repeater runat="server" ID="RptItems" OnItemDataBound="RptItems_ItemDataBound" >
                    <ItemTemplate>         
                        <li>                        
                            <asp:LinkButton id="lblCaption" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                            </asp:LinkButton>                       
                            <ul>
                                <asp:Repeater runat="server" ID="RptItems1" OnItemDataBound="RptItems_ItemDataBound1">
                                    <ItemTemplate>
                                        <li>
                                                <asp:LinkButton id="lblCaption1" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                                                </asp:LinkButton>        
                                                <ul>
                                                    <asp:Repeater runat="server" ID="RptItems2" OnItemDataBound="RptItems_ItemDataBound2">
                                                        <ItemTemplate>
                                                        <li>
                                                            <asp:LinkButton id="lblCaption2" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                                                            </asp:LinkButton>                       
                                                            <ul>
                                                                    <asp:Repeater runat="server" ID="RptItems3" OnItemDataBound="RptItems_ItemDataBound3">
                                                                        <ItemTemplate>
                                                                            <li>
                                                                                <asp:LinkButton id="lblCaption3" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                                                                                </asp:LinkButton>                       
                                                                                <ul>
                                                                                        <asp:Repeater runat="server" ID="RptItems4" OnItemDataBound="RptItems_ItemDataBound4">
                                                                                        <ItemTemplate>
                                                                                            <li>
                                                                                                <asp:LinkButton id="lblCaption4" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                                                                                                </asp:LinkButton>                       
                                                                                            </li>
                                                                                        </ItemTemplate>
                                                                                         </asp:Repeater>
                                                                                 </ul>
                                                                            </li>
                                                                        
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                    </ul>
                                                        </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>                
                                                
                                                </ul>                                                                                                                                                                                                            
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>                
                            </ul>
                        </li>            
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
    </div>
    <div  style="clear:both"></div>
</div>
