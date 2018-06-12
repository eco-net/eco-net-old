<%@LANGUAGE="VBSCRIPT"%> 
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include virtual="/shared/showimage.asp" -->
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT m.aargang,m.nr,m.dato,m.pdf,k.title,a.id,a.linktekst,a.art_id,a.orden,m.chosen,m.img_id  FROM (enblad_maindata m INNER JOIN enblad_kapitel k ON m.id = k.blad_id) INNER JOIN enblad_kap_r_art a ON k.id = a.kap_id  WHERE m.chosen=1  ORDER BY k.sort"
if request("id")<>"" then 
rsPageData.Source=replace(rsPageData.Source,"WHERE m.chosen=1","WHERE m.id=" & request("id"))
end if
rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
set rsBlade = Server.CreateObject("ADODB.Recordset")
rsBlade.ActiveConnection = MM_ecoinfo_STRING
rsBlade.Source = "SELECT id, nr, aargang, dato  FROM enblad_maindata  ORDER BY id desc"
rsBlade.CursorType = 0
rsBlade.CursorLocation = 2
rsBlade.LockType = 3
rsBlade.Open()
rsBlade_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsPageData_numRows = rsPageData_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Repeat2__numRows = -1
Dim Repeat2__index
Repeat2__index = 0
rsBlade_numRows = rsBlade_numRows + Repeat2__numRows
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - Nyhedsbladet ØKO-NET om økologi, miljø og bæredygtighed</title>
<% curtab=2 %>
<!-- #EndEditable --> 
<script src="/shared/common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/shared/styles.css" type="text/css">
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="7" marginwidth="0" marginheight="7" onLoad="MM_preloadImages('/shared/graphics/pagetools/print_txt.gif','/shared/graphics/pagetools/bookmark_txt.gif','/shared/graphics/pagetools/mail_txt.gif')">
<table width="752" border="0" cellspacing="0" cellpadding="0" align="center" name="Pagetable">
<tr> 
<td background="/shared/graphics/layout/dots_vert.gif" width="1" valign="top"><img src="/shared/graphics/layout/cover_dots.gif" width="1" height="18"></td>
<td width="750" valign="top"><!-- #BeginLibraryItem "/Library/header.lbi" --><table width="750" border="0" cellspacing="0" cellpadding="0" name="Header">
<tr> 
<td valign="top" rowspan="3"><img src="/shared/graphics/logo4.gif" width="569" height="31"> 
<table width="569" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td width="8"><br></td>
<td class="sitetag"> Netv&aelig;rket for &oslash;kologisk folkeoplysning og praksis</td>
<td width="8"><br></td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td class="sitetag">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
</table>
</td>
<td valign="top" width="1"><br></td>
<td height="17" align="right" colspan="2"><a href="/home/index.asp">Forside</a>&nbsp;|&nbsp;<a href="/om/about_3.asp">Kontakt 
os</a></td>
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
<!-- #BeginEditable "menu" --><!-- #BeginLibraryItem "/Library/menu.lbi" -->
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Menu">
<tr>
<%
'-- tab1 -- NYHEDER
response.write "<td><img src=""/shared/graphics/menu/stretch.gif"" width=""17"" height=""22"">"
'IF curtab=1 THEN
'	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
'		"<img src=""/shared/graphics/menu/aktuelt_on.gif"" width=""57"" height=""22"">"
'ELSE
'	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">" &_
'		"<a href=""/nyheder/index.asp""><img src=""/shared/graphics/menu/aktuelt_off.gif"" width=""57"" height=""22"" border=""0""></a>"
'END IF
'-- tab2 -- NYHEDSBLAD
IF curtab=2 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/nyhedsblad/index.asp""><img src=""/shared/graphics/menu/blad_on.gif"" width=""150"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=1 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/nyhedsblad/index.asp""><img src=""/shared/graphics/menu/blad_off.gif"" width=""150"" height=""22"" border=""0""></a>"
END IF
'-- tab3 -- UDGIVELSER
IF curtab=3 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/udgivelser/index.asp""><img src=""/shared/graphics/menu/udgivelser_on.gif"" width=""85"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=2 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/udgivelser/index.asp""><img src=""/shared/graphics/menu/udgivelser_off.gif"" width=""85"" height=""22"" border=""0""></a>"
END IF
'-- tab4 -- SEMINARER OG MØDER
IF curtab=4 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/seminar/index.asp""><img src=""/shared/graphics/menu/seminar_on.gif"" width=""130"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=3 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/seminar/index.asp""><img src=""/shared/graphics/menu/seminar_off.gif"" width=""130"" height=""22"" border=""0""></a>"
END IF
'-- tab5 -- OM NETVÆRKET

