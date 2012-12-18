<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sentomail.aspx.cs" Inherits="ALNWebsite.Site.Pages.sentomail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .Register
{
    width:60%;
    margin:auto;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager  ID="ScriptManager123" runat="server" />
    <div>
    </div>
<div class="Register">
    <div class="ColLeft">(*)Email :</div>
    <div class="ColRight"><telerik:RadTextBox ID="txtEmail" runat="server" Width="450px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="txtEmail" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Email*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" CssClass="errorFormUser" runat="server" ValidationExpression="^[a-zA-Z0-9]+([\._]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z]+)?(\.[a-zA-Z]{2,3})+$" ValidationGroup="GroupFormUser" ControlToValidate="txtEmail" ErrorMessage="(*Invalid Email*)"></asp:RegularExpressionValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)Company name :</div>
    <div class="ColRight"><telerik:RadTextBox ID="Txtcompany" runat="server" Width="450px" TextMode="MultiLine" /> 
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="Txtcompany" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Company Name*)"></asp:RequiredFieldValidator>
    
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
    <div class="ColRight"><telerik:RadTextBox ID="txtbusinessfield" runat="server" Width="450px" TextMode="SingleLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="txtbusinessfield" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Business Field*)"></asp:RequiredFieldValidator>
    </div>    
</div>
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
    <div class="ColRight"><telerik:RadTextBox ID="Txtaddress" runat="server" Width="450px" TextMode="MultiLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="Txtaddress" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Address*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Tel: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txttel" runat="server" Width="450px" TextMode="SingleLine" /> 
            <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="txttel" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Tel Company*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> Fax: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtfax" runat="server" Width="450px" TextMode="SingleLine" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> Contact Person: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtContactperson" runat="server" Width="450px" TextMode="SingleLine" />                 
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Hand Phone: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtHandphone" runat="server" Width="450px" TextMode="SingleLine" /> 
                
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Contractor: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtContractor" runat="server" Width="450px" TextMode="MultiLine" /> 
                    
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Personal Website: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtWebsite" runat="server" Width="450px" TextMode="SingleLine" /> </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Content: </div>
    <div class="ColRight"><telerik:RadTextBox ID="txtContent" runat="server" Width="450px" TextMode="MultiLine" /> </div>    
</div>
<div style="clear:both"></div>
<div>
<div class="ColLeft">Attach File :</div>
<div class="Colright"><asp:FileUpload ID="fupload" runat="server" Width="200px" />
</div>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Security: </div>
    <div class="ColRight">
                        <telerik:RadCaptcha ID="rcCaptcha" runat="server" ProtectionMode="Captcha" Display="Dynamic" Height="100px" >
                            <CaptchaImage TextLength = "3" TextChars="Numbers" BackgroundNoise="None" LineNoise="None" FontWarp="None"   />                                                        
                        </telerik:RadCaptcha> </div>    
</div>
<div class="Register ">
    
    <div style="margin:auto ; padding-left:430px;">
    <asp:Button ID="btnsend" runat="server" Text="Sent to us" OnClick="btnSend_click" ValidationGroup="GroupFormUser" />
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reset" />
    
    </div>    
</div>
   <telerik:RadAjaxPanel ID="panel" runat="server" />
    </form>
</body>
</html>
