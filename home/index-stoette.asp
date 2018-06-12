<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!-- include virtual="log/econet/newsnr.inc"-->
<!--#include file="nav.asp" -->
<!--include virtual="/shared/stat.asp" -->
<%
init()
%>
<%
set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT top 5  *  FROM bu_Artikel a LEFT JOIN bu_Artikel_site s ON a.Artikel_ID=s.artikel_id  WHERE s.econetsite=1  ORDER BY create_date desc"
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
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsPageData_numRows = rsPageData_numRows + Repeat1__numRows
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>&Oslash;ko-net - netv&aelig;rket om &oslash;kologi, milj&oslash; og b&aelig;redygtighed</title>
<style type="text/css">
<!--
-->

p.leftmargin {margin-left: 10px; margin-right: 10px}


</style>
<style type="text/css">
<!--
.style1 {
	color: #006600;
	font-weight: bold;
}
-->
</style>
<style type="text/css">
<!--
.style2 {color: #009900}
-->
</style>
<style type="text/css">
<!--
.style3 {color: #000000}
-->
</style>
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

<table width="100%"  border="0" align="center">
  <tr>
    <td height="28" class="sidebarHeader"><div align="center">
      <p><a href="sitemap.asp"> Sitemap<img src="/shared/graphics/layout/folder.gif" alt="Alle &Oslash;ko-net's sites" width="15" height="15" hspace="5" border="0"></a></p>
      <p><a href="gogalskab.asp"></a><br>
        </p>
    </div></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="left" class="sidebarHeader">&nbsp;&nbsp;DIN ST&Oslash;TTE </td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<p class="leftmargin"><a href="giv_bidrag.asp">Giv et bidrag</a></p>
<p class="leftmargin"><a href="bliv_medlem.asp">Bliv medlem </a></p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="left" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SERVICES</td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>

<p class="leftmargin"><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');">Modtag 
nyhedsmail</a></p>
<p class="leftmargin"><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');">Bestil gratis eksempler på kampagnemateriale fra Øko-net</a></p>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="center" class="sidebarHeader">LOKALAFDELINGER</td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top"><p align="center">&Oslash;ko-net har som noget nyt stiftet lokalafdelinger<br> 
      <a href="/om/about_6.asp">L&aelig;s mere</a><br>
      <br>
    </p>        </td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="left" valign="middle" class="sidebarHeader"><div align="center" class="style1 style2">
      <div align="center">&Aring;RSM&Oslash;DE 2007 </div>
    </div></td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top"><p align="center"><span class="leftmargin"><img src="/shared/graphics/vanityfair.jpg"></span><br>
        <strong>Den ny gr&oslash;nne revolution</strong></p>
        <p align="center"><strong>&Oslash;ko-net&rsquo;s &aring;rsm&oslash;de 2007<br>
&ndash; med seminar og musik-caf&eacute;</strong></p>
      <p align="center"><strong>L&oslash;rdag den 17. marts &ndash; heldagsm&oslash;de<br>
  p&aring; H&oslash;jskolehjemmet i Ollerup, Sydfyn</strong></p>
      <p align="center"><strong><a href="/shared/graphics/2007_program.pdf" target="_new">Hent programmet her</a></strong></p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;DET GODE PROGRAM </td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td valign="top"><p><a href="http://www.engodsag.dk/component/option,com_orgshop/task,vieworganisation/cid,73/Itemid,75/" target="_new"><img src="graphics/bannergodeprogram.gif" width="147" height="214" border="0"></a></p>
  <p align="center" class="leftmargin"><a href="http://www.engodsag.dk/component/option,com_orgshop/task,vieworganisation/cid,73/Itemid,75/" target="_new">St&oslash;t &Oslash;ko-net gratis.<br>
  </a></p>
  <p align="center" class="leftmargin">&nbsp;</p></td>
</tr>
</table>
<div align="center"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" align="left" class="sidebarHeader">&nbsp;&nbsp;SEKRETARIAT</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<div align="center"> 
<p><a href="/om/about_1.asp"><br>
<img src="<%=getImage(254,"R")%>" border="0" alt="Tag forbi og se vores store tidsskrifts- og bogsamling om det gr&oslash;nne"></a><br>
&Oslash;ko-net's sekretariat ligger i Ollerup p&aring; Sydfyn</p>
<p>&nbsp;</p>
</div></td>
</tr>
</table>
<p><a href="gogalskab.asp">test</a></p>
</div>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
<!--vindue-->
<!--include virtual="log/econet/inc_leader.txt"-->
<!--Bæreklang billedskift-->
<!--#include file="img_change2.asp" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;SIDSTE NYT FRA &Oslash;KO-NET</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table></td>
</tr>
</table>
<br>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rsPageData.EOF)) 
%>
<table width="98%" border="0" cellspacing="5" cellpadding="0" align="center">
<tr> 
<td valign="top"> 
<% count(rsPageData.Fields.Item("Artikel_ID").Value) %>
<i><%=DatePart("d",rsPageData("create_date"))&"."&DatePart("m",rsPageData("create_date"))&"."&DatePart("yyyy",rsPageData("create_date"))%></i> <span class="contentHeader2"><br>
<a href="detail.asp?id=<%=rsPageData("Artikel_ID")%>"><%=(rsPageData.Fields.Item("Header").Value)%></a></span><br>
<%=(rsPageData.Fields.Item("ShortDescription").Value)%><br></td>
<td valign="top"> 
<div align="right"> 
<% if (rsPageData.Fields.Item("img_id").Value)>0 then %>
<a href="detail.asp?id=<%=rsPageData("Artikel_ID")%>"><img src="<%=getImage(rsPageData.Fields.Item("img_id").Value,"th")%>" border="0"></a> 
<% end if %>
</div></td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif" colspan="2"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rsPageData.MoveNext()
Wend
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<p align="center"><a href="tidl_nyt.asp">Tidligere nyheder</a></p></td>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SITES</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<p align="center"><br>
&Oslash;ko-net's databaser <br>
finder du her: <br>
<a href="http://www.eco-info.dk" target="_top"><img src="/shared/graphics/pages/eco-info-logo.gif" width="151" height="85" border="0"></a></p></td>
</tr>
<tr> 
<td height="133"> 
<p align="center"><a href="http://www.eco-info.dk/dgs/index.asp" target="_top">De 
Gr&oslash;nne Sider</a></p>
<p align="center"><a href="http://www.eco-info.dk/ok/index.asp" target="_top">&Oslash;ko-Kalenderen</a></p>
<p align="center"><a href="http://www.eco-info.dk/dgb/index.asp" target="_top">Det 
Gr&oslash;nne Bibliotek</a></p>
<p align="center"><a href="http://www.eco-info.dk/opsl/index.asp" target="_top">Opslagstavlen</a><br>
<br>
</p></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
  <td height="306" align="center" valign="top"><br><p><a href="http://www.ubu10.dk" target="_new"><img src="graphics/UBU_plakat_120.jpg" alt="B&aelig;redygtig Udvikling" width="120" height="168" border="0"></a></p>
    <p>&Oslash;ko-nets portal for uddannelse for B&aelig;redygtig Udvikling.</p>
    <p><a href="http://www.ubu10.dk" target="_new"><strong>www.ubu10.dk</strong></a></p></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
  <td height="306"><div align="center">
    <p><a href="http://www.balanceakten.dk" target="_new"><img src="graphics/balanceakten.jpg" width="133" height="189" border="0"></a></p>
    <p>Nordisk samarbejde om Uddannelse for B&aelig;redygtig Udvikling<br>
      <a href="http://www.balanceakten.dk"><strong>www.balanceakten.dk</strong></a></p>
  </div></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td height="291"> 
