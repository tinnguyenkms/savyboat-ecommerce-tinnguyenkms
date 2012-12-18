<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisterControl.ascx.cs" Inherits="ALNWebsite.Site.Control.RegisterControl" %>
<div class="Register">
   <span style=" font-size:20px; font-weight:bold">Register</span>
</div>
<div  class="Register">
   <span style=" font-size:16px; font-weight:bold"> Account Infomation:</span>
</div>
<div class="Register">
<span style="font-weight:bold; color:Red; font-style:italic;">Your contact information is secured confidentially otherwise there is your consent</span>
</div>
<div class="Register">
    <div class="ColLeft">Account Name :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtAccountName" runat="server" Width="450px" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Password :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtPassword" runat="server" Width="450px" TextMode="Password" /> 
     <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" CssClass="errorFormUser" ControlToValidate="rtxtPassword" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Password*)"></asp:RequiredFieldValidator>                
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" CssClass="errorFormUser" runat="server" ValidationExpression="(\s|.){6,20}$" ValidationGroup="GroupFormUser" ControlToValidate="rtxtPassword" ErrorMessage="(*Độ dài không hợp lệ*)"></asp:RegularExpressionValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Confirm Password :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtConfirmPassword" runat="server" Width="450px" TextMode="Password" /> 
        <br />
                        <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" CssClass="errorFormUser" Operator="Equal" Type="String" ControlToValidate="rtxtPassword" ControlToCompare="rtxtConfirmPassword" runat="server" ValidationGroup="GroupFormUser" ErrorMessage="(*Wrong Password*)"></asp:CompareValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)Email :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtEmail" runat="server" Width="450px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtEmail" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Email*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" CssClass="errorFormUser" runat="server" ValidationExpression="^[a-zA-Z0-9]+([\._]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z]+)?(\.[a-zA-Z]{2,3})+$" ValidationGroup="GroupFormUser" ControlToValidate="rtxtEmail" ErrorMessage="(*Invalid Email*)"></asp:RegularExpressionValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div  class="Register">
   <span style=" font-size:16px; font-weight:bold"> Profile :</span>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)Company name :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtCompany" runat="server" Width="450px" TextMode="MultiLine" /> 
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtCompany" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Company Name*)"></asp:RequiredFieldValidator>
    
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Business type: </div>
    <div class="ColRight">  
        <asp:RadioButtonList ID="Rb" RepeatDirection ="Horizontal" RepeatColumns="5" RepeatLayout="Table" runat="server">            
            
                <asp:ListItem Text="Private" Value ="Private"></asp:ListItem>    
                <asp:ListItem Text="Joint-stock" Value ="Joint-stock"></asp:ListItem>    
                <asp:ListItem Text="Owned-State" Value ="Owned-State"></asp:ListItem>    
                <asp:ListItem Text="100% Foreigner" Value ="100% Foreigner"></asp:ListItem>    
                <asp:ListItem Text="Joint-venture" Value ="Joint-venture"></asp:ListItem>    
            
        </asp:RadioButtonList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="Rb" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Select*)"></asp:RequiredFieldValidator>
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Business field: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtBusinessField" runat="server" Width="450px" TextMode="SingleLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtBusinessField" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Business Field*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Country: </div>
    <div class="ColRight"><telerik:RadComboBox ID="rcbbCountry" runat="server" Width="263px" ></telerik:RadComboBox></div>    
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rcbbCountry" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Select Country*)"></asp:RequiredFieldValidator>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Address: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtAddress" runat="server" Width="450px" TextMode="MultiLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtAddress" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Address*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Tel: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtTel" runat="server" Width="450px" TextMode="SingleLine" /> 
            <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtTel" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Tel Company*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> Fax: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtFax" runat="server" Width="450px" TextMode="SingleLine" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> Contact Person: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtContactPersion" runat="server" Width="450px" TextMode="SingleLine" />                 
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Hand Phone: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtHandPhone" runat="server" Width="450px" TextMode="SingleLine" /> 
                
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Contractor: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtContractor" runat="server" Width="450px" TextMode="MultiLine" /> 
                    
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">SubContractor: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtSubContractor" runat="server" Width="450px" TextMode="MultiLine" />
                    
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Personal Website: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtWebsite" runat="server" Width="450px" TextMode="SingleLine" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Content: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtContent" runat="server" Width="450px" TextMode="MultiLine" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Security: </div>
    <div class="ColRight">
                        <telerik:RadCaptcha ID="rcCaptcha" runat="server" ProtectionMode="Captcha" Display="Dynamic" Height="100px" >
                            <CaptchaImage TextLength = "3" TextChars="Numbers" BackgroundNoise="None" LineNoise="None" FontWarp="None"   />                                                        
                        </telerik:RadCaptcha> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">&nbsp;</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">&nbsp; </div>
    <div class="ColRight"><asp:Button ID="btnSubmit" Text="Submit" runat="server" ValidationGroup="GroupFormUser" OnClick="btnSubmit_Click" /> <asp:Button ID="Button1" Text="Reset" runat="server" /></div>    
</div>
<div style="clear:both"></div>
<telerik:RadAjaxPanel ID="panel" runat="server" />
