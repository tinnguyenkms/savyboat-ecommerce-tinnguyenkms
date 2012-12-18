<%@ Page Title="Sitemap" Language="C#" MasterPageFile="~/Site/Master/Master.Master" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="ALNWebsite.Site.Pages.Sitemap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadTreeView ID="radtree" runat="server" CausesValidation="False" Skin="Office2007" OnNodeClick="radtree_NodeClick" Width="500px" 
                ExpandAnimation-Type="OutBack">                        
                
        
    </telerik:RadTreeView>
<telerik:RadScriptBlock ID="RadScriptBlock1" runat="server">
    <script type="text/javascript" language="javascript">
            function ClientNodeExpanded(sender, eventArgs) {
            var childNodes = eventArgs.get_node().get_nodes();
            if (childNodes.get_count() > 0) {
                var NodeEnd = childNodes.getNode(childNodes.get_count() - 1);
                setTimeout(NodeEnd.scrollIntoView(), 100);
            }
     </script>
</telerik:RadScriptBlock>
</asp:Content>
