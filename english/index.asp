<!--#include virtual="/shared/showimage.asp" -->
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
<!-- #BeginEditable "menu" --><!-- #BeginLibraryItem "/Library/menu_eng.lbi" -->
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
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ECO-NET</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td>
<p><img src="/shared/graphics/spacer.gif" width="3" height="8"></p>
<p><span class="sidebarHeader">Eco-net</span><br>
Network for ecological education and practice<br>
&AElig;rtevej 120, Egense <br>
DK- 5700 Svendborg </p>
<p>Phone (+45) 62 24 43 24<br>
Fax (+45) 62 24 43 23</p>
<p><a href="mailto:eco-net@eco-net.dk">eco-net@eco-net.dk</a></p>
</td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</table>
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
<div align="center"><br>
<table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2">&nbsp;</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top"> 
<p><a href="http://www.eco-net.dk/danmarksagenda21/DD/Index_en_ex.html" target="_blank"><br>
<span class="listheader">Denmark Declaration</span></a></p>
<p class="listheader">The sustainability principle must be written into our constitution 
and translated into juridical practice. </p>
<p>web-page on recommendations for a national sustainable development strategy in Denmark </p></td>
<td> <br>
<div align="right"><a href="http://www.eco-net.dk/danmarksagenda21/DD/Index_en_ex.html" target="_blank"><img src="../shared/graphics/pages/DD_forside_mini.jpg" width="120" height="170" border="0"></a><br>
</div><br></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top"> 
<p><a href="http://www.eco-net.dk/ENGLISH/manifesto/index.htm" target="_blank"><br>
<span class="listheader">The Kolding Manifesto</span></a></p>
<p class="listheader">Should the simpletons save the world, since the eggheads 
won't ?</p>
<p>web-page on technology, democracy, and sustainability</p></td>
<td> <br>
<div align="right"><a href="http://www.eco-net.dk/ENGLISH/manifesto/index.htm" target="_blank"><img src="http://www.eco-net.dk/ENGLISH/manifesto/images/KlodsHans1.GIF" width="166" height="240" border="0"></a><br>
</div><br></td>
</tr>
<tr> 
<td colspan="2">&nbsp;</td>
</tr>
</table>
<br>
<br>
</div>
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
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="http://web.eco-net.dk/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ECO-NET SITES</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td>
<div align="center"><a href="http://www.sustainabledevelopment.dk"><br>
<img src="http://web.eco-net.dk/shared/graphics/pages/sus.gif" width="130" height="50" border="0"> 
</a><br>
- debate on education<br>
for sustainability<br>
<br>
</div>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>

<tr> 
<td> 
<p align="center"><br>
<a href="http://www.baeredygtigudvikling.nu"><img src="/shared/graphics/layout/79.gif" width="158" height="51" border="0"><br>
</a>Site in danish about sustainable development<br>
<br>
</p>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<p align="center"><br>
Eco-net database<br>
with danish ecological information in danish: <br>
<a href="http://www.eco-info.dk"><img src="/shared/graphics/pages/eco-info-logo_eng.gif" width="151" height="43" border="0"></a></p>
</td>
</tr>
<tr> 
<td> 
<p align="center"><a href="http://www.eco-info.dk/dgs/index.asp">Green Pages</a></p>
<p align="center"><a href="http://www.eco-info.dk/ok/index.asp">Eco-Calender</a></p>
<p align="center"><a href="http://www.eco-info.dk/dgb/index.asp">Green Library</a><br>
<br>
</p>
</td>
</tr>

<tr> 
<td>
<div align="center"></div>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
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
<!--include virtual="shared/log.asp"-->
<%'reg("engindex")%>
