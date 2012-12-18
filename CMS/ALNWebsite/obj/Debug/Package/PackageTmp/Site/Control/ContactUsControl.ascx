<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactUsControl.ascx.cs" Inherits="ALNWebsite.Site.Control.ContactUsControl" %>
<style type="text/css">
    .style1
    {
        width: 100px;
        text-align:left;
        vertical-align:text-top;
    }
    .style2
    {
        color: #FF3300;
    }
</style>
<asp:Panel ID="panelRegister" runat="server"> 
<div>
<table style="margin-left:50px;" >
    <tr>    
        <td class="style1">Name:<span class="style2">*</span>
        </td>
        <td><telerik:RadTextBox ID="rtxtName" runat="server" Width="300px"></telerik:RadTextBox>
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtName" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Name*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>    
        <td class="style1">Email:<span class="style2">*</span>
        </td>
        <td><telerik:RadTextBox ID="rtxtEmail" runat="server" Width="300px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtEmail" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Email*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" CssClass="errorFormUser" runat="server" ValidationExpression="^[a-zA-Z0-9]+([\._]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z]+)?(\.[a-zA-Z]{2,3})+$" ValidationGroup="GroupFormUser" ControlToValidate="rtxtEmail" ErrorMessage="(*Invalid Email*)"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>    
        <td class="style1">Telephone#:<span class="style2">*</span>
        </td>
        <td><telerik:RadTextBox ID="rtxttelephone" runat="server" />
            <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxttelephone" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Telephone number*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>    
        <td class="style1">Subject:<span class="style2">*</span>
        </td>
        <td><telerik:RadTextBox ID="rtxtSubject" runat="server" Width="300px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtSubject" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Subject*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>    
        <td class="style1">Comments:<span class="style2">*</span><br />(if you are checking on order status, please enter your order # or invoice #)
        </td>
        <td><telerik:RadTextBox ID="rtxtComment" runat="server" TextMode="MultiLine" Height="150px" Width="300px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtComment" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Comments*)"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
        Attach File :</td>        
        <td><asp:FileUpload ID="fupload" runat="server" Width="200px" /></td>

    </tr>
    <tr>    
        <td class="style1">&nbsp;
        </td>
        <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="GroupFormUser" OnClick="btnsubmit_click" />
        </td>
    </tr>
</table>
</div>
</asp:Panel>
<telerik:RadAjaxPanel ID="panel" runat="server"></telerik:RadAjaxPanel>