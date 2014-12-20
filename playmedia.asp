<html>

<head>
<!--#include file="ta_constants.inc"-->
<title>Test Academy Play Media Page</title>

<%
'Get the media file
'Attention: media file must be an absolute URL for Netscape
doc_url = Request.QueryString("doc_url")
doc_url = TA_MEDIA_URL & doc_url
height = Request.QueryString("height")
width = Request.QueryString("width")
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

<p <%=startpara_pos_style%>>

<table width="100%">
<td width="332" >
<OBJECT ID="MediaPlayer1" WIDTH=320 HEIGHT=240
  CLASSID="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95"
   codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,02,0902"
  STANDBY="Loading Windows Media Player components..."
  TYPE="application/x-oleobject" VIEWASTEXT>
  <PARAM NAME="FileName" VALUE="<%=doc_url%>">
  <PARAM NAME="ShowControls" VALUE="True">
  <PARAM NAME="AutoRewind" VALUE="True">
  <PARAM NAME="AutoStart" VALUE="True">
  <PARAM NAME="AutoSize" VALUE="True">
  <PARAM NAME="TransparentAtStart" VALUE="false">
  <PARAM NAME="AnimationAtStart" VALUE="1">
  <PARAM NAME="ShowStatusBar" VALUE="1">
    
  <Embed type="application/x-mplayer2"
	  pluginspage="http://www.microsoft.com/Windows/MediaPlayer/"
	  src="<%=doc_url%>"
	  Name=MediaPlayer
	  Height=<%=height%>
	  Width=<%=width%>
  </Embed>

</OBJECT>
</td>
</table>
</p>
</body>
</html>
