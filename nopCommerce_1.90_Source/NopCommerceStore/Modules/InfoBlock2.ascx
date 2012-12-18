<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.InfoBlockControl2"
    CodeBehind="InfoBlock2.ascx.cs" %>
<div class="block block-info">
    <div class="title">
        <%=GetLocaleResourceString("Footer.Safety")%>
    </div>
    <div class="clear">
    </div>
    <div class="listbox">
        <ul>
                    
          <li><a href="<%=Page.ResolveUrl("~/Moneybackguarantee.aspx") %>">
                <%=GetLocaleResourceString("Footer.Money") %>
          </a></li>
          <li><a href="<%=Page.ResolveUrl("~/privacyinfo.aspx")%>">
                <%=GetLocaleResourceString("Content.PrivacyNotice")%></a></li>
         <li><a href="<%=Page.ResolveUrl("~/conditionsinfo.aspx")%>">
                <%=GetLocaleResourceString("Content.ConditionsOfUse")%></a></li>                       
         <li><a href="<%=Page.ResolveUrl("~/FAQs.aspx")%>">
                <%=GetLocaleResourceString("Content.FAQs")%></a></li>                       
        </ul>
    </div>
</div>
