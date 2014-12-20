<%@ Language=VBScript %>
<html>
<head>
<!--#include file="ta_constants.inc"-->
<title>Test Academy Home Page</title>
<%
'The page that is called first becomes the home page
if IsEmpty(Session("home_url")) then
	Session("home_url") = "tkb_technology.asp"
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
<td width="100%" background="./images/header_center.gif"><font face="Verdana" size="2" color="#FFFFFF"><p valign="bottom" align="center" style="top: 10; z-index: 0; position: relative"></p></font>
<td align="right" width="26"><img border="0" src="./images/header_right.gif" width="26" height="39"></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="98%" <%=table_pos_style2%>>
<tr height="20">
<td bgcolor="#66CCFF">
<table border="0" cellpadding="0" cellspacing="0" width="98%">
<%if Session("home_url") = "tkb_technology.asp" then%>
	<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button_current.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button_current.gif'"></a></td>
<%else%>
	<td width="100"><a href=<%=Session("home_url")%>><img border="0" src="./images/home_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/home_button_mouseover.gif'" onmouseout="javascript:this.src = './images/home_button.gif'"></a></td>
<%end if%>
<td width="100"><a href="about_us.asp"><img border="0" src="./images/about_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/about_button_mouseover.gif'" onmouseout="javascript:this.src = './images/about_button.gif'"></a></td>
<td width="100"><a href="request_form.asp"><img border="0" src="./images/downloads_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/downloads_button_mouseover.gif'" onmouseout="javascript:this.src = './images/downloads_button.gif'"></a></td>
<td width="100"><a href="links.asp"><img border="0" src="./images/links_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/links_button_mouseover.gif'" onmouseout="javascript:this.src = './images/links_button.gif'"></a></td>
<td width="100"><a href="mailto:support@productivityedge.com"><img border="0" src="./images/contact_button.gif" height="20" width="100" onmouseover="javascript:this.src = './images/contact_button_mouseover.gif'" onmouseout="javascript:this.src = './images/contact_button.gif'"></a></td>
<%if Session("home_url") = "default.asp" then%>
	<td width="120"><a href="tkb_technology.asp"><img border="0" src="./images/tkb_tech_button_current.gif" height="20" width="120" onmouseover="javascript:this.src = './images/tkb_tech_button_mouseover.gif'" onmouseout="javascript:this.src = './images/tkb_tech_button_current.gif'"></a></td>
<%else%>
	<td width="140"><a href="default.asp"><img border="0" src="./images/testacademy_com_button.gif" height="20" width="140" onmouseover="javascript:this.src = './images/testacademy_com_button_mouseover.gif'" onmouseout="javascript:this.src = './images/testacademy_com_button.gif'"></a></td>	
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
    <td valign="top">

