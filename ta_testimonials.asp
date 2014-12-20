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

<p><font face="Verdana" size="2"><b>&quot;</b><font color="#FF0000">I
have been working with TestAcademy for a year now and my students and I are very
happy with its unique&nbsp; features. The ability to post sample exams with all
the answers allows my students to study on their own. The pool of the questions
allows me to modify the exams according to the level of the students and their
progress within the classroom.
 The added features of posting files and
documents is certainly of great benefit to all the students and they like it
very much. It saves all of us the need for printing handouts and notes.</font><b>&quot;</b></font></p>
<p><font face="Verdana" size="2"><b>Gaith Abdo <br>
</b>Microsoft Certified System Engineer/ Microsoft Certified Trainer</font></p>
<p><font SIZE="2" face="Verdana"><b><font color="#000000">&quot;</font></b><font color="#FF0000">As
a Microsoft Certified Trainer I have been using TestAcademy for the last few
classes that I have taught. I have found it to be an invaluable tool in creating
quizzes and exams for students attending my courses. The flexibility of this
software allows you to easily create exams in a variety of formats and make
these exams available via the Internet. My students have told me that they
prefer this method of testing because if more closely emulates the environment
of the tests that they will be taking for certification. And the ability to
automatically grade the tests upon submission not only gives students instant
feedback on the test, it lightens my administrative workload . It's a great
alternative to the manual testing method I used to use. I recommend this product
to instructors everywhere.</font><b>&quot;</b></font></p>
<p><font size="2" face="Verdana"><b>Chris Finucane<br>
</b>Microsoft Certified System Engineer/ Microsoft Certified Trainer</font></p>
<font SIZE="2">
<p><font face="Verdana"><b>&quot;</b><font color="#FF0000">TestAcademy is a
super product and my students love</font></font></font><font face="Verdana" color="#FF0000">
<font SIZE="2">it! The package is easy to use for the instructor and</font> <font SIZE="2">students.
Exams are easy to create, configure and</font> <font SIZE="2">administer. With a
few mouse clicks exams are</font> <font SIZE="2">customized. Documents, syllabi,
and other information</font> <font SIZE="2">can be posted through the Document
feature as well as</font> <font SIZE="2">in the opening class web page.</font> <font SIZE="2">My
students appreciate the convenience and easy access</font> <font SIZE="2">to the
testing materials I post. Students may access</font> <font SIZE="2">the class
web page on a 24/7 basis. Immediate feedback</font> <font SIZE="2">can be
provided for my students.</font> <font SIZE="2">The speed of access for me on a
regular phone line</font> <font SIZE="2">modem is excellent. Reliability has
been outstanding.</font> </font><font face="Verdana" SIZE="2"><font color="#FF0000">I
do not know what I would do without the product.</font><b>&quot;</b></font></p>
<p><font face="Verdana" size="2"><b>Lynne Young</b><br>
</font><font size="2" face="Verdana">College Professor</font></p>
<p>&nbsp;</p>
<p><font color="#993366" face="Arial" size="2"><p>
</p>
</font></p>
<p class="MsoNormal"><font color="#993366" face="Arial" size="2">&nbsp;<p>
</p>
</font></p>

</body>
</HTML>

