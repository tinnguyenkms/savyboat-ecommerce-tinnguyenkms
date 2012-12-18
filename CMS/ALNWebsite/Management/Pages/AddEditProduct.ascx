<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddEditProduct.ascx.cs" Inherits="ALNWebsite.Management.Pages.AddEditProduct" %>
<table id="Table2" cellspacing="2" cellpadding="1" width="100%" border="1" rules="none"
    style="BORDER-COLLAPSE: collapse">
     <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>    
    <tr>
        <td>Description :</td>
        <td>
        <telerik:RadEditor ID="reContentPage" runat="server" Width="600px"  Skin="Vista"  OnClientLoad="OnClientLoad"  >
             <ImageManager UploadPaths="~/Uploads/Images" ViewPaths="~/Uploads/Images" DeletePaths="~/Uploads/Images" MaxUploadFileSize="102400000" />
            <DocumentManager UploadPaths="~/Uploads/Document" ViewPaths="~/Uploads/Document" DeletePaths="~/Uploads/Document" MaxUploadFileSize="102400000"  />
            <FlashManager UploadPaths="~/Uploads/Flash" ViewPaths="~/Uploads/Flash" DeletePaths="~/Uploads/Flash" MaxUploadFileSize="80240000"   />
            <MediaManager UploadPaths="~/Uploads/Media" ViewPaths="~/Uploads/Media" DeletePaths="~/Uploads/Media" MaxUploadFileSize="80240000"   />            
        </telerik:RadEditor>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Diễn giải  :</td>
        <td>
        <telerik:RadEditor ID="reContentPagevn" runat="server" Width="600px"  Skin="Vista"  OnClientLoad="OnClientLoad"  >
             <ImageManager UploadPaths="~/Uploads/Images" ViewPaths="~/Uploads/Images" DeletePaths="~/Uploads/Images" MaxUploadFileSize="102400000" />
            <DocumentManager UploadPaths="~/Uploads/Document" ViewPaths="~/Uploads/Document" DeletePaths="~/Uploads/Document" MaxUploadFileSize="102400000"  />
            <FlashManager UploadPaths="~/Uploads/Flash" ViewPaths="~/Uploads/Flash" DeletePaths="~/Uploads/Flash" MaxUploadFileSize="80240000"   />
            <MediaManager UploadPaths="~/Uploads/Media" ViewPaths="~/Uploads/Media" DeletePaths="~/Uploads/Media" MaxUploadFileSize="80240000"   />            
        </telerik:RadEditor>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>    
    <tr>
        <td colspan="2" align="center">
                     <asp:button id="btnUpdate" text="Update" runat="server" CommandName="Update" Visible='<%# !(DataItem is Telerik.Web.UI.GridInsertionObject) %>'></asp:button>
            <asp:button id="btnInsert" text="Insert" runat="server" CommandName="PerformInsert" Visible='<%# DataItem is Telerik.Web.UI.GridInsertionObject %>'></asp:button>
            &nbsp;
            <asp:button id="btnCancel" text="Cancel" runat="server" causesvalidation="False" commandname="Cancel"></asp:button>
        </td>
    </tr>
</table>
