<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PartnerList.ascx.cs" Inherits="ALNWebsite.Site.Control.PartnerList" %>
<div class="Box">
    <div class="Backgroudtitle">
        <asp:Label ID="lblCounter" runat="server" Text="Partner"></asp:Label>
    </div>
    <div  align="center" style="height:730px">
    <marquee  behavior="scroll" direction="up" align="center" scrollamount="3" loop="-1" height="730px">
        <asp:DataList ID="dlPartner" Width="100%" runat="server" RepeatColumns="1" RepeatDirection="Vertical" RepeatLayout="Flow"
         OnItemDataBound="dlPartner_ItemDataBound" >
            <ItemTemplate>
                <div>
                   <telerik:RadBinaryImage ID="ilogo" runat="server" Width="150px" ResizeMode="Fit" />
                </div>
                <div style="text-align:center; color: Red;">
                    <asp:LinkButton ID="lbtnCompanyname" runat="server"  ></asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </marquee>
    </div>
</div>
