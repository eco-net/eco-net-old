<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include file="nav.asp"-->
<%
function picasaImgSize(imgsrc,w)
i=1
imgname=Right(imgsrc,i) 
while InStr(imgname,"/")=0 
i=i+1
imgname=Right(imgsrc,i) 
wend
imgsrc=Left(imgsrc,Len(imgsrc)-i)
if Right(imgsrc,5)="/s144" then 'hvis thumbnail er kopieret
imgsrc=Left(imgsrc,Len(imgsrc)-5)
end if
imgsrc=imgsrc & w & imgname
picasaImgSize=imgsrc
end function

Dim rsPageData__theID
rsPageData__theID = "0"
if (request("id") <> "") then rsPageData__theID = request("id")
%>
<!-- include virtual="log/econet/newsnr.inc"-->
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT *  FROM bu_Artikel INNER JOIN bu_Artikel_site ON bu_Artikel.Artikel_ID=bu_Artikel_site.artikel_id  WHERE bu_Artikel.Artikel_ID=" + Replace(rsPageData__theID, "'", "''") + ";  "
rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
set rsBlad = Server.CreateObject("ADODB.Recordset")
rsBlad.ActiveConnection = MM_ecoinfo_STRING
rsBlad.Source = "SELECT *  FROM enblad_maindata  WHERE chosen=1"
rsBlad.CursorType = 0
rsBlad.CursorLocation = 2
rsBlad.LockType = 3
rsBlad.Open()
rsBlad_numRows = 0
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
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
<!-- #BeginEditable "menu" -->
<!--#include virtual="/shared/showimage.asp" --><!-- #BeginLibraryItem "/Library/menu.lbi" -->
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;NYESTE BLAD</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<div align="center"><br>
<a href="/nyhedsblad/index.asp"><img src="<%=getImage(rsBlad("img_id"),"R")%>" border="0"></a></div>
</td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<div align="left"><%=(rsBlad.Fields.Item("dato").Value)%>, nr. <%=(rsBlad.Fields.Item("nr").Value)%></div>
</td>
</tr>
<tr> 
<td valign="top" colspan="2" class="listheader"><%=(rsBlad.Fields.Item("title").Value)%></td>
</tr>
<tr> 
<td valign="top" colspan="2"><a href="/nyhedsblad/index.asp"><%=(rsBlad.Fields.Item("descr").Value)%></a></td>
</tr>
</table>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Aring;RSM&Oslash;DE 2010 </td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<div align="center"><span class="listheader" align="center"><br></span>
  <TABLE border="0" cellSpacing="0" cellPadding="0" width="90%" align="center">
    <TBODY>
      <TR>
        <TD vAlign="top"><DIV align="center">
            <p><STRONG>F&AElig;LLESSKAB OG ANSVAR<BR>
              &ndash; for en b&aelig;redygtig fremtid, i   dag!</STRONG><BR>
              <BR>
              &Oslash;KO-NETs &aring;rsm&oslash;de 2010<BR>
              d. 20.-21.   marts i Ravnen, <BR>
              Friland v. Feldballe p&aring; Djursland <BR>
              &ndash; med   generalforsamling<BR>
              og seminar om uddannelse, netv&aelig;rk og handling for   b&aelig;redygtig omstilling, rundvisning p&aring; Friland v. Steen M&oslash;ller, &oslash;kologisk   festmiddag og klimaalarm-koncert med MIKAEL K (Klondyke) SOLO. <BR>
              <BR>
              <IMG src="/home/graphics/lilleklokke.jpg" width="82" height="80"><BR>
              <BR>
              <A href="http://web.eco-net.dk/seminar/detail.asp?id=14498">L&aelig;s mere &ndash; hent   programmet som pdf</A><BR>
            </p>
        </DIV></TD>
      </TR>
    </TBODY>
  </TABLE>
  <p align="center"><br>
    <br>
</p>
  </div>
</td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NYT</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
</td>
</tr>
</table>
<br>
<table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><a href="index.asp">Tilbage til oversigt</a></td>
<td> 
<div align="right"><%=navHTML()%></div>
</td>
<td>&nbsp;</td>
</tr>
</table>
<br>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td valign="top"> <i><%=DateValue(rsPageData.Fields.Item("create_date").Value)%></i><span class="contentHeader2"><br>
<%=(rsPageData.Fields.Item("Header").Value)%></span><br>
<br>
<br>
<%=replace(rsPageData.Fields.Item("Content").Value,chr(13),"<br>")%> <br><br>
<div align="center">
  <% if Len(rsPageData.Fields.Item("imagefilename2").Value)>0 then %>
  <br>
    <img src="<%=picasaImgSize(rsPageData("imagefilename2"),"/s400")%>" width=360/><br>
    <%=rsPageData("img_text2")%><br>
    <% end if %>
</div>
</td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><br>
</td>
</tr>
</table>
<p>&nbsp;</p>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;L&AElig;S MERE</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td width="160" valign="top"> 
<div align="center"> 
<p>&nbsp;</p>
<p> 
<% if (rsPageData.Fields.Item("img_id").Value)>0 then %>
<img src="<%=getImage(rsPageData.Fields.Item("img_id").Value,"R")%>"> 
<% end if %>
<% if Len(rsPageData.Fields.Item("imagefilename1").Value)>0 then %><br>
<img src="<%=picasaImgSize(rsPageData("imagefilename1"),"/s144")%>" /><br>
<%=rsPageData("img_text")%><br>
<% end if %>
<br>
</p>
</div></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td width="160" valign="top"> 
<%if(rsPageData.Fields.Item("FileName").Value)<>"" then %>
<br>
<p> <a href="<%=(rsPageData.Fields.Item("FileName").Value)%>" title="<%=(rsPageData.Fields.Item("FileName").Value)%>" <%if rsPageData.Fields.Item("newwin").Value =0 then response.write("target='_blank'")%>> 
<% if rsPageData.Fields.Item("linktext").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<%if(rsPageData.Fields.Item("FileName2").Value)<>"" then %>
<p> <a href="<%=(rsPageData.Fields.Item("FileName2").Value)%>" title="<%=(rsPageData.Fields.Item("FileName2").Value)%>"> 
<% if rsPageData.Fields.Item("linktext2").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext2").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<%if(rsPageData.Fields.Item("FileName3").Value)<>"" then %>
<p> <a href="<%=(rsPageData.Fields.Item("FileName3").Value)%>" title="<%=(rsPageData.Fields.Item("FileName3").Value)%>"> 
<% if rsPageData.Fields.Item("linktext3").Value<>"" then %>
<%=(rsPageData.Fields.Item("linktext3").Value)%> 
<%else %>
L&aelig;s mere.. 
<%end if %>
</a> </p>
<%end if %>
<br></td>
</tr>
</table>
<table width="100%" border="0" cellpadding="5">
  <tr>
    <td>
	<%if rsPageData("miljoinfo")>0 then%>
	<hr>
Denne nyhed er fra MILJØ INFO<br>
MILJØ INFO er en elektronisk informationsservice til alle, der beskæftiger sig professionelt med miljø og arbejdsmiljø.<br>
Få mere info på: <a href="http://www.miljoinfo.dk" target="_blank">www.miljoinfo.dk</a><br>
Øko-net bringer dagligt en til to nyheder fra MILJØ INFO.
<hr>
<% end if %></td>
  </tr>
</table>
<p>&nbsp;</p>
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
rsBlad.Close()
%>
