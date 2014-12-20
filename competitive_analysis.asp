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

<p align="center"><font face="Verdana" size="4" color="#6699FF">TKB Technology Competitive Analysis</font></p>

<p><font face="Verdana" size="2">TKB is an eLearning delivery platform technology that
competes with products that are developed by eLearning companies known as assessment or
online campus providers. These companies provide eLearning technology to publish learning
materials where the masses can access them.</font></p>

<p><font face="Verdana" size="2">An assessment provider markets e-testing products. These
products generally allow an instructor to develop on-line tests that can be taken from a
workstation connected on a LAN or the Web.</font></p>

<p><font face="Verdana" size="2">An online campus provider markets virtual campus
products. These products enable colleges to provide virtual campuses, as well as an online
environment for distance and in-classroom learning.</font></p>

<p><font face="Verdana" size="2">The eLearning technology marketplace is immature and
fragmented. The products that are supplied by our competing companies vary wildly in
current features, price structure, scalability, and extensibility. Below, we describe
these products, and compare them to our TKB technology. </font></p>
<u><b>

<p><font face="Verdana" size="3">Assessment Providers</font></b></u></p>

<p><font face="Verdana" size="2"><strong>&nbsp;&nbsp; </strong><b>1. </b><strong>Scantron
(ParTEST)</strong></font></p>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information</b>: Scantron is traditionally
  known for its optical mark read (OMR) scanners, data collection and assessment systems.
  This company has diversified and hasn&#146;t kept up with competition in the assessment
  software marketplace.</font></p>
  <p><font face="Verdana" size="2"><b>Competitive Comparison</b>: The ParTEST product
  permits an instructor to develop questions of multiple question types, but is limited to
  instructors and students that exist on a proprietary LAN. There is no support for the Web.
  </font></p>
  <p><font face="Verdana" size="2">Scantron has name recognition in computer based testing
  marketplace because of its optical mark read (OMR) scanner technology, but it&#146;s
  assessment software has not stayed competitive. It must develop a Web product to be a
  serious competitor in this marketplace.</font></p>
</blockquote>


<b>

<p><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp; 2. Question Mark (Perception)</font></b></p>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information: </b>Question Mark is a relatively
  mature company that provides assessment products to the marketplace.</font></p>
  <p><font face="Verdana" size="2"><b>Competitive Comparison:</b> The Perception product is
  a mature product that permits an instructor to author tests with an array of different
  question types, which include essay questions, hotspot, and matching questions. Although,
  this product currently offers an instructor good features for test giving, its user
  interface is clunky and not intuitive. <br>
  <br>
  This product was developed long before the Internet was popular, and this is evident by
  significant limitations in delivering tests to the Web. In order to publish a test to the
  Web, the instructor must perform a &quot;Publish to the Web&quot; operation, which
  transforms all the local test data to html files and copies it to a Web Server. Also, the
  Web Server that hosts these html files must be connected to the LAN in an Intranet
  environment. This limits access of class materials to an instructor that is connected to
  the LAN. Our TKB product can deliver class materials (including online tests) to any Web
  Server on the Intranet/Internet<b>, </b>which means that any instructor that is connected
  to the Internet has access to these class materials. When using the TKB product, any
  updates to the class materials are immediately reflected on the Web Server. There is no
  additional &quot;Publish&quot; operation that needs to be performed.</font></p>
  <p><font face="Verdana" size="2">The Perception product has a good set of test authoring
  features, but is not nearly as easy to use as TKB and it is severely limited in it&#146;s
  support of the Web. This limitation will not be easy to overcome because its underlying
  architecture was built for delivering tests to standalone workstations and a LAN.</font></p>
</blockquote>

