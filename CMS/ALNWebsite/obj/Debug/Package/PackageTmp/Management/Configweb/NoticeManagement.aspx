<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="NoticeManagement.aspx.cs" Inherits="ALNWebsite.Management.Configweb.NoticeManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
       <div class="title">
            Notice 
        </div>
        <div style="width:570px; padding-left:20px;">
            <div  class="Register">
                <div class="ColLeft">Notice Type :</div>
                <div class="ColRight">
                    <asp:CheckBox ID="cbalnwebsite" Text="ALN Center" runat="server"/>
                    <asp:CheckBox ID="cbalbleft" Text="ALN left" runat="server"/>
                    <asp:CheckBox ID="cbforum" Text="forum" runat="server"/>
                </div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">Notice VietNam:</div>
                <div class="ColRight"><asp:TextBox ID="txtNoticevn" runat="server" Width="400px" /></div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">Notice English:</div>
                <div class="ColRight"><asp:TextBox ID="txtNoticeen" runat="server" Width="400px"/></div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
            <div class="ColLeft">            
            </div>
            <div class="ColRight">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Onclick" />&nbsp; &nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Onclick" />
            </div>
        </div>
</div>
<div style="clear:both"></div>
<div>
    <div class="title">
        List Notice
    </div>
    <div>
                <telerik:RadGrid ID="radGridPosts" runat="server" AutoGenerateColumns="false" 
                AllowSorting="true" Skin="Vista" AllowFilteringByColumn="True" AllowPaging="true"
                OnItemDataBound="radGridPosts_ItemDataBound"  
                OnNeedDataSource="radGridPosts_NeedDataSource"                                
                OnDeleteCommand="radGridPosts_DeleteCommand"
                OnUpdateCommand="radGridPosts_EditCommand">
                <ClientSettings EnableRowHoverStyle="true">
                    <Selecting AllowRowSelect="true" />
                    <ClientEvents OnRowSelected="RowDblClick" />
                </ClientSettings>
                <MasterTableView DataKeyNames="Id" ClientDataKeyNames="Id" >                    
                    <AlternatingItemStyle BackColor="#EEEEEE" />
                    <FilterItemStyle HorizontalAlign="Center" />                                        
                    <Columns>                        
                        <telerik:GridTemplateColumn HeaderText="Notice VN"
                            DataType="System.String" FilterControlWidth="200px">
                            <ItemTemplate>                                
                                <asp:LinkButton ID="hpContentVN" runat="server" OnClick="hpcontentedit"  ></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn HeaderText="Notice EN"
                            DataType="System.String" FilterControlWidth="200px">
                            <ItemTemplate>
                                <asp:Literal ID="ltContentEN" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn  HeaderText="Display">
                            <ItemTemplate>
                               <asp:Literal ID="ltdisplay" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridDateTimeColumn DataField="CreatedDate" HeaderText="CreatedDate" ReadOnly="true"
                            DataType="System.DateTime" DataFormatString="{0:dd/MM/yyyy }">
                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                        </telerik:GridDateTimeColumn>                                                
                        <telerik:GridButtonColumn UniqueName="DeleteColumn" HeaderText="Delete" ConfirmDialogType="Classic"
                            ConfirmTitle="Delete" HeaderStyle-Width="30px" ConfirmText="Are You Sure Delete?"
                            CommandName="Delete" ButtonType="ImageButton" ItemStyle-HorizontalAlign="Center" />
                    </Columns>                    
                </MasterTableView>
                <PagerStyle Mode="NextPrevNumericAndAdvanced" AlwaysVisible="true" />
                <HeaderStyle HorizontalAlign="Center" Font-Bold="True"></HeaderStyle>
            </telerik:RadGrid>
    </div>
</div>
<telerik:RadAjaxPanel ID="radpanel" runat="server"></telerik:RadAjaxPanel>
</asp:Content>
