<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ALNWebsite.Site.Pages.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager" runat="server" />
    <telerik:RadFormDecorator ID="FormDecorator1" runat="server" DecoratedControls="all">
    </telerik:RadFormDecorator>
    <div>
         <telerik:RadCaptcha ID="RadCaptcha1" runat="server" ValidationGroup="SubmitInfo"
                        ErrorMessage="The code you entered is not valid."
                        Display="Dynamic">
                        
                    </telerik:RadCaptcha>
    </div>
    </form>
</body>
</html>
