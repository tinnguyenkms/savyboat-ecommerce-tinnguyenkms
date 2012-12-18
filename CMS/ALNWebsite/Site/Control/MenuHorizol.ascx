<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuHorizol.ascx.cs" Inherits="ALNWebsite.Site.Control.MenuHorizol" %>
<%@ Import Namespace="System" %>
<div id="top_nav" class="bar_nav">
   <ul class="clearfix">
    <asp:Repeater runat="server" ID="RptItems" OnItemDataBound="RptItems_ItemDataBound">
        <ItemTemplate>         
                <li>    
                    <%--<asp:Image ID="imageMenu" runat="server" Width="10px" />--%> 
                    <asp:LinkButton id="lblCaption" Width="100%" runat="server" OnClick="lblCaption_Click"  >                        
                    </asp:LinkButton>
                       <ul>
                                <asp:Repeater runat="server" ID="RptItems2" OnItemDataBound="RptItems_ItemDataBound1" >
                                    <ItemTemplate>
                                        <asp:LinkButton id="lblCaption2" Width="100%" runat="server" OnClick="lblCaption_Click"   >                        
                                            
                                        </asp:LinkButton>                        
                                    </ItemTemplate>
                                </asp:Repeater> 
                       </ul>                        
                </li>            
        </ItemTemplate>
    </asp:Repeater>
        
            <li class="send_right"><a href="../Pages/Sitemap.aspx">Site Map</a> </li>
            <li class="send_right"><a href="#">					
					<asp:Label ID="lblLogin" runat="server" />					</a> 
					<div class="drop_box right round_all">
						<form style="width:160px">
							<fieldset class="grid_8">
								<label>Email</label><asp:TextBox ID="txtUsername" runat="server" />
							</fieldset>
							<fieldset class="grid_8">
								<label>Password</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
							</fieldset>							
                            <asp:Button ID="btnlogin" OnClick="Btnlogin_click" Text="Login" runat="server" />
						</form>
					</div>
				</li>		
            <li class="send_right"><a href="../Pages/ContactUs.aspx"><asp:Label ID="lblContact" runat="server" />		</a> </li>
            <li class="send_right"><a href="../Pages/Register.aspx">					
            <asp:Label ID="lblRegister" runat="server" />		
            </a>
            </li>                            
                               
          
    </ul>
</div>
<telerik:RadAjaxPanel ID="panelmeg" runat="server" />

