<html>

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

<p align="center"><font face="Verdana" size="4" color="#6699FF">TKB Architecture</font></p>

    <p><font face="Verdana" size="2">The TKB technology is composed of three separate client
    components, that communicate with the TKB Server.</font> <ul>
      <li><font face="Verdana" size="2">The <b>TKB Author</b> program used by an instructor to
        manage and publish her class materials to the Web. This program is a Windows-native
        executable that is rich with features for the instructor to manage her class materials
        easily.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2">A <b>Standard Web Browser</b> used by a student to access
        these class materials and take online-tests.</font></li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2">The <b>TKB Manager</b> program used by a system
        administrator to manage instructor accounts. This program
        is a Windows-native executable that is rich with features for the administrator to manage
        the instructors and their permissions easily.</font></li>
    </ul>
    <p><font face="Verdana" size="2">The TKB architecture is what enables us
    to boast of the many features that are currently superior to competitive eLearning
    delivery platforms. Its architecture provides limitless potential to enhance and grow the
    product. This is in contrast with competitive products, which are constrained by their
    design.</font> </p>
    <p><font face="Verdana" size="2">The architecture of the TKB product allows it
    to be the following:</font> <ul>
      <li><font face="Verdana" size="2"><b>The product that is the easiest for an instructor to
        use when creating, managing, and publishing class materials to the Web.</b></font> <br>
        <br>
        <font face="Verdana" size="2">The user interface for the instructor is Windows
        explorer-like, which makes anybody that uses a computer immediately comfortable and
        productive. The instructor has the typical Windows functionality such as the ability to
        create folders, cut, copy, paste, and drag/drop, in order to organize her account of class
        materials. The instructor feels and operates in TKB Author like they are using a
        Windows-native program that works within the boundaries of their workstation only. In
        reality, when the instructor adds, updates, or deletes class materials from their account,
        this is immediately reflected in the TKB database that resides on the Web Server. Any
        student that accesses these class materials thereafter will be rendered the updated class
        information.</font> </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that is the least reliant on the
        unpredictable performance of the Internet, which will allow an instructor to perform her class
        management tasks efficiently.</b></font> <br>
        <br>
        <font face="Verdana" size="2">The delivery system used to deliver an instructor&#146;s class
        materials to any workstation running TKB Author and a caching scheme, enables the program
        to operate in a semi-offline mode. This semi-offline mode minimizes the instances that TKB
        Author must communicate with the Web Server, and therefore minimizes the reliance on
        unpredictable Internet performance. As a result, the instructor can be efficient when
        performing her class management tasks.</font> <p><font face="Verdana" size="2">The
        technologies that the TKB product&#146;s delivery system and caching scheme are based on
        are Hypertext Transfer Protocol (HTTP), and Extensible Markup Language (XML). These
        technologies are industry standards.</font></p>
      </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that is least reliant on the unpredictable
        performance of the Internet, which will allow a student to access her classes efficiently.</b></font>
        <br>
        <br>
        <font face="Verdana" size="2">The class information is delivered and rendered dynamically
        by the TKB Server; at the time the student connects to the TKB site from her Web browser.
        This class information is delivered and stored locally on the student&#146;s Web browser
        with just one communication to the Web Server. It allows the student to view her class
        materials and take online tests from her workstation without any outside communication.
        The only time there is a need to communicate with the Web Server is when she is submitting
        answers to a test she has taken.</font> <p><font face="Verdana" size="2">Minimizing
        student reliance on Internet performance is made possible by the storage and dynamic
        retrieval of class information from the TKB database. Competitive products store much of
        their class information in HTML files.</font></p>
      </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that is easiest for an instructor to share
        class materials between instructors of one TKB Site, or multiple TKB Sites.</b></font> <br>
        <br>
        <font face="Verdana" size="2">The TKB product is based on a Client/Server architecture.
        The TKB Server component, can reside on a Web Server anywhere on an Intranet or the
        Internet. The TKB Server is the manager of the relational database that records the
        classes, class materials and class rosters of instructors, who have access to the TKB. As a
        result, all of the TKB class information is stored in one place, and is organized to
        maximize the sharing of class materials. The ability to share TKB information can go down
        to the level of a class instruction, question in a test, or student, and up to the entire
        account of an instructor.</font> <p><font face="Verdana" size="2">A centralized database
        stores all the TKB information in one place, and enables our product to perform fast
        queries of this class information in a variety of ways. This capability cannot be taken
        advantage of without a client program such as TKB Author that can display the class
        materials in a way that is understandable and manageable.</font></p>
        <p><font face="Verdana" size="2">The class information of an instructor is hierarchical in
        nature. An instructor can instruct one to many classes. A class is composed of students, class
        instructions, class materials, and tests. A test is composed of question libraries and
        questions. TKB Author displays this information in a hierarchical way that is very
        intuitive. Its user interface is also flexible enough that an instructor can look at her
        account in ways that are more comfortable to her.</font></p>
        <p><font face="Verdana" size="2">An instructor can share any class material in her account
        with other instructors by specifying that this object is to be shared, and by whom. It&#146;s
        as simple as sharing a folder that you own with people on a LAN, in a Microsoft Windows
        LAN environment.</font></p>
      </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that has the most flexibility in delivering
        class materials to the person or service that requests them.</b></font> <br>
        <br>
        <font face="Verdana" size="2">A centralized database stores all the TKB information. There
        are no pre-made HTML files that limit a product from delivering and rendering information
        appropriately based on the context. All class information is delivered and rendered
        dynamically to an instructor, student, or administrator based on:</font> <table border="0">
          <tr>
            <td width="100%"><ul type="square">
              <li><font face="Verdana" size="2">What class information is this person requesting</font></li>
              <li><font face="Verdana" size="2">Who is the person, requesting information</font></li>
              <li><font face="Verdana" size="2">What type of access privileges does the person have</font></li>
              <li><font face="Verdana" size="2">What device is the person using to render the results of
                this information request</font></li>
              <li><font face="Verdana" size="2">What is the date and time of this information request</font></li>
            </ul>
            </td>
          </tr>
        </table>
        <p><font face="Verdana" size="2">Also, since the class information is stored in a database
        and has no pre-defined format, the TKB Server can respond to information requests from any
        XML compliant program. This opens up the possibility of delivering class information to
        other colleges and businesses, which can process the requested information in ways that
        make sense to them. An example of this would be, a small business that owns a network of
        MS Windows computers to support their business. They may buy access to a TKB Site, where
        instructors have built up a knowledge base of class information for the Microsoft
        Certification System Engineer (MCSE) classes. This small business can use this information
        as a virtual help desk, rather than hire full-time system administrators.</font> </p>
      </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that has the most range of scalability.</b></font>
        <br>
        <br>
        <font face="Verdana" size="2">The TKB product is based on a Client/Server architecture.
        The TKB Server component, can reside on a Web Server anywhere on an Intranet or the
        Internet. The TKB Clients are the TKB Author, TKB Viewer, and TKB Manager components. A
        Client/Server architecture is designed to use the resources of the workstation that is
        hosting the client component and minimize the use of resources of the Web Server. With
        this architecture, a large amount of users can use the TKB concurrently, without loading
        down the Web Server.</font> <p><font face="Verdana" size="2">The TKB Server can reside on
        any Windows 2000 Server, Windows NT 4.0 Server, and Windows 9X/Personal Web Server
        machine. Productivity Edge selected the Microsoft Server platform because of its
        reliability, scalability, and add-on technologies that we can leverage. In order to
        support large TKB Sites, the customer can use Microsoft&#146;s multi-processing, server
        clustering, and load balancing technologies. With these technologies, a TKB customer can
        scale up to just about any user base that it needs to support.</font></p>
        <p><font face="Verdana" size="2">The TKB supports both Microsoft Access and Microsoft SQL
        Server database engines to store all TKB class information. On a small scale, a TKB
        installation using the MS Access database is viable for a customer that has a small group
        of instructors, classes, and students. This would be a customer such as a high school math
        department or a small college computer science department. On a large scale, a TKB
        installation with MS SQL Server is required for its reliability, performance, and backup
        features, and is viable for major eLearning providers.</font></p>
      </li>
    </ul>
    <ul>
      <li><font face="Verdana" size="2"><b>The product that has the most potential for
        extensibility.</b></font> <br>
        <br>
        <font face="Verdana" size="2">The TKB product is the most extensible eLearning product in
        its marketplace, because it is based on a Client/Server architecture, XML technology, and
        its TKB Server component runs on the Microsoft Window Server platform. Making these
        technologies the technical backbone of our product opens up unlimited ways to extend our
        product&#146;s functionality in the future.</font> <p><font face="Verdana" size="2">The
        TKB technical backbone makes it possible to extend its functionality by integrating any
        existing Component Object Model (COM) object, XML compliant Web service, and any Microsoft
        Windows application server.</font></p>
        <p><font face="Verdana" size="2">There are thousands of COM objects that are commercially
        available from third-party vendors. These COM objects perform specific tasks, and can be
        integrated very easily into the TKB product.</font></p>
        <p><font face="Verdana" size="2">As the XML technology becomes more widespread in its use,
        there are an increasing number of commercial Web services available on the Internet that
        can be accessed with an XML message. The TKB product talks XML, and can take advantage of
        these Web services. In fact, the TKB Server itself is a Web service, which manages class
        information. When an XML message is received, the TKB Server will respond to the sender.</font></p>
        <p><font face="Verdana" size="2">Using the Microsoft Windows Server platform, allows TKB
        to leverage very exciting Microsoft technology. Below is just a sample of the Microsoft
        Windows application server technology that can be integrated:</font></p>
        <table border="0">
          <tr>
            <td width="100%"><ul type="square">
              <li><font face="Verdana" size="2">Active Directory Services &#150; will give TKB
                administrators very fine control of the permissions a student, or instructor has when
                accessing a TKB site.</font></li>
              <li><font face="Verdana" size="2">MS BizTalk Server &#150; enables a customer to customize
                the business rules of her TKB installation and to build additional TKB services that
                satisfy unique customer requirements. This technology will enable a business analyst to
                perform these tasks rather than a developer.</font></li>
              <li><font face="Verdana" size="2">MS Exchange &#150; add messaging, communication, and
                collaboration features to a TKB installation.</font></li>
              <li><font face="Verdana" size="2">MS Mobile Information Server &#150; add the ability to
                deliver TKB class information to wireless devices</font></li>
              <li><font face="Verdana" size="2">MS Application Center &#150; makes it easy to manage a
                cluster of many Web Servers, in order to support a large installation of the TKB product.</font></li>
            </ul>
            </td>
          </tr>
        </table>
      </li>
    </ul>


</body>
</html>
