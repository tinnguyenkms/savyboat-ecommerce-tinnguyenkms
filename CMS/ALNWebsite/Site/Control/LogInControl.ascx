<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogInControl.ascx.cs" Inherits="ALNWebsite.Site.Control.LogInControl" %>
<div class="Loginpage">
    <div style="margin-bottom:10px;"><asp:Label ID="lbltile" runat="server" Text="Returning Customers" CssClass="headertitle"></asp:Label> </div>
    <div style="margin-bottom:5px; padding-left:70px;">Please log in to your account.</div>
    <div class="row">
        <div class="leftRow tilte">Account Name :</div>
        <div class="rightRow"><telerik:RadTextBox ID="txtUsername" runat="server" Width="200px" /></div>
    </div>
    <div style="clear: both;"></div>
    <div class="row">
        <div class="leftRow tilte ">Password :</div>
        <div class="rightRow"><telerik:RadTextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password" /></div>
    </div>
    <div style="clear: both;"></div>
    <div class="row">
        <div class="leftRow">&nbsp;</div>
        <div class="rightRow">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Btnlogin_click" /> 
                
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="row">
        <div class="leftRow">&nbsp;</div>
        <div class="rightRow">
                If you don't have an account, please proceed by clicking the following<br /> button to continue first-time registration.<br />
                If you are only registered at aln.com.vn you must also register your account <a href="../Pages/Register.aspx"> here</a>
                
        </div>
    </div>
</div>
<telerik:RadAjaxPanel ID="panelmeg" runat="server" />