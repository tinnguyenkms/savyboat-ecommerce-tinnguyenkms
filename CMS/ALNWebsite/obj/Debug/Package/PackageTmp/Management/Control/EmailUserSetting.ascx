<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailUserSetting.ascx.cs" Inherits="ALNWebsite.Management.Control.EmailUserSetting" %>
<div style="width:500px; padding-left:10px;">
<div>
    <asp:Label ID="lblTitle1" runat="server"  Font-Size="18px" Text="MailUsers" />
</div>
---------------------------------------------------------------------------------------
<div>
    <div class="Register">
        <div class="ColLeft">Mail forum :</div>
        <div class="ColRight">
            <div> <asp:TextBox ID="txtmailforum" runat="server" Width="200px" /></div>
            <div></div>
        </div>
    </div>
    <div  style="clear:both;"/>
    <div class="Register">
        <div class="ColLeft">Mail Career :</div>
        <div class="ColRight"><asp:TextBox ID="txtMailCareer" runat="server" Width="200px" />
        </div>
    </div>
    <div  style="clear:both;"/>
    <div class="Register">
        <div class="ColLeft">Mail allweb:</div>
        <div class="ColRight"><asp:TextBox ID="txtMailAllweb" runat="server" Width="200px" />
        </div>
    </div>
    <div  style="clear:both;"/>
    <div class="Register">
        <div class="ColLeft"></div>
        <div class="ColRight"><asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_onclick" />
        </div>
    </div>
    <div  style="clear:both;"/>
    
</div>
</div>