<p><strong><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp; 3. Applied Measurement
Professionals (LXR*Test)</font></strong></p>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information: </b>Applied Measurement
  Professionals (AMP) purchased Logical Extension Resources, and its LXR*Test product in
  1996.</font></p>
  <p><font face="Verdana" size="2"><b>Competitive Comparison</b>: The LXR*Test product is a
  mature product, that just this year added support for the Web. This product permits an
  instructor to author tests with an array of different question types, offers a variety of
  test result report formats, and provides an interface to Scantron scanner hardware. Since
  the product is mature, AMP has been able to assemble a set of canned question libraries on
  different course topics that they also sell to their customers. <br>
  <br>
  The LWR*Test product is the most formidable competition to our TKB product in the
  assessment provider marketplace. This is a mature product that currently offers an
  instructor good features for test giving, and test reporting. However, it&#146;s user
  interface is not nearly as intuitive as TKB, and like any product that was developed
  before the Internet was popular, it was designed to work within a LAN environment.
  It&#146;s support for the Web was an afterthought, which constrains its Web Server to
  residing on a LAN in an Intranet environment. Our TKB product can deliver class materials
  (including online tests) to any Web Server on the Internet/Intranet. This means that any
  instructor that is connected to the Internet has access to these class materials.</font></p>
  <p><font face="Verdana" size="2">The LXR*Test product is mature, and has a good set of
  test authoring and reporting features. However, it not nearly as easy to use and it is
  severely limited in it&#146;s support of the Web. Although, its architecture is more
  scalable than Question Mark&#146;s Perception product, it does not have the potential
  scalability and extensibility of TKB. TKB was developed for the Internet, while LXR*Test
  underlying architecture was built for delivering tests to standalone workstations and a
  LAN.</font></p>
</blockquote>

<b><u>

<p><font face="Verdana" size="2">Online Campus Providers </font></u></p>

<p><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp; 1. Blackboard.com (Blackboard 5 Course
Manager)</font></p>
</b>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information: </b>Blackboard.com is an
  Application Service Provider (ASP), that also sells its application (Blackboard 5) to
  colleges and businesses. An individual instructor can host a class of her own on the
  Blackboard Web Site for free, but must pay for premium services. A college or business can
  license Blackboard.com products and host them on Blackboard&#146;s Web Site, in order to
  provide a virtual campus for it&#146;s institution. In this case, they are operating as an
  Application Service Provider (ASP). A college or business can also buy and host the
  Blackboard 5 product on it&#146;s own Web Servers, in order to maintain more control of
  their system. <br>
  <br>
  <b>Competitive Comparison:</b> A component of the Blackboard 5 product is named Course
  Manager, and can be sold separately. This component is a direct competitor of the TKB. The
  Course Manager product permits the instructor to author tests for her students to take on
  the Web, but that this is not its strength. Its strength is in giving both the instructor
  and student a sense of community. This product comes with collaboration features that
  integrate calendaring, and Web e-mail with the classroom features. Its big weakness is
  the assessment features, which are far inferior to TKB. <br>
  <br>
  All of Blackboard&#146;s products are browser based, which stresses accessibility. An
  entirely Web based product, relies heavily on the performance of the Internet, and we all
  know how frustratingly slow Web performance can be sometimes. Also, authoring from a
  browser has a big downside. When authoring tests, the Course Manager product has a very
  limiting user interface as compared to TKB&#146;s rich Windows Explorer-like interface.
  Also, Blackboard&#146;s records its tests in HTML files on the Web Server, rather than a
  relational database. The combination of a limiting user interface and usage of HTML files
  to record a test, makes Blackboard&#146;s Course Manager a very weak authoring tool for
  tests.<br>
  <br>
  Blackboard&#146;s Course Manager product is an integrated product, that combines course
  management, assessment, and collaboration features, which gives the student and teacher a
  sense of community. The integration of these features is its strength. Its weakness is
  its technical backbone. <br>
  <br>
  An entirely Web based product relies too heavily on the unpredictability of Internet
  performance. With TKB, the instructor uses a Windows-native application that operates in a
  semi-offline mode, in order to avoid Internet performance problems. Also,
  Blackboard&#146;s Course Manager records an authored test and its questions in an HTML
  file. This severely limits the reusability of these class materials by the original
  instructor or other instructors. The leveraging of class materials, tests, and questions
  is TKB&#146;s strength.</font></p>
</blockquote>

<b>

