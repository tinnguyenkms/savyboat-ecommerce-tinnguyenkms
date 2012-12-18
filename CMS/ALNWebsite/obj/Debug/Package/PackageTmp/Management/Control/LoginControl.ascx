<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="ALNWebsite.Management.Control.LoginControl" %>
    <asp:Login ID="objLogin" runat="server" Width="100%" 
     LoginButtonText="Submit" RememberMeText="Remember Me."
        TitleText="" UserNameLabelText="Login:" PasswordRecoveryText="Lost Password?"
        PasswordRecoveryUrl="~/Default.aspx" OnLoggedIn="objLogin_LoggedIn"  
        onauthenticate="objLogin_Authenticate" RememberMeSet="True">
        <LayoutTemplate>
    <table width="250" cellspacing="0" cellpadding="0">       
        
        <tr>
            <td id="BoxLogin-Left" >&nbsp;</td>
            <td id="BoxLogin-Center" style="background-color:White;">  
                <div style="padding:5px;text-align:center">
                    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>                    
                </div>
                <table width="100%" cellpadding="0" cellspacing="0">
						    <tr>
							    <td class="Label_LeftAlign" style="width:90px">
							        <asp:Label style="padding-left:10px;" ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Text="Username"></asp:Label>
							    </td>
							    <td >
							        <asp:TextBox ID="UserName" Width="99%" runat="server">
							        </asp:TextBox>
							    </td>
							    <td style="width:15px">
							        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ValidationGroup="objLogin">
								        <asp:Image runat="server" ID="imgRequire1" SkinID="img_InvalidData" />
							        </asp:RequiredFieldValidator>							    
							    </td>
						    </tr>
						    <tr>
							    <td class="Label_LeftAlign">
							        <asp:Label style="padding-left:10px;" ID="PasswordLabel" runat="server" AssociatedControlID="Password" Text="Password"></asp:Label>
							    </td>
							    <td >
							        <asp:TextBox ID="Password" Width="99%" runat="server" TextMode="Password">
							        </asp:TextBox>

							        <%--<asp:HyperLink ID="PasswordRecoveryLink" runat="server" CssClass="Cell_Profile" NavigateUrl="~/RetrievePassword.aspx">Quên mật khẩu?
							        </asp:HyperLink>--%>
							    </td>
							    <td>
							        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ValidationGroup="objLogin" Display="Dynamic">
								        <asp:Image runat="server" ID="Image1" SkinID="img_InvalidData" />
							        </asp:RequiredFieldValidator>							    
							    </td>
						    </tr>
						    <tr>
							    <td colspan="2" style="height:10px; text-align:center" class="ErrorMessage">
							        <asp:Literal ID="FailureText" runat="server" EnableViewState="False">
							        </asp:Literal>
							    </td>
						    </tr>						    
						    <tr>							    
							    <td align="left" colspan="3" class="RememberLogin">
							        <asp:CheckBox ID="RememberMe"  CssClass="NormalText" Height="20px" runat="server" Text="Remember me" />
							    </td>
						    </tr>
						    <tr>
							    <td></td>
							    <td align="left">
							        <asp:Button Width="80" ID="LoginButton" runat="server" CommandName="Login" Text="Submit" ValidationGroup="objLogin" UseSubmitBehavior="True" />
							    </td>
						    </tr>
                </table>            
                <div style="padding:5px;height:150px;display:none">
                    - Nếu chưa là thành viên, 
                    <br /><a href="#1">bấm vào đây</a> để đăng ký
					<br />
					- Nếu quên mật khẩu truy cập, 
					<br /><a href="#1">bấm vào đây</a> để lấy lại					
                </div>
            </td>
            <td id="BoxLogin-Right" >&nbsp;</td>				
        </tr>
        <tr>
            <td id="BoxLogin-BotLeft"></td>
            <td id="BoxLogin-Bottom"></td>				
            <td id="BoxLogin-BotRight"></td>				
        </tr>
    </table>   
		</LayoutTemplate>
    </asp:Login>
<telerik:RadAjaxPanel runat="server" ID="PanelScript"></telerik:RadAjaxPanel>