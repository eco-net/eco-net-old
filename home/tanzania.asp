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
.style3 {font-size: 14px}
-->
</style>
<style type="text/css">
<!--
-->

p.leftmargin {margin-left: 10px; margin-right: 10px}


</style>
<style type="text/css">
<!--
.style4 {font-size: 16px}
-->
</style>
<style type="text/css">
<!--
.style5 {font-size: 16}
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
'-- tab4 -- SEMINARER OG M�DER
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
'-- tab5 -- OM NETV�RKET

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
<table width="90%"  border="0" align="center">
  <tr>
    <td height="30" class="sidebarHeader"><div align="center"><a href="sitemap.asp"> Sitemap<img src="/shared/graphics/layout/folder.gif" alt="Alle &Oslash;ko-net's sites" width="15" height="15" hspace="5" border="0"></a><br>
    </div></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" class="sidebarHeader">&nbsp;&Oslash;ko-Net &Aring;rsm&oslash;de 2006 </td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<p class="leftmargin"><strong>En Verden i balance? -<br>
    <br>
Gi' visionen en chance!</strong></p>
<p class="leftmargin">L&oslash;rdag den 25. marts 2006 <br>
  p&aring; Den frie L&aelig;rerskole i Ollerup</p>
<p class="leftmargin">For&aring;rsm&oslash;de med seminar, <br>
  festmiddag og koncert <br>
  med Benny Holst Trio</p>
<p align="center" class="leftmargin"><img src="graphics/Trio.bmp"></p>
<p class="leftmargin"><strong>Hent program <a href="program2006.pdf" target="_blank">her</a></strong></p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
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
<a href="/nyhedsblad/index.asp"><img src="<%=getImage(rsBlad("img_id"),"R")%>" border="0"></a></div></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<div align="left"><%=(rsBlad.Fields.Item("dato").Value)%>, nr. <%=(rsBlad.Fields.Item("nr").Value)%></div></td>
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
<td width="98%" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SERVICES</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><br>
<p>
<a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');">Modtag 
nyhedsmail</a> </p>
<p><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');">Bestil 
gratis pr&oslash;venummer af Nyhedsbladet &Oslash;ko-net</a></p>
<p><a href="#" onClick="javascript:window.open('http://www.eco-info.dk/home/newsmail_okonet.asp','subwin','scrollbars=no,resizable=no,width=500,height=330,top=200,left=200');"> 
Bliv medlem </a> </p>
<p>&nbsp;</p></td>
</tr>
</table>
<div align="center"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;SEKRETARIAT</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<div align="center"> 
<p><a href="/om/about_1.asp"></a><br>
&Oslash;ko-net's sekretariat<br>
ligger p&aring; Sydfyn</p>
<p>&nbsp;</p>
</div></td>
</tr>
</table>
<p>&nbsp;</p>
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
<!--B�reklang billedskift-->

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2">&nbsp;</td>
</tr>
</table>
<br>
<blockquote>
  <h2 align="left" class="style3 style4 style5">&Oslash;ko-nets b&aelig;redygtige energi aktiviteter i Tanzania</h2>
</blockquote>
<p class="leftmargin">&Oslash;ko-net har i det sidste &aring;rs tid arbejdet med  at f&aring; givet sin &oslash;kologiske praksis en dimension mere. <br>
  &Oslash;ko-net har i 2005 f&aring;et en bevilling fra  Projektr&aring;dgivningens minipulje til i samarbejde med vores lokale partner Karatu  Development Association til at gennemf&oslash;rer et b&aelig;redygtigt energi projekt i  Karatu District i det nordlige Tanzania.</p>
