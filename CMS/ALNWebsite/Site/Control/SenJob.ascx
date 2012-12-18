<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SenJob.ascx.cs" Inherits="ALNWebsite.Site.Control.SenJob" %>
<div id="job" runat="server">
<div class="Register">
   <span style=" font-size:20px; font-weight:bold">Send Profile</span>
</div>
<div>
<div class="ColLeft">Name</div>
<div class="ColRight"><telerik:RadTextBox ID="name" runat="server" Width="400px" /></div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="name" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Name*)"></asp:RequiredFieldValidator>
</div>
<div style="clear:both"></div>
<div>
<div class="ColLeft">Phone</div>
<div class="Colright"><telerik:RadTextBox ID="Phone" runat="server" Width="400px" /></div>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="Phone" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Telephone number*)"></asp:RequiredFieldValidator>
</div>
<div style="clear:both"></div>
<div>
<div class="ColLeft">Address</div>
<div class="Colright"><telerik:RadTextBox ID="address" runat="server" Width="400px" /></div>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="address" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Address*)"></asp:RequiredFieldValidator>
</div>
<div style="clear:both"></div>
<div>
<div class="ColLeft">Email</div>
<div class="Colright"><telerik:RadTextBox ID="email" runat="server" Width="400px" /></div>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="email" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Email*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" CssClass="errorFormUser" runat="server" ValidationExpression="^[a-zA-Z0-9]+([\._]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+([\.-]?[a-zA-Z]+)?(\.[a-zA-Z]{2,3})+$" ValidationGroup="GroupFormUser" ControlToValidate="email" ErrorMessage="(*Invalid Email*)"></asp:RegularExpressionValidator>
</div>
<div style="clear:both"></div>
<div>
    <div class="ColLeft">Subject</div>
    <div class="Colright"><telerik:RadTextBox ID="rtxtSubject" runat="server"  TextMode="MultiLine" Width="400px" Height="200px"></telerik:RadTextBox>
</div>
</div>
<div style="clear:both"></div>

<div>
    <div class="ColLeft">Content</div>
    <div class="Colright"><telerik:RadTextBox ID="rtxtContent" runat="server"  TextMode="MultiLine" Width="400px" Height="200px"></telerik:RadTextBox>
</div>
</div>
<div style="clear:both"></div>
<div>
<div class="ColLeft">Attach File :</div>
<div class="Colright"><asp:FileUpload ID="fupload" runat="server" Width="200px" />
</div>
</div>
<asp:Button ID="btnsendprofile" Text="Send Profile" runat="server" ValidationGroup="GroupFormUser"  OnClick="btnSend_Click" />
</div>
<asp:HiddenField ID="HContent" runat="server" />
<script type="text/javascript">
    function getbyid() {
        var mycontent = document.getElementById('job');
        HContent.value = mycontent.innerHTML;
    }
</script>
<telerik:RadAjaxPanel ID="panel" runat="server" />