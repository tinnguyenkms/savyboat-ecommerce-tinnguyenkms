<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNewDetail.ascx.cs" Inherits="ALNWebsite.Site.Control.ListNewDetail" %>
 <div id="bigBlockContent" >
        <div class="topContent">            
            <div class="PageTitle">         
                <asp:Label Id  ="lblPagetile" runat="server" Font-Bold="true" Font-Size="20px"  />
            </div>
        </div>
        <div class="midContent">                        
                <div id="Div1" class="divBlockCategory" runat="server">
                    <asp:Repeater ID="repListPost" runat="server" onitemdatabound="repListPost_ItemDataBound">
                    <ItemTemplate>
                        <div class="rowListPosts">
                            <div class="row">
                                <span style=" clear:both; font-size:14px; font-weight:bold;">
                                    <asp:HyperLink ID="hplLinkFromTitle" runat="server" Text=""></asp:HyperLink>
                                </span>
                            </div>
                            <div class="row">
                                <div class="thumbnail">
                                    <asp:HyperLink ID="hplLinkFromImage" runat="server"><asp:Image ID="imgThumbnail" runat="server" Width="114px" Height="81px" /></asp:HyperLink>
                                </div>
                                <div class="description">
                                    <div class="desc_info1">
                                        <div class="desc_user">
                                       
                                            <asp:Label ID="lblDateCreated" runat="server" Text=""></asp:Label> <img id="new_icon" runat="server"  />
                                        </div>
                                        <div class="desc_date">
                                             <asp:Label ID="lblUserCreated" runat="server" Text=""></asp:Label>
                                        
                                        </div>
                                    </div>
                                    <div class="desc_info2">                                        
                                        <asp:Literal ID="lblDescription"  runat="server" />
                                    </div>
                                </div>
                                <div style="clear: both"></div>
                            </div>                                                
                        </div>
                        <div class="sperator1">&nbsp;</div>
                    </ItemTemplate>
                    </asp:Repeater>
                    <div class="rowListPosts">
                        <div class="row">
                            <div id="divPager" runat="server">                        
			                </div>                                
                        </div>
                    </div>
                    <div class="sperator1">&nbsp;</div>
                </div>                                            
        </div>        
    </div>