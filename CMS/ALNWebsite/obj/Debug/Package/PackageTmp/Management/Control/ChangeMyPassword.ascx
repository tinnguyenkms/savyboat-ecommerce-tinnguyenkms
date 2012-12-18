<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="ChangeMyPassword.ascx.cs" Inherits="ALNWebsite.Management.Control.ChangeMyPassword" %>
<div class="TitleStyle">
    <asp:Literal ID="Literal2" runat="server" Text="Change Password" />
</div>
<div align="center">
    <asp:Button runat="server" Text="Save" id="btnSave_Top" onclick="btnSave_Click" />&nbsp;
    <asp:Button runat="server" Text="Exit" id="btnClose_Top" onclick="btnClose_Click" CausesValidation="false"/>
</div>

<div class="FormData" style="padding-left:100px">
    <table width="600px">
    
        <tr>		
            <td class="Label_RightAlign" width="120px"><span class="RequireFiled">*</span>
                <asp:Literal ID="Literal3" runat="server" Text="Old Password"/>:
            </td>
            <td >
                <telerik:RadTextBox ID="txtOldPassword" Width="400px" Runat="server" 
                   TextMode="Password" SelectionOnFocus="SelectAll" MaxLength="255">                            
                </telerik:RadTextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvOldPassword" ControlToValidate="txtOldPassword" >
                     <asp:Image runat="server" ID="imgRequire1" SkinID="img_InvalidData" />
                </asp:RequiredFieldValidator>
               
           </td>
        </tr>
        <tr>		
            <td class="Label_RightAlign" width="120px"><span class="RequireFiled">*</span><asp:Literal ID="Literal4" runat="server" Text="New Password"/>:</td>
            <td >
                <telerik:RadTextBox ID="txtNewPassword" Width="400px" Runat="server" 
                   TextMode="Password" SelectionOnFocus="SelectAll" MaxLength="255">                            
                </telerik:RadTextBox>
                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ID="rfvNewPassword" ControlToValidate="txtNewPassword">
                     <asp:Image runat="server" ID="Image2" SkinID="img_InvalidData" />                    
                </asp:RequiredFieldValidator>
                <asp:CustomValidator runat="server" Display="Dynamic" ID="RequiredFieldValidator1" ClientValidationFunction="CustomValidation" ControlToValidate="txtNewPassword">
                    <asp:Literal runat="server" ID="Literal1" Text="Password must have 6 charactor" />
                </asp:CustomValidator>
           </td>
        </tr>
        <tr>		
            <td class="Label_RightAlign" width="120px"><span class="RequireFiled">*</span><asp:Literal ID="Literal5" runat="server" Text="Retype Password"/>:</td>
            <td >
                <telerik:RadTextBox ID="txtConfirmPwd" Width="400px" Runat="server" 
                   TextMode="Password" SelectionOnFocus="SelectAll" MaxLength="255">                            
                </telerik:RadTextBox>
                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ID="rfvConfirmPwd" ControlToValidate="txtConfirmPwd">
                     <asp:Image runat="server" ID="Image1" SkinID="img_InvalidData" />                   
                </asp:RequiredFieldValidator>
                <asp:CustomValidator runat="server" Display="Dynamic" ID="CustomValidator1" ClientValidationFunction="CustomValidation" ControlToValidate="txtConfirmPwd">
                    <asp:Literal runat="server" ID="ltr1" Text="Password must have 6 charactor" />
                </asp:CustomValidator>
                <asp:CompareValidator runat="server" ID="cv" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPwd" Text='Password confirm not match new password'>
                    
                </asp:CompareValidator>
                
           </td>
        </tr>
    </table>
</div>      
<script language="javascript" type="text/javascript">
    function CustomValidation(obj, args) {
        if (args.Value != null) {
            if (args.Value.length < 6) {
                args.IsValid = false;
                return false;
            }
            else args.IsValid = true;
        }
    }
    
</script>
<div align="center">
    <asp:Button runat="server" Text="Save" id="btnSave_Bottom" onclick="btnSave_Click" />&nbsp;
    <asp:Button runat="server" Text="Exit" id="btnClose_Bottom" onclick="btnClose_Click" CausesValidation="false"/>
</div>  

