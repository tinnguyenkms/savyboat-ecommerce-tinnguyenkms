<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dosage.ascx.cs" Inherits="ALNWebsite.Site.Control.Dosage" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
    .style3
    {
        width: 198px;
    }
    .style4
    {
        width: 184px;
        text-align: center;
        background-color: #99CCFF;
    }
    .style5
    {
        text-align: center;
        background-color: #FFFFCC;
    }
    .style6
    {
        background-color: #99CCFF;
    }
    .style7
    {
        width: 184px;
        text-align: center;
        background-color: #99CCFF;
    }
 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	    text-align: center;
    }
</style>

<table cellspacing="1" class="style1">
    <tr>
        <td class="style3">
            <asp:Label ID="lbl1" runat="server" Text="Influent COD" style="color: #0000CC"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtInfluentCOD" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="lbl2" runat="server" Text="Aeration tank capacity (m3)" 
                style="color: #0000CC"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtAeration" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:Button ID="Btncalculation" runat="server" Text="Calculation" 
                onclick="Btncalculation_Click" style="font-weight: 700" />
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <table cellspacing="1" class="style1" border="1">
                <tr>
            
                    <td colspan="4" style="text-align: center; background-color: #FFFFFF;">
                        <b>
                        <span lang="EN-US" style="font-size:16.0pt;
line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;position:relative;top:-1.0pt;
mso-text-raise:1.0pt;mso-ansi-language:EN-US;mso-fareast-language:EN-US;
mso-bidi-language:AR-SA">BioFuture</span></b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;position:relative;top:-1.0pt;
mso-text-raise:1.0pt;letter-spacing:-.55pt;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;mso-ansi-language:EN-US;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Industrial</span></b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;position:relative;top:-1.0pt;
mso-text-raise:1.0pt;letter-spacing:-.5pt;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;mso-ansi-language:EN-US;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Wastewater</span></b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;position:relative;top:-1.0pt;
mso-text-raise:1.0pt;letter-spacing:-.65pt;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;mso-ansi-language:EN-US;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Dosing</span></b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;position:relative;top:-1.0pt;
mso-text-raise:1.0pt;letter-spacing:-.55pt;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;mso-ansi-language:EN-US;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Guidelines</span></b><p class="MsoNormal" style="margin-top:0cm;margin-right:-1.0pt;margin-bottom:
0cm;margin-left:106.1pt;margin-bottom:.0001pt;line-height:15.9pt;mso-line-height-rule:
exactly;mso-pagination:none;mso-layout-grid-align:none;text-autospace:none">
                            <b>
                            <span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Plant</span></b><span 
                                lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.55pt"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span 
                                lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Startup</span></b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.55pt"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span 
                                lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">and</span></b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.6pt"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span 
                                lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">upset</span></b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.5pt"><span style="mso-spacerun:yes">&nbsp;</span></span><b><span 
                                lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">recovery</span></b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara"><o:p></o:p></span></p>
                        <p class="MsoNormal" style="margin-top:.45pt;margin-right:0cm;margin-bottom:0cm;
margin-left:0cm;margin-bottom:.0001pt;line-height:7.0pt;mso-line-height-rule:
exactly;mso-pagination:none;mso-layout-grid-align:none;text-autospace:none">
                            <span lang="EN-US" style="font-size:7.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara"><o:p>&nbsp;</o:p></span></p>
                        <p class="MsoNormal" style="margin-top:0cm;margin-right:-1.0pt;margin-bottom:
0cm;margin-left:11.0pt;margin-bottom:.0001pt;line-height:11.9pt;mso-line-height-rule:
exactly;mso-pagination:none;mso-layout-grid-align:none;text-autospace:none">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">The<span 
                                style="letter-spacing:.25pt"> </span>BioFuture<span 
                                style="letter-spacing:.25pt"> </span>Do<span style="letter-spacing:-.05pt">s</span><span style="letter-spacing:
.05pt">i</span>ng<span style="letter-spacing:.25pt"> </span>Programme<span style="letter-spacing:.25pt">
                            </span><span style="letter-spacing:-.05pt">f</span>or<span 
                                style="letter-spacing:.25pt"> </span>Plant<span 
                                style="letter-spacing:.25pt"> </span>Startup<span 
                                style="letter-spacing:.2pt"> </span>and<span style="letter-spacing:.2pt">
                            </span>Upset<span style="letter-spacing:.25pt"> </span>Recovery<span 
                                style="letter-spacing:.3pt"> </span>applies<span 
                                style="letter-spacing:.25pt"> </span><span style="letter-spacing:.05pt">in</span></span><span 
                                lang="EN-US" style="font-size:
