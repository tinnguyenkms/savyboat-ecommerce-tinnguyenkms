<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailServerSetting.ascx.cs" Inherits="ALNWebsite.Management.Control.EmailServerSetting" %>
<div style="width:500px; padding-left:10px;">
<div>
    <asp:Label ID="lblTitle" runat="server" Text="Email Setting" Font-Size="18px" />
</div>
---------------------------------------------------------------------------------------
<div  class="Register">
    <div class="ColLeft">Host Server :</div>
    <div class="ColRight"><asp:TextBox ID="txtHostServer" runat="server" Width="200px" /></div>
    </div>
    <div style="clear:both"></div>
<div  class="Register">
    <div class="ColLeft">Port Server :</div>
    <div class="ColRight"><asp:TextBox ID="txtPortServer" runat="server" Width="200px" /></div>
    </div>
    <div style="clear:both"></div>
<div  class="Register">    
    <div class="ColLeft">Enable SSL :</div>
    <div class="ColRight"><asp:CheckBox ID="cbSSL" runat="server" Width="200px" /></div>
    </div>
    <div style="clear:both"></div>
    <div  class="Register">
    <div class="ColLeft">Display Name :</div>
    <div class="ColRight"><asp:TextBox ID="txtDisplayName" runat="server" Width="200px" /></div>
    </div>
    <div style="clear:both"></div>
    <div  class="Register">
    <div class="ColLeft">Email  :</div>
    <div class="ColRight"><asp:TextBox ID="txtEmail" runat="server" Width="200px" /></div>
    </div>
    <div style="clear:both"></div>
    <div  class="Register">
    <div class="ColLeft">Password  :</div>
    <div class="ColRight"><asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password" /></div>
    </div>
    <div style="clear:both"></div>
    <div  class="Register">
    <div class="ColLeft">
        <asp:Button ID="btnTest" runat="server" Text="Test Email" OnClick="btnTest_Onclick" />
    </div>
    <div class="ColRight"><asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Onclick" />&nbsp; &nbsp;
    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Onclick" />
    </div>
</div>
</div>
<telerik:RadAjaxPanel ID="panel" runat="server" />
