<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductList.ascx.cs" Inherits="ALNWebsite.Management.Product.ProductList" %>
<telerik:RadComboBox ID="drop" runat="server" DropDownWidth="500" Height="305" Width="300px"
    ShowToggleImage="True" Style="vertical-align: middle;" OnClientDropDownOpened="OnClientDropDownOpenedHandler"
    EmptyMessage="Select Product">
    <ItemTemplate>
        <div onclick="StopPropagation(event)">
            <telerik:RadTreeView runat="server" ID="Tree" CausesValidation="False" Skin="Office2007"
                Height="300" OnClientNodeExpanded="ClientNodeExpanded">
            </telerik:RadTreeView>
        </div>
    </ItemTemplate>
    <Items>
        <telerik:RadComboBoxItem Text="" BackColor="White" />
    </Items>
</telerik:RadComboBox>
<telerik:RadScriptBlock ID="RadScriptBlock1" runat="server">
    <asp:Literal runat="server" ID="AddScript"></asp:Literal>

    <script type="text/javascript" language="javascript">
        function OnClientDropDownOpenedHandler(sender, eventArgs) {
            var tree = sender.get_items().getItem(0).findControl("Tree");
            var selectedNode = tree.get_selectedNode();
            if (selectedNode) {
                selectedNode.scrollIntoView();
            }
        }
        function StopPropagation(e) {
            if (!e) {
                e = window.event;
            }

            e.cancelBubble = true;
        }
        function ClientNodeExpanded(sender, eventArgs) {
            var childNodes = eventArgs.get_node().get_nodes();
            if (childNodes.get_count() > 0) {
                var NodeEnd = childNodes.getNode(childNodes.get_count() - 1);
                setTimeout(NodeEnd.scrollIntoView(), 100);
            }
        }        
    </script>

</telerik:RadScriptBlock>