12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:Candara"><o:p></o:p></span></p>
                        <p class="MsoNormal" style="margin-top:0cm;margin-right:-1.0pt;margin-bottom:
0cm;margin-left:11.0pt;margin-bottom:.0001pt;line-height:14.65pt;mso-line-height-rule:
exactly;mso-pagination:none;mso-layout-grid-align:none;text-autospace:none">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-.5pt;mso-text-raise:.5pt">the followi<span 
                                style="letter-spacing:-.1pt">n</span>g cases<span 
                                style="letter-spacing:-.05pt">:</span></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: normal; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;mso-bidi-font-family:
Symbol">·</span><span lang="EN-US" 
                                style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span 
                                style="mso-tab-count:1">&nbsp;&nbsp;&nbsp; </span></span>
                            <span lang="EN-US" style="font-size:
12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:Candara">New plant 
                            startup<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Revamped plant startup<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Startup following equipment maintenance<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.25pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants which<span style="letter-spacing:-.05pt"> </span>operate on<span 
                                style="letter-spacing:-.05pt"> </span>a seasonal<span style="letter-spacing:
-.05pt"> </span>or campaign<span style="letter-spacing:-.05pt"> </span>basis<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants recovering from<span style="letter-spacing:
-.05pt"> </span>toxic<span style="letter-spacing:-.05pt"> </span>shocks<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants which<span style="letter-spacing:-.05pt"> </span>have had<span 
                                style="letter-spacing:.05pt"> </span>biomass washout due to hydraulic 
                            overloading<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants which<span style="letter-spacing:-.05pt"> </span>have had<span 
                                style="letter-spacing:.05pt"> </span>problems
                            <span style="letter-spacing:
-.05pt">w</span>ith<span style="letter-spacing:-.05pt"> </span>exces<span style="letter-spacing:-.05pt">s</span>ively 
                            high<span style="letter-spacing:
-.05pt"> </span>or low<span style="letter-spacing:-.05pt"> </span>pH<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.25pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants recovering from<span style="letter-spacing:
-.05pt"> </span>loss of ele<span style="letter-spacing:-.1pt">c</span>trical power<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                            </span></span>
                            <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Plants which<span style="letter-spacing:-.05pt"> </span>have variable loadings<span 
                                style="letter-spacing:-.1pt"> </span>during the<span 
                                style="letter-spacing:.05pt"> </span>year<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <o:p>Note :&nbsp;More specific information on the dosing programme will be provided by the Technical Department of ALN.
</o:p></p>
                        <p class="MsoNormal" 
                            style="margin-top: 0cm; margin-right: -1.0pt; margin-bottom: 0cm; margin-left: 29.0pt; margin-bottom: .0001pt; line-height: 15.3pt; mso-line-height-rule: exactly; mso-pagination: none; tab-stops: 46.0pt; mso-layout-grid-align: none; text-autospace: none; text-align: left;">
                            <o:p></o:p>
                        </p>
                    </td>
                </tr>
                <tr>
            
                    <td colspan="4" style="text-align: center; background-color: #99CCFF;">
                        <asp:Label ID="Label1" runat="server" style="text-align: center; font-size: xx-large; color: #FF0000; font-weight: 700;" 
                            Text="BioFuture Dosing Programme – Startup/Upset recovery "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lbl3" runat="server" Text="Aeration tank capacity (m3)" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td colspan="3" style="text-align: center" class="style6">
                        <asp:Label ID="Label5" runat="server" 
                            style="font-weight: 700; font-size: large" Text="Influent COD "></asp:Label>
                        <asp:Label ID="LblInfluents" runat="server" Text="." 
                            style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                    &nbsp;<asp:Label ID="Label6" runat="server" 
                            style="font-weight: 700; font-size: large" Text="mg/L"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" rowspan="2" valign="bottom">
                        <asp:Label ID="lblAerations" runat="server" Text="." 
                            style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="Day 1-5 Kg/day" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label3" runat="server" Text="Weeks  2-6 Kg/wk" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label4" runat="server" Text="Weeks  7+ Kg/wk" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblday" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblweek26" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblweek7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <table cellspacing="1" class="style1" border="1">
                <tr>
                    <td colspan="4" style="text-align: center; background-color: #FFFFFF;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center; background-color: #99CCFF;">
                        <asp:Label ID="Label7" runat="server" style="text-align: center; font-size: xx-large; color: #FF0000; font-weight: 700;" 
                            Text="BioFuture Dosing Programme – ongoing dosing "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lbl4" runat="server" Text="Aeration tank capacity (m3)" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td colspan="3" style="text-align: center" class="style6">
                        <asp:Label ID="Label8" runat="server" 
                            style="font-weight: 700; font-size: large" Text="Influent COD "></asp:Label>
                        <asp:Label ID="LblInfluents0" runat="server" Text="." 
                            style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                    &nbsp;<asp:Label ID="Label9" runat="server" 
                            style="font-weight: 700; font-size: large" Text="mg/L"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" rowspan="2" valign="bottom">
                        <asp:Label ID="lblAerations0" runat="server" Text="." 
                            style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label10" runat="server" Text="Day 1-5 Kg/day" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label11" runat="server" Text="Weeks  2-6 Kg/wk" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label12" runat="server" Text="Weeks  7+ Kg/wk" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblday0" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblweek27" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:Label ID="lblweek28" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <p class="MsoNormal">
                <b>
                <span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">BioFuture</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.55pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Industrial</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.5pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Wastewater</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.65pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Dosing</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.55pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Guidelines</span></b><o:p></o:p></p>
            <p class="MsoNormal">
                <b>
                <span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">Ongoing</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.6pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">dosing</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.55pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">for</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.5pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">plant</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
