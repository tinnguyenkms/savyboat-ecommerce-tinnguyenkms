<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="PageManagerment.aspx.cs" Inherits="ALNWebsite.Management.Pages.PageManagerment" %>
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
   <div class="title">
            Page Manager
        </div>
        <div class="divContent">
            Select Page :
            <uc:ListProduct ID="Listproduct" runat="server" AutoPostBack="true" OnSelectClick="Onitemclick" />
        </div>
<telerik:RadAjaxPanel ID="panel" runat="server" />
      <telerik:RadGrid ID="radGridPosts" runat="server" AutoGenerateColumns="false" 
                AllowSorting="true" Skin="Vista" AllowFilteringByColumn="false" AllowPaging="true"
                OnItemDataBound="radGridPosts_ItemDataBound"                 
                OnNeedDataSource="radGridPosts_NeedDataSource"  
                 OnInsertCommand="radGridPosts_InsertCommand"                                 
                OnUpdateCommand="radGridPosts_EditCommand">
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
                        <telerik:GridBoundColumn DataField="Id" HeaderText="ID" DataType="System.Guid" 
                            Visible="false">
                            <ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
                        </telerik:GridBoundColumn>
                       <telerik:GridTemplateColumn HeaderText="Page Name" HeaderStyle-Width="100px">
                            <ItemTemplate>
                                <asp:Label ID="lblNamePage" runat="server" />
                            </ItemTemplate>
                       </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="Content" HeaderText="Content"
                            DataType="System.String" FilterControlWidth="250px">
                            <ItemTemplate>
                                <asp:Literal ID="ltContent" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="250px"></ItemStyle>
                        </telerik:GridTemplateColumn>                       
                        <telerik:GridDateTimeColumn DataField="CreatedDate" HeaderText="CreatedDate" ReadOnly="true"
                            DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>
                        <telerik:GridEditCommandColumn UniqueName="EditCommandColumn" ButtonType="ImageButton"
                            HeaderText="Edit">
                        </telerik:GridEditCommandColumn>                        
                    </Columns>
                    <EditFormSettings UserControlName="AddEditProduct.ascx" EditFormType="WebUserControl">
                        <EditColumn UniqueName="EditCommandColumn" >
                        </EditColumn>
                    </EditFormSettings>
                </MasterTableView>
                <HeaderStyle HorizontalAlign="Center" Font-Bold="True"></HeaderStyle>
                <PagerStyle Mode="NextPrevNumericAndAdvanced" AlwaysVisible="true" />
            </telerik:RadGrid>
</asp:Content>
