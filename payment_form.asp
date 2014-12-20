<%@ Language=VBScript %>
<html>
<head>
<title>Test Academy Download Page</title>
<%
subplan = Request.QueryString("subplan")

if subplan = "Normal" then
subplan_desc = "<font face=""Verdana"" size=""2"" color=""#6699FF""><b>You have chosen the TestAcademy Normal Subscription Service Plan. The instructions below will direct you on how to make a quarterly payment. This comes to a total of $30.00</b></font>"
payment = 30
elseif subplan = "Premium" then
subplan_desc = "<font face=""Verdana"" size=""2"" color=""#6699FF""><b>You have chosen the TestAcademy Premium Subscription Service Plan. The instructions below will direct you on how to make a quarterly payment. This comes to a total of $45.00</b></font>"
payment = 45
else
subplan_desc = "<font face=""Verdana"" size=""2"" color=""#6699FF""><b>You have chosen the TestAcademy Super Subscription Service Plan. The instructions below will direct you on how to make a quarterly payment. This comes to a total of $90.00</b></font>"
payment = 90
end if


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
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button_current.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button_current.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button.gif'"></a></td>
<td width="100%" height="20" height="20"><p><font color="#66CCFF">'</font></p></td>
</table>
</td>
</tr>
</table>

<script language="javascript">

//Validate the data entered in the request form, if all is well then we send it off to our ASP
//page for processing (In this case,we wrap it up as a e-mail message and send it off)
function request_form_validation() {
    //COMMENTED THIS OUT BECAUSE INPUT IMAGE - POST FORM REGARDLESS OF AUDIT.. A INPUT BUTTON TYPE WILL WORK!!			
	//if (document.forms[0].tkbuserid.value == "") {
	//	alert("Please enter your TKB Author User ID. This is a required field.")
	//} else if (document.forms[0].tkbpwd.value == "") {
	//	alert("Please enter your TKB Author Password. This is a required field.")
	//} else {
		//if we've gotten this far, then we are a go!!
	//	document.forms[0].submit();
	//}
}
</script>		

<%if ie_ind then%>
<p <%=startpara_pos_style%>>
<br>
<%end if%>


<form name="payment_form" id="payment_form" action="submit_payment_form.asp" method="post">
<table width="600"><tr>
<td><font color="#000000" face="Verdana, Arial, Helvetica" size="3"><b>TestAcademy Subscription Payments</b></font><br>
<font color="#000000" face="Verdana, Arial, Helvetica" size="2"><%=subplan_desc%></font><br><br>
<font color="#000000" face="Verdana, Arial, Helvetica" size="2"><b>Please follow the instructions below to make your payment:</b></font>

<ol>
  <li><font face="Verdana" size="2">Enter your TestAcademy TKB Author first name, middle initial, last name, email address,
    user id, and password. Entering these fields is the way we can identify you
    and this ensures that your payments will be credited to your account.</font></li>
  <li><font face="Verdana" size="2">Press the PayPal button. You will be
    directed to the PayPal Credit Card Billing System. This is a secure site to
    enter credit card information and to make your quarterly subscription
    payment.</font></li>
  <li><font face="Verdana" size="2">In the case, where you are upgrading from
    the trial to a paid service plan, TestAcademy will
    upgrade your service within 24 hours.</font></li>
</ol>

</td>
</tr>
</table>
						
<table border="0">
<tr>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
First Name<br>
<input type="text" name="fname" size="35"><br><br>
</font>
</td>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
Middle Initial<br>
<input type="text" name="minitial" size="35"><br><br>
</font>
</td>
</tr>

<tr>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
Last Name<br>
<input type="text" name="lname" size="35"><br><br>
</font>
</td>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
Email Address<br>
<input type="text" name="eaddress" size="35"><br><br>
</font>
</td>
</tr>

<tr>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
TestAcademy TKB Author User ID<br>
<input type="text" name="tkbuserid" size="35"><br><br>
</font>
</td>
<td width="300"><font color="#000000" face="Verdana, Arial, Helvetica" size="2">
TestAcademy TKB Author Password<br>
<input type="password" name="tkbpwd" size="35"><br><br>
</font>
</td>
</tr>
</table>

<input TYPE="hidden" NAME="subplan" VALUE="<%=subplan%>">
<input TYPE="hidden" NAME="payment" VALUE="<%=payment%>">
<table>
<tr>
<td>									
<input Type="image" SRC="http://images.paypal.com/images/x-click-but6.gif" ALT="Make payments with PayPal - it's fast, free and secure!" onclick="request_form_validation()">
</td>
<td>
<input Type="image" SRC="./images/visa.gif" ALT="Make payments with PayPal - it's fast, free and secure!" onclick="request_form_validation()" WIDTH="60" HEIGHT="38">
</td>
<td>
<input Type="image" SRC="./images/mastercard.gif" ALT="Make payments with PayPal - it's fast, free and secure!" onclick="request_form_validation()" WIDTH="73" HEIGHT="44">
</td>
</tr>
</table>

</form>
									


<%if ie_ind then%>
</p>
<%end if%>
</body>
</html>