position:relative;top:-1.0pt;mso-text-raise:1.0pt;letter-spacing:-.6pt"><span 
                    style="mso-spacerun:yes">&nbsp;</span></span><b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:
Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">stability</span></b><span 
                    lang="EN-US" style="font-size:16.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara"><o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: center">
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara;position:relative;top:-1.0pt;mso-text-raise:1.0pt">The BioFuture Do<span 
                    style="letter-spacing:-.05pt">s</span><span style="letter-spacing:
.05pt">i</span>ng Programme <span style="letter-spacing:-.05pt">f</span>or Plant Stability<span 
                    style="letter-spacing:-.05pt"> </span>has the following<span 
                    style="letter-spacing:-.05pt"> </span>benefits<span 
                    style="letter-spacing:-.05pt">:</span>‐</span><span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara"><o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara"><o:p>&nbsp;</o:p></span><span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;mso-bidi-font-family:
Symbol">·</span><span lang="EN-US" 
                    style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span 
                    style="mso-tab-count:1">&nbsp;&nbsp;&nbsp; </span></span>
                <span lang="EN-US" style="font-size:
12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:Candara">
                Improved f<span style="letter-spacing:-.05pt">l</span>oc<span style="letter-spacing:
-.05pt"> </span>formation<span style="letter-spacing:-.05pt"> </span>and<span 
                    style="letter-spacing:.05pt"> </span>better settling
                <span style="letter-spacing:
.05pt">i</span>n<span style="letter-spacing:-.1pt"> </span>secondary clarifier<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Better degradation<span style="letter-spacing:
-.05pt"> </span>of specific<span style="letter-spacing:-.05pt"> </span>chemicals<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Degradation<span style="letter-spacing:-.05pt"> </span>of 
                compounds<span style="letter-spacing:-.05pt"> </span>which<span 
                    style="letter-spacing:.05pt"> </span>pass through<span style="letter-spacing:
-.05pt"> </span>the plant <span style="letter-spacing:.05pt">l</span>argely untreated<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Improved resistance to<span style="letter-spacing:
-.05pt"> </span>shock loading<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Improved capability<span style="letter-spacing:
-.05pt"> </span>to<span style="letter-spacing:-.05pt"> </span>deal with<span 
                    style="letter-spacing:-.05pt"> </span>influent variations<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Better removal of chemicals which<span 
                    style="letter-spacing:-.05pt"> </span>inhibit nitrification<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align: left">
                <span lang="EN-US" style="font-size:12.0pt;font-family:Symbol;
mso-bidi-font-family:Symbol">·</span><span lang="EN-US" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;
                </span></span>
                <span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-bidi-font-family:Candara">Improved final effluent quality<o:p></o:p></span></p>
            <span lang="EN-US" style="font-size:12.0pt;line-height:115%;font-family:Symbol;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Symbol;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">·</span><span 
                lang="EN-US" style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span 
                lang="EN-US" style="font-size:12.0pt;line-height:115%;font-family:&quot;Candara&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Candara;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Biomass becomes 
            mo<span style="letter-spacing:-.05pt">r</span>e robust<br />
            &nbsp;Note : More
specific information on the dosing programme will be provided by the Technical
Department of ALN.
</span><br />
            </td>
    </tr>
</table>

