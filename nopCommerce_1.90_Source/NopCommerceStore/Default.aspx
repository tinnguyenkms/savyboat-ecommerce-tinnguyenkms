<%@ Page Language="C#" MasterPageFile="~/MasterPages/TwoColumn.master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Default" CodeBehind="Default.aspx.cs"
     %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePagePoll" Src="~/Modules/HomePagePoll.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageNews" Src="~/Modules/HomePageNews.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageCategories" Src="~/Modules/HomePageCategories.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageProducts" Src="~/Modules/HomePageProducts.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="BestSellers" Src="~/Modules/BestSellers.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="TopicHomePageControl" Src="~/Modules/TopicHomePage.ascx" %>
<%@ Register TagPrefix="Savyboat" TagName="SlideShow" Src="~/Modules/SavyBoatSlideShow.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="Server">
    <Savyboat:SlideShow ID="CtrlSlideShow" runat="server" />
    <nopCommerce:TopicHomePageControl ID="ctrTopicHomePage" runat="server" TopicName="HomePageText"
        OverrideSEO="false"></nopCommerce:TopicHomePageControl>
    <div class="clear">
    </div>
    <nopCommerce:HomePageCategories ID="ctrlHomePageCategories" runat="server" />
    <div class="clear">
    </div>
    <nopCommerce:HomePageProducts ID="ctrlHomePageProducts" runat="server" />
    <div class="clear">
    </div>
    <nopCommerce:BestSellers ID="ctrlBestSellers" runat="server" />
    <div class="clear">
    </div>
    <nopCommerce:HomePageNews ID="ctrlHomePageNews" runat="server" />
    <div class="clear">
    </div>
    <nopCommerce:HomePagePoll ID="ctrlPolls" runat="server" />
</asp:Content>
