<%
curtab=3
%>
<html><!-- #BeginTemplate "/Templates/3cols_eng.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Eco-net - network for ecological education and practice</title>
<!-- #EndEditable --> 
<script src="/shared/common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/shared/styles.css" type="text/css">
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="7" marginwidth="0" marginheight="7" onLoad="MM_preloadImages('/shared/graphics/pagetools/print_txt.gif','/shared/graphics/pagetools/bookmark_txt.gif','/shared/graphics/pagetools/mail_txt.gif')">
<table width="752" border="0" cellspacing="0" cellpadding="0" align="center" name="Pagetable">
<tr> 
<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top"><img src="/shared/graphics/layout/cover_dots.gif" width="1" height="18"></td>
<td width="750" valign="top"><!-- #BeginLibraryItem "/Library/header_eng.lbi" --><table width="750" border="0" cellspacing="0" cellpadding="0" name="Header">
<tr> 
<td valign="top" rowspan="3"><img src="/shared/graphics/logo.gif" width="569" height="31"> 
<table width="569" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td width="8"><br></td>
<td class="sitetag"> Network for ecological education and practice</td>
<td width="8"><br></td>
</tr></table>
</td>
<td valign="top" width="1"><br></td>
<td height="17" align="right" colspan="2"><a href="/english/index.asp">Home</a>&nbsp;</td>
</tr>
<tr> 
<td valign="top" rowspan="2" width="1" background="/shared/graphics/layout/dots_vert.gif"><img src="/shared/graphics/spacer.gif" width="1" height="1"></td>
<td background="/shared/graphics/layout/dots_horz.gif" height="1" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td width="180"> 
<div align="center"> <img src="/shared/graphics/ECO-NET-logo.gif" width="180" height="58"> 
</div>
</td>
</tr>
</table>
<!-- #EndLibraryItem --><!-- END HEADER -->
<!-- #BeginEditable "menu" --> 
<%level1=2%><!-- #BeginLibraryItem "/Library/menu_eng.lbi" -->
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Menu">
<tr>
<%
'-- tab1 -- NYHEDER
response.write "<td><img src=""/shared/graphics/menu/stretch.gif"" width=""179"" height=""22"">"
'IF curtab=1 THEN
'	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
'		"<img src=""/shared/graphics/menu/aktuelt_on.gif"" width=""57"" height=""22"">"
'ELSE
'	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">" &_
'		"<a href=""/nyheder/index.asp""><img src=""/shared/graphics/menu/aktuelt_off.gif"" width=""57"" height=""22"" border=""0""></a>"
'END IF
'-- tab2 -- debate
IF curtab=2 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/debate/index.asp""><img src=""/shared/graphics/menu/debate_on.gif"" width=""111"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=1 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/debate/index.asp""><img src=""/shared/graphics/menu/debate_off.gif"" width=""111"" height=""22"" border=""0""></a>"
END IF
'-- tab3 -- about
IF curtab=3 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/about/index.asp""><img src=""/shared/graphics/menu/about_on.gif"" width=""99"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=2 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/about/index.asp""><img src=""/shared/graphics/menu/about_off.gif"" width=""99"" height=""22"" border=""0""></a>"
END IF
'-- tab4 -- danish
IF curtab=4 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/home/index.asp""><img src=""/shared/graphics/menu/danish_on.gif"" width=""68"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=3 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/home/index.asp""><img src=""/shared/graphics/menu/danish_off.gif"" width=""68"" height=""22"" border=""0""></a>"
END IF
'-- tab5 -- OM NETVÆRKET

'IF curtab=5 THEN
'	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
'		"<a href=""/om/about_1.asp""><img src=""/shared/graphics/menu/om_on.gif"" width=""108"" height=""22"" border=""0""></a>"
'ELSE
'	IF curtab=4 THEN
'		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
'	ELSE
'		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
'	END IF
'	response.write "<a href=""/om/about_1.asp""><img src=""/shared/graphics/menu/om_off.gif"" width=""108"" height=""22"" border=""0""></a>"
'END IF

'-- tab6 -- ENGLISH
'IF curtab=6 THEN
'	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
'		"<a href=""/english/index.asp""><img src=""/shared/graphics/menu/english_on.gif"" width=""71"" height=""22"" border=""0""></a>" &_
'		"<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">" 
'	ELSE
'	IF curtab=5 THEN
'		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
'	ELSE
'		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
'	END IF
'	response.write "<a href=""/english/index.asp""><img src=""/shared/graphics/menu/english_off.gif"" width=""71"" height=""22"" border=""0""></a>"
'	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
'END IF

response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
response.write "<img src=""/shared/graphics/menu/stretch.gif"" width=""179"" height=""22""></td>"
%>
</tr>
<%IF curtab>0 THEN%> 
<tr><td class="menuBar">
<%IF curtab=1 THEN
'include sub-menu here%>
<%ELSEIF curtab=2 THEN
'include sub-menu here%>
<%ELSEIF curtab=3 THEN
'include sub-menu here%>
<%ELSEIF curtab=4 THEN%>

<%ELSEIF curtab=5 THEN%>

<%END IF%>
</td></tr>
<%END IF%>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/menu/spacer.gif" width="3" height="1"></td>
</tr></table><!-- #EndLibraryItem --><!-- #EndEditable --> 
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Contentarea">
<tr> 
<td width="180" valign="top" name="leftbar"><!-- #BeginEditable "leftbar" --> 
<table width="180" border="0" cellspacing="0" cellpadding="0">

