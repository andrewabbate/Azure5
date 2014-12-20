<html>

<head>
<title>Test Academy About Us Page</title>
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
<td width="100"><a href="about_us.asp"><img border="0" src="./images/about_button_current.gif" height="20" width="100" onmouseover="javascript:this.src = './images/about_button_mouseover.gif'" onmouseout="javascript:this.src = './images/about_button_current.gif'"></a></td>
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button.gif'"></a></td>
<td width="100%" height="20" height="20"><p><font color="#66CCFF">'</font></p></td>
</table>
</td>
</tr>
</table>

<p <%=startpara_pos_style%>>

<table border="0" width="99%" cellspacing="5">
  <tr>
    <td><p class="MsoNormal"><font face="Verdana" size="3" color="#6699FF"><b>TestAcademy.com</b></font><font face="Verdana" size="2">
is an Application Service Provider that is used by an instructor to provide a
distance learning environment for their students. With TestAcademy.com, an
instructor can :</font></p>
<ul>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">
    
    </font><font face="Verdana" size="2">supplement
    their in-classroom lectures with on-line testing and eLearning materials
    that can be viewed outside of class.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">deploy
    a complete virtual classroom environment.</font></li>
</ul>
<p class="MsoNormal"><font face="Verdana" size="2">We
allow an instructor to publish her class materials to the Web. These class
materials can include class instructions, on-line tests, images, audio, video,
and reference documents. They can be accessed by a student with a Web browser
and a connection to the Internet. Our Web Servers are available 24 /7 to serve
our instructors and their students reliably.
</font> <font face="Verdana" size="2">We
provide you with the best e-learning services on the market today. 
</font></p>
<p class="MsoNormal"><font face="Verdana" size="2"><b><font color="#6699FF">What
makes our services unique?
</font></b><b><br>
</b></font><font face="Verdana" size="2">With
TestAcademy.com, an instructor can be productive in minutes. TestAcademy.com
makes authoring and publishing classes to the Web astonishingly easy, yet its
eLearning environment is still rich with features for both instructor and
student.
</font></p>
<p class="MsoNormal"><font face="Verdana" size="2"><b><font color="#6699FF">Why
are our services so easy to use? </font></b><b>
<br>
</b>We employ the Training Knowledge Base (TKB) technology, which offers our
instructors:</font></p>
<ul>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">
    
    </font><font face="Verdana" size="2">a
    secure environment to author, manage, and publish their classes.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">a
    user interface that has a Windows Explorer look and feel, which they will be
    immediately comfortable with.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to create a class, specify its student roster, and publish that
    class to the Web.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to post images, audio, video, HTML, MS Word, MS Excel, and MS
    Powerpoint documents to a class.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to author on-line test questions with a WYSIWYG editor, and organize
    them in question libraries.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to build on-line tests from individual questions and question
    libraries, and post them to a class.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to organize all class materials with folders.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">the
    ability to share authored class materials with other instructors.</font></li>
  <li>
    <p class="MsoNormal"><font face="Verdana" size="2">Class
    Web pages that can be accessed by their students to take on-line tests and
    review class reference materials.</font></li>
</ul>
    </td>
    <td valign="top">
    <table border="3" bordercolor="#6699FF" width="335" height="442"><tr><td align="center" valign="middle">
    <img src="./images/test_academy_story.gif" WIDTH="315" HEIGHT="422">
    </td></tr></table>
    </td>
  </tr>
</table>


</p>
</body>
</html>
