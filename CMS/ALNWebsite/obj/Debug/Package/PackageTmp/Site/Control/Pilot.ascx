<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Pilot.ascx.cs" Inherits="calculator.control.Pilot" %>
<style type="text/css">

 
 .BorderStyle
    {
        border: 1px dotted #000000; text-align: center;
        font-size:11px;
    }
     .style5
    {
        width: 40px;
        text-align: center;
        color:#0066FF;
        font-size:11px;
       
    }
    .style6
    {
        width: 80px;
        text-align: center;
       
    }
    .style7
    {
        width: 40px;
        text-align: center;
       
    }
    .style12
    {
        background:#FFCCFF;
    }
    .style10
    {
        color: #0066FF;
    }
    .style11
    {
        text-align: left;
    }
    </style>
<div >
<div style=" font-size:11px ; color:Red"  class="style11">
    <strong>Daily worksheet for microbial product trial at pilot scale (1m3)</strong><br />
    <strong>For a 1 m3 tank the maximum fill is 800 litres<br />
Product systems is adaption for aerobic systems and nutrient supplementation<br />
Applied to the both General Chemical wastewater and other Industrial Wastewater</strong><br />

</div>
    <div style="font-size:11px">
    •	Use a fine bubble diffuser for aeration.<br />
•	Check DO daily. Should be 2.0 – 4.0mg/L.<br />
•	Check pH after filling 1m3 tank to 800 litres and adjust to pH 7.0 – 7.5 if necessary<br />
•	Monitor pH daily and adjust as necessary.<br />
•	Add required quantity of product name to 1 litre water, stir and allow to stand for 1 hour before dosing to the tank.<br />
•	Dissolve urea, DSP and sugar in 500ml water before adding to the tank.<br />
•	Add nutrients when the water has been changed.<br />
•	Turn off aeration for 1 hour to allow biomass to settle before removing water.<br />
•	Use a siphon to remove cleared water from the top of the tank.<br />
Note: More detailed information, please contact 24/7 ALN technical Department 
   </div>
  
        <asp:Label ID="Label5" runat="server" Text="Product name " 
            style="color: #FF0000 ; font-size:11px"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtpilot" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Calculator" />
   


</div>

<div style="font-size:11px; margin:0 ">
    <table align="left" border="1" cellpadding="0" cellspacing="0" 
        class="MsoNormalTable" >
       
        <tr class="style12">
            <td rowspan="2" class="style5 BorderStyle style12">                
                    <span class="style10">Day</span>
            </td >
            <td rowspan="2" class="style7 BorderStyle style12">
              
                    <asp:Label ID="lblproductname" runat="server" style="color: #0066FF" 
                    Text="Product name(g)"></asp:Label>                
            </td>
            <td rowspan="2" class="style7 BorderStyle">
                <span class="style10">Urea (g)</span>
            </td>
            <td rowspan="2" class="style7 BorderStyle">
                <span class="style10">DSP (g)</span>
            </td>
            <td rowspan="2" class="style7 BorderStyle">
               
                    <span class="style10">Sugar(g)</span>
            </td>
            <td colspan="2" class="style6 BorderStyle">
                    
                    <span class="style10">Wastewater</span>
                    </td>
        </tr>
        <tr class="style5 BorderStyle style12">
             <td class="style5 BorderStyle">
                    
                    <span class="style10">Out (L)</span>
            </td>
            <td class="style5 BorderStyle style12">
                    
                    <span class="style10">In (L)</span>
            </td>
        </tr>
        <tr style="mso-yfti-irow:3">
            <td class="style5 BorderStyle style12">
                   1
            </td>
            <td class="style5 BorderStyle ">
                <asp:Label ID="lbl1" runat="server" Text="0" 
                    style="color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl6" runat="server" Text="0" 
                    style=" color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl11" runat="server" Text="0" 
                    style=" color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl16" runat="server" Text="0" 
                    style=" color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl21" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl26" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:3">
            <td class="style5 BorderStyle style12">
                   2
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl2" runat="server" Text="0" style="color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl7" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl12" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl17" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl22" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl27" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:4">
            <td class="style5 BorderStyle style12">
                   3
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl3" runat="server" Text="0" style="color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl8" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl13" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl18" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl23" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl28" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:5">
            <td class="style5 BorderStyle style12">
                   4
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl4" runat="server" Text="0" style="color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl9" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl14" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl19" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl24" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl29" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:6">
            <td class="style5 BorderStyle style12">
                   5
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl5" runat="server" Text="0" style="color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl10" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl15" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl20" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl25" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl30" runat="server" Text="0" 
                    style="font-size: 11px; color: #3399FF"></asp:Label>
            </td>
        </tr>
        <tr >
            <td class="style5 BorderStyle style12">
                    6
            </td>
            <td 
                class="style5 BorderStyle">
                <asp:Label ID="lbl31" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl40" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl49" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl58" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl67" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl76" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:8">
            <td class="style5 BorderStyle style12">
                    7
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl32" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl41" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl50" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl59" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl68" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl77" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:9">
         <td class="style5 BorderStyle style12">
                   8
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl33" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl42" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl51" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl60" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl69" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl78" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:10">
            <td class="style5 BorderStyle style12">
                   9
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl34" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl43" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl52" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl61" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl70" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl79" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:11">
            <td class="style5 BorderStyle style12">
                   10
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl35" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl44" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl53" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl62" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl71" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl80" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:12">
            <td class="style5 BorderStyle style12">
                    11
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl36" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl45" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl54" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl63" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl72" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl81" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:13">
            <td class="style5 BorderStyle style12">
                   12
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl37" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl46" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl55" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl64" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl73" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl82" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:14">
            <td class="style5 BorderStyle style12">
                   13
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl38" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl47" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl56" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl65" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl74" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl83" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:15">
            <td class="style5 BorderStyle style12">
                  14
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl39" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl48" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl57" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl66" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl75" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl84" runat="server" Text="0" 
                    style="font-size: 11px; color: #999999"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:16">
            <td class="style5 BorderStyle style12">
                   15
            </td>>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl85" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl92" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl99" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl106" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl113" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl120" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:17">
            <td class="style5 BorderStyle style12">
                   16
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl86" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl93" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl100" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl107" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl114" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl121" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:18">
            <td class="style5 BorderStyle style12">
                   17
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl87" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl94" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl101" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl108" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl115" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl122" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:19">
            <td class="style5 BorderStyle style12">
                    18
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl88" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl95" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl102" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl109" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl116" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl123" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:20">
            <td class="style5 BorderStyle style12">
                   19
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl89" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl96" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl103" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl110" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl117" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl124" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:21">
            <td class="style5 BorderStyle style12">
                   20
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl90" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl97" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl104" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl111" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl118" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl125" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
        <tr style="mso-yfti-irow:22;mso-yfti-lastrow:yes">
            <td class="style5 BorderStyle style12">
                   21
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl91" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl98" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl105" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl112" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl119" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
            <td class="style5 BorderStyle">
                <asp:Label ID="lbl126" runat="server" Text="0" 
                    style="font-size: 11px; color: #33CC33"></asp:Label>
            </td>
        </tr>
    </table>

</div>
<telerik:RadAjaxPanel ID="panel" runat="server" />
