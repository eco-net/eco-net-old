<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include file="nav.asp" -->
<%
init()
%>
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT m.id, m.title, m.subtitle, m.shortdescr, m.lang, m.author  FROM eiart_maindata m LEFT JOIN eiart_r_org o ON m.id=o.artid  WHERE lang='English' AND o.orgid=16317"
rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsPageData_numRows = rsPageData_numRows + Repeat1__numRows
%>
<%
curtab=2
%>
<html><!-- #BeginTemplate "/Templates/3cols_eng.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Eco-net - debate material about ecological education and practice</title>
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
'-- tab5 -- OM NETV�RKET

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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ESSAYS</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td>
<p><img src="/shared/graphics/spacer.gif" width="3" height="8"></p>
<p class="sidebarHeader">These articles in english authored by eco-net <br>
are picked from the <a href="http://www.eco-info.dk/art/list.asp"><br>
eco-info database </a></p>
</td>
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
<td valign="top"> <!-- #BeginEditable "maincontent" --><br>
<br>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rsPageData.EOF)) 
%>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><% count(rsPageData.Fields.Item("id").Value) %>
<a href="detail.asp?id=<%=(rsPageData.Fields.Item("id").Value)%>" class="listheader"><br>
<%=(rsPageData.Fields.Item("title").Value)%></a><br>
<%if (rsPageData.Fields.Item("subtitle").Value)<>"" then %>
<i><%=(rsPageData.Fields.Item("subtitle").Value)%><br>
<% end if %>
<%if (rsPageData.Fields.Item("author").Value)<>"" then%>
</i><%=(rsPageData.Fields.Item("author").Value)%><br>
<% end if %>
<br>
<%=(rsPageData.Fields.Item("shortdescr").Value)%> <br>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rsPageData.MoveNext()
Wend
%>
<br>
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
<%
rsPageData.Close()
%>

