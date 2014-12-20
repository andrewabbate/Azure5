<html>

<head>
<title>TestAcademy.com Subscription Table Page</title>
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
<td width="100"><a href="<%=Session("home_url")%>"><img border="0" src="./images/home_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button.gif'"></a></td>
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

<p align="center"><font face="Verdana" size="4" color="#6699FF">TestAcademy.com Subscription Plans</font></p>

<p><font face="Verdana" size="2">Subscribe to TestAcademy.com and publish your
classes to the Web easier than you ever thought possible.</font></p>
<p><font face="Verdana" size="2">Below are the subscription plans we offer for
our eLearning services. If you sign up before August 1, 2001, you will be
guaranteed the low prices offered below through the end of the year 2002. Please
feel free to <a href="mailto:mns@productivityedge.com">contact us</a> with any
questions that you have.</font></p>
<table border="2" cellpadding="3" cellspacing="3" width="100%" bordercolor="#005185">
  <tr>
    <td width="20%" valign="top" align="center" bgcolor="#6699FF"><b><font size="2" face="Verdana">Subscription<br>
      Plan</font></b></td>
    <td width="81%" valign="top" align="center" ><b><font size="2" face="Verdana">Description of Services</font></b></td>
    <td width="17%" valign="top" align="center" ><b><font size="2" face="Verdana">Fee<br>
      (per month)</font></b></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#6699FF"><font face="Verdana" size="2"><b>Normal</b><br><br><br><br><br><br><br><br><font face="Verdana" size="2" color="#FFFFFF"><b>Pay Here</b></font><br><a href="payment_form.asp?subplan=Normal"><img border="0" SRC="./images/visa.gif" alt="Payment for TestAcademy Service" WIDTH="60" HEIGHT="38"></a><br><a href="payment_form.asp?subplan=Normal"><img border="0" SRC="./images/mastercard.gif" alt="Payment for TestAcademy Service" WIDTH="73" HEIGHT="44"></a><br><br>*fees are paid in quaterly payments</font></td>
    <td width="81%"><font face="Verdana" size="2">This is the subscription plan
      that is used by a typical instructor. </font>
      <p><font face="Verdana" size="2">Permits you to manage the following
      numbers of eLearning content in your personal TKB account.</font></p>
      <ol>
        <li><font face="Verdana" size="2">100 students</font></li>
        <li><font face="Verdana" size="2">10 classes</font></li>
        <li><font face="Verdana" size="2">100 tests</font></li>
        <li><font face="Verdana" size="2">1000 questions</font></li>
        <li><font face="Verdana" size="2">50 documents</font></li>
      </ol>
      <p><font face="Verdana" size="2">*Maximum document size is 1 Megabyte</font></p>
      <p><font face="Verdana" size="2">Although, video/audio movies can be
      posted to your classes, the document size limit of 1 Megabyte will only
      allow small length clips. <br><br>Please read the <a href="ta_terms_of_use.htm" target="_blank">Terms of Use</a>.</font></td>
    <td width="17%" valign="top"><font face="Verdana" size="2">$10.00</font></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#6699FF"><font face="Verdana" size="2"><b>Premium</b><br><br><br><br><br><br><br><br><font face="Verdana" size="2" color="#FFFFFF"><b>Pay Here</b></font><br><a href="payment_form.asp?subplan=Premium"><img border="0" SRC="./images/visa.gif" alt="Payment for TestAcademy Service" WIDTH="60" HEIGHT="38"></a><br><a href="payment_form.asp?subplan=Premium"><img border="0" SRC="./images/mastercard.gif" alt="Payment for TestAcademy Service" WIDTH="73" HEIGHT="44"></a><br><br>*fees are paid in quaterly payments</font></td>
    <td width="81%"><font face="Verdana" size="2">This subscription plan is used
      by an instructor, who wants to manage a larger amount of eLearning
      content. </font>
      <p><font face="Verdana" size="2">Permits you to manage the following
      numbers of eLearning content in your personal TKB account.</font></p>
      <ol>
        <li><font face="Verdana" size="2">100 students</font></li>
        <li><font face="Verdana" size="2">20 classes</font></li>
        <li><font face="Verdana" size="2">150 tests</font></li>
        <li><font face="Verdana" size="2">2000 questions</font></li>
        <li><font face="Verdana" size="2">100 documents</font></li>
      </ol>
      <p><font face="Verdana" size="2">*Maximum document size is 2 Megabytes</font></p>
      <p><font face="Verdana" size="2">Although, video/audio movies can be
      posted to your classes, the document size limit of 2 Megabyte will only
      allow moderate length clips. <br><br>Please read the <a href="ta_terms_of_use.htm" target="_blank">Terms of Use</a>.</font></td>
    <td width="17%" valign="top"><font face="Verdana" size="2">$15.0</font></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#6699FF"><font face="Verdana" size="2"><b>Super</b><br><br><br><br><br><br><br><br><br><font face="Verdana" size="2" color="#FFFFFF"><b>Pay Here</b></font><br><a href="payment_form.asp?subplan=Super"><img border="0" SRC="./images/visa.gif" alt="Payment for TestAcademy Service" WIDTH="60" HEIGHT="38"></a><br><a href="payment_form.asp?subplan=Super"><img border="0" SRC="./images/mastercard.gif" alt="Payment for TestAcademy Service" WIDTH="73" HEIGHT="44"></a><br><br>*fees are paid in quaterly payments</font></td>
    <td width="81%"><font face="Verdana" size="2">This subscription plan is used
      by an instructor, who wants to manage a large amount of eLearning content
      and also publish streaming media to their classes on a regular basis.</font>
      <p><font face="Verdana" size="2">Permits you to manage the following
      numbers of eLearning content in your personal TKB account.</font></p>
      <ol>
        <li><font face="Verdana" size="2">500 students</font></li>
        <li><font face="Verdana" size="2">25 classes</font></li>
        <li><font face="Verdana" size="2">150 tests</font></li>
        <li><font face="Verdana" size="2">5000 questions</font></li>
        <li><font face="Verdana" size="2">100 documents</font></li>
      </ol>
      <p><font face="Verdana" size="2">*Maximum document size is 10
      Megabytes</font></p>
      <p><font face="Verdana" size="2">Larger video/audio movies can be posted
      to your classes. <br><br>Please read the <a href="ta_terms_of_use.htm" target="_blank">Terms of Use</a>.</font></td>
    <td width="17%" valign="top"><font face="Verdana" size="2">$30.0</font></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#6699FF"><font face="Verdana" size="2"><b>Custom</b></font></td>
    <td width="81%"><font face="Verdana" size="2">TestAcademy.com believes that
      most customer needs can be satisfied with the three subscription plans
      described above. In the case, where your eLearning content needs are
      unique, we can customize a plan specifically for you.</font></td>
    <td width="17%" valign="top"><font face="Verdana" size="2">NA</font></td>
  </tr>
</table>

</body>
</html>
