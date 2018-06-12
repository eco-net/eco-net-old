<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<% curtab=5 %>
<!-- #EndEditable --> 
<script type="text/javascript" src="/shared/common.js"></script>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;OM NETV&AElig;RKET</td>
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
<td><img src="/shared/graphics/spacer.gif" width="3" height="8">
<%level1=6%>
<!--#include file="inc_about_leftbar.asp"-->
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="16" background="/dgs/graphics/detail_header_dgs_bkgrd.gif" name="detailHeader">
<tr> 
<td valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="/shared/graphics/spacer.gif" name="detailContents">
<tr> 
<td colspan="2" class="contentHeader1" align="left">Lokalafdelinger i &Oslash;ko-net:</td>
</tr>
<tr> 
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td height"20">&nbsp;</td>
<td height="20" align="right" nowrap>&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="1" height="5"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> 
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr> 
<td><p>&Oslash;ko-net varmer op til  flere landsd&aelig;kkende aktiviteter og har fra 2007 oprette/stiftet lokalafdelinger  af &Oslash;ko-net i de nye regioner i Danmark.</p>
  <p>De fire nye lokal afdelinger er:</p>
  <p><a href="hovedstaden.asp">&Oslash;ko-net Hovedstaden</a><br>
    <a href="sjaelland.asp">&Oslash;ko-net Sj&aelig;lland</a><br>
    <a href="midtjylland.asp">&Oslash;ko-net Midtjylland</a><br>
    <a href="nordjylland.asp">&Oslash;ko-net Nordjylland</a><br>
    <br>
    Og formodentlig f&oslash;lger i for&aring;ret &Oslash;ko-net  Syddanmark.</p>
  <p>Med udgangspunkt i den nye struktur udvikling i  Danmark &ndash; den nye kommunalreformen og de nye regioner i Danmark fra d. 1.  januar 2007 - har &Oslash;ko-net nu taget initiativ til at blive forankret mere fysisk  i det nye Danmark. Dette er sket ved at &Oslash;ko-net har taget initiativ til at der  oprettes lokale afdelinger af &Oslash;ko-net, der alle har f&oslash;lgende form&aring;l:</p>
  <p>&rdquo;Form&aring;let  med &Oslash;ko-net XXXXX er p&aring; et folkeligt niveau at informere, oplyse og inspirere  omkring natur og milj&oslash;, &oslash;kologi og b&aelig;redygtig udvikling - samt at skabe debat  og netv&aelig;rk omkring &oslash;kologiske og b&aelig;redygtige tiltag.<br>
    Ved &oslash;kologi  forst&aring;s en husholdning med ressourcer, der er i balance med naturen.<br>
    Ved b&aelig;redygtig  udvikling forst&aring;s en udvikling, der tager globale, milj&oslash;m&aelig;ssige og sociale  hensyn b&aring;de til nulevende og kommende generationer.<br>
    Der l&aelig;gges  v&aelig;gt p&aring; ogs&aring; at engagere ungdommen i foreningen og i arbejdet med ovenn&aelig;vnte  form&aring;l&rdquo;.</p>
  <p>I december 2006 er der i f&oslash;rste omgang stiftet  de fire f&oslash;rste lokalafdelinger af &Oslash;ko-net &ndash; hhv. &Oslash;ko-net Nordjylland, &Oslash;ko-net  Midtjylland, &Oslash;ko-net Sj&aelig;lland og &Oslash;ko-net Hovedstaden. Vi arbejder ogs&aring; p&aring; at  stifte et &Oslash;ko-net Syddanmark, men i f&oslash;rste omgang varetages aktiviteterne her af  &Oslash;ko-nets landsafdelingen i Ollerup ved Svendborg.</p>
  <p>I 2007 er m&aring;let at der minimum afholdes et  arrangement i hver region &ndash; og &Oslash;ko-net vil samtidig arbejde p&aring; at skabe mere  opm&aelig;rksomhed omkring &Oslash;ko-nets aktiviteter og m&aelig;rkesager. Et andet m&aring;l er at  blive flere medlemmer &ndash; gerne et godt stykke over 1000 medlemmer i 2007 &ndash; fra  600 i 2006.</p>
  <p>Som medlem af &Oslash;ko-net st&oslash;tter man et  landsd&aelig;kkende arbejde for:</p>
  <ul>
  <ul>
    <li>at virkeligg&oslash;re Uddannelse  for B&aelig;redygtig Udvikling (UBU) i Danmark og Balanceakten som et visuelt  international symbol for FN-ti&aring;ret for UBU</li>
    <li>at etablere en  landsd&aelig;kkende klimanetv&aelig;rk for unge til unge og unge til &aelig;ldre</li>
    <li>at skabe et landsd&aelig;kkende  netv&aelig;rk af lokale &Oslash;ko-net aktiviteter</li>
    <li>at udvikle Danmarks gr&oslash;nne  svar p&aring; de gule sider &ndash; De Gr&oslash;nne Sider p&aring; nettet</li>
    <li>at afholde et &aring;rligt  &Oslash;ko-net landsseminar med folkeoplysning, debat og meninger, mad og musik &amp;  &oslash;kologi og kultur</li>
    <li>m.m, m.m, m.m...</li>
  </ul>  </td>
</tr>
<tr> 
<td valign="top"> 
<p>&nbsp;</p>
<p><br>
</p></td>
</tr>
</table></td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br></td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td valign="top" width="200"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td width="188" class="contentHeader2"><strong>Kontakt information </strong>: </td>
</tr>
<tr> 
<td><a href="hovedstaden.asp">Hovedstaden</a><br>
    <a href="sjaelland.asp">Sj&aelig;lland</a><br>
    <a href="midtjylland.asp">Midtjylland</a><br>
    <a href="nordjylland.asp">Nordjylland</a><br>
    <br></td>
</tr>
<tr>
  <td><strong>Vedt&aelig;gter:</strong></td>
</tr>
<tr>
  <td><a href="hovedstaden_vedt.asp">Hovedstaden</a><br>
    <a href="sjaelland_vedt.asp">Sj&aelig;lland</a><br>
    <a href="midtjylland_vedt.asp">Midtjylland</a><br>
    <a href="nordjylland_vedt.asp">Nordjylland</a><br>
    <br></td>
</tr>
<tr>
  <td><img src="/shared/graphics/danmark_nye_regioner_ny.gif" width="480" height="384" border="0" usemap="#Map">
<map name="Map">
  <area shape="poly" coords="9,54,62,54,94,30,69,3,29,21,13,32" href="Nordjylland.asp">
<area shape="poly" coords="6,56,65,57,84,70,76,98,52,104,36,86,8,96,2,79" href="Midtjylland.asp">
<area shape="poly" coords="7,96,35,90,51,103,78,107,80,119,85,133,79,153,17,139,2,113" href="#">
<area shape="poly" coords="81,106,92,87,103,88,109,99,119,106,125,118,128,145,113,158,88,150" href="Sjaelland.asp">
<area shape="poly" coords="105,85,123,111,197,121,197,100,115,76" href="Hovedstaden.asp">
</map></td>
</tr>
</table></td>
</tr>
<tr>
  <td valign="top">&nbsp;</td>
  <td>&nbsp;</td>
  <td background="/shared/graphics/layout/dots_vert.gif">&nbsp;</td>
  <td>&nbsp;</td>
  <td valign="top">&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
<br>
<br>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp" -->
</td>
</tr>
</table>
</td>

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
<!--include virtual="/shared/log.asp"-->
<%'reg("omindex")%>
