<%@ Language=VBScript %>
<HTML>
<head>
<title>Test Academy Download Page</title>
<%
clientstr = Request.ServerVariables("HTTP_USER_AGENT")
if instr(1,clientstr,"MSIE") > 0 then
	ie_ind = true
else
	ie_ind = false
end if

if instr(1,clientstr,"MSIE 5.0") > 0 then
	ie5_ind = true
else
	ie5_ind = false
end if

If ie_ind then
	table_pos_style1 = " style=""position: absolute; top: 0 ;left: 2"""
	table_pos_style2 = " style=""position: absolute; top: 39 ;left: 2"""
	startpara_pos_style = " style=""position: absolute; top: 58 ;left: 2"""
Else
	table_pos_style1 = " "
	table_pos_style2 = " "
	startpara_pos_style = " style=""position: absolute; top: 65"""
End If
%>
</head>

<body link="#0000FF" vlink="#D62852" alink="#D62852">
<table border="0" cellpadding="0" cellspacing="0" width="98%" height="39" <%=table_pos_style1%>>
<tr height="39">
<td width="240"><img border="0" src="./images/header_left.gif" width="240" height="39"></td>
<td width="100%" background="./images/header_center.gif"><font size="5" color="#FFFFFF" ><p align="center"style="top: 4; z-index: 0; position: relative"></p></font>
<td align="right" width="26"><img border="0" src="./images/header_right.gif" width="26" height="39"></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="98%" <%=table_pos_style2%>>
<tr height="20">
<td bgcolor="#66CCFF">
<table border="0" cellpadding="0" cellspacing="0" width="98%">
<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button.gif'"></a></td>
<td width="100"><a href="about_us.asp"><img border="0" src="./images/about_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/about_button_mouseover.gif'" onmouseout="javascript:this.src = './images/about_button.gif'"></a></td>
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button_current.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button_current.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button.gif'"></a></td>
<td width="100%" height="20" height="20"><p><font color="#66CCFF">'</font></p></td>
</table>
</td>
</tr>
</table>

<SCRIPT language=javascript>

//Validate the data entered in the request form, if all is well then we send it off to our ASP
//page for processing (In this case,we wrap it up as a e-mail message and send it off)
function request_form_validation() {
			
	var agreement_checked_ind = true;
	for (var ecount = 0; ecount < document.forms[0].elements.length; ++ecount) {
		if (document.forms[0].elements[ecount].name == 'license') {
			if ((document.forms[0].elements[ecount].checked) && (document.forms[0].elements[ecount].value == 'Disagree')) {
				agreement_checked_ind = false;
				break;	
			}	
		}
	} 	
	
	if (!agreement_checked_ind) {
		alert("You must agree with the license agreement to download TKB Author");	
	} else if (document.forms[0].name.value == "") {
		alert("Please enter your name. This is a required field.")
	} else if (document.forms[0].eaddress.value == "") {
		alert("Please enter your e-mail address. This is required.")
	} else if (document.forms[0].eaddress.value != document.forms[0].eaddress_confirm.value) {
		alert("The email address is not the same as the confirmed email address. Please ensure that your email address is correct.")	
	} else {
		//if we've gotten this far, then we are a go!!
		document.forms[0].submit();
	}
}
</SCRIPT>		

<%if ie_ind then%>
<p <%=startpara_pos_style%>>
<%end if%>

<%if ie5_ind then%>

<form name="request_form" id="request_form" action="submit_request_form.asp" method="post">
<table width="600"><tr>
<td><font color="#000000" face="Verdana, Arial, Helvetica" size="2"><b>Please read the license agreement, and fill out your name, company, email address, and phone number, in order to download the <font color="#6699FF">Training Knowledge Base (TKB) Author</font> application for a free 6-month trial period.</b><br><br>
TKB Author is a windows-native application used by instructors to publsh their classes on the <a href="default.asp">TestAcademy.com</a> Web site. They can be accessed by a student with a Web browser and a connection to the Internet.<br><br>
Minimum System Requirements
<ul>
<li>
Pentium 133MHz or higher processor
</li>
<li>
32MB of RAM
</li>
<li>
Approximately 5MB of available hard-disk space
</li>
<li>
MS Windows 95/98/ME/NT/2000
</li>
<li>
Internet Explorer 4.0 or higher
</li>
</ul>
</font>
</td>
</tr>
</table>
<br>
			
