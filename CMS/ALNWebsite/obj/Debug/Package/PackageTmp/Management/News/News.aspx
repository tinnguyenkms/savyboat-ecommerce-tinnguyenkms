<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="ALNWebsite.Management.News.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadGrid1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
      </telerik:RadAjaxManager>
      <telerik:RadGrid ID="RadGrid1"  runat="server" ShowStatusBar="true"
            AutoGenerateColumns="False" PageSize="5" AllowSorting="True" AllowMultiRowSelection="False"
            AllowPaging="True" GridLines="None" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
            AllowAutomaticUpdates="True" OnItemUpdated="RadGrid1_ItemUpdated" OnItemDeleted="RadGrid1_ItemDeleted"
            OnItemDataBound ="RadGrid1_ItemDataBound"
            OnItemInserted="RadGrid1_ItemInserted" OnInsertCommand="RadGrid1_InsertCommand">
            <PagerStyle Mode="NumericPages"></PagerStyle>
            <MasterTableView DataKeyNames="Id" AllowMultiColumnSorting="True"
                Width="100%" CommandItemDisplay="Top" Name="MenuDetail">
                <DetailTables>
                    <telerik:GridTableView DataKeyNames="Id" Width="100%" 
                        runat="server" CommandItemDisplay="Top" Name="NewsDetail">
                         <ParentTableRelation>
                            <telerik:GridRelationFields DetailKeyField="MenuDetailId" MasterKeyField="MenuDetailId" />
                        </ParentTableRelation>
                         <DetailTables>
                            
                         </DetailTables>
                            <Columns>
                                <telerik:GridEditCommandColumn ButtonType="ImageButton">
                                    <HeaderStyle Width="3%" />
                                </telerik:GridEditCommandColumn>
                                <telerik:GridTemplateColumn HeaderText ="Title" UniqueName="Title" SortExpression="Title">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTitle" runat="server"></asp:Label>
                                    </ItemTemplate>                        
                                    <ItemStyle Width="100px" VerticalAlign="Top" />
                                </telerik:GridTemplateColumn>        
                                 <telerik:GridTemplateColumn HeaderText="Contents" UniqueName="Contents" DataField="Contents">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDescription" runat="server"  />
                                    </ItemTemplate>                        
                                    <ItemStyle VerticalAlign="Top" />
                                </telerik:GridTemplateColumn>
                                <telerik:GridTemplateColumn HeaderText="ImageAvatar">
                                    <ItemTemplate>
                                        <telerik:RadBinaryImage ID="Image" runat="server" Width="80px" ResizeMode="Fit"  />
                                    </ItemTemplate>
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle Width="100px" VerticalAlign="Top" />
                                </telerik:GridTemplateColumn> 
                                <telerik:GridTemplateColumn>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="cbPermission" runat="server" />
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>                   
                                 <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton">
                                    <HeaderStyle Width="2%" />
                                </telerik:GridButtonColumn>
                             </Columns>
                     </telerik:GridTableView>
                </DetailTables>
                <Columns>
                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                        <HeaderStyle Width="20px" />
                        <ItemStyle Width="20px"  />
                    </telerik:GridEditCommandColumn>
                    <telerik:GridTemplateColumn HeaderText ="Title" UniqueName="Title" SortExpression="Title">
                        <ItemTemplate>
                            <asp:Label ID="lblTitle1" runat="server"></asp:Label>
                        </ItemTemplate>                        
                        <ItemStyle Width="100px" VerticalAlign="Top" />
                    </telerik:GridTemplateColumn>        
                     <telerik:GridTemplateColumn HeaderText="Contents" UniqueName="Contents" DataField="Contents">
                        <ItemTemplate>
                            <asp:Label ID="lblDescription1" runat="server"  />
                        </ItemTemplate>                        
                        <ItemStyle VerticalAlign="Top" />
                    </telerik:GridTemplateColumn>                                         
                     <telerik:GridButtonColumn ConfirmText="Delete this customer?" ButtonType="ImageButton"
                        CommandName="Delete" Text="Delete" UniqueName="DeleteColumn">
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" CssClass="MyImageButton" />
                    </telerik:GridButtonColumn>
                </Columns>
            </MasterTableView>
      </telerik:RadGrid>
        
</div>
</asp:Content>
