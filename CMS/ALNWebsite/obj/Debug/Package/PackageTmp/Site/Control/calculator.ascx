<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="calculator.ascx.cs" Inherits="calculator.control.calculator" %>
<style type="text/css">
  .BorderStyle
    {
        border: 1px dotted #000000; 
        font-size:11px;
        vertical-align:top;
    }
   .BorderStyle ul
   {
       padding-left:20px;
      margin-bottom: 0px;
   }
   .BorderStyle span
   {
       font-weight:bold;
       color:Red;
   }
    .style1
    {
        border: 1px dotted #000000;
        font-size: 11px;
        height: 20px;
    }
    </style>
<table  class="BorderStyle" >
    <tr>
        <td width = "47%" rowspan="2" class="BorderStyle" >
          <span> ppm & percent</span><br />
            <ul><li> How to convert percent to ppm The part P in percent (%) is equal to the part P 
            in ppm divided by 10,000</li>
            <li> How to convert ppm to percent
The part P in ppm is equal to the part P in percent (%) times 10,000</li>
</ul>
            </td>
        <td width="53%" style="background-color: #99CCFF ; text-align: left" 
            class="BorderStyle" colspan="1"   >
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="1" Selected="True">Percent to ppm</asp:ListItem>
                <asp:ListItem Value="2">ppm to percent</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr >
        <td width="400px" style="background-color: #FFFF99" class="BorderStyle" align="right">
            <div>
            <asp:Label ID="Label2" runat="server" Text="Input : "></asp:Label>
            <asp:TextBox ID="txtpercent_to_ppm" runat="server" Width="80px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Convert" />
            <asp:Button ID="btnreset" runat="server" onclick="btnreset_Click" 
                Text="Reset" />
            <br />
            <div style="text-align:center">
                &nbsp;<asp:Label 
                ID="lbloutput" runat="server" Text="Output" style="color: #FF0000"></asp:Label>
                &nbsp;
                </div>
                </div>
        </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
          <span>  ppm & decimal fraction</span>
            <ul>
            <li>
            How to convert ppm to decimal fraction
The part P in decimal is equal to the part P in ppm divided by 1,000,000

            </li>
            <li>
            How to convert decimal fraction to ppm 
The part P in ppm is equal to the part P in decimal times 1,000,000

            </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF; text-align: left;" class="BorderStyle" 
            align="right">
            <asp:RadioButtonList ID="Rdbdecimalppm" runat="server" RepeatColumns="2" 
                RepeatDirection="Horizontal" RepeatLayout="Flow" 
                style="background-color: #99CCFF">
                <asp:ListItem Selected="True" Value="3">ppm to Decimal fraction</asp:ListItem>
                <asp:ListItem Value="4">decimal fraction to ppm </asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            <asp:Label ID="Label3" runat="server" Text="Input : "></asp:Label>
            <asp:TextBox ID="Txtdecimalppm" runat="server" Width="80px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btndecimalppm" runat="server" onclick="Btndecimalppm_Click" 
                Text="Convert" style="height: 26px" />
            <asp:Button ID="btnreset1" runat="server" onclick="Button3_Click" 
                Text="Reset" />
            <br />
            <div style="text-align:center">
            <asp:Label ID="lbldecimal" runat="server" Text="Output" style="color: #FF0000"></asp:Label>
            </div>
            </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
          <span>  ppm & ppb</span>
            <ul>
            <li>
           How to convert ppb to ppm
The part P in ppm is equal to the part P in ppb divided by 1,000

            </li>
            <li>
            	How to convert ppm to ppb
The part P in ppb is equal to the part P in ppm times 1,000

            </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF; text-align: left;" class="BorderStyle" 
            align="right">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True" Value="5">Convert ppb to ppm</asp:ListItem>
                <asp:ListItem Value="6">Convert ppm to ppb</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            <asp:Label ID="Label4" runat="server" Text="Input : "></asp:Label>
            <asp:TextBox ID="txtppmtoppb" runat="server" Height="22px" Width="80px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnppmtoppb" runat="server" onclick="btnppmtoppb_Click" 
                Text="Convert" />
            <asp:Button ID="btnreset2" runat="server" onclick="btnreset2_Click" 
                Text="Reset" />
            <br />
            <div style="text-align:center">
            <asp:Label ID="lblppmtoppb" runat="server" Text="Output" style="color: #FF0000"></asp:Label>
            </div>
            </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
        <span>    Percentage Calculation</span>
             <ul>
             <li>
             The percentage of x from y is calculated by the formula:
Percentage % = (x / y) × 100

             </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF" 
           class="BorderStyle">
            <asp:Label ID="Label5" runat="server" Text="Percentage (%)"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            &nbsp;<asp:Label ID="lbltextchange" runat="server" style="color: #FF0000" Text="."></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="%"></asp:Label>
