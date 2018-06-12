<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include file="nav.asp"-->
<%
Dim rsPageData__theID
rsPageData__theID = "0"
if (request("id") <> "") then rsPageData__theID = request("id")
%>
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT *  FROM eiart_maindata  WHERE id=" + Replace(rsPageData__theID, "'", "''") + ""
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
rsImg3.Source = "SELECT i.id, i.subtext,i.source  FROM eiart_r_img r LEFT JOIN images i ON r.imgid=i.id  WHERE artid=" + Replace(rsImg3__theID, "'", "''") + " AND imgsize='3'  ORDER BY sort"
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
<%
curtab=2
%>
<html><!-- #BeginTemplate "/Templates/2cols_eng.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;ESSAYS</td>
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
<p><a href="/shared/print_art.asp?id=<%=request("id")%>" target="_blank">Print 
the article</a></p>
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
<td height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --><br>
<table width="100%" border="0" cellspacing="5" cellpadding="0" background="/shared/graphics/spacer.gif" name="detailContents">
<tr> 
<td colspan="2" class="contentHeader1" align="left"><%=(rsPageData.Fields.Item("title").Value)%>&nbsp;&nbsp;&nbsp; 
<%IF rsPageData.Fields.Item("subtitle").Value<>"" THEN response.write "<br><span class='listheader'> " & rsPageData.Fields.Item("subtitle").Value & "</span>"%>
<%IF LEN(request.cookies("eiuserid"))>0 THEN%>
<a href="http://insider.oko-info.dk/art/edit.asp?id=<%=(rsPageData.Fields.Item("id").Value)%>" class="sitetag" target="_blank">Rediger 
kortet</a> 
<%END IF%>
</td>
</tr>
<tr> 
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="1" height="5"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="5" cellpadding="0">
<tr> 
<td valign="top"> 
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr> 
<td class="contentHeader2">&nbsp;</td>
</tr>
<tr> 
<td><span class="contentHeader2"> </span><a href="/debate/index.asp">back to 
list </a></td>
<td> 
<div align="right"><%=navHTML()%></div>
</td>
</tr>
<tr> 
<td valign="top" width="95%" colspan="2"> 
<p>&nbsp;</p>
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
<p>&nbsp;</p>
</td>
</tr>
</table>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td valign="top"> 
<table border="0" cellspacing="0" cellpadding="0" width="150">
<tr> 
<td class="contentHeader2">Facts</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<p> 
<% if rsPageData.Fields.Item("author").Value <> "" then %>
<br>
<span class="faktaboksheader">Writer</span><br>
<%=(rsPageData.Fields.Item("author").Value)%> <br>
<% end if %>
<% if rsPageData.Fields.Item("lang").Value <> "" then %>
<br>
<span class="faktaboksheader">Language</span><br>
<%=(rsPageData.Fields.Item("lang").Value)%> <br>
<% end if %>
<br>
<span class="faktaboksheader">Editor</span><br>
<%=replace(rsPageData.Fields.Item("editor").Value,chr(13),"<br>")%> <br>
<% if rsPageData.Fields.Item("authordate").Value <> "" then %>
<br>
<span class="listheader">Written</span> <br>
<%=(rsPageData.Fields.Item("authordate").Value)%> <br>
<% end if %>
<% if rsPageData.Fields.Item("editormail").Value <> "" then %>
<br>
<span class="faktaboksheader">Editors mail</span><br>
<a href="mailto:<%=(rsPageData.Fields.Item("editormail").Value)%>"><%=(rsPageData.Fields.Item("editormail").Value)%></a> <br>
<% end if %>
<% if rsPageData.Fields.Item("editorwww").Value <> "" then %>
<br>
<span class="faktaboksheader">Editors www</span><br>
<a href="http://<%=(rsPageData.Fields.Item("editorwww").Value)%>" title="Åbner i et nyt vindue" target="_blank"><%=(rsPageData.Fields.Item("editorwww").Value)%></a> <br>
<% end if %>
<% if rsPageData.Fields.Item("webaddress").Value <> "" then %>
<br>
<span class="faktaboksheader">Article www</span><br>
<a href="http://<%=(rsPageData.Fields.Item("webaddress").Value)%>" title="Åbner i et nyt vindue" target="_blank"><%=(rsPageData.Fields.Item("webaddress").Value)%></a> <br>
<% end if %>
</p>
<% If Not rsImgR.EOF Or Not rsImgR.BOF Then %>
<p align="center"> 
<% 
While ((Repeat2__numRows <> 0) AND (NOT rsImgR.EOF)) 
%>
<img src="<%=getImage(rsImgR.Fields.Item("id").Value,"R")%>"> 
<br>
<%=(rsImgR.Fields.Item("subtext").Value)%><br>
<i><%=(rsImgR.Fields.Item("source").Value)%></i> <br>
<br>
<% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  rsImgR.MoveNext()
Wend
%>
<br>
</p>
<% End If ' end Not rsImgR.EOF Or NOT rsImgR.BOF %>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools_eng.asp" -->
</td>
</tr>
</table>
<br>
<!-- #BeginEditable "rightbar" --> <!-- #EndEditable --></td>
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
<%
rsImg3.Close()
%>
<%
rsImgR.Close()
%>
