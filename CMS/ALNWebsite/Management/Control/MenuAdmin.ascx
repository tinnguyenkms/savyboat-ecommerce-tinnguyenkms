<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.ascx.cs" Inherits="ALNWebsite.Management.Control.MenuAdmin" %>
<div>
    <telerik:RadPanelBar Runat="server" ID="rpbLeftMenu" Width="200px" ExpandMode="SingleExpandedItem" >
    <CollapseAnimation Type="None"></CollapseAnimation>
        <Items>
            <telerik:RadPanelItem Text="Content Management" Expanded="true">
                <Items>
                    <telerik:RadPanelItem NavigateUrl="~/Management/Default.aspx" Text="Dashboard" runat="server" Selected="true"/>                
                    <telerik:RadPanelItem NavigateUrl="../Pages/PageManagerment.aspx" Text="Page Manager" runat="server">                
                    </telerik:RadPanelItem>
                    <telerik:RadPanelItem NavigateUrl="~/Management/News/NewsManagement.aspx" Text="News Manager" runat="server">                
                    </telerik:RadPanelItem>
                </Items>
            </telerik:RadPanelItem>
            <telerik:RadPanelItem Text="Product Managerment" Expanded="true">
                <Items>
                    <telerik:RadPanelItem runat="server" Text="ProductManger" NavigateUrl="~/Management/Product/ProductManagement.aspx"/>
                </Items>
            </telerik:RadPanelItem>
            <telerik:RadPanelItem Text="Email Managerment" Expanded="true">
                <Items>
                    <telerik:RadPanelItem runat="server" Text="Email Setting" NavigateUrl="~/Management/EmailSetting/EmailSetting.aspx"/>
                </Items>
            </telerik:RadPanelItem>
            <telerik:RadPanelItem Text="Config" Expanded="true">
                <Items>
                    <telerik:RadPanelItem runat="server" Text="Partner List" NavigateUrl="~/Management/Configweb/PartnerListManagement.aspx"/>
                    <telerik:RadPanelItem runat="server" Text="Notice" NavigateUrl="~/Management/Configweb/NoticeManagement.aspx"/>
                </Items>
            </telerik:RadPanelItem>
        </Items>
    </telerik:RadPanelBar>
</div>