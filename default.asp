<%@ Language=VBScript %>
<html>
<head>
<!--#include file="ta_constants.inc"-->
<title>Test Academy Home Page</title>
<%
'The page that is called first becomes the home page
if IsEmpty(Session("home_url")) then
	Session("home_url") = "default.asp"
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
<%if Session("home_url") = "default.asp" then%>
	<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button_current.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button_current.gif'"></a></td>
<%else%>
	<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button.gif'"></a></td>
<%end if%>
<td width="100"><a href="about_us.asp"><img border="0" src="./images/about_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/about_button_mouseover.gif'" onmouseout="javascript:this.src = './images/about_button.gif'"></a></td>
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<%if Session("home_url") = "tkb_technology.asp" then%>
	<td width="140"><a href="default.asp"><img border="0" src="./images/testacademy_com_button_current.gif" height="20" width="140" onmouseover="javascript:this.src = './images/testacademy_com_button_mouseover.gif'" onmouseout="javascript:this.src = './images/testacademy_com_button_current.gif'"></a></td>	
<%else%>
	<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button.gif'"></a></td>
<%end if%>
<td width="100%" height="20" height="20"><p><font color="#66CCFF">'</font></p></td>
</table>
</td>
</tr>
</table>

<%if ie_ind then%>
<script language="javascript">
function playmedia(media_file,new_page_ind,media_width,media_height) {
	if (new_page_ind != 'true') {
	mediascreen.innerHTML = '<OBJECT ID="MediaPlayer1" ' +
	                        'CLASSID="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95 ' +
                            'CODEBASE="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,02,0902 ' +
                            'STANDBY="Loading Windows Media Player components... ' +
                            'TYPE="application/x-oleobject"> ' +
                            '<PARAM NAME="ShowControls" VALUE="True"> ' +
                            '<PARAM NAME="AutoRewind" VALUE="True"> ' +
                            '<PARAM NAME="AutoStart" VALUE="True"> ' +
                            '<PARAM NAME="AutoSize" VALUE="true"> ' +
                            '<PARAM NAME="TransparentAtStart" VALUE="false"> ' +
                            '<PARAM NAME="AnimationAtStart" VALUE="1"> ' +
                            '<PARAM NAME="ShowStatusBar" VALUE="1"> ' +
                            '</OBJECT>';
	mediascreen.align = 'center';
	mediascreen.bgColor = '#66CCFF';
	MediaPlayer1.filename = './media/' + media_file;
	} else {
		window.open('playmedia.asp?doc_url=' + media_file + '&width=' + media_width + '&height=' + media_height,'_blank','status=yes,scrollbars=yes,menubar=no,resizable=yes,height=600,width=640,top=0,left=0');			
		//document.location = 'playmedia.asp?doc_url=' + media_file;
	}
}
</script>
<%else%>
<script language="javascript">
//play media in a separate window for netscape
function playmedia(media_file,new_page_ind,media_width,media_height) {
    document.location = 'playmedia.asp?doc_url=' + media_file + '&width=' + media_width + '&height=' + media_height;
}
</script>
<%end if%>

<script FOR="MediaPlayer1" EVENT="EndOfStream(lResult)" LANGUAGE="JScript">
	mediascreen.innerHTML = '<img src="./images/main_collage.jpg" width="350" height="350">';
	mediascreen.bgColor = '#FFFFFF';
</script>

<script FOR="MediaPlayer1" EVENT="PlayStateChange(lOldState, lNewState)" LANGUAGE="JScript">
    //If the Media is stopped from a playing or paused position - we bring back the image collage.
    if ((lOldState == 2 || lOldState == 1) && lNewState == 0) {
		mediascreen.innerHTML = '<img src="./images/main_collage.jpg" width="350" height="350">';
	    mediascreen.bgColor = '#FFFFFF';
    }
</script>

<p <%=startpara_pos_style%>>
<table border="0" cellpadding="0" cellspacing="2" width="98.5%">
  <tr>
    <td valign="top"><p class="MsoNormal"><font face="Verdana" size="3" color="#6699FF"><b>TestAcademy.com</b></font><font face="Verdana" size="2">