<p align="center"><br>
  <a href="http://www.cdbu.dk" target="_new"><img src="graphics/1.jpg" width="158" height="133" border="0"></a></p>
<p align="center"><span class="contentHeader2"><span class="homeHeader">ROCK MED! <br>
FOR MINDRE KLODE-SLITAGE og 
FOR ST&Oslash;RRE GLOBAL ANSVARLIGHED. <br>
p&aring;:</span><br>
<br>
<a href="http://www.cdbu.dk" target="_blank">www.cdbu.dk</a></span><br>
    <br>
</p></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<div align="center"><a href="http://www.sustainabledevelopment.dk" target="_top"><br>
<img src="/shared/graphics/pages/sus.gif" width="130" height="50" border="0"> 
</a><br>
debate on education for sustainability<br>
<br>
</div></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<div align="center"><br>
<a href="http://www.03-03-03.dk/" target="_top"></a><a href="http://www.baeredygtigudvikling.nu" target="_top"><img src="/shared/graphics/layout/79.gif" width="158" height="51" border="0"></a><br>
Springbr&aelig;ttet til alt, der har med b&aelig;redygtig udvikling at g&oslash;re<br>
<br>
<br>
</div></td>
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
rsBlad.Close()
%>
<!--#include virtual="shared/log.asp"-->
<%reg("homeindex")%>