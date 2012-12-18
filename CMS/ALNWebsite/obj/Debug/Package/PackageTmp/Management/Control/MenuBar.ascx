<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuBar.ascx.cs" Inherits="DMS.UserControl.MenuBar" %>
<table width="100%">
    <tr>
        <td>
            <telerik:RadToolBar runat="server" OnButtonClick="RadToolBar1_ButtonClick" ID="RadToolBar1"
                Width="100%" Skin="Office2007" BorderStyle="None" dir="rtl">
                <Items>
                    <telerik:RadToolBarButton Text="Đổi mật khẩu" CausesValidation="false" Value="ChangPwd">
                    </telerik:RadToolBarButton>
                    <telerik:RadToolBarButton Text="Đăng xuất" CausesValidation="false" Value="LogOut">
                    </telerik:RadToolBarButton>                    
                </Items>
            </telerik:RadToolBar>
        </td>       
    </tr>
</table>
