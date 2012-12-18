<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListProductByCategory.ascx.cs" Inherits="ALNWebsite.Site.Control.ListProductByCategory" %>
<asp:Panel runat="server" ID="PanelTitle">
    <asp:Label runat="server" ID="lblTitle" Font-Bold="true" Font-Size="20px"></asp:Label>
</asp:Panel>
<asp:DataList runat="server" RepeatLayout="Table" ID="lstProduct"  
    OnItemDataBound="lstProduct_ItemDataBound">
    <ItemTemplate>
    <div>
            <%--<div style="float:right">
              <asp:LinkButton runat="server" ID="lbtnProduct" OnClick="linkitem1_onclick" CommandArgument= <%#Eval("ID") %> />
            </div>
            <div style=" float:left;">
                <asp:Label runat="server" ID="lblName" Width="150px"></asp:Label>        
            </div>--%>
            <div>
                 <asp:Label runat="server" ID="lblName" Width="150px" Font-Bold="true" Font-Size="16px"></asp:Label> <img id="new_icon" runat="server"  />       
            </div>
            <div>
                <asp:Literal runat="server" ID="ltShortContent" Mode="Transform" ></asp:Literal>&nbsp; &nbsp; &nbsp; 
            </div>
            <div style="text-align:right">
                 <asp:LinkButton runat="server" ID="lbtnProduct" OnClick="linkitem1_onclick"/>
            </div>
            <div style="background-color:Red; height:1px; width:100%;margin-bottom:10px;">
           
            </div>
    </div>        
    </ItemTemplate>    
</asp:DataList>
  <div style="float:left;">
<asp:DataList ID="dlPaging" runat="server" OnItemCommand="dlPaging_ItemCommand" OnItemDataBound="dlPaging_ItemDataBound" RepeatDirection="Horizontal">
<ItemTemplate>
  <div style="width:20px;">
  <asp:LinkButton ID="lnkbtnPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>' CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>'></asp:LinkButton>
  </div>
</ItemTemplate>
</asp:DataList>
</div>