<tr> 
<td valign="top" colspan="2">
<!--#include file="inc_about_leftbar.asp"-->
</td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" -->
<table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td>
<p>&nbsp;</p>
<p><span class="contentHeader1">About the danish Network and the Eco-net Newsletter 
</span><br>
<br>
<span class="listheader">- an introduction to Network for Ecological Education 
and Practice &amp; Eco-net Newsletter Eco-net Newsletter </span> </p>
<p>The &quot;Network for Ecological Education and Practice&quot; publishes the 
newsletter Eco-net Newsletter in Denmark.</p>
<p>The &quot;Eco-net Newsletter&quot; brings ideas, inspiration and information 
about ecology, nature and the environment - meant for people working with enlightenment 
of the people in Denmark, and for everybody else who are interested in these matters. 
The primary purpose of the newsletter is to form an easily accessible general 
view of different initiatives taken in the fields of environment and ecology, 
to be used by all educators, people working with enlightenment of the people, 
NGO-workers and public and private people. The newsletter tries to reach out and 
establishes connections between projects and people, and brings addresses, phone-numbers, 
e-mail- &amp; www-addresses of the projects mentioned. Eco-net Newsletter is published 
ordinarily 6 times a year, and comes with 4 pages (sometimes expanded to 8 pages). 
The number printed is 10,000 and the newsletter is distributed to 8,000 places 
including schools, organisations, individuals etc. Membership of the Network including 
&quot;Eco-net Newsletter&quot; costs 100,- DKK a year.</p>
<p>For the last four years, the Eco-net Newsletter has been financially supported 
by &quot;The Green Fund&quot; established by the danish Ministry for Environment 
and Energy. </p>
<p class="listheader">Network, ecology and education</p>
<p>&quot;Network for Ecological Education and Practice&quot; was founded on january 
21st 1994, with the object to establish a foundation for information, exchange 
of experience and dialogue about initiatives in promoting a sustainable development 
in Denmark. This is done by informing about meetings, courses etc., and by establishing 
connections between projects and people.</p>
<p>Every year in january the Network holds a meeting - Seminar and Annual meeting 
that incites a dialogue about environmental issues and sustainability in the society. 
On the meetings connections are established, and a lot of the participants take 
the opportunity of presenting projects and ideas. These meetings are carried out 
during a weekend in full respect of ecological ideas - e.g. the food is 100% organic, 
and the participants receive address-lists to encourage shared means of transport. 
The number of participants at these meetings have been between 150 and 200, and 
they all share a memorable weekend culminating in the saturday evening's galla-dinner 
and party with live music and dance.</p>
<p>At the annual meeting the general meeting sets up the committee who decides 
on the general activities. The committee is responsible of employing a leader 
for the operation of the secretariat. The Network is financed by subscriptions 
and funds.</p>
<p>In addition the Network holds other meetings with specific objects - e.g. the 
meeting &quot;Should the dullard save the world - when the wise will not&quot; 
became the starting signal for the &quot;Kolding Manifesto&quot;, which again 
was discussed at a follow-up-meeting entitled &quot;Action, Vision and Network&quot;.</p>
<p>The Network is a member of &quot;Danish Council for Adult Education&quot; who 
has 39 different organisations as members. The Council has established an Internet-server, 
on which you can find the homepages of the 39 members. The Internet-server also 
hosts of the Network's web-site.</p>
</td>
</tr>
</table>
<span class="contentHeader1"><br>
</span><!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools_eng.asp" -->
</td>
</tr>
</table>
</td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --><!-- #BeginLibraryItem "/Library/Sektioner.lbi" --><table width="180" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;SEKTIONER</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr valign="top"> 
<td colspan="2" class="sidebarText"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr><td><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr> 
<td>
<p>&nbsp;</p>
<p><span class="sidebarHeader"><a href="/nyhedsblad/index.asp">Nyhedsbladet &Oslash;ko-net</a></span><br>
</p>
</td>
</tr>
<tr> 
<td>
<p>&nbsp;</p>
<p><span class="sidebarHeader"><a href="/udgivelser/index.asp">Udgivelser</a></span><br>
</p>
</td>
</tr>
<tr> 
<td>
<p>&nbsp;</p>
<p><span class="sidebarHeader"><a href="/seminar/index.asp">Seminarer &amp; M&oslash;der</a></span><br>
</p>
</td>
</tr>
<tr> 
<td>
<p>&nbsp;</p>
<p><span class="sidebarHeader"><a href="/om/about_1.asp">Om Netv&aelig;rket</a></span><br>
</p>
</td>
</tr>
<tr> 
<td>
<p>&nbsp;</p>
<p><span class="sidebarHeader"><a href="/english/index.asp">In English</a></span><br>
</p>
</td>
</tr>
<tr> 
<td>&nbsp;</td>
</tr>
<tr> 
<td>&nbsp;</td>
</tr>

<tr><td><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
</table>
</td>
</tr>
</table><!-- #EndLibraryItem --><!-- #EndEditable --></td>
</tr>
</table>
</td>
<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top"><img src="/shared/graphics/layout/cover_dots.gif" width="1" height="18"></td>
</tr>
<tr> 
<td background="/shared/graphics/layout/dots_horz.gif" height="1" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr align="center"> 
<td colspan="3" class="footer" height="20" valign="middle">
<!--#include virtual="/shared/footer_eng.asp" -->
</td>
</tr>
</table>
<!-- START HEADER -->
</body>
<!-- #EndTemplate --></html>
