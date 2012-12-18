<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddEditProduct.ascx.cs" Inherits="ALNWebsite.Management.Product.AddEditProduct" %>
<table id="Table2" cellspacing="2" cellpadding="1" width="100%" border="1" rules="none"
    style="BORDER-COLLAPSE: collapse">
     <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Product Name:</td>
        <td><telerik:RadTextBox ID="rtxtProductName"  runat="server" Width="200px" ></telerik:RadTextBox></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ngày hết hạn:</td>
        <td><telerik:RadDatePicker ID="radngayhethan" runat="server"></telerik:RadDatePicker></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Product Description :</td>
        <td><telerik:RadEditor ID="reDescription" runat="server" Width="600px"  Skin="Vista" OnClientLoad="OnClientLoad"  >
             <ImageManager UploadPaths="~/Uploads/Images" ViewPaths="~/Uploads/Images" DeletePaths="~/Uploads/Images" MaxUploadFileSize="102400000" />
            <DocumentManager UploadPaths="~/Uploads/Document" ViewPaths="~/Uploads/Document" DeletePaths="~/Uploads/Document" MaxUploadFileSize="102400000"  />
            <FlashManager UploadPaths="~/Uploads/Flash" ViewPaths="~/Uploads/Flash" DeletePaths="~/Uploads/Flash" MaxUploadFileSize="80240000"   />
            <MediaManager UploadPaths="~/Uploads/Media" ViewPaths="~/Uploads/Media" DeletePaths="~/Uploads/Media" MaxUploadFileSize="80240000"   />            
        </telerik:RadEditor></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Product Description VN :</td>
        <td><telerik:RadEditor ID="reDescriptionvn" runat="server" Width="600px"  Skin="Vista" OnClientLoad="OnClientLoad"  >
             <ImageManager UploadPaths="~/Uploads/Images" ViewPaths="~/Uploads/Images" DeletePaths="~/Uploads/Images" MaxUploadFileSize="102400000" />
            <DocumentManager UploadPaths="~/Uploads/Document" ViewPaths="~/Uploads/Document" DeletePaths="~/Uploads/Document" MaxUploadFileSize="102400000"  />
            <FlashManager UploadPaths="~/Uploads/Flash" ViewPaths="~/Uploads/Flash" DeletePaths="~/Uploads/Flash" MaxUploadFileSize="80240000"   />
            <MediaManager UploadPaths="~/Uploads/Media" ViewPaths="~/Uploads/Media" DeletePaths="~/Uploads/Media" MaxUploadFileSize="80240000"   />            
        </telerik:RadEditor></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Only For Member </td>
        <td><asp:CheckBox ID="cbformember" runat="server" /></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Tag : </td>
        <td><asp:TextBox ID="txttag" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
  <%--  <tr>
        <td>Hình Ảnh:</td>
        <td><telerik:RadUpload ID="radupload" runat="server" controlobjectsvisibility="RemoveButtons,ClearButtons,AddButton" ></telerik:RadUpload></td>
    </tr>--%>
    <tr>
        <td colspan="2" align="center">
        <%--<asp:Button ID="btnSave" runat="server" Text="Save" CommandName="PerformInsert" /> &nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />--%>
             <asp:button id="btnUpdate" text="Update" runat="server" CommandName="Update" Visible='<%# !(DataItem is Telerik.Web.UI.GridInsertionObject) %>'></asp:button>
            <asp:button id="btnInsert" text="Insert" runat="server" CommandName="PerformInsert" Visible='<%# DataItem is Telerik.Web.UI.GridInsertionObject %>'></asp:button>
            &nbsp;
            <asp:button id="btnCancel" text="Cancel" runat="server" causesvalidation="False" commandname="Cancel"></asp:button>
        </td>
    </tr>
</table>