is an Application Service Provider that is used by an instructor to provide a
distance learning environment for their students. With TestAcademy.com, an
instructor can :</font></p>
        <ul>
            <li>
                <p class="MsoNormal">
                    <font face="Verdana" size="2">

    </font><font face="Verdana" size="2">supplement
    their in-classroom lectures with on-line testing and eLearning materials
    that can be viewed outside of class.</font>
            </li>
            <li>
                <p class="MsoNormal">
                    <font face="Verdana" size="2">deploy
    a complete virtual classroom environment.</font>
            </li>
        </ul>
    <p><font face="Verdana" size="2">Take a look at our short overview presentation <img src="./images/video_icon.gif" WIDTH="11" HEIGHT="11">&nbsp;<a href="javascript:playmedia('testacademy_overview128k.asf','false',353,265)">128K connection</a>/<a href="javascript:playmedia('testacademy_overview56k.asf','false',194,159)">56K connection</a> to give you a
    better understanding of what TestAcademy.com can do for you.</font><br><br>
<table border="0" cellpadding="0" cellspacing="2" width="100%" height="30"><tr><td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Instructors</b></font></td></tr></table>
    <font face="Verdana" size="2">
    An instructor can publish her classes to the Web using TestAcademy.com on a subscription basis. Click <a href="subscription.asp">subscribe</a> and start using the power of TestAcademy.com. Publishing classes to the Web is easier than you ever thought possible.<br><br>
    You can give TestAcademy.com a 6-month try by downloading the TKB Author trial version. It is ready
    for a free <a href="request_form.asp">download</a>! This is a Windows-native application that you will use to author and
    publish your classes to the Web.<p>
    Take a look at our short &quot;Getting Started&quot; presentations<br>
    <img src="./images/video_icon.gif" WIDTH="11" HEIGHT="11">&nbsp;<a href="javascript:playmedia('getting_started_overview.asf','true',600,492)">Features of TKB</a> (Part I)<br>
    <img src="./images/video_icon.gif" WIDTH="11" HEIGHT="11">&nbsp;<a href="javascript:playmedia('getting_started_publishing.asf','true',600,492)">Publishing Classes to the Web</a> (Part II)<br>
    <img src="./images/video_icon.gif" WIDTH="11" HEIGHT="11">&nbsp;<a href="javascript:playmedia('getting_started_viewing.asf','true',645,550)">Viewing Classes on the Web</a> (Part III)<br>
    This will give you a running start....<p>
    Read some <a href="ta_testimonials.asp">testimonials</a> from instructors who use TestAcademy.
    <br><br>

<table border="0" cellpadding="0" cellspacing="2" width="100%" height="30"><tr><td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Students</b></font></td></tr></table>

    </font>
    <font face="Verdana" size="2">
    TestAcademy.com students <a href="http://68.55.17.56/asp" target="_blank">login here</a>. To experience a TestAcademy.com class demo click <a href="http://68.55.17.56/asp/default.asp?user_id=trainer1&password=buckeroo" target="_blank">here</a>.<br><br>
    </font>
    </td>
    <td valign="top" align="right">
    <table border="0" cellpadding="0" cellspacing="0" width="350" height="350"><tr>
    <td id="mediascreen" width="350" valign="top" align="right"><img src="./images/main_collage.jpg" width="350" height="350" border="0"><td>
    </tr></table>
    <table  border="0"  width="100%" height="5"><tr><td></td></tr></table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
        <tr><td valign="top" align="left">
    <table border="0" cellpadding="0" cellspacing="0" width="342" height="30"><tr><td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Training Knowledge Base</b></font></td></tr></table>  
        <table border="0" cellpadding="10" cellspacing="0" width="342"><tr><td>
        <font face="Verdana" size="2">
        TestAcademy.com employs Training Knowledge Base (TKB) eLearning technology, which is the best eLearning delivery platform on the market today. Do you want to know more? Then click <a href="tkb_technology.asp">here</a>. 
        </font>
        </td></tr></table>
        </td></tr>
        </table>
    <table  border="0"  width="100%" height="5"><tr><td></td></tr></table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
        <tr><td valign="top" align="left">
    <table border="0" cellpadding="0" cellspacing="0" width="342" height="30"><tr><td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Why Supplement Your<br>Classroom With TestAcademy?</b></font></td></tr></table>  
        <table border="0" cellpadding="10" cellspacing="0" width="342"><tr><td>
        <font face="Verdana" size="2">
        Learn about the many <a href="benefits.asp">benefits</a> to supplementing your in-classroom lectures with TestAcademy.com. Bring distance learning to your students. Don't just take our word for it. <a href="request_form.asp">Download</a> a trial version of TKB Author and start publishing your classes to the Web, today!
        </font>
        </td></tr></table>
        </td></tr>
        </table>
        
    </td>
  </tr>
</table>


</p>

</body>
</html>
