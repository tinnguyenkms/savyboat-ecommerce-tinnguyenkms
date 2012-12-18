<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNewsAddEdit.ascx.cs" Inherits="ALNWebsite.Management.Control.ListNewsAddEdit" %>
<div>
    <telerik:RadComboBox ID="rcbbNewsPages" runat="server" 
        onselectedindexchanged="rcbbNewsPages_SelectedIndexChanged" />

        <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />

</div>
<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" ClientEvents-OnRequestStart="conditionalPostback">
        <telerik:RadProgressManager ID="RadProgressManager1" runat="server" />
        <telerik:RadProgressArea ID="RadProgressArea1" runat="server" />
        <telerik:RadGrid runat="server" ID="RadGrid1" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" Width="97%" AllowAutomaticInserts="true"
            AllowAutomaticUpdates="true" AllowAutomaticDeletes="true" ShowStatusBar="True"
            GridLines="None" OnItemDataBound="RadGrid1_ItemDataBound" OnItemCreated="RadGrid1_ItemCreated" PageSize="10">
            <PagerStyle Mode="NumericPages" AlwaysVisible="true" />
            <MasterTableView CommandItemDisplay="Top" DataKeyNames="ID" Width="100%">
                <Columns>
                    <telerik:GridEditCommandColumn ButtonType="ImageButton">
                        <HeaderStyle Width="3%" />
                    </telerik:GridEditCommandColumn>
                    <telerik:GridTemplateColumn HeaderText ="Title" UniqueName="Title" SortExpression="Title">
                        <ItemTemplate>
                            <asp:Label ID="lblTitle" runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadTextBox runat="server" Width="200px" ID="txbName" />
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="txbName"
                                ErrorMessage="Please, enter a name!" Display="Dynamic" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemStyle Width="100px" VerticalAlign="Top" />
                    </telerik:GridTemplateColumn>        
                     <telerik:GridTemplateColumn HeaderText="Contents" UniqueName="Contents" DataField="Contents">
                        <ItemTemplate>
                            <asp:Label ID="lblDescription" runat="server"  />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadTextBox ID="txbDescription" Width="300px" runat="server" TextMode="MultiLine"
                                 Height="150px" />
                        </EditItemTemplate>
                        <ItemStyle VerticalAlign="Top" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn HeaderText="ImageAvatar">
                        <ItemTemplate>
                            <telerik:RadBinaryImage ID="Image" runat="server" Width="80px" ResizeMode="Fit"  />
                        </ItemTemplate>
                        <HeaderStyle Width="100px" />
                        <ItemStyle Width="100px" VerticalAlign="Top" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridBinaryImageColumn DataField="ImageAvatar" HeaderText="ImageAvatar" UniqueName="Upload" ImageAlign="NotSet"
                        ImageHeight="80px" ImageWidth="80px" ResizeMode="Fit" DataAlternateTextField="Contents"
                        DataAlternateTextFormatString="Image of {0}">
                        <HeaderStyle Width="10%" /> 
                    </telerik:GridBinaryImageColumn>   
                     <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton">
                        <HeaderStyle Width="2%" />
                    </telerik:GridButtonColumn>
                </Columns>
                  <EditFormSettings>
                    <EditColumn ButtonType="ImageButton" />
                </EditFormSettings>
            </MasterTableView>
        </telerik:RadGrid>
</telerik:RadAjaxPanel>
<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">

        <script type="text/javascript">
        // <![CDATA[
            //On insert and update buttons click temporarily disables ajax to perform upload actions
            function conditionalPostback(sender, eventArgs) {
                var theRegexp = new RegExp("\.UpdateButton$|\.PerformInsertButton$", "ig");
                if (eventArgs.get_eventTarget().match(theRegexp)) {
                    var upload = $find(window['UploadId']);

                    //AJAX is disabled only if file is selected for upload
                    if (upload.getFileInputs()[0].value != "") {
                        eventArgs.set_enableAjax(false);
                    }
                }
            }

            function validateRadUpload(source, e) {
                e.IsValid = false;

                var upload = $find(source.parentNode.getElementsByTagName('div')[0].id);
                var inputs = upload.getFileInputs();
                for (var i = 0; i < inputs.length; i++) {
                    //check for empty string or invalid extension
                    if (inputs[i].value != "" && upload.isExtensionValid(inputs[i].value)) {
                        e.IsValid = true;
                        break;
                    }
                }
            }
            // ]]>
        </script>

    </telerik:RadCodeBlock>