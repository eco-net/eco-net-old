<%@LANGUAGE="VBSCRIPT"%> 
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include virtual="/shared/showimage.asp" -->
<!--#include file="nav.asp"-->
<%
Dim rsPageData__theID
rsPageData__theID = "0"
if (request("id")  <> "") then rsPageData__theID = request("id") 
%>
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT *  FROM eiart_maindata m  WHERE m.id=" + Replace(rsPageData__theID, "'", "''") + ""
rsPageData.Source=replace(rsPageData.Source,"0=0",theWhere)
'rsPageData.Source=replace(rsPageData.Source,"eiart_maindata m",theFrom)

rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
Dim rsImg3__theID
rsImg3__theID = "0"
if (request("id") <> "") then rsImg3__theID = request("id")
%>
<%
set rsImg3 = Server.CreateObject("ADODB.Recordset")
rsImg3.ActiveConnection = MM_ecoinfo_STRING
rsImg3.Source = "SELECT i.id, i.subtext,i.source  FROM eiart_r_img r LEFT JOIN images i ON r.imgid=i.id  WHERE r.artid=" + Replace(rsImg3__theID, "'", "''") + " AND imgsize='3'  ORDER BY sort"
rsImg3.CursorType = 0
rsImg3.CursorLocation = 2
rsImg3.LockType = 3
rsImg3.Open()
rsImg3_numRows = 0
%>
<%
Dim rsImgR__theID
rsImgR__theID = "0"
if (request("id") <> "") then rsImgR__theID = request("id")
%>
<%
set rsImgR = Server.CreateObject("ADODB.Recordset")
rsImgR.ActiveConnection = MM_ecoinfo_STRING
rsImgR.Source = "SELECT i.id, i.subtext,i.source  FROM eiart_r_img r LEFT JOIN images i ON r.imgid=i.id  WHERE artid=" + Replace(rsImgR__theID, "'", "''") + " AND imgsize='R'  ORDER BY sort"
rsImgR.CursorType = 0
rsImgR.CursorLocation = 2
rsImgR.LockType = 3
rsImgR.Open()
rsImgR_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsImg3_numRows = rsImg3_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Repeat2__numRows = -1
Dim Repeat2__index
Repeat2__index = 0
rsImgR_numRows = rsImgR_numRows + Repeat2__numRows
%>
<!--#include file="act_sqlcalc.asp" -->
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
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
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td> 
<p align="center"><img src="/shared/graphics/layout/3Blade.gif" width="100" height="121"></p>
<p align="left">Nyhedsbladet &Oslash;ko-net.<br>
- udkommer 6 gange &aring;rligt<br>
</p>
<p></p>
<p>Henvendelse rettes til <a href="mailto:eco-net@eco-net.dk">redaktionen</a> 
<br>
Stof og indl&aelig;g modtages l&oslash;bende. </p>
<p class="sidebarHeader"><a href="/nyhedsblad/kolofon.asp">L&aelig;s Kolofonen</a></p>
<p align="center">&nbsp;</p>
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
<td><a href="index.asp">Tilbage til oversigt</a></td>
<td>
<div align="right"><%=navHTML()%></div>
</td>
</tr>
<tr> 
<td colspan="2"> <span class="contentHeader1"><br>
<%=(rsPageData.Fields.Item("title").Value)%></span> 
<%IF rsPageData.Fields.Item("subtitle").Value<>"" THEN response.write "<br><span class='listheader'> " & rsPageData.Fields.Item("subtitle").Value & "</span>" %>
<p><%=(rsPageData.Fields.Item("descr").Value)%></p>
<p align="center">&nbsp; 
<% If Not rsImg3.EOF Or Not rsImg3.BOF Then %>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rsImg3.EOF)) 
%>
<img src="<%=getImage(rsImg3.Fields.Item("id").Value,"3")%>"> 
<br>
<%=(rsImg3.Fields.Item("subtext").Value)%><br>
<i><%=(rsImg3.Fields.Item("source").Value)%></i><br>
<br>
<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rsImg3.MoveNext()
Wend
%>
<% End If ' end Not rsImg3.EOF Or NOT rsImg3.BOF %>
</p>
</td>
</tr>
</table>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;FAKTA</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="contentHeader2">&nbsp;</td>
</tr>

<tr> 
<td> 
<p> 
<% if rsPageData.Fields.Item("author").Value <> "" then %>
<br>
<span class="faktaboksheader">Forfatter</span><br>
<%=(rsPageData.Fields.Item("author").Value)%> <br>
<% end if %>
<% if rsPageData.Fields.Item("lang").Value <> "" then %>
<br>
<span class="faktaboksheader">Sprog</span><br>
<%=(rsPageData.Fields.Item("lang").Value)%> <br>
<% end if %>
<br>
<span class="faktaboksheader">Udgiver</span><br>
<%=replace(rsPageData.Fields.Item("editor").Value,chr(13),"<br>")%> 
<% if rsPageData.Fields.Item("authordate").Value <> "" then %>
<br><br>
<span class="faktaboksheader">Udgivelses&aring;r</span><br>
<%=(rsPageData.Fields.Item("authordate").Value)%> <br>
<% end if %>
<% if rsPageData.Fields.Item("editormail").Value <> "" then %>
<br>
<span class="faktaboksheader">Udgivers mail</span><br>
<a href="mailto:<%=(rsPageData.Fields.Item("editormail").Value)%>"><%=(rsPageData.Fields.Item("editormail").Value)%></a> <br>
<% end if %>
<% if rsPageData.Fields.Item("editorwww").Value <> "" then %>
<br>
<span class="faktaboksheader">Udgivers WWW</span><br>
<a href="http://<%=(rsPageData.Fields.Item("editorwww").Value)%>" title="Åbner i et nyt vindue" target="_blank"><%=(rsPageData.Fields.Item("editorwww").Value)%></a> <br>
<% end if %>
<% if rsPageData.Fields.Item("webaddress").Value <> "" then %>
<br>
<span class="faktaboksheader">Publikationen kan ses p&aring;:</span><br>
<a href="http://<%=(rsPageData.Fields.Item("webaddress").Value)%>" title="Åbner i et nyt vindue" target="_blank"><%=(rsPageData.Fields.Item("webaddress").Value)%></a></p>
<p> <br>
<% end if %>
</p>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
<td><p>&nbsp;</p><% If Not rsImgR.EOF Or Not rsImgR.BOF Then %>
<% 
While ((Repeat2__numRows <> 0) AND (NOT rsImgR.EOF)) 
%>
<p align="center"> <img src="<%=getImage(rsImgR.Fields.Item("id").Value,"R")%>"> 
<br>
<%=(rsImgR.Fields.Item("subtext").Value)%><br>
<i><%=(rsImgR.Fields.Item("source").Value)%></i> <br>
<br>
<br>
</p>
<% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  rsImgR.MoveNext()
Wend
%>
<% End If ' end Not rsImgR.EOF Or NOT rsImgR.BOF %></td>
</tr>
</table>
</td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td> 
<p align="center">&nbsp; </p>
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
rsImg3.Close()
%>
<%
rsImgR.Close()
%>