<font face="Verdana" size="2"><font size="3" color="#6699FF"><b>Training
    Knowledge Base</b></font> (TKB) technology is an eLearning delivery platform that gives an
    instructor the ability to:</font><ul>
      <li><font face="Verdana" size="2">supplement their in-classroom lectures with on-line
        testing and eLearning materials that can be accessed outside of class.</font></li>
      <li><font face="Verdana" size="2">deploy a complete virtual classroom environment.</font></li>
    </ul>
    <p><font face="Verdana" size="2">An instructor can create, manage, and publish class
    materials to the Web, in order that students may access these class materials anytime and
    anywhere. These class materials can include class instructions, on-line tests, images,
    streaming audio, streaming video, and reference documents. They can be accessed by a student with a Web
    browser and a connection to the Internet.</font></p>
    
    <p><font face="Verdana" size="2">Take a look at our short presentation <img src="./images/video_icon.gif" WIDTH="11" HEIGHT="11">&nbsp;<a href="javascript:playmedia('testacademy_technology128k.asf','false',353,265)">128K connection</a>/<a href="javascript:playmedia('testacademy_technology56k.asf','false',194,159)">56K connection</a> to explain
    what TKB Technology is all about.</font><br><br>
    
    <p>
    <table border="1" bordercolor="#6699FF" cellspacing="0" cellpadding="0" width="95%"><tr><td>
    <font face="Verdana" size="2" color="#6699FF"><b>Why does TKB technology compare favorably with </b></font><font face="Verdana" size="2" color="#6699FF"><b>Blackboard.com?</b></font><font face="Verdana" size="2" color="#000000"> Take a look at a <a href="blackboard_comparison.asp">comparison</a>.</font><br>
    </td></tr></table>

    <p><font face="Verdana" size="2" color="#6699FF"><b>Who can benefit from TKB Technology?</b></font></p>
    <p><font face="Verdana" size="2">TKB was designed for the Web and all its possibilities. Its client/server architecture based on the industry standard XML is extremely scalable. The TKB Server uses a Microsoft SQL or Access database to record all the class materials published by an instructor. This architecture allows it to be deployed in a wide variety of ways. It can be
    deployed by:</font></p>
    <ul>
      <li><font face="Verdana" size="2"><strong>an educational institution such as a college</strong> - to support distance learning for an entire campus.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><strong>a corporate training organization</strong> - to
        support distance learning for workplace related training</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><strong>a technical training center</strong> - to support
        distance learning for an entire technical training center.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><strong>a high school math department</strong> - to
        supplement traditional in-classroom learning with distance learning for a small department
        of instructors.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><strong>an eLearning Application Service Provider</strong>
        - to allow individual instructors the ability to provide distance learning to their
        students.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><strong>an eLearning product as a Web Service</strong> -
        to add TKB functionality to a standalone product. TKB's architecture allows seamless use
        of its functionality on an &quot;a la carte&quot; basis using its XML interface.</font></li>
    </ul>
    <p><font face="Verdana" size="2" color="#6699FF"><b>What makes the features of TKB
    Technology so unique to an instructor?</b></font></p>
    <p class="MsoNormal"><font

    face="Verdana" size="2">With TKB technology, an instructor can be productive in minutes.
    TKB makes authoring and publishing classes to the Web astonishingly easy, yet
    its eLearning environment is still rich with features for both instructor and student. </font></p>
    <p class="MsoNormal"><font face="Verdana" size="2" color="#6699FF"><b>Why are the
    features of TKB so easy to use?</b></font></p>
    <p class="MsoNormal"><font face="Verdana" size="2">The eLearning environment of TKB offers
    an instructor:</font></p>
    <ul>
      <li><font face="Verdana" size="2">a secure environment to author,
        manage, and publish their classes. </font>
      </li>
      <li><font face="Verdana" size="2">a user interface that has a Windows
        Explorer look and feel, which they will be immediately comfortable with.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to create a class,
        specify its student roster, and publish that class to the Web.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to post images, audio,
        video, HTML, MS Word, MS Excel, and MS PowerPoint documents to a class.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to author on-line test
        questions with a WYSIWYG editor, and organize them in question libraries.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to build on-line tests
        from individual questions and question libraries, and post them to a class.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to organize all class
        materials with folders.</font>
      </li>
      <li><font face="Verdana" size="2">the ability to share authored class
        materials with other instructors.</font>
      </li>
      <li><font face="Verdana" size="2">Class Web pages that can be accessed
        by their students to take on-line tests and review class reference materials.</font>
      </li>
    </ul>
    <br>
    </td>
    <td valign="top" align="right"><table border="0" cellpadding="0" cellspacing="0"
    width="350" height="350">
      <tr>
        <td id="mediascreen" width="350" valign="top" align="right"><img

        src="images/main_collage.jpg" width="350" height="350"></td>
        <td></td>
      </tr>
    </table>
    <table border="0" width="100%" height="5">
      <tr>
        <td></td>
      </tr>
    </table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
      <tr>
        <td valign="top" align="left"><table border="0" cellpadding="0" cellspacing="0"
        width="342" height="30">
          <tr>
            <td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Want
            to deploy TKB?</b></font></td>
          </tr>
        </table>
        <table border="0" cellpadding="10" cellspacing="0" width="342">
          <tr>
            <td><font face="Verdana" size="2">Are you interested in deploying TKB technology for your
            eLearning site? Then <a href="mailto:support@productivityedge.com">email</a> us today. We will respond promptly with our price schedule.</font></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <table border="0" width="100%" height="5">
      <tr>
        <td></td>
      </tr>
    </table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
      <tr>
        <td valign="top" align="left"><table border="0" cellpadding="0" cellspacing="0"
        width="342" height="30">
          <tr>
            <td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>TestAcademy.com</b></font></td>
          </tr>
        </table>
        <table border="0" cellpadding="10" cellspacing="0" width="342">
          <tr>
            <td><font face="Verdana" size="2">Take a look at our <a href="default.asp">TestAcademy.com</a>
            Web Site. This site deploys the TKB Technology and is an eLearning Application Service
            Provider for individual instructors, who want to publish their classes to the Web. You can
            download TKB Author, create an instructor account, generate eLearning content, and publish
            it to the Web. See how easy it is!</font></td>
          </tr>
        </table>
        </td>
      </tr>
      </table>
    <table border="0" width="100%" height="5">
      <tr>
        <td></td>
      </tr>
    </table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
      <tr>
        <td valign="top" align="left"><table border="0" cellpadding="0" cellspacing="0"
        width="342" height="30">
          <tr>
            <td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>TKB Architecture</b></font></td>
          </tr>
    </table>
        <table border="0" cellpadding="10" cellspacing="0" width="342">
          <tr>
            <td><font face="Verdana" size="2">Take a look inside the <a href="tkb_unique_technology.asp">TKB Architecture</a> and
            see why TKB is a unique eLearning delivery platform technology.</font></td>
          </tr>
        </table>
        </td>      
      </tr>
    </table>
    <table border="0" width="100%" height="5">
      <tr>
        <td></td>
      </tr>
    </table>
    <table border="1" bordercolor="#6699FF" width="342" height="100">
      <tr>
        <td valign="top" align="left"><table border="0" cellpadding="0" cellspacing="0"
        width="342" height="30">
          <tr>
            <td bgcolor="#6699FF" align="center"><font face="Verdana" size="4" color="#FFFFFF"><b>Competitive Analysis</b></font></td>
          </tr>
    </table>
        <table border="0" cellpadding="10" cellspacing="0" width="342">
          <tr>
            <td><font face="Verdana" size="2">Take a look at our <a href="competitive_analysis.asp">Competitive Analysis</a>
            write up to see how TKB technology stacks up against other products.</font></td>
          </tr>
        </table>
        </td>      
      </tr>
    </table>
    </td>
  </tr>
</table>


</p>

</body>
</html>