<font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>License Agreement</b></font><br>
<textarea name="agreementdoc" cols="50" rows="15" readonly>
SOFTWARE LICENSE AND LIMITED WARRANTY

RECITALS. Productivity Edge, Inc. ("PEI") owns the TestAcademy.com Web site that deploys the Training Knowledge Base ("TKB") technology. PEI has the authority to license out the Training Knowledge Base Authoring Software ("TKB Author") to instructors that desire to publish their classes on the TestAcademy.com Web site. The TKB Author software is used by instructors to create, manage, and publish class materials to the Web, in order that students may access these class materials anytime and anywhere from TestAcademy.com. 

This is an agreement between you, the end user, and Productivity Edge, Inc. (PEI). PEI is the owner of the TestAcademy.com Web Site. By downloading the TKB Author software you are agreeing to become bound by the terms of this agreement.

IF YOU DO NOT AGREE TO THE TERMS OF THIS AGREEMENT, DO NOT DOWNLOAD THIS SOFTWARE.

GRANT OF LICENSE. PEI, as Licensor, grants to you, the Licensee, a non-exclusive right to use this TKB Author software program during the term of the evaluation period in accordance with the terms contained in this license. You may use the Software on as many computers as you wish as long as the use is only for evaluation purposes. 

OWNERSHIP OF SOFTWARE. PEI retains the copyright, title and ownership of the SOFTWARE and the written materials regardless of the form or media in or on which the original and other copies may exist.

TRANSFERS. You may transfer the SOFTWARE from one of your computers to another computer or person provided that the SOFTWARE is transferred without modification. You may not transfer, assign, rent, lease, well, or otherwise dispose of the software in exchange for consideration, or on a temporary basis.   

TERM. This License commences upon the installation of the software and is effective for 178 days (6 months) following the date you install the SOFTWARE. This License terminates automatically without notice from PEI upon the expiration of the evaluation term or if you fail to comply with any provision of this License. Upon termination you shall remove the SOFTWARE from your computer(s).

PEI reserves the right to terminate the License granted herein at any time before the end of the evaluation period, subject to its sole discretion, without incurring any liability whatsoever in connection therewith.

US GOVERNMENT RESTRICTED RIGHTS. The SOFTWARE and any accompanying materials are provided with Restricted Rights. Use, duplication or disclosure by the Government is subject to restrictions as set forth in subparagraph (c)(1)(ii) of The Rights in Technical Data and Computer Software clause at DFARS 252.227-7013, or subparagraphs (c)(1) and (2) of the Commercial Computer Software - Restricted Rights at 48 CFR 52.227-19, as applicable. Contractor/manufacturer is Productivity Edge, Inc., 9510 Red Apple Lane Columbia MD 21046.

DISCLAIMER OF WARRANTY. THIS SOFTWARE AND ACCOMPANYING DOCUMENTATION (INCLUDING INSTRUCTIONS FOR USE) ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, FURTHER, PEI DOES NOT WARRANT, GUARANTEE, OR MAKE ANY REPRESENTATIONS REGARDING THE USE, OR THE RESULTS OF USE, OF THE SOFTWARE OR DOCUMENTATION IN TERMS OF CORRECTNESS, ACCURACY, RELIABILITY, CURRENTNESS, OR OTHERWISE. THE ENTIRE RISK AS TO THE RESULTS AND PERFORMANCE OF THE SOFTWARE IS ASSUMED BY YOUR. IF THE SOFTWARE OR WRITTEN MATERIALS ARE DEFECTIVE, YOU, AND NOT PEI OR ITS DEALERS, DISTRIBUTORS, AGENTS, OR EMPLOYEES, ASSUME THE ENTIRE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