<p class="leftmargin">I mange omr&aring;der af Afrika opst&aring;r der store  milj&oslash;problemer, som f&oslash;lge af befolkningens behov for energi til madlavning. Madlavningen  i Afrika foreg&aring;r traditionelt over tre sten hvor br&aelig;nde bruges til opvarmning  af maden eller over et primitivt tr&aelig;kulskomfur. Begge dele kr&aelig;ver store m&aelig;ngder  br&aelig;nde. Sammen med et &oslash;get befolkningspres har denne form for energi haft store  konsekvenser for milj&oslash;et. Tr&aelig;er forsvinder gradvis fra store omr&aring;der og leder  til tab af skov og tr&aelig;savanne. N&aring;r der ikke l&aelig;ngere er tr&aelig;bevoksning p&aring; et  omr&aring;de l&aelig;gger det jorden &aring;ben for jord erosion og tab af jordens frugtbarhed.  Dette er for mange omr&aring;der en &oslash;kologisk katastrofe.</p>
<p class="leftmargin">I B&aelig;redygtig Energi Projekt - Karatu har vi  arbejdet med i 2 landsbyer at g&oslash;re folk opm&aelig;rksomme p&aring; de problemer der er  forbundet med den m&aring;de de bruger energi p&aring;.<br>
  Disse problemer er ud over de &oslash;kologiske ogs&aring;  at kvinderne traditionelt er dem der har opgaven med at hente br&aelig;nde. Dette  betyder, at kvinderne hver anden dag har en arbejdsbyrde med at hente ca. 24 kg br&aelig;nde, ofte 4 &ndash; 5 km borte, og b&aelig;re det hjem  p&aring; ryggen.<br>
  At afbr&aelig;nding i br&aelig;nde i det traditionelle  3-stens ildsted i indend&oslash;rs k&oslash;kkener udvikler store r&oslash;g m&aelig;ngder, som ud over at  v&aelig;re meget irriterende ogs&aring; er meget sundhedsskadelige og anses for at v&aelig;re en  af de store &rdquo;sm&aring;b&oslash;rnsdr&aelig;bere&rdquo; i ulande. Vi har arbejdet med at g&oslash;re folk  bevidste om disse problemer og med at opbygge kapacitet blandt folk til at g&oslash;re  noget ved problemerne. Det er et stort problem for folk i omr&aring;det, at de ikke  har haft noget alternativ til deres traditionelle ildsted, og de skal jo lave  mad som en siger, s&aring; de har v&aelig;ret n&oslash;dt til at leve med problemerne.</p>
<p class="leftmargin">For at kunne tilbyde folk et alternativ har vi  i projektet arbejdet med at udvikle alternativer.<br>
  Vi har udviklet et komfur, som kan reducere et  husholdningsbr&aelig;ndeforbrug til en fjerdedel af det hidtidige br&aelig;ndeforbrug.  Herudover br&aelig;nder dette komfur meget rent, s&aring; r&oslash;gudviklingen i k&oslash;kkenerne er  blevet meget reduceret.</p>
<p class="leftmargin">Vi har ogs&aring; udviklet et biogasanl&aelig;g, der ud  fra en husholdnings kom&oslash;g kan producere tilstr&aelig;kkelig med biogas til at d&aelig;kke  en husholdnings behov for energi til madlavning og belysning.<br>
  I projektet har vi indtil nu hjulpet 65  husholdninger med at bygge et komfur og har bygget 2 biogasanl&aelig;g.</p>
<p class="leftmargin">Sammen med vores partner i Tanzania har vi et  stort &oslash;nske om, at g&aring; videre med arbejdet med at sikre b&aelig;redygtig energi til s&aring;  mange som muligt i Karatu Distrikt. Vi har derfor nu en ans&oslash;gning liggende i  minipuljen til at g&aring; videre med at udvikle komfurerne og forsyne mange flere  husholdninger med nye komfurer.</p>
<p class="leftmargin">Vi arbejder ogs&aring; videre med at finde andre  finansieringskilder til vores arbejde med komfurer og biogasanl&aelig;g. Vi har  specielt sigte p&aring; at arbejde for at kunne bruge de finansieringsmuligheder, der  ligger i Kyoto Protokollens s&aring;kaldte Clean Development Mechanism, hvor de  reduktioner af udledninger af drivhusgasser, der kan opn&aring;s ved at bruge  biogasanl&aelig;g eller forbedrede komfurer, kan s&aelig;lges p&aring; markedet for udlednings  reduktioner og indt&aelig;gterne herfra kan bruges til at finansiere tiltag for  forbedringer af fattige husholdningers adgang til b&aelig;redygtig energi.<br><br>
  L&aelig;s meget mere om projektet p&aring; projektets  hjemmeside p&aring; <strong><a href="http://www.sepk.org" target="_blank">www.sepk.org</a>&nbsp;&nbsp; </strong></p>
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
<td> 
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
<td height="291"> 
<p align="center"><br>
  <img src="graphics/1.jpg" width="158" height="133"></p>
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