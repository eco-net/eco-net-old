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
<td width="180" valign="top" name="leftbar"><!-- #BeginEditable "leftbar" --><!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" -->
  <p align="center"><span class="contentHeader2"><strong>Det Gode Program</strong></span><strong> <br>
    <br>
    F&aring; hundredvis  af danske virksomheder til at st&oslash;tte &Oslash;ko-net!!! Det  er helt gratis for dig.</strong></p>
  <p>Med Det Gode Program fra ENGODSAG.DK sikrer du, at hundredvis af e-butikker  automatisk betaler penge til <strong>&Oslash;ko-nets</strong> indsats, hver gang du handler via det p&aring;  nettet. Varerne bliver ikke dyrere for dig. Det er nemlig butikkerne, der  betaler!</p>
  <p><strong>Det er lige meget om du ofte eller n&aelig;sten aldrig  handler p&aring; nettet - Alting g&oslash;r en forskel !</strong></p>
  <p><strong>S&aring; nemt er det:</strong><br>
      <strong><br>
    </strong><strong>1.</strong> Du installerer Det Gode Program  p&aring; din computer. D<em>et tager kun 20 sekunder at hente programmet, som  er </em>anonymt, sikkert og gratis b&aring;de at hente og anvende. Hent Det  Gode Program her: <strong><a href="http://www.engodsag.dk/component/option,com_orgshop/task,vieworganisation/cid,73/Itemid,75/">www.engodsag.dk</a> </strong></p>
  <p><strong>2.</strong> Derefter  betaler hundredvis af butikker automatisk til <strong>&Oslash;ko-net</strong>, n&aring;r du f.eks. k&oslash;ber t&oslash;j, b&oslash;ger,  rejser, musik og pizza via Det Gode Program. </p>
  <p><strong>3.</strong> Hvis du skulle  glemme at handle via Det Gode Program, vil den <strong>velg&oslash;rende donationslinje</strong> (toolbar/v&aelig;rkt&oslash;jslinie) vise dig, om en  butik er velg&oslash;rende eller ej. </p>
  <p>S&aring; nemt er det at v&aelig;re velg&oslash;rende&hellip; og det er altid helt gratis for dig:<br>
  </p>
  <table border="0" cellpadding="0">
    <tr>
      <td><br>
          <img width="150" height="146" src="graphics/DetgodeProgram_clip_image001.jpg" align="left"> </td>
      <td><p><strong>GR&Aring;:</strong> Viser dig, at hjemmesiden ikke donerer til    velg&oslash;rende form&aring;l.</p></td>
    </tr>
    <tr>
      <td><p><img width="150" height="146" src="graphics/DetgodeProgram_clip_image002.jpg" align="left"> </p></td>
      <td><p><strong>ORANGE:</strong> Er farven i donationslinjen orange, har du    bes&oslash;gt en butik, som gerne vil donere til <strong>&Oslash;ko-net</strong>. <strong>Du skal klikke p&aring; det    orange felt for at sikre, at butikken hj&aelig;lper </strong><strong>&Oslash;ko-net<strong>, n&aring;r du handler</strong></strong>. <br>
              <br>
        Efter at du har klikket p&aring; den orange knap og bekr&aelig;ftet dit valg, vil farven    i feltet skifte til gr&oslash;n.</p></td>
    </tr>
    <tr>
      <td><p><img width="150" height="146" src="graphics/DetgodeProgram_clip_image003.jpg" align="left"> </p></td>
      <td><p><strong>GR&Oslash;N:</strong> N&aring;r farven i din donationslinje (toolbar) er    blevet gr&oslash;n, betyder det, at butikken hj&aelig;lper <strong>&Oslash;ko-net</strong>, hvis du handler i butikken. <strong>Du    skal alts&aring; huske at sikre, at&nbsp;feltet i donationslinjen er gr&oslash;nt, inden    du handler.</strong> Ellers bliver st&oslash;tten til <strong>&Oslash;ko-net</strong> ikke registreret.<br>
      </p></td>
    </tr>
  </table>
  <p align="center"><br>
    --------------------------------------------------------------------<br>
    Det Gode Program er udviklet i samarbejde med ENGODSAG.DK. L&aelig;s mere her: <a href="http://www.engodsag.dk/" target="_blank">http://www.engodsag.dk</a> </p>
  <p><a href="http://www.engodsag.dk/component/option,com_orgshop/task,vieworganisation/cid,73/Itemid,75/"></a></p>
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
  <p>&nbsp;</p>
  <p align="center">Hent Det Gode Program  her, s&aring; er du i gang:<br>
    <br>
    <a href="http://www.engodsag.dk/component/option,com_orgshop/task,vieworganisation/cid,73/Itemid,75/" target="_self"></a></p>
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