PEI DISCLAIMS ALL OTHER WARRANTIES, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, THAT IS MADE BY PEI, ON THIS PEI PRODUCT. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY PEI, ITS DEALERS, DISTRIBUTORS, AGENTS OR EMPLOYEES SHALL CREATE A WARRANTY OR IN ANY WAY INCREASE THE SCOPE OF THIS WARRANTY AND YOU MAY NOT RELY ON ANY SUCH INFORMATION OR ADVICE. YOU MAY HAVE OTHER RIGHTS WHICH VARY FROM STATE TO STATE.

NEITHER PEI NOR ANYONE ELSE WHO HAS BEEN INVOLVED IN THE CREATION, PRODUCTION OR DELIVERY OF THIS PRODUCT SHALL BE LIABLE FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL OR INCIDENTAL DAMAGES (INCLUDING DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, AND THE LIKE) ARISING OUT OF THE USE OR INABILITY TO USE SUCH PRODUCT EVEN IF PEI HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

PEI does not have any duty under this Agreement or otherwise to provide any service or technical support in connection with the TKB Author software and shall not incur any liability for the failure to do so.

This License shall be governed and construed in accordance with the laws of the State of Maryland and shall benefit PEI, its successors and assigns. 

Any claim or dispute between you and PEI or against any agent, employee, successor or assign of PEI, whether related to this Agreement or otherwise, and any claim or dispute related to this Agreement or the relationship or duties contemplated under this Agreement, including the validity of this arbitration clause, shall be resolved by binding arbitration by the National Arbitration Forum, under the Code of Procedure then in effect. Any award of the arbitrator(s) may be entered as a judgment in any court of competent jurisdiction. Information may be obtained and claims may be filed at any office of the National Arbitration Forum or at P.O. Box 50191, Minneapolis, MN 55405. This Agreement constitutes the entire agreement between the end user and Productivity Edge, Inc.
</textarea>
<br>

<font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>
<input type="radio" name="license" value="Agree">Agree&nbsp;&nbsp;&nbsp;
<input type="radio" name="license" value="Disagree" checked>Disagree
</b></font>

<br><br><br>
						
<table><tr><td width="300">
<fieldset>
<legend><font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>Downloaded by</b></font></legend>
<br>
<font color="#000000" face="Verdana, Arial, Helvetica" size="2">
Name<br>
<input type="text" name="name" size="30"><br><br>
Title<br>
<input type="text" name="title" size="30"><br><br>
E-mail address&nbsp;&nbsp;<font color="#D62852">*required to be correct</font><br>
<input type="text" name="eaddress" size="30">
<br><br>
Confirm E-mail address (same as above)<br>
<input type="text" name="eaddress_confirm" size="30">
<br><br>
Phone Number<br>
<input type="text" name="phonenumber" size="30"><br><br>
Company<br>
<input type="text" name="companyname" size="30"><br><br>
</font>
</fieldset>
</td></tr></table>
									
<br>
<font color="#D62852" face="Verdana, Arial, Helvetica" size="2">* It is required that you enter your correct email address to
<br>&nbsp;&nbsp;&nbsp;operate the trial version of TKB Author.</font>
<br><br>
<input type="button" value="Download TKB Author" onclick="request_form_validation()" id=button2 name=button2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" id=reset2 name=reset2>
</form>
									
<%else%>
									
<form name="request_form" id="request_form" action="submit_request_form.asp" method="post">
<table width="600"><tr>
<td><font color="#000000" face="Verdana, Arial, Helvetica" size="2"><b>Please read the license agreement, and fill out your name, company, email address, and phone number, in order to download the <font color="#6699FF">Training Knowledge Base (TKB) Author</font> application for a free 6-month trial period.</b><br><br>
TKB Author is a windows-native application used by instructors to publsh their classes on the <a href="default.asp">TestAcademy.com</a> Web site. They can be accessed by a student with a Web browser and a connection to the Internet.<br><br>
Minimum System Requirements
<ul>
<li>
Pentium 133MHz or higher processor
</li>
<li>
32MB of RAM
</li>
<li>
Approximately 5MB of available hard-disk space
</li>
<li>
MS Windows 95/98/ME/NT/2000
</li>
<li>
Internet Explorer 4.0 or higher
</li>
</ul>
</font>
</td>
</tr>
</table>
<br>			
<font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>License Agreement</b></font><br>
<textarea name="agreementdoc" cols="50" rows="15" readonly>
SOFTWARE LICENSE AND LIMITED WARRANTY

