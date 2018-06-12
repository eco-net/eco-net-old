<%
curtab=3
%>
<html><!-- #BeginTemplate "/Templates/3cols_eng.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Eco-net - background</title>
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
<%level1=1%><!-- #BeginLibraryItem "/Library/menu_eng.lbi" -->
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
<p><span class="contentHeader1">Education and Enlightenment of the People</span><br>
<br>
<span class="listheader">An introduction to Traditions and Ideas in Danish &quot;Folkeoplysning&quot;. 
</span> </p>
<p class="listheader">Early Grassroot Movements </p>
<p></p>
<p>Grassroot movements started in the citizenry in Denmark. in the late18.th century, 
and spread among the peasants in the 1820&acute;es and -30&acute;es, and werecarried 
on by industrial workers in the late 19.th and early 20.th century . Their aim 
was liberation from suppression, poverty and superstition.</p>
<p><br>
<span class="listheader">Importance of Education and Enlightenment.</span></p>
<p>Education and enlightenment came to have an ever more important role as a means 
in this project of transforming society from Feudalism and Absolutism to modern 
Democracy, - and accordingly the power of deciding to whom, how much, when, where 
and how education and enlightenment should be given, became an important political 
question: Would it become an instrument of authorities to create obedient, standardized 
subjects??<br>
- or would it become the instrument of liberation and for the independent spiritual 
development of the individual??</p>
<p>Creation of People&acute;s Institutions of Education. Maybe authorities of 
the 19.th century in Denmark became aware of this matter too late,- or maybe they 
just hadn&acute;t sufficient money and intellectual capacity to win the battle, 
- in any case: Through local initiatives all over the country during the second 
half of the 19.th century hundres of communities or &quot;circles&quot; were germinating 
in towns and villages, creating and operating their own &quot;Free schools&quot; 
for children, &quot;After schools&quot; for youngsters and &quot;Folk High Schools&quot; 
for adults.- These institutions became local centres of culture, making educational 
activities available for everybody even in the most remote corners of the country.</p>
<p><br>
<span class="listheader">Influence of N.F.S.Grundtvig.</span></p>
<p>Influenced by the educational thinking of the philosopher, poet, M.P., vicar 
N.F.S. Grundtvig, focus in the greater part of these educational activities were 
placed on practical and actual social, cultural and political problems of real 
life of the individual and in society, as well as upon philisophical, spiritual 
problems of conditions and sense of human life!</p>
<p><br>
<span class="listheader">Development of Democratic Participation.</span></p>
<p>Non formal in its character this kind of education called upon the participation 
and engagement of ordinary people in questions of society and community. So during 
the period app.1850 - 1925 a deep rooted democratic tradition was developed, in 
which local circles of study and education as well as national associations of 
education and enlightenment played an important role, creating public opinion 
and influencing legislative decisions in Parliament. Political parties, important 
interest organizations, private groups of people etc. etc. founded their own associations 
of education and enlightenment, and coordination and cooperation was established 
by means of a common<br>
council, founded 1941.</p>
<p><br>
<span class="listheader">New Branches on the Old Stem.</span></p>
<p>So when during the 1970&acute;es and -80&acute;es problems of ecological character, 
existence of limits to growth and of pollution etc. became evident, and questions 
as to fact and fiction, true and false arose, and political decisions became necessary, 
many established organizations took up ecological items on their educational schedule, 
and a new grass root movement developed, based upon independent initiatives of 
ordinary people, - continuing and reviving the old tradition.<br>
- One such independent local initiative, - which has now spread to become a national 
organization- is the &quot;Network for Ecological Educationand Practice&quot;</p>
<p></p>
</td>
</tr>
</table>
<span class="contentHeader1"><br>
</span> 
<p></p>
<!-- #EndEditable --> </td>
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
