<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectForm.ascx.cs" Inherits="ALNWebsite.Site.Control.ProjectForm" %>
<div class="Register">
   <span style=" font-size:20px; font-weight:bold">DATA PROJECT</span>
</div>
<div style="clear:both"></div>
<div class="Register">
   <span style=" font-size:16px; font-style:italic; color:Red;">Your contact & content information is secured confidentially otherwise there is your consent.</span>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)Company name :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtCompanyName" runat="server" Width="400px" TextMode="MultiLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtCompanyName" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Select*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Business type: </div>
    <div class="ColRight">  
        <asp:RadioButtonList ID="Rb" RepeatDirection ="Horizontal" RepeatColumns="5" RepeatLayout="Table" runat="server">            
            
                <asp:ListItem Text="Private" Value ="Private"></asp:ListItem>    
                <asp:ListItem Text="Joint-stock" Value ="Joint-stock"></asp:ListItem>    
                <asp:ListItem Text="Owned-State" Value ="Owned-State"></asp:ListItem>    
                <asp:ListItem Text="100% Foreigner" Value ="100% Foreigner"></asp:ListItem>    
                <asp:ListItem Text="Joint-venture" Value ="Joint-venture"></asp:ListItem>    
            
        </asp:RadioButtonList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="Rb" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Select*)"></asp:RequiredFieldValidator>
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Business field: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtBusinessField" runat="server" Width="400px" TextMode="SingleLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtBusinessField" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Business Field*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Country: </div>
    <div class="ColRight"><telerik:RadComboBox ID="rcbbCountry" runat="server" Width="263px" ></telerik:RadComboBox></div>    
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rcbbCountry" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Select Country*)"></asp:RequiredFieldValidator>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*) Address: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtAddress" runat="server" Width="400px" TextMode="MultiLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtAddress" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Address*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"><div><div style="float:left">(*) Tel:</div><div style="float:right"><telerik:RadTextBox ID="rtxtTel" runat="server" Width="100px" TextMode="SingleLine" /> <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtTel" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Tel Company*)"></asp:RequiredFieldValidator>    </div> </div></div>    
            
    <div class="ColRight"><div><div style="float:left"> Fax:</div><div style="float:right"><telerik:RadTextBox ID="RadTextBox4" runat="server" Width="100px" TextMode="SingleLine" />  </div></div>    
    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Contact person (if any) :</div>
    <div class="ColRight"><telerik:RadTextBox ID="RadTextBox7" runat="server" Width="400px" TextMode="SingleLine" />                 
    </div>    
</div>
<div class="Register">
    <div class="ColLeft">Hand Phone: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtHandPhone" runat="server" Width="400px" TextMode="SingleLine" />                 
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Email :</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtEmail" runat="server" Width="400px" />
        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtEmail" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Email*)"></asp:RequiredFieldValidator>                        
    </div>    
</div>
<div style="clear:both"></div>

<div class="Register">
    <div class="ColLeft">(*) Project name:</div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtProjectName" runat="server" Width="400px" TextMode="SingleLine" /> 
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtProjectName" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Project Name*)"></asp:RequiredFieldValidator>
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)  Project status: </div>
    <div class="ColRight">  
        <asp:RadioButtonList ID="rblProjectstatus" RepeatDirection ="Horizontal" RepeatColumns="7" RepeatLayout="Table" runat="server">            
            
                <asp:ListItem Text="New" Value ="New"></asp:ListItem>    
                <asp:ListItem Text="Existing" Value ="Existing"></asp:ListItem>    
                <asp:ListItem Text="Upgrading" Value ="Upgrading"></asp:ListItem>    
                <asp:ListItem Text="Construction" Value ="Construction"></asp:ListItem>    
                <asp:ListItem Text="Equipment" Value ="Equipment"></asp:ListItem>    
                <asp:ListItem Text="Microbial" Value ="Microbial"></asp:ListItem>    
                <asp:ListItem Text="Turnkey" Value ="Turnkey"></asp:ListItem>    
            
        </asp:RadioButtonList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rblProjectstatus" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Select Project Status*)"></asp:RequiredFieldValidator>
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">(*)  Project type: </div>
    <div class="ColRight">  
        <asp:RadioButtonList ID="rblProjectType" RepeatDirection ="Horizontal" RepeatColumns="5" RepeatLayout="Table" runat="server">            
            
                <asp:ListItem Text="Bidding" Value ="Bidding"></asp:ListItem>    
                <asp:ListItem Text="Competitive" Value ="Competitive"></asp:ListItem>                      
            
        </asp:RadioButtonList>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rblProjectType" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Select Project Type*)"></asp:RequiredFieldValidator>
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">
    <div><div style="float:left">Start time:</div><div style="float:right"> <telerik:RadTextBox ID="rtxtStartTime" runat="server" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtStartTime" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Start Time*)"></asp:RequiredFieldValidator> </div></div>
    
    </div>
    <div class="ColRight"><div><div style="float:left"> Finish time:</div><div style="float:right"> <telerik:RadTextBox ID="rtxtFinishtime" runat="server" />
        <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="errorFormUser" Display="Dynamic" ControlToValidate="rtxtFinishtime" ValidationGroup="GroupFormUser" runat="server" ErrorMessage="(*Please Input Your Finish Time*)"></asp:RequiredFieldValidator>
    </div></div>
    
    </div>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">Contractor: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtContractor" runat="server" Width="400px" TextMode="MultiLine" /> 
                    
    </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">SubContractor: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtSubContractor" runat="server" Width="400px" TextMode="MultiLine" />                    
     </div>    
</div>
<div style="clear:both"></div>

