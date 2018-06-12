<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<% menutab=3 %>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;WEBMAGASIN</td>
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
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</table>
<!--#include virtual="/webmagasin/menu.asp" -->
</td>
</tr>
</table>
<p><a href="/webmagasin/feb2008/Dogme2000.doc" target="_blank">Hent artikel som Word</a> </p>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="16" background="/dgs/graphics/detail_header_dgs_bkgrd.gif" name="detailHeader">
<tr> 
<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><h1>Dogme 2000</h1>
  <p><em>B&aelig;redygtighed er ikke  kun en privatsag. F&oslash;rst og fremmest m&aring; den foreg&aring; i stort omfang for at kunne  g&oslash;re en seri&oslash;s forskel. Hvad den enkelte foretager sig af milj&oslash;venlige  aktiviteter betyder naturligvis meget. Det kan blot aldrig f&aring; samme gennemslagskraft,  som politiske tiltag. B&aelig;redygtighed skal bakkes op af politiske beslutninger. </em></p>
  <p align="center"><img src="/webmagasin/feb2008/dogmelogo-m_tekst.gif" alt="Dogme logo" width="408" height="413"></p>
  <p>Der er imidlertid ikke n&oslash;dvendigvis enighed om, at de  milj&oslash;politiske beslutninger, der bliver truffet centralt, altid er  tilstr&aelig;kkelige. Tre kommuner, Albertslund, Ballerup og K&oslash;benhavn besluttede  derfor, i 2000, at p&aring;begynde et samarbejde om b&aelig;redygtighed og et bedre milj&oslash;.  Samarbejdet tog udgangspunkt i 3 dogmer - og kom til at hedde <em>Dogme 2000</em>. Ikke lang tid derefter  tilsluttede yderligere to kommuner sig, Fredericia og Herning, og nu har ogs&aring;  Kolding og Malm&oslash; valgt at deltage. At man har valgt at udvide samarbejdet til Sverige  viser, at man har en forst&aring;else for, at arbejdet med milj&oslash; og b&aelig;redygtighed  ikke b&oslash;r isoleres. </p>
  <p><strong>Milj&oslash;samarbejde, der  g&aring;r p&aring; tv&aelig;rs.</strong><br>
    Formandskabet  g&aring;r p&aring; skift mellem kommunerne hvert andet &aring;r. For tiden har Ballerup Kommune  formandskabet.&nbsp; Karin Langendorf, der arbejder ved Dogmesekretariatet,  forklarer:<br>
  <em>&rdquo;Vi er en  sammenslutning af kommuner, som vil udvikle milj&oslash;arbejdet, ved samarbejde og erfaringsudveksling  med andre, og som vil fastholde en udvikling ved at drage nytte af, hvad andre  kommuner har udviklet. I forhold til kommuner uden for samarbejdet, har vi  fordelene af vidensdeling, vi kan tr&aelig;kke p&aring; de andre kommuners erfaringer.&rdquo;</em></p>
  <p>Et  af de specifikke indsatsomr&aring;der er &oslash;kologi. Det er et m&aring;l for Dogme 2000 at  mindst 75 % af det offentlige f&oslash;devareforbrug skal v&aelig;re &oslash;kologisk, og selv om  dette m&aring;l ikke er n&aring;et i alle kommunerne endnu, g&aring;r det i den rigtige retning.  Eksempelvis havde Albertslund i 2006 en &oslash;kologiprocent p&aring; 82 - og gennem  Dogmesekretariatet vil de &oslash;vrige kommuner kunne tr&aelig;kke p&aring; de gode erfaringer.</p>
  <p><strong>&nbsp;</strong></p>
  <p><strong>Gr&oslash;nne regnskaber,  Agenda 21 og lokal forankring</strong> <br>
    Kommunernes Dogme 2000 omfatter gr&oslash;nne regnskaber, milj&oslash;ledelse  med udgangspunkt i Agenda 21 og lokal forankring. Dogme 2000 er dermed et  v&aelig;sentligt bidrag til b&aelig;redygtighed, n&aring;r den skal v&aelig;re omfattende. <br>
  <strong>De  er 3 dogmer lyder:</strong></p>
  <ul type="disc">
    <li>Kommunens,       boligomr&aring;dernes og<br>
      erhvervslivets p&aring;virkninger af naturen<br>
      skal m&aring;les og hvert &aring;r rapporteres i<br>
      gr&oslash;nne regnskaber.</li>
  </ul>
  <ul type="disc">
    <li>Der       skal opstilles m&aring;l for ressource-<br>
      forbrug og milj&oslash;belastning, som<br>
      samles i en Lokal Agenda 21 plan.<br>
      Kommunen skal g&aring; foran i<br>
      milj&oslash;arbejdet.</li>
  </ul>
  <ul type="disc">
    <li>Milj&oslash;arbejdet       skal forankres i<br>
      boligomr&aring;der, virksomheder <br>
      og i kommunen selv.</li>
  </ul>
  <p>Karin  Langendorf forts&aelig;tter:<br>
      <em>&rdquo;Man kan se p&aring; eksempelvis  &oslash;kologiomr&aring;det og inden for byggeriet, at arbejdet har haft en effekt. D&eacute;t  skyldes i h&oslash;j grad at Dogme 2000 er et politisk samarbejde. I samarbejdet  deltager en politiker fra hver kommune, og det giver samarbejdet mere  gennemslagskraft, end hvis det bestod af embedsm&aelig;nd. Hvis der kun var  embedsm&aelig;nd, kunne vi bare r&aring;dgive og komme med forslag, hvilket naturligvis  ogs&aring; har en r&aelig;kke fordele. Men med den politiske deltagelse bliver de  forskellige tiltag udm&oslash;ntet i konkrete, bindende regler p&aring; de forskellige  omr&aring;der. Det er med til at styre milj&oslash;arbejdet</em>.&rdquo; </p>
  <p>Tanken er, at samarbejdet  mellem kommunerne vil lette realiseringen af de forskellige milj&oslash;tiltag. Idet  en kommune godt kan tilslutte sig Dogme 2000 dokumentet uden p&aring; forh&aring;nd at  opfylde kravene, m&aring; en ekstern revision sikre, at der faktisk arbejdes hen imod  m&aring;lene. P&aring; den m&aring;de &oslash;ger man ogs&aring; muligheden for, at nye kommuner tilslutter  sig. Det  interessante ved Dogme 2000 &ndash; samarbejdet er imidlertid ikke s&aring; meget at man  her kan tale om b&aelig;redygtighedstiltag i kommunalt regi. </p>
  <p>Karin  Langendorf konstaterer:<br>
      <em>&rdquo;Det interessante er jo, at  man samarbejder p&aring; tv&aelig;rs af kommunerne og at man ofte g&aring;r foran lovgivningen. Vi  har udviklet nogle retningslinier og nogle m&aring;der at m&aring;le p&aring;. Gennem Dogme 2000  viser vi, at vi prioriterer vores milj&oslash;arbejde og tager det alvorligt. Og det  er vigtigt.&rdquo;&nbsp;</em></p>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p></td>
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
<!--#include virtual="/shared/log.asp"-->
<%reg("omindex")%>
