<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="NewsManagement.aspx.cs" Inherits="ALNWebsite.Management.News.NewsManagement"%>
<%@ Register Src="~/Management/Control/ListNewsAddEdit.ascx" TagPrefix="uc" TagName="NewsManager" %>
<%@ Register Src="~/Management/Product/ProductList.ascx" TagPrefix="uc" TagName="ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="title">
            News Manager
        </div>
        <div class="divContent">
            Select Product :
            <uc:ListProduct ID="Listproduct" runat="server" AutoPostBack="true" OnSelectClick="Onitemclick" />
        </div>
        <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
            <script type="text/javascript">
                function RowDblClick(sender, eventArgs) {
                    sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
                }
            </script>
        </telerik:RadCodeBlock>                                      
    <div>        
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="Panel1">               
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl  LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnView">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl  LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="rcbbNewsPages">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl  LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" ZIndex="1" />
        <telerik:RadProgressManager ID="RadProgressManager1" runat="server" />
        <telerik:RadProgressArea ID="RadProgressArea1" runat="server" />
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Height="275px">
         <telerik:RadGrid ID="radGridPosts" runat="server" AutoGenerateColumns="false" 
                AllowSorting="true" Skin="Vista" AllowFilteringByColumn="false" AllowPaging="true"
                OnItemDataBound="radGridPosts_ItemDataBound" 
                OnInsertCommand="radGridPosts_InsertCommand"
                OnNeedDataSource="radGridPosts_NeedDataSource" 
                OnDeleteCommand="radGridPosts_DeleteCommand"
                OnUpdateCommand="radGridPosts_EditCommand"
                OnPreRender="radGridPosts_PreRender" >
                <ClientSettings EnableRowHoverStyle="true">
                    <Selecting AllowRowSelect="true" />
                    <ClientEvents OnRowSelected="RowDblClick" />
                </ClientSettings>
              <MasterTableView DataKeyNames="Id" ClientDataKeyNames="Id" InsertItemDisplay="Top"  CommandItemDisplay="Top">
                    <AlternatingItemStyle BackColor="#EEEEEE" />
                    <FilterItemStyle HorizontalAlign="Center" />                    
                    <CommandItemSettings AddNewRecordText="Add new" RefreshText="Refesh" />
                <Columns>         
                        <telerik:GridBoundColumn DataField="Id" HeaderText="ID" DataType="System.Guid"  Visible="false">
                            <ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
                        </telerik:GridBoundColumn>      
                        <telerik:GridTemplateColumn DataField="Title" HeaderText="Title" DataType="System.String">
                            <ItemTemplate>
                                <asp:Label ID="lbltilte" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                             
                        <telerik:GridTemplateColumn DataField="Contents" HeaderText="Product Description" DataType="System.String" FilterControlWidth="180px">
                            <ItemTemplate>
                                <asp:Literal ID="ltContent" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="180px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="ImageAvatar">
                            <ItemTemplate>
                                <telerik:RadBinaryImage ID="Image" runat="server" Width="80px" ResizeMode="Fit"  />
                            </ItemTemplate>
                            <HeaderStyle Width="100px" />
                            <ItemStyle Width="100px" VerticalAlign="Top" />
                        </telerik:GridTemplateColumn> 
                        <telerik:GridDateTimeColumn DataField="CreatedDate" HeaderText="CreatedDate" ReadOnly="true" DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>
                        <telerik:GridDateTimeColumn DataField="Timeexpiration" HeaderText="Timeexpiration" ReadOnly="true"
                            DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>
                        <telerik:GridTemplateColumn>
                            <ItemTemplate>
                                <asp:CheckBox ID="cbPermission" runat="server" Enabled="false" />
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>       
                        <telerik:GridEditCommandColumn UniqueName="EditCommandColumn" ButtonType="ImageButton"  HeaderText="Edit">
                        </telerik:GridEditCommandColumn>            
                        <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton">
                            <HeaderStyle Width="2%" />
                        </telerik:GridButtonColumn>
                    </Columns>
                    <EditFormSettings UserControlName="AddEditProduct.ascx" EditFormType="WebUserControl">
                        <EditColumn UniqueName="EditCommandColumn" >
                        </EditColumn>
                    </EditFormSettings>
            </MasterTableView> 
            <PagerStyle Mode="NextPrevNumericAndAdvanced" AlwaysVisible="true" />           
        </telerik:RadGrid>   
        </asp:Panel>
        </div>
</asp:Content>
