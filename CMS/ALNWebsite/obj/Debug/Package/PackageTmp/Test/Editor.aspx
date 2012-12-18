<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="ALNWebsite.Test.Editor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager id="ScriptManage1r" runat="server" />
    <div>
         <telerik:RadEditor ID="newtestcontent" runat="server" Width="600px" Height="600px"  >
            <ImageManager UploadPaths="~/Uploads/Images" ViewPaths="~/Uploads/Images" DeletePaths="~/Uploads/Images" MaxUploadFileSize="802400"   />
            <DocumentManager UploadPaths="~/Uploads/Document" ViewPaths="~/Uploads/Document" DeletePaths="~/Uploads/Document" />
            <FlashManager UploadPaths="~/Uploads/Flash" ViewPaths="~/Uploads/Flash" DeletePaths="~/Uploads/Flash"  />
            <MediaManager UploadPaths="~/Uploads/Media" ViewPaths="~/Uploads/Media" DeletePaths="~/Uploads/Media"  />
            
        </telerik:RadEditor>
    </div>
    </form>
</body>
</html>