IF curtab=5 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/om/about_1.asp""><img src=""/shared/graphics/menu/om_on.gif"" width=""108"" height=""22"" border=""0""></a>"
ELSE
	IF curtab=4 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/om/about_1.asp""><img src=""/shared/graphics/menu/om_off.gif"" width=""108"" height=""22"" border=""0""></a>"
END IF

'-- tab6 -- ENGLISH
IF curtab=6 THEN
	response.write "<img src=""/shared/graphics/menu/separator_left.gif"" width=""29"" height=""22"">" &_
		"<a href=""/english/index.asp""><img src=""/shared/graphics/menu/english_on.gif"" width=""71"" height=""22"" border=""0""></a>" &_
		"<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">" 
	ELSE
	IF curtab=5 THEN
		response.write "<img src=""/shared/graphics/menu/separator_right.gif"" width=""29"" height=""22"">"
	ELSE
		response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
	END IF
	response.write "<a href=""/english/index.asp""><img src=""/shared/graphics/menu/english_off.gif"" width=""71"" height=""22"" border=""0""></a>"
	response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
END IF

'response.write "<img src=""/shared/graphics/menu/separator.gif"" width=""29"" height=""22"">"
response.write "<img src=""/shared/graphics/menu/stretch.gif"" width=""17"" height=""22""></td></tr>"
%>
<%IF curtab>0 THEN%>
<tr><td class="menuBar">
<%
SET fs = CreateObject("Scripting.FileSystemObject")
Set ts=fs.OpenTextFile(Server.mapPath("inc_submenu.txt"))
response.write ts.ReadAll()
ts=""
fs=""
%>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;NYHEDSBLADET</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td>&nbsp;</td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td> 
<p align="center"><img src="/shared/graphics/layout/3Blade_ny.jpg" width="100" height="129"></p>
<p align="left">Nyhedsbladet &Oslash;ko-net.<br>
- udkommer 4-6 gange &aring;rligt<br>
</p>
<p></p>
<p>Henvendelse rettes til <a href="mailto:eco-net@eco-net.dk">redaktionen</a>.<br>
<br>
Stof og indl&aelig;g modtages l&oslash;bende. </p>
<p class="sidebarHeader"><a href="/nyhedsblad/kolofon.asp">L&aelig;s Kolofonen</a><br>
</p>
</td>
</tr>
</table>
</td>
</tr>
</table>
<br>
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ABONNEMENT</td>
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
<p align="center"><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');"> 
Bestil gratis pr&oslash;ve-nr. eller abonnement p&aring; &Oslash;ko-net.</a></p>
</td>
</tr>
</table>
<br>
</td>
</tr>
</table>
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ANNONCERING</td>
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
<p align="center"><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');"> 
</a>Du kan annoncere i &Oslash;ko-net bladet. <br>
<a href="/nyhedsblad/annoncering.asp">Se priser og detaljer.</a></p>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td valign="top"><img src="/shared/graphics/layout/bladlogo.gif" width="388" height="59"></td>
</tr>
</table>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top" width="50%"> 
<p><span class="contentHeader1"> 
<% if rsPageData("chosen")=1 then %>
Nyeste Nummer 
<%else%>
Nummer <%=rsPageData("nr")%> 
<%end if %>
<br>
</span><span class="contentHeader2"><br>
</span>Nyhedsbladet &Oslash;ko-net udgives i b&aring;de en trykt udgave og p&aring; 
nettet. Her kan du hente en pdf-udgave af bladet.<br>
I indholdsoversigten herunder kan du danne dig et hurtigt overblik over bladets 
indhold. Er overskrifen et link, kan du l&aelig;se artiklen i Artikeldatabasen, 
der er en del af &Oslash;ko-info portalen. Alle artikler i Artikeldatabasen er 
udskriftsvenlige.<br>
God l&aelig;se lyst!</p>
<p><img src="/shared/graphics/layout/downloadIcon.gif" width="16" height="15"> 
<a href="/nyhedsblad/pdf/<%=(rsPageData.Fields.Item("pdf").Value)%>">Download 
PDF-udgave</a><br>
<br>
<a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank">Hent 
Acrobat Reader</a></p>
</td>
<td valign="top" width="50%"> 
<p align="center"><br>
<img src="http://insider.eco-info.dk/admin/ei/billedbasen/rightcol/blad57-58.jpg" width="160" height="225" border="0"></p>
<p align="right"><a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank"><br>
</a></p>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="listheader"><br>
&Aring;rgang&nbsp;<%=(rsPageData.Fields.Item("aargang").Value)%></td>
<td class="listheader"> 
<div align="center"><br>
<%=(rsPageData.Fields.Item("dato").Value)%></div>
</td>
<td class="listheader"> 
<div align="right"><br>
Nr. <%=(rsPageData.Fields.Item("nr").Value)%></div>
</td>
</tr>
<tr>
<td class="listheader">&nbsp;</td>
<td class="listheader">&nbsp;</td>
<td class="listheader">&nbsp;</td>
</tr>
</table>
<% If Not rsPageData.EOF Or Not rsPageData.BOF Then 
title=""
%>
<table width="100%">
<% 
While ((Repeat1__numRows <> 0) AND (NOT rsPageData.EOF)) 
%>
<tr> 
<td>
<%if(rsPageData.Fields.Item("title").Value)<>title then %>
<table width="95%" align="center">
<tr> 
<td> <span class="listheader"><%=(rsPageData.Fields.Item("title").Value)%></span><br>
</td>
</tr>
</table>
<%end if %>
<table width="90%" align="center">
<tr>
<td>
<%if  CInt("0" & rsPageData.Fields.Item("art_id").Value)>0 then %>
<a href="detail.asp?id=<%=rsPageData.Fields.Item("art_id").Value%>"><%=(rsPageData.Fields.Item("linktekst").Value)%></a> 
<%else %>
<%=(rsPageData.Fields.Item("linktekst").Value)%> 
<%end if %>
</td>
</tr>
</table>
</td>
</tr>
<%title=rsPageData.Fields.Item("title").Value%>
<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rsPageData.MoveNext()
Wend
%>
</table>
<% End If ' end Not rsPageData.EOF Or NOT rsPageData.BOF %>
</td>
</tr>
</table>
<p class="contentHeader2"><br>
</p>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp" -->
</td>
</tr>
</table>
</td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --> 
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;BLADOVERSIGT</td>
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
<tr> 
<td> 
<% 
While ((Repeat2__numRows <> 0) AND (NOT rsBlade.EOF)) 
%>
<a href="index.asp?id=<%=(rsBlade.Fields.Item("id").Value)%>">Nr. 
<%=(rsBlade.Fields.Item("nr").Value)%> - <%=(rsBlade.Fields.Item("dato").Value)%></a><BR>
<% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  rsBlade.MoveNext()
Wend
%>
<!--#include file="oldies.asp" -->
</td>
</tr>
</table>
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
<!--#include virtual="/shared/footer.asp" -->
</td>
</tr>
</table>
<!-- START HEADER -->
</body>
<!-- #EndTemplate --></html>
<%
rsPageData.Close()
%>
<%
rsBlade.Close()
%>
<!--#include virtual="shared/log.asp"-->
<%reg("bladindex")%>
