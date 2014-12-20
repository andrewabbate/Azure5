<HTML>

<head>
<title>TKB Architecture Page</title>
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
<table border="1" cellpadding="2" width="98%">
  <tr>
    <td height="50" valign="center" align="center" bgcolor="#6699FF" colspan="3"><font face="Verdana" size="3" color="#FFFFFF"><b>TKB
      - Blackboard Technology Comparison</b></font></td>
  </tr>
  <tr>
    <td valign="top" align="center" bgcolor="#6699FF"><font face="Verdana" size="2" color="#FFFFFF"><b>Features</b></font></td>
    <td valign="top" align="center" bgcolor="#6699FF"><font face="Verdana" size="2" color="#FFFFFF"><b>TKB</font></b></td>
    <td valign="top" align="center" bgcolor="#6699FF"><font face="Verdana" size="2" color="#FFFFFF"><b>Blackboard</font></b></td>
  </tr>
  <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Ease for instructor to create, manage, and
      publish class materials.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Windows native app with rich features to
      manage class materials.&nbsp;</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Browser based app with limited features to
      manage class materials.</font></td>
  </tr>
    <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Ease
      for instructor to leverage existing class materials.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Windows
      native app is specifically designed for reusing classes, tests, questions,
      and documents.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">There are no features to reuse tests,
      questions, and documents.</font></td>
  </tr>
    <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Ease
      for sharing class materials with other
      instructors.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Each
      Instructor can choose to share class materials with any&nbsp; instructor.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">There
      are no features for sharing class materials with other instructors.</font></td>
  </tr>
<tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Instructor's productivity
      not reliant on Internet performance.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Performs in semi-offline mode that minimizes
      communication with Web Server.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">All transactions require communication with
      Web Server.</font></td>
  </tr>
  <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Student's productivity
      not reliant on Internet performance.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Browser
      based app that minimizes Web Server communication.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Browser
      based app that minimizes Web Server&nbsp; communication.</font></td>
  </tr>
  <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Flexibility to deliver class materials to the
      person or service that requests them in a customized way.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Dynamic
      Database design will serve class materials to a requestor dynamically in
      XML form.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Static
      HTML page design can only serve class materials to a requestor in HTML
      page form.</font></td>
  </tr>
  <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Range of scalability.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Distributed
      Internet Architecture (DNA) allows for installations as small as a high
      school dept. and as large as an entire educational institution.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Not
      enough information.</font></td>
  </tr>
  <tr>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000"><b>Range of extensibility.</b></font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Distributed
      Internet Architecture (DNA), and XML APIs allows for unlimited customization and
      expansion.</font></td>
    <td valign="top" align="left"><font face="Verdana" size="2" color="#000000">Not
      enough information.</font></td>
  </tr>
</table>

</body>
</HTML>

