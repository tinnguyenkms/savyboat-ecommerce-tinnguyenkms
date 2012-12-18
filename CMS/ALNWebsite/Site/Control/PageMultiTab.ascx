<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PageMultiTab.ascx.cs" Inherits="ALNWebsite.Site.Control.PageMultiTab" %>
<div class="Box">
   <div  id="Box">
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="16px"></asp:Label>
    </div>    
    <div>
        <telerik:RadTabStrip ID="radtab" runat="server" MultiPageID="Multipage1" OnTabDataBound="RadTabStrip1_TabDataBound" OnPreRender="tabstrip_Prerender" Skin="Telerik">
            <TabTemplate>
            <asp:Label ID="lblContent" runat="server"  Font-Size="11px" />
        </TabTemplate>
        </telerik:RadTabStrip>
        
        <telerik:RadMultiPage ID="Multipage1" runat="server" >            
        </telerik:RadMultiPage>                  
    </div>
</div>

<style type="text/css">
   .Multidyn {
   width : 100%;
   height : 100%;  
   position:relative;
   z-index:1;
   }
   </style> 