<div class="Register">
    <div class="ColLeft">Background: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtBackGround" runat="server" Width="400px" TextMode="MultiLine" Height="100px" />                  
     </div>    
</div>
<div style="clear:both"></div>

<div class="Register">
<span style=" font-size:16px; font-weight:bold"> Questionnaires:</span>
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> 1 - Objectives: </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtObject" runat="server" Width="400px" TextMode="MultiLine" Height="80px" />
    
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft"> 2 - Daily flow (m3/day): </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtDailyflow" runat="server" Width="400px" TextMode="SingleLine"/>
    
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
     3- Characteristics of influent & effluent: 
        
</div>
<div style="clear:both"></div>
<div class="Register">
     <div>
<table cellspacing="1" class="ms-grid1-main" style="width: 100%; float: left">
	<!-- fpstyle: 16,011111100 -->
	<tr>
		<td class="auto-style1" rowspan="2" style="width: 133px"><strong>Parameter</strong></td>
		<td class="auto-style1" style="width: 131px"><strong>Influent</strong></td>
		<td class="auto-style1" style="width: 128px"><strong>Final</strong>
		<strong>Effluent</strong></td>
		<td class="auto-style1" rowspan="2" style="width: 132px"><strong>Discharge
Consents
</strong>
</td>
	</tr>
	<tr>
		<td class="auto-style3" style="width: 131px">&nbsp;</td>
		<td class="auto-style3" style="width: 128px">&nbsp;</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">BOD5 (mg/l)</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox2" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox15" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox16" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">COD (mg/l)</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox3" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox14" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox17" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">pH</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox4" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox13" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox18" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">TSS (mg/l)</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox5" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox12" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox19" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">NH4-N </td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox6" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox11" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox20" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">o-PO4- (mg/l)</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox7" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox10" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox21" runat="server"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="auto-style2" style="width: 133px">Temperature oC</td>
		<td class="ms-grid1-even" style="width: 131px">
		<asp:TextBox id="TextBox8" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 128px">
		<asp:TextBox id="TextBox9" runat="server"></asp:TextBox>
		</td>
		<td class="ms-grid1-even" style="width: 132px">
		<asp:TextBox id="TextBox22" runat="server"></asp:TextBox>
		</td>
	</tr>
</table>
     </div>
</div>
<div style="clear:both"></div>    

<div class="Register">
     4-	Type of system:    
</div>
<div style="clear:both"></div>
<div>
    <div>
        <table style="width: 100%">
	<tr>
		<td>Activated sludge</td>
		<td>
		<asp:CheckBoxList id="CheckBoxList1" runat="server" Height="52px" Width="50px">
			<asp:ListItem>Yes</asp:ListItem>
			<asp:ListItem>No</asp:ListItem>
		</asp:CheckBoxList>
		</td>
		<td>Aerated lagoon</td>
		<td>
		<asp:CheckBoxList id="CheckBoxList2" runat="server" Height="52px" Width="50px">
			<asp:ListItem>Yes</asp:ListItem>
			<asp:ListItem>No</asp:ListItem>
		</asp:CheckBoxList>

		</td>
	</tr>
	<tr>
		<td>Sequencing batch reactor</td>
		<td><asp:CheckBoxList id="CheckBoxList3" runat="server" Height="52px" Width="50px">
			<asp:ListItem>Yes</asp:ListItem>
			<asp:ListItem>No</asp:ListItem>
		</asp:CheckBoxList>

		</td>
		<td>Oxidation ditch</td>
		<td>
		<asp:CheckBoxList id="CheckBoxList4" runat="server" Height="52px" Width="50px">
			<asp:ListItem>Yes</asp:ListItem>
			<asp:ListItem>No</asp:ListItem>
		</asp:CheckBoxList>

		</td>
	</tr>
</table>

    </div>
</div>
<div class="Register">
    <div class="ColLeft">5-	Capacity of aeration tank (m3): </div>
    <div class="ColRight"><telerik:RadTextBox ID="rtxtCapacity" runat="server" Width="400px" TextMode="SingleLine"/>
                    
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
    <div class="ColLeft">6-	Problems:</div>
    <div class="ColRight"><telerik:RadTextBox ID="RadTextBox1" runat="server" Width="600px" TextMode="MultiLine"/>
                   
     </div>    
</div>
<div style="clear:both"></div>
<div class="Register">
     7-	Sketch of plant: Please  provide  separately  a  diagram  of  the  layout  of  the  system.	This  can be  a sketch or a copy of a drawing.
</div>
<div style="clear:both"></div>
<div class="Register">
    <div align="center">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="GroupFormUser" />&nbsp;
    <asp:Button ID="btnReset" runat="server" Text="Reset" />
    </div>
</div>

<style type="text/css">
.ms-grid1-main {
	border-left: .75pt solid black;
	border-right-style: none;
	border-top: .75pt solid black;
	border-bottom: .75pt solid black;
	background-color: white;
}
.ms-grid1-tl {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top-style: none;
	border-bottom-style: none;
	background-color: white;
}
.ms-grid1-left {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
	background-color: white;
}
.ms-grid1-top {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top-style: none;
	border-bottom-style: none;
	background-color: white;
}
.ms-grid1-even {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
	background-color: white;
}
.auto-style1 {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top-style: none;
	border-bottom-style: none;
	background-color: #C0C0C0;
	text-align: center;
}
.auto-style2 {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
	background-color: white;
	text-align: center;
}
.auto-style3 {
	font-weight: normal;
	color: black;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
	background-color: #C0C0C0;
}
</style>
