<%@ Page Title="" Language="C#" MasterPageFile="~/Management/Master/Admin.Master" AutoEventWireup="true" CodeBehind="PartnerListManagement.aspx.cs" Inherits="ALNWebsite.Management.Configweb.PartnerListManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
       <div class="title">
            Partner 
        </div>
        <div style="padding:20px; width:560px;">
            <div  class="Register" runat="server" visible="false" >
                <div class="ColLeft">Partner Type :</div>
                <div class="ColRight">
                    <asp:CheckBox ID="cbalnwebsite" Text="ALN Center" runat="server"/>                    
                    <asp:CheckBox ID="cbforum" Text="forum" runat="server"/>
                </div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">CompanyName VN:</div>
                <div class="ColRight"><asp:TextBox ID="txtNamevn" runat="server" Width="400px" /></div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">CompanyName EN:</div>
                <div class="ColRight"><asp:TextBox ID="txtNameen" runat="server" Width="400px"/></div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">Link :</div>
                <div class="ColRight"><asp:TextBox ID="txtLink" runat="server" Width="400px"/></div>
            </div>
            <div style="clear:both"></div>
            <div  class="Register">
                <div class="ColLeft">Logo :</div>
                <div class="ColRight"><asp:FileUpload ID="flogo" runat="server" /><br />
                <img ID="imagelogo" runat="server" width="150"  />
                </div>
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
        List Partner
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
                        <telerik:GridTemplateColumn HeaderText="Logo">
                            <ItemTemplate>
                                <telerik:RadBinaryImage ID="radlogo" runat="server" ResizeMode="Fit" Width="80px" />
                            </ItemTemplate>
                            <ItemStyle Width="80px" />
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="CompanyName VN"
                            DataType="System.String" FilterControlWidth="150px">
                            <ItemTemplate>                                
                                <asp:LinkButton ID="hpContentVN" runat="server" OnClick="hpcontentedit"  ></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn HeaderText="CompanyName EN"
                            DataType="System.String" FilterControlWidth="100px">
                            <ItemTemplate>
                                <asp:Literal ID="ltContentEN" runat="server"></asp:Literal>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px"></ItemStyle>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn  HeaderText="Link">
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
<telerik:RadAjaxPanel ID="radPanel" runat="server"></telerik:RadAjaxPanel>
</asp:Content>