RECITALS. Productivity Edge, Inc. ("PEI") owns the
TestAcademy.com Web site that deploys the Training
Knowledge Base ("TKB") technology. PEI has the
authority to license out the Training
Knowledge Base Authoring Software ("TKB Author")
to instructors that desire to publish their
classes on the TestAcademy.com Web site. The TKB
Author software is used by instructors to create,
manage, and publish class materials to the Web,
in order that students may access these class
materials anytime and anywhere from
TestAcademy.com. 

This is an agreement between you, the end user,
and Productivity Edge, Inc. (PEI). PEI is the
owner of the TestAcademy.com Web Site. By
downloading the TKB Author software you are
agreeing to become bound by the terms of this
agreement.

IF YOU DO NOT AGREE TO THE TERMS OF THIS
AGREEMENT, DO NOT DOWNLOAD THIS SOFTWARE.

GRANT OF LICENSE. PEI, as Licensor, grants to
you, the Licensee, a non-exclusive right to
use this TKB Author software program during
the term of the evaluation period in
accordance with the terms contained in this
license. You may use the Software on as many
computers as you wish as long as the use is
only for evaluation purposes. 

OWNERSHIP OF SOFTWARE. PEI retains the
copyright, title and ownership of the
SOFTWARE and the written materials regardless
of the form or media in or on which the
original and other copies may exist.

TRANSFERS. You may transfer the SOFTWARE from
one of your computers to another computer or
person provided that the SOFTWARE is
transferred without modification. You may not
transfer, assign, rent, lease, well, or
otherwise dispose of the software in exchange
for consideration, or on a temporary basis.   

TERM. This License commences upon the
installation of the software and is effective
for 178 days (6 months) following the date you
install the SOFTWARE. This License terminates
automatically without notice from PEI upon the
expiration of the evaluation term or if you
fail to comply with any provision of this
License. Upon termination you shall remove
the SOFTWARE from your computer(s).

PEI reserves the right to terminate the
License granted herein at any time before the
end of the evaluation period, subject to its
sole discretion, without incurring any
liability whatsoever in connection therewith.

US GOVERNMENT RESTRICTED RIGHTS. The SOFTWARE
and any accompanying materials are provided
with Restricted Rights. Use, duplication or
disclosure by the Government is subject to
restrictions as set forth in subparagraph
(c)(1)(ii) of The Rights in Technical Data
and Computer Software clause at DFARS 
252.227-7013, or subparagraphs (c)(1) and (2)
of the Commercial Computer Software - 
Restricted Rights at 48 CFR 52.227-19, as
applicable. Contractor/manufacturer is
Productivity Edge, Inc., 9510 Red Apple Lane
Columbia MD 21046.

DISCLAIMER OF WARRANTY. THIS SOFTWARE AND
ACCOMPANYING DOCUMENTATION (INCLUDING
INSTRUCTIONS FOR USE) ARE PROVIDED "AS IS"
WITHOUT WARRANTY OF ANY KIND, FURTHER, PEI
DOES NOT WARRANT, GUARANTEE, OR MAKE ANY
REPRESENTATIONS REGARDING THE USE, OR THE
RESULTS OF USE, OF THE SOFTWARE OR
DOCUMENTATION IN TERMS OF CORRECTNESS,
ACCURACY, RELIABILITY, CURRENTNESS, OR
OTHERWISE. THE ENTIRE RISK AS TO THE
RESULTS AND PERFORMANCE OF THE SOFTWARE IS
ASSUMED BY YOUR. IF THE SOFTWARE OR
WRITTEN MATERIALS ARE DEFECTIVE, YOU, AND
NOT PEI OR ITS DEALERS, DISTRIBUTORS,
AGENTS, OR EMPLOYEES, ASSUME THE ENTIRE
COST OF ALL NECESSARY SERVICING, REPAIR
OR CORRECTION.

