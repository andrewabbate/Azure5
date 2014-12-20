<html>
<head>
<!--#include file="adovbs.inc"-->

<%
'constants
CONNECT_STRING = "UID=sa;DSN=PETKB1SQLServer"  'Development SQLServer connect string
CRLF = Chr(10)
Const QUOTE = "'"
Const BQUOTE = "\'"
Const BSLASH = "\"
Const BBSLASH = "\\"
REALCRLF = Chr(13) + Chr(10)
BLANK = ""

'retrieve request form data
fname = Request.Form("fname")
minitial = Request.Form("minitial")
lname = Request.Form("lname")
eaddress = Request.Form("eaddress")
tkbuserid = Request.Form("tkbuserid")
tkbpwd = Request.Form("tkbpwd")
subplan = Request.Form("subplan")
payment = Request.Form("payment")
	
On error resume next
'author_identified = false
author_identified = true  'always true - when we don't have an audit

'WE WILL COMMENT OUT THE AUDITING FOR A REAL USER AS OF NOW 8/27/01
'Set objdbUser = Server.CreateObject("dbUser.User")
'Set rs = objdbUser.Gets(CONNECT_STRING,,,tkbuserid)

'Verify that there was no db error
'if Err.description = "" then
'
'	If not rs.eof Then
'		'We will not ignore case when verifying password
'		If lcase(rs("password")) = lcase(tkbpwd) Then
'			'The user does exist in the TKB
'			if (isnull(rs("middle_initial")) and minitial <> "") then
'			elseif (not isnull(rs("middle_initial")) and minitial = "") then
'			elseif (rs("user_type") = "AU" AND rs("first_name") = fname AND rs("last_name") = lname AND rs("email_address") = eaddress) AND ((rs("middle_initial") = minitial) OR (isnull(rs("middle_initial")) AND minitial = "")) then
'				author_identified = true	
'			end if
'		End If
'	End If
'
'end if 'if Err <= 0

'set rs = nothing
'set objdbuser = nothing

%>

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

<%
if author_identified then
	'build mail body
	strbody = strbody & "First Name : " & fname & CRLF
	strbody = strbody & "Middle Initial : " & minitial & CRLF
	strbody = strbody & "Last Name : " & lname & CRLF
	strbody = strbody & "E-mail address : " & eaddress & CRLF
	strbody = strbody & "TKB user id : " & tkbuserid & CRLF
	strbody = strbody & "TKB password : " & tkbpwd & CRLF
	strbody = strbody & "Subscription Plan : " & subplan & CRLF
		
	'Put the mail message together and send
	set objCDO = Server.CreateObject("CDONTS.NewMail")
	objCDO.To = "mns@productivityedge.com"
	objCDO.From = eaddress
	objCDO.Subject = fname & " " & minitial & " " & lname & " is attempting to make a TKB payment"
	objCDO.BodyFormat = 0  'Send Text message format
	objCDO.Body = strbody
	objCDO.Send
		
	set objCDO = nothing
	
	'Now, build the form to submit to PayPal
%>
<body onload="javascript:document.forms[0].submit();">
<!-- Begin PayPal Logo -->
<FORM ACTION="https://secure.paypal.com/cgi-bin/webscr" METHOD="POST">
<INPUT TYPE="hidden" NAME="cmd" VALUE="_xclick">
<INPUT TYPE="hidden" NAME="business" VALUE="mns@productivityedge.com">
<INPUT TYPE="hidden" NAME="return" VALUE="http://24.23.51.47/testacademy/after_successful_payment.asp?fname=<%=fname%>&lname=<%=lname%>&tkbuserid=<%=tkbuserid%>&subplan=<%=subplan%>&payment=<%=payment%>">
<INPUT TYPE="hidden" NAME="item_name" VALUE="TestAcademy <%=subplan%> Subscription/Quarterly Payment">
<INPUT TYPE="hidden" NAME="amount" VALUE="<%=payment%>">
</FORM>
<!-- End PayPal Logo -->

</body>	

<%else%>

<body link="#0000FF" vlink="#D62852" alink="#D62852">
<table border="0" cellpadding="0" cellspacing="0" width="98%" height="39" <%=table_pos_style1%>>
<tr height="39">
<td width="240"><img border="0" src="./images/header_left.gif" width="240" height="39"></td>
<td width="100%" background="./images/header_center.gif"><font size="5" color="#FFFFFF"><p align="center" style="top: 4; z-index: 0; position: relative"></p></font>
<td align="right" width="26"><img border="0" src="./images/header_right.gif" width="26" height="39"></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="98%" <%=table_pos_style2%>>
<tr height="20">
<td bgcolor="#66CCFF">
<table border="0" cellpadding="0" cellspacing="0" width="98%">
<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button.gif'"></a></td>
<td width="100"><a href="about_us.asp"><img border="0" src="./images/about_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/about_button_mouseover.gif'" onmouseout="javascript:this.src = './images/about_button.gif'"></a></td>
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button.gif'"></a></td>
<td width="100%" height="20" height="20"><p><font color="#66CCFF">'</font></p></td>
</table>
</td>
</tr>
</table>

<%if ie_ind then%>
<br><br><br>
<%else%>
<br>
<%end if%>

<font face="Verdana" size="2"><b>Sorry! We could not find your TestAcademy TKB Author account.</b> The first name, middle initial, last name, email address, account user id, and password you have entered must match exactly to the your current account in order to make a payment. We do this to ensure the security of your account. If you have any questions, feel free to <a href="mailto:mns@productivityedge.com">contact us</a></b></font>.
<br><br>
<input type="button" value="Return to Subscription Payment Form" onclick="window.history.back()">

</body>
<%end if%>

</html>