<p><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp; 2. eCollege.com (eCourse)</font></b></p>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information: </b>eCollege.com&#146;s is an
  Application Service Provider (ASP) only. They have their own Web Site, which hosts their
  entire line of products and can be used by individuals for a subscription fee. They also
  license their smorgasbord of products a la carte, to colleges and businesses, where they
  can be assembled in different ways to satisfy the customer&#146;s online training
  requirements. All eCollege.com products will be hosted by their own Web Site exclusively.<br>
  <br>
  <b>Competitive Comparison:</b> eCollege products are more versatile and easier to use than
  Blackboard.com. The eCollege.com product that directly competes with TKB is named eCourse.
  It virtually mirrors Blackboard&#146;s Course Manager product in features, but its better
  user interface allows it to be a little easier to use. All eCollege products are browser
  based, which maximizes accessibility but sacrifices ease of use, and performance (see
  Blackboard comparison to get full explanation).</font></p>
  <p><font face="Verdana" size="2">eCollege&#146;s eCourse product is an integrated product,
  that combines course management, assessment, and collaboration features, which gives the
  student and teacher a sense of community. The integration of these features is its
  strength. Its weakness is it&#146;s technical backbone. An entirely Web based product,
  relies too heavily on the unpredictability of Internet performance. With TKB, the
  instructor uses a windows-native application that operates in a semi-offline mode, in
  order to avoid Internet performance problems. Also, eCollege&#146;s eCourse records an
  authored test and it&#146;s questions in an HTML file. This severally limits the
  reusability of these class materials by the original instructor or other instructors. The
  leveraging of class materials, tests, and questions is TKB&#146;s strength.</font></p>
</blockquote>

<b>

<p><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp; 3. Training Associates (edCenter)</font></b></p>

<blockquote>
  <p><font face="Verdana" size="2"><b>Company Information: </b>Training Associates is a
  Microsoft Certified Technical Education Center, as well as a provider of eLearning
  products. </font></p>
  <p><font face="Verdana" size="2"><b>Competitive Comparison:</b> The edCenter product was
  developed with technical training in mind, and is actually used by their training center.
  This product has a technical backbone that provides the most scalability and extensibility
  of any competitive product. Even though, edCenter cannot provide a complete online campus
  solution for a large university, we placed it in the online campus provider category
  because it offers more than course eLearning features. It offers collaboration features
  such as integrated calendaring and chat. It also offers student enrollment and tracking
  features. <br>
  <br>
  edCenter&#146;s Client/Server architecture is the most similar to our TKB product. Its client named
  edComposer is Windows-native and is built on Microsoft&#146;s Front Page extensions. Its
  ease of use is very good, but does not match TKB. The size of the edComposer client is large
  (15 Mbytes), and this makes it less viable for the instructor to download from the
  Internet. The program will most likely need to be distributed to the instructors using a
  CD-ROM. The TKB client (TKB Author) is much smaller in size and can be downloaded from the
  Internet in 8 minutes with a 56K baud modem. Also, an instructor using edComposer must
  purchase and install Microsoft Frontpage on their workstation. TKB Author can be installed
  and used immediately without purchased accessories.</font></p>
  <p><font face="Verdana" size="2">Training Associates edCenter product has integrated
  features such as calendaring and chat that our TKB product does not currently have. Its
  Client/Server architecture is similar to TKB, and both products manage relational
  databases on the Web Server. The instructors will find authoring class materials easy to
  do with either product, but edCenter&#146;s edComposer requires the purchase of
  Microsoft&#146;s Front Page, while TKB Author installs ready to go. <br>
  <br>
  Each of our products can also deliver class materials to any Web Server on the
  Intranet/Internet. The edCenter product uses a proprietary messaging scheme to communicate
  its class materials to its Web Server, while TKB Author&#146;s messaging scheme is the
  industry standard XML technology. TKB&#146;s strict adherence to the industry standards
  such as XML, will allow us to leverage other XML compliant eLearning components available
  on the Internet. This will further increase our ability to extend the features of TKB for
  our customers.</font></p>
</blockquote>

</p>
</body>
</html>