PEI DISCLAIMS ALL OTHER WARRANTIES, EITHER
EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE, THAT IS MADE BY PEI,
ON THIS PEI PRODUCT. NO ORAL OR WRITTEN
INFORMATION OR ADVICE GIVEN BY PEI, ITS
DEALERS, DISTRIBUTORS, AGENTS OR EMPLOYEES
SHALL CREATE A WARRANTY OR IN ANY WAY
INCREASE THE SCOPE OF THIS WARRANTY AND YOU
MAY NOT RELY ON ANY SUCH INFORMATION OR
ADVICE. YOU MAY HAVE OTHER RIGHTS WHICH
VARY FROM STATE TO STATE.

NEITHER PEI NOR ANYONE ELSE WHO HAS BEEN
INVOLVED IN THE CREATION, PRODUCTION OR
DELIVERY OF THIS PRODUCT SHALL BE LIABLE FOR
ANY DIRECT, INDIRECT, CONSEQUENTIAL OR
INCIDENTAL DAMAGES (INCLUDING DAMAGES FOR
LOSS OF BUSINESS PROFITS, BUSINESS
INTERRUPTION, LOSS OF BUSINESS INFORMATION,
AND THE LIKE) ARISING OUT OF THE USE OR
INABILITY TO USE SUCH PRODUCT EVEN IF PEI
HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

PEI does not have any duty under this
Agreement or otherwise to provide any
service or technical support in connection
with the TKB Author software and shall not
incur any liability for the failure to do so.

This License shall be governed and construed
in accordance with the laws of the State of
Maryland and shall benefit PEI, its
successors and assigns. 

Any claim or dispute between you and PEI or
against any agent, employee, successor or
assign of PEI, whether related to this
Agreement or otherwise, and any claim or
dispute related to this Agreement or the
relationship or duties contemplated under
this Agreement, including the validity of
this arbitration clause, shall be resolved
by binding arbitration by the National
Arbitration Forum, under the Code of Procedure
then in effect. Any award of the arbitrator(s)
may be entered as a judgment in any court of
competent jurisdiction. Information may be
obtained and claims may be filed at any office
of the National Arbitration Forum or at P.O.
Box 50191, Minneapolis, MN 55405. This
Agreement constitutes the entire agreement
between the end user and Productivity Edge, Inc.
</textarea>
<br>

<font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>
<input type="radio" name="license" value="Agree">Agree&nbsp;&nbsp;&nbsp;
<input type="radio" name="license" value="Disagree" checked>Disagree
</b></font>

<br><br><br>
									
<table><tr><td width="300">
<fieldset>
<legend><font color="#D62852" face="Verdana, Arial, Helvetica" size="2"><b>Downloaded by</b></font></legend>
<br>
<font color="#000000" face="Verdana, Arial, Helvetica" size="2">
Name<br>
<input type="text" name="name" size="30"><br><br>
Title<br>
<input type="text" name="title" size="30"><br><br>
E-mail address&nbsp;&nbsp;<font color="#D62852">*required to be correct</font><br>
<input type="text" name="eaddress" size="30">
<br><br>
Confirm E-mail address (same as above)<br>
<input type="text" name="eaddress_confirm" size="30">
<br><br>
Phone Number<br>
<input type="text" name="phonenumber" size="30"><br><br>
Company<br>
<input type="text" name="companyname" size="30"><br><br>
</font>
</fieldset>
</td></tr></table>
									
<br>
<font color="#D62852" face="Verdana, Arial, Helvetica" size="2">* It is required that you enter your correct email address to
<br>&nbsp;&nbsp;&nbsp;operate the trial version of TKB Author.</font>
<br><br>
<input type="button" value="Download TKB Author" onclick="request_form_validation()" id="button1" name="button1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" id="reset1" name="reset1">
</form>

<%end if%>

<%if ie_ind then%>
</p>
<%end if%>
</BODY>
</HTML>