&nbsp;=
            <asp:TextBox ID="txtPercentage" runat="server" 
                ontextchanged="TextBox1_TextChanged" Width="40px"></asp:TextBox>
            &nbsp;/ 100&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Calculator" Width="70px" />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" Text="Reset" />
            <br />
             <div style="text-align:center">
            <asp:Label ID="lblPercentage" runat="server" Text="Output" 
                style="color: #FF0000"></asp:Label>
                </div>
        </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
          <span>  Percentage of a Value Calculation</span>
            <ul>
            <li>
            x% of y is calculated by the formula:
Percentage value = x% × y = x × y / 100

            </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF" 
           class="style1">
            <asp:Label ID="Label8" runat="server" 
                Text="Percentage of a Value Calculation : x% * y "></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            &nbsp;&nbsp;
            <asp:TextBox ID="txta" runat="server" Width="40px"></asp:TextBox>
            % *&nbsp;
            <asp:TextBox ID="txtb" runat="server" Width="40px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnab" runat="server" Height="26px" onclick="btnab_Click" 
                Text="Calculator" Width="70px" />
            <asp:Button ID="btnrerset3" runat="server" onclick="btnrerset3_Click" 
                Text="Reset" />
            <br />
             <div style="text-align:center">
            <asp:Label ID="lblab" runat="server" style="color: #FF0000" 
                Text="Output"></asp:Label>
                </div>
        </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
         <span>   Percentage Calculation</span>
            <ul>
            <li>
            The percentage of x from y is calculated by the formula:
Percentage % = (x / y) × 100

            </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF" 
           class="BorderStyle">
            <asp:Label ID="Label9" runat="server" 
                Text="Percentage Calculation : (x / y) * 100"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            &nbsp;(
            <asp:TextBox ID="txta0" runat="server" Width="40px"></asp:TextBox>
&nbsp;/
            <asp:TextBox ID="txta1" runat="server" Width="40px"></asp:TextBox>
            &nbsp;) * 100 &nbsp;&nbsp; 
            <asp:Button ID="btncalu" runat="server" onclick="btncalu_Click" 
                Text="Calculator" Width="70px" />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Reset" />
            <br />
             <div style="text-align:center">
            <asp:Label ID="lblxy" runat="server" style="color: #FF0000" Text="."></asp:Label>
            &nbsp;<asp:Label ID="Label10" runat="server" style="color: #FF0000" Text="%"></asp:Label>
            </div>
        </td>
    </tr>
    <tr>

        <td rowspan="2" class="BorderStyle">
        <span>    Percentage Change (increase/decrease)</span>
            <ul>
            <li>
            Percentage change from x1 to x2 is calculated by the formula:
percentage change = 100 × (x2 - x1) / x1<br />
- When the result is positive, we have percentage growth or increase.<br />
- When the result is negative, we have percentage decrease.

            </li>
            </ul>
            </td>
           
        <td style="background-color: #99CCFF" 
            class="BorderStyle">
            <asp:Label ID="Label11" runat="server" 
                Text="Percentage Change (increase/decrease) : 100 * (x2 - x1) / x1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            100 * ( 
            <asp:TextBox ID="txta2" runat="server" Width="40px"></asp:TextBox>
&nbsp;-
            <asp:TextBox ID="txta3" runat="server" Width="40px"></asp:TextBox>
&nbsp;) /
            <asp:Label ID="lblx1" runat="server" Text="x1"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnincrease" runat="server" onclick="btnincrease_Click" 
                Text="Calculator" Width="70px" />
            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Reset" />
            <br />
              <div style="text-align:center">
            <asp:Label ID="lblincrease" runat="server" style="color: #FF0000" Text="."></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" style="color: #FF0000" Text="%"></asp:Label>
</div>
            </td>
    </tr>
    <tr>
        <td rowspan="2" class="BorderStyle">
         <span>   Per-mille & percent conversion</span>
            <ul>
            <li>
            The per-mille sign is the symbol: ‰<br />

- One per-mille is equal to 0.1 percent:
1‰ = 0.1%<br />
- One percent is equal to 10 per-mille:
1% = 10‰

            </li>
            </ul>
            </td>
        <td style="background-color: #99CCFF" 
            class="BorderStyle">
            <asp:Label ID="Label13" runat="server" Text="Per-mille (‰)"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF99" class="BorderStyle" align="right">
            <asp:Label ID="lblngan" runat="server" Text="."></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="‰"></asp:Label>
&nbsp;=&nbsp;
            <asp:TextBox ID="txtnghin" runat="server" Width="50px"></asp:TextBox>
&nbsp;/ 1000 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnnghin" runat="server" onclick="btnnghin_Click" 
                Text="Calculator" Width="70px" />
            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Reset" />
            <br />
             <div style="text-align:center">
            <asp:Label ID="lblnghin" runat="server" Text="Output" style="color: #FF0000"></asp:Label>
            </div>
        </td>
    </tr>
</table>

