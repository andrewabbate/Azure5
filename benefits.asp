<html>

<head>
<title>TKB Technology Competitive Analysis Page</title>
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

<p><font face="Verdana" size="4" color="#6699FF">Why supplement your classroom with TestAcademy.com?</font></p>

<p><strong><u><font face="Verdana">Paper-Less Test Design</font></u> </strong>

<ol>
  <li><font face="Verdana" size="2">An Instructor can create tests without paper.</font></li>
  <li><font face="Verdana" size="2">An Instructor can create tests faster and more accurately
    because TestAcademy is specifically designed to do this task. Since the test is recorded
    in the TestAcademy database, the instructor may recall a test and modify it easily.</font></li>
  <li><font face="Verdana" size="2">An instructor can create a question without paper. This
    question will be recorded in the TestAcademy database, and can be reused for other tests
    and by other instructors.</font> </li>
</ol>

<p><strong><u><font face="Verdana">Using Images and Illustrations in Question Design</font></u>
</strong>

<ol>
  <li><font face="Verdana" size="2">An instructor can design a TestAcademy question with
    images, and illustrations. This multimedia based testing will open up student assessment
    to the imagination.</font></li>
</ol>

<p><strong><u><font face="Verdana">Reusing Tests/Questions/Documents</font></u> </strong>

<ol>
  <li><font face="Verdana" size="2">Historically, an instructor creates questions with paper
    or a stand-alone word processor. The test is administered via paper and then the
    questions, that an instructor spent so much effort to design, are filed away on the
    instructor&#146;s workstation or file cabinet. The questions are eventually lost in the
    mountains of information that are owned by the instructor, never to be used again. This
    training knowledge could have been used by the instructor for the next semesters class or
    by an another instructor, who is creating a test on this subject. Instead, she has to
    re-invent the same questions and tests.</font></li>
  <li><font face="Verdana" size="2">When creating a test, an instructor can leverage all the
    questions previously recorded in TestAcademy. TestAcademy will make it very easy for an
    instructor to call up questions and re-use them for her own test design.</font></li>
  <li><font face="Verdana" size="2">An instructor can organize tests, questions, and documents
    in electronic folders to organize training content in a way that makes sense to the
    instructor.</font></li>
</ol>

<p><strong><u><font face="Verdana">Administering Tests Online Without Paper</font></u> </strong>

<ol>
  <li><font face="Verdana" size="2">An Instructor can administer a test on-line to any student
    that has access to the Internet. The student can use the industry standard MSIE or
    Netscape Browser application to take this test.</font></li>
  <li><font face="Verdana" size="2">An Instructor can administer a paper-less test to her
    students in the classroom. The student answers will be recorded automatically.</font></li>
</ol>

<p><strong><font face="Verdana"><u>Automatic Student Assessment</u></font> </strong>

<ol>
  <li><small><font face="Verdana">An Instructor will not have to spend her valuable time
    correcting tests. TestAcademy will do that for her. TestAcademy records all student
    answers automatically in its database. An Instructor can generate a variety of reports to
    assess the student&#146;s performance.</font></small></li>
</ol>

<p><strong><u><font face="Verdana">Immediate Student Feedback to Tailor Classroom
Lectures</font></u> </strong>

<ol>
  <li><small><font face="Verdana">TestAcademy can give an instructor immediate feedback on the
    level her students are learning the material she is presenting. The instructor can lecture
    on a topic, administer an on-line TestAcademy test, get immediate feedback that assesses
    the student&#146;s comprehension, and adjust her lecture accordingly.</font></small></li>
</ol>

<p><strong><u><font face="Verdana">Administering Practice Tests Outside The Classroom</font></u>
</strong>

<ol>
  <li><small><font face="Verdana">An Instructor can make practice tests available to students
    to help them prepare for in-classroom, and certification tests. The student can take this
    test by connecting to TestAcademy.</font></small></li>
  <li><small><font face="Verdana">An Instructor can design a test that includes immediate
    feedback to the student. When the student answers a question, TestAcademy will determine
    if the student chose the correct answer and provide explanations on why each possible
    answer was correct or incorrect. The explanations can include text, images, and
    illustrations. Since TestAcademy is a Web based product, an explanation can include
    hyperlinks to any appropriate information on the Internet.</font></small></li>
  <li><small><font face="Verdana">An Instructor can administer a take-home test to a student
    connecting to TestAcademy.</font></small></li>
</ol>

<p><strong><u><font face="Verdana">Posting Electronic Class Materials To Be Viewed
Outside The Classroom</font></u></strong>

<ol>
  <li><font face="Verdana" size="2">An Instructor can post class reference documents in many
    formats to be viewed by a student connecting to TestAcademy. This will save the instructor
    time that would normally be spent making multiple copies of her documents and passing them
    out to her students during class time.</font></li>
  <li><font face="Verdana" size="2">An Instructor can post movies of instruction to be viewed
    by a student connecting to TestAcademy. An instructor can create an electronic movie
    easily with an inexpensive WebCam (under $100). She can record a segment of her classroom
    instruction or just a discussion on a difficult topic. The student can then view these
    instructional movies from TestAcademy at her own leisure,and as many times as it takes to
    understand it. The &quot;make your own video&quot; age is here and an Instructor can make
    these videos accessible to their students on the Web.</font></li>
</ol>

<p><strong><u><font face="Verdana">Sharing Questions and Tests Between Instructors</font></u>
</strong>

<ol>
  <li><font face="Verdana" size="2">Instructors can freely and easily exchange questions and
    tests. Instructors, departments, and institutions can cooperatively share questions and
    tests, which will greatly reduce the time that is spent assessing students. More time will
    be spent to ensure the quality of learning in the classroom.</font></li>
  <li><font face="Verdana" size="2">In a cooperative effort, the same test can be designed and
    taken by multiple classes at the same time. The results of this test could be used to
    analyze the best method to teach the subject matter. This is a way for instructors to
    cooperatively improve their teaching methods</font></li>
</ol>

<p>&nbsp;</p>


</p>
</body>
</html>
