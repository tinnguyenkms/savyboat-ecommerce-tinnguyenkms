<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DosageControl.ascx.cs" Inherits="ALNWebsite.Site.Control.DosageControl" %>

<style type="text/css">
    .style1
    {
        width: 300px;
         background-color: pink;
    }
    .style3
    {
        
    }
    .style4
    {
        
        text-align: center;
        background-color: #99CCFF;
    }
    .style5
    {
        width: 50px;
        text-align: center;
        background-color: #FFFFCC;
    }
    .style6
    {
        background-color: #99CCFF;
    }
    
    .style7
    {
        width: 50px;
        text-align: center;
        background-color: #FFFFCC;
        height: 61px;
    }
    .style8
    {
        background-color: #99CCFF;
        height: 61px;
    }
    .BorderStyle
    {
        border: 1px dotted #000000; text-align: center;
    }
    
</style>

<div class="Register">
    <span style="font-weight:bold"> BioFuture Dosing Programme for Plant Startup and Upset Recovery applies in</span>
</div>
<div style="clear:both"/>
<div class="Register" >
    <div class="ColLeftd">
      <span style="font-size:11px;">  The following cases:</span>
<ul> 
<li>  New plant startup</li>
<li>  Revamped plant startup</li>
<li> Startup following equipment maintenance</li>
<li> Plants which operate on a seasonal or campaign basis</li>
<li> Plants recovering from toxic shocks</li>
<li> Plants which have had biomass washout due to hydraulic overloading</li>
<li> Plants which have had problems with excessively high or low pH</li>
<li> Plants recovering from loss of electrical power</li>
<li> Plants which have variable loadings during the year</li>
</ul>

    </div>
    <div class="ColRight">
        <div>
        <table cellspacing="1" class="style1" border="1" 
                style="border-style: dotted; border-width: 1px; border-color: #000000; clip: rect(1px, 1px, 1px, 1px); border-spacing: 1px">
                <tr>
                    <td class="style5 BorderStyle" >
                        <asp:Label ID="lbl3" runat="server" Text="Aeration tank capacity (m3)" 
                            style=" font-size:11px;"></asp:Label>
                    </td>
                    <td colspan="3" 
                        class="style6 BorderStyle">
                        <asp:Label ID="Label5" runat="server" 
                            style="font-size:11px;" Text="Influent COD "></asp:Label>
                        <asp:Label ID="LblInfluents" runat="server" Text="." 
                            style="font-size:11px;; color: #FF0000"></asp:Label>
                    &nbsp;<asp:Label ID="Label6" runat="server" 
                            style="font-size:11px;" Text="mg/L"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4 BorderStyle" rowspan="2" valign="bottom">
                        <asp:Label ID="lblAerations" runat="server" Text="." 
                            style="font-size:11px;color: #FF0000"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label2" runat="server" Text="Day 1-5 Kg/day" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label3" runat="server" Text="Weeks  2-6 Kg/wk" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label4" runat="server" Text="Weeks  7+ Kg/wk" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblday" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblweek26" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblweek7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
            <div>
                <table cellspacing="1" class="style1">
    <tr>
        <td class="style3 BorderStyle">
            <asp:Label ID="lbl1" runat="server" Text="Influent COD" style="color: #0000CC"></asp:Label>
        </td>
        <td>
        <telerik:RadNumericTextBox ID="TxtInfluentCOD" runat="server" MinValue="0"></telerik:RadNumericTextBox>
            
        </td>
    </tr>
    <tr>
        <td class="style3 BorderStyle">
            <asp:Label ID="lbl2" runat="server" Text="Aeration tank capacity (m3)" 
                style="color: #0000CC"></asp:Label>
        </td>
        <td>            
            <telerik:RadNumericTextBox ID="TxtAeration" runat="server" MinValue="0" ></telerik:RadNumericTextBox>
        </td>
    </tr>
    <tr>
        <td class="style3 BorderStyle">
            &nbsp;</td>
        <td>
            <asp:Button ID="Btncalculation" runat="server" Text="Calculation" 
                onclick="Btncalculation_Click" style="font-weight: 700" />
        </td>
    </tr>
    </table>
            </div>
    </div>
</div>
<div style="clear:both"></div>
<div class="Register">
    <span style="font-weight:bold">BioFuture Industrial Wastewater Dosing Guidelines</span>
</div>
<div style="clear:both"/>
<div class="Register">
    <div class="ColLeftd">
   <span style="font-size:11px;">  Ongoing dosing for plant stability<br />
The BioFuture Dosing Programme for Plant Stability has the following benefits:</span>
<ul>
    <li>Improved floc formation and better settling in secondary clarifier </li>
    <li>Better degradation of specific chemicals </li>
    <li>Degradation of compounds which pass through the plant largely untreated </li>
    <li>Improved resistance to shock loading </li>
    <li>Improved capability to deal with influent variations </li>
    <li>Better removal of chemicals which inhibit nitrification</li>
    <li>Improved final effluent quality</li>
    <li>Biomass becomes more robust </li>
</ul>
    </div>
    <div class="ColRight">
         <table cellspacing="1" class="style1 BorderStyle" border="1" >              
                <tr>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lbl4" runat="server" Text="Aeration tank capacity (m3)" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td colspan="3" style="text-align: center" class="style6 BorderStyle">
                        <asp:Label ID="Label8" runat="server" 
                            style="font-size:11px;" Text="Influent COD "></asp:Label>
                        <asp:Label ID="LblInfluents0" runat="server" Text="." 
                            style="font-size:11px; color: #FF0000"></asp:Label>
                    &nbsp;<asp:Label ID="Label9" runat="server" 
                            style="font-size:11px;" Text="mg/L"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4 BorderStyle" rowspan="2" valign="bottom">
                        <asp:Label ID="lblAerations0" runat="server" Text="." 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label10" runat="server" Text="Day 1-5 Kg/day" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label11" runat="server" Text="Weeks  2-6 Kg/wk" 
                            style="font-size:11px;"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="Label12" runat="server" Text="Weeks  7+ Kg/wk" 
                            style=" font-size:11px;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblday0" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblweek27" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5 BorderStyle">
                        <asp:Label ID="lblweek28" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <div> <span style="font-size:10px; color:Red; font-weight:bold; font-style:italic"> Note : More specific information on the dosing programme<br /> will be provided by the Technical Department of ALN. </span>
    </div>
    </div>
    <div style="clear:both" />
   
</div>
<telerik:RadAjaxPanel ID="panel" runat="server" />



