<html>
<head>
<!--#include file="adovbs.inc"-->

<%
'constants
CRLF = Chr(10)
Const QUOTE = "'"
Const BQUOTE = "\'"
Const BSLASH = "\"
Const BBSLASH = "\\"
REALCRLF = Chr(13) + Chr(10)
BLANK = ""

'retrieve request form data
license = Request.Form("license")
name = Request.Form("name")
title = Request.Form("title")
eaddress = Request.Form("eaddress")
phonenumber = Request.Form("phonenumber")
companyname = Request.Form("companyname")
	
'build mail body
strbody = strbody & "Name : " & name & CRLF
strbody = strbody & "Title : " & title & CRLF
strbody = strbody & "E-mail address : " & eaddress & CRLF
strbody = strbody & "Phone number : " & phonenumber & CRLF
strbody = strbody & "Company Name : " & companyname & CRLF
strbody = strbody & "License Agreement : " & license & CRLF	
	
'Put the mail message together and send
set objCDO = Server.CreateObject("CDONTS.NewMail")
objCDO.To = "mns@productivityedge.com"
objCDO.From = eaddress
objCDO.Subject = name & " downloaded TKB Author"
objCDO.BodyFormat = 0  'Send Text message format
objCDO.Body = strbody
objCDO.Send
	
set objCDO = nothing

'Database (ADO) Connection
'On Error Resume Next
Session.timeout = 5
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "TKBDownload" 

On Error Resume Next
SQLTable = "User"
Set rsUser = Server.CreateObject ("ADODB.RecordSet")
rsUser.Open SQLTable,conn,adOpenKeyset,adLockOptimistic,adCmdTable
If Err <= 0 Then
	rsUser.AddNew
	rsUser("name") = name
	rsUser("title") = title
	rsUser("email_address") = eaddress
	rsUser("phone_nbr") = phonenumber
	rsUser("company_name") = companyname
	rsUser("license_agreement") = license
	rsUser("application_name") = "TKB Author"
	rsUser("download_date") = Now()
	rsUser.Update
	rsUser.Close
End If

Set rsUser = Nothing
Set conn = nothing	
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
	startpara_pos_style = " style=""position: absolute; top: 150 ;left: 2"""
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
<%end if%>

<p><font color="#000000" face="Verdana, Arial, Helvetica" size="2"><b>Perform the steps below to download the TKB Author installation file, install the TKB Author program, and create your own account. You will be publishing your TKB classes to the Web for your
students to access, within 15 minutes! <font color="#639AFF" face="Verdana, Arial, Helvetica" size="2">Suggestion: Print out these instructions now.</font></b></font></p>
<ol>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Create a new folder on your desktop.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Download the <a href="./download/TKBAut14.exe">TKB Author Installation file</a> into your new folder <i>(The download process will take approximately 8 minutes with a 56K baud)</i>.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Double-click the TKB Author file from your new folder <i>(The installation will be performed - during installation you may be asked to keep a file. Always say "Yes")</i>.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Go to the Start menu/Programs menu and start TKB Author for the first time.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Press the &quot;Create Account&quot; button to create a unique TKB Author account for
    yourself <i>(make up a user id and password that you will remember)</i>. Press OK button.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Login to the new account with the user id and password that you specified.</font></li>
  <li><font color="#000000" face="Verdana, Arial, Helvetica" size="2">Select the Help-&gt;Help menubar option and view the &quot;Getting
    Started&quot; video clip.<br>
    </font>
  </li>
</ol>


</body>
</html>