<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master"
    AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="ALNWebsite.Management.Product.ProductManagement1" %>

<%@ Register Src="~/Management/Product/ProductList.ascx" TagPrefix="uc" TagName="ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
        //<![CDATA[
            function RowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }

            function ShowFilterItem() {
                $find('<%=radGridPosts.ClientID %>').get_masterTableView().showFilterItem();
            }

            function HideFilterItem() {
                $find('<%=radGridPosts.ClientID %>').get_masterTableView().hideFilterItem();
            }
      
      
        //]]>
        </script>
    </telerik:RadCodeBlock>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="radGridPosts">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="radGridPosts" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <div>
        <div class="title">
            Product Manager
        </div>
        <div class="divContent">
            Select Product :
            <uc:ListProduct ID="Listproduct" runat="server" AutoPostBack="true" OnSelectClick="Onitemclick" />
        </div>
        <div class="divContent">
            Filter
            <input id="Radio1" type="radio" runat="server" name="showHideGroup" checked="true"
                onclick="ShowFilterItem()" /><label for="Radio1">On</label>
            <input id="Radio2" type="radio" runat="server" name="showHideGroup" onclick="HideFilterItem()" /><label
                for="Radio2">Off</label>
        </div>
        <div class="divContent">
            <telerik:RadGrid ID="radGridPosts" runat="server" AutoGenerateColumns="false" 
                AllowSorting="true" Skin="Vista" AllowFilteringByColumn="True" AllowPaging="true"
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
                <MasterTableView DataKeyNames="Id" ClientDataKeyNames="Id" InsertItemDisplay="Top"
                    CommandItemDisplay="Top">
                    <AlternatingItemStyle BackColor="#EEEEEE" />
                    <FilterItemStyle HorizontalAlign="Center" />                    
                    <CommandItemSettings AddNewRecordText="Add new" RefreshText="Refesh" />
                    <Columns>
                        <telerik:GridBoundColumn DataField="Id" HeaderText="ID" DataType="System.Guid" FilterControlWidth="30px"
                            Visible="false">
                            <ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
                        </telerik:GridBoundColumn>                     
                        <telerik:GridTemplateColumn DataField="Name" HeaderText="Product Description"
                            DataType="System.String" FilterControlWidth="150px">
                            <ItemTemplate>
                                <asp:Literal ID="ltname" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="Content" HeaderText="Product Description"
                            DataType="System.String" FilterControlWidth="150px">
                            <ItemTemplate>
                                <asp:Literal ID="ltContent" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="GroupId" HeaderText="For member">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbmember" runat="server" Enabled="false" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridDateTimeColumn DataField="CreatedDate" HeaderText="CreatedDate" ReadOnly="true"
                            DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>
                        <telerik:GridDateTimeColumn DataField="Timeexpiration" HeaderText="Timeexpiration" ReadOnly="true"
                            DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>
                        <telerik:GridEditCommandColumn UniqueName="EditCommandColumn" ButtonType="ImageButton"
                            HeaderText="Edit">
                        </telerik:GridEditCommandColumn>
                        <telerik:GridButtonColumn UniqueName="DeleteColumn" HeaderText="Delete" ConfirmDialogType="Classic"
                            ConfirmTitle="Delete" HeaderStyle-Width="30px" ConfirmText="Are You Sure Delete?"
                            CommandName="Delete" ButtonType="ImageButton" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                    <EditFormSettings UserControlName="AddEditProduct.ascx" EditFormType="WebUserControl">
                        <EditColumn UniqueName="EditCommandColumn" >
                        </EditColumn>
                    </EditFormSettings>
                </MasterTableView>
                <PagerStyle Mode="NextPrevNumericAndAdvanced" AlwaysVisible="true" />
                <HeaderStyle HorizontalAlign="Center" Font-Bold="True"></HeaderStyle>
            </telerik:RadGrid>
        </div>
      
    </div>
</asp:Content>
