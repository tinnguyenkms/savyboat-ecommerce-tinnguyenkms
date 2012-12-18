<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ALNWebsite.Management.Login" %>
<%@ Register Src="~/Management/Control/LoginControl.ascx" TagName="LoginControl" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            font-weight: bold;
        }
        
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptManger" runat="server" />
    <div style="width:100%; height:auto; background-image: url('../images/qsfWrap.jpg'); background-repeat: repeat; background-attachment: fixed; text-align: center; vertical-align: middle;" align="center">
    <table align="center" style="width:400px;" >
        <tr>
            <td>
               <h1 class="style1"> Website Management</h1>
            </td>
        </tr>
        <tr>
        <td>
        <uc:LoginControl ID="logincontrol" runat="server" />
        </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
