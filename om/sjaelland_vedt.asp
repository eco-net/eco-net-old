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
<%level1=1%>
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
<td colspan="2" class="contentHeader1" align="left">Vedt&aelig;gter for &Oslash;ko-net Sj&aelig;lland </td>
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
<td><p><strong>&sect; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Navn og hjemsted</strong></p>
  <p>&Oslash;ko-net Sj&aelig;lland er en lokalafdeling tilknyttet Netv&aelig;rket  for &oslash;kologisk folkeoplysning og praksis/&Oslash;ko-net, der er landsforeningen og er  hjemmeh&oslash;rende i Svendborg Kommune i Region Syddanmark.<br>
  &Oslash;ko-net Sj&aelig;lland er hjemmeh&oslash;rende i Sor&oslash; Kommune i Region  Sj&aelig;lland</p>
  <p><strong>&sect; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Form&aring;l</strong></p>
  <p>Form&aring;let med &Oslash;ko-net Sj&aelig;lland er p&aring; et folkeligt niveau at  informere, oplyse og inspirere omkring natur og milj&oslash;, &oslash;kologi og b&aelig;redygtig  udvikling - samt at skabe debat og netv&aelig;rk omkring &oslash;kologiske og b&aelig;redygtige  tiltag.<br>
    Ved &oslash;kologi forst&aring;s en husholdning med ressourcer, der er i  balance med naturen.<br>
    Ved b&aelig;redygtig udvikling forst&aring;s en udvikling, der tager  globale, milj&oslash;m&aelig;ssige og sociale hensyn b&aring;de til nulevende og kommende  generationer.<br>
    Der l&aelig;gges v&aelig;gt p&aring; ogs&aring; at engagere ungdommen i foreningen  og i arbejdet med ovenn&aelig;vnte form&aring;l.</p>
  <p><strong>&sect; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medlemmer af foreningen</strong></p>
  <p>Medlemmer af &Oslash;ko-net Sj&aelig;lland er alle som kan tilslutte sig  &sect;2 og betaler det af landsforeningen fastsatte landskontingent p&aring; &Oslash;ko-nets  &aring;rlige generalforsamling. Medlemskab af &Oslash;ko-net Sj&aelig;lland kr&aelig;ver derfor at man  er medlem af landsorganisationen &Oslash;ko-net. Der opkr&aelig;ves kun kontingent via  landsforeningen.</p>
  <p><strong>&sect; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Generalforsamling</strong></p>
  <p>&Oslash;ko-net Sj&aelig;llands h&oslash;jeste myndighed er generalforsamlingen,  der ordin&aelig;rt afholdes hvert &aring;r i for&aring;ret. Indkaldelse til generalforsamlingen  sker gennem medierne eller ved underretning af medlemmerne p&aring; anden m&aring;de,  mindst 1 m&aring;ned forud. Forslag, som man &oslash;nsker dr&oslash;ftet p&aring; generalforsamlingen,  skal v&aelig;re bestyrelsen i h&aelig;nde 14 dage forud for m&oslash;det.</p>
  <p>Dagsorden for ordin&aelig;r generalforsamling skal indeholde  f&oslash;lgende punkter:<br>
    1. Valg af dirigent og referent.<br>
    2. Bestyrelsens beretning.<br>
    3. Freml&aelig;ggelse af &aring;rsregnskab.<br>
    4. Indkomne forslag.<br>
    5. Valg af bestyrelsesmedlemmer, samt suppleant(er)<br>
    6. Valg af revisor.<br>
    7. Eventuelt</p>
  <p><strong>&sect; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bestyrelsen</strong></p>
  <p>Stk. 1 Generalforsamlingen v&aelig;lger en bestyrelse. Der v&aelig;lges  indtil 5 medlemmer og 2 suppleanter. Efter valg konstituerer bestyrelsen sig  med formand og n&aelig;stformand. I tilf&aelig;lde af formandens frav&aelig;r fungerer  n&aelig;stformanden som formand. </p>
  <p>Stk. 2 Bestyrelsesvalg g&aelig;lder for 2 &aring;r. Halvdelen afg&aring;r  hvert &aring;r. Genvalg kan finde sted.</p>
  <p>Stk. 3 Bestyrelsen er beslutningsdygtig, n&aring;r mindst  halvdelen af medlemmerne er til stede. I tilf&aelig;lde af stemmelighed g&oslash;r  formandens og i dennes frav&aelig;r n&aelig;stformandens stemme udslaget.</p>
  <p>Stk. 4 Bestyrelsen kan fasts&aelig;tte en forretningsorden for  bestyrelsens arbejde.</p>
  <p>Stk. 5 Bestyrelsen f&oslash;rer referat over sine m&oslash;der, der p&aring; det  efterf&oslash;lgende m&oslash;de godkendes.</p>
  <p><strong>&sect; 7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Oslash;konomi</strong></p>
  <p>Stk. 1 Lokalafdelingens midler kan tilvejebringes gennem  lokale folkeoplysnings- og fondsmidler og projektst&oslash;tte fra landsforeningen,  n&aring;r og hvis dette er muligt.</p>
  <p>Stk. 2 &Oslash;ko-net Sj&aelig;llands regnskabs&aring;r f&oslash;lger kalender&aring;ret.</p>
  <p>Stk. 3 &Oslash;ko-net Sj&aelig;llands &aring;rsregnskab forel&aelig;gges og  kommenteres af den valgte revisor.</p>
  <p><strong>&sect; 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ekstraordin&aelig;r  generalforsamling</strong></p>
  <p>Ekstraordin&aelig;r generalforsamling indkaldes n&aring;r bestyrelsen  eller mindst en 1/3 af medlemmerne i lokalafdelingen beg&aelig;rer det.</p>
  <p><strong>&sect; 9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vedt&aelig;gts&aelig;ndringer og  nedl&aelig;ggelse</strong></p>
  <p>Stk. 1 Vedt&aelig;gterne kan &aelig;ndres p&aring; en generalforsamling, n&aring;r  forslaget er udsendt mindst 2 uger f&oslash;r generalforsamlingen og n&aring;r mindst 2/3 af  de fremm&oslash;dte stemmer derfor. Den enkelte lokalafdeling kan tilf&oslash;je punkter til  disse vedt&aelig;gter, s&aring;fremt der er behov for det. Dog m&aring; punkterne ikke stride mod  n&aelig;rv&aelig;rende vedt&aelig;gter eller &Oslash;ko-nets landsvedt&aelig;gter. N&aelig;rv&aelig;rende vedt&aelig;gter og  eventuelle senere &aelig;ndringer skal godkendes af &Oslash;ko-nets landforening.</p>
  <p>Stk. 2 Opl&oslash;sning af &Oslash;ko-net Sj&aelig;lland kan ske ved beslutning  af s&aring;vel den ordin&aelig;re som af en ekstraordin&aelig;rt indkaldt generalforsamling.  Vedtagelse af beslutning om &Oslash;ko-net Sj&aelig;lland opl&oslash;sning kr&aelig;ver, at mindst tre  fjerdedele af medlemmerne er repr&aelig;senterede ved generalforsamlingen og at to  tredjedele af disse stemmer for opl&oslash;sningen af lokal afdelingen.<br>
    Hvis ikke tre fjerdedele af &Oslash;ko-net Sj&aelig;llands medlemmer er  repr&aelig;senteret ved generalforsamlingen, indkalder bestyrelsen til en ny  ekstraordin&aelig;r generalforsamling, hvor opl&oslash;sningen af lokalafdelingen kan  vedtages af to tredjedele af de repr&aelig;senterede.</p>
  <p>Stk. 3 S&aring;fremt opl&oslash;sningen vedtages og der ved likvidationen  er midler i behold ud over, hvad der er forn&oslash;dent til d&aelig;kning af &Oslash;ko-net  Sj&aelig;lland forpligtelser, g&aring;r midlerne til &Oslash;ko-nets landsforening.</p>
  <p>S&aring;ledes vedtaget p&aring;  den stiftende generalforsamling for &Oslash;ko-net Sj&aelig;lland den 22/12-2006</p>
  </td>
</tr>
<tr> 
<td valign="top"> 
<p>&nbsp;</p>
<p><br>
</p>
</td>
</tr>
</table>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td valign="top" width="200"><table border="0" cellspacing="0" cellpadding="0">
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
    <td><img src="/shared/graphics/Sjaelland.gif" width="116" height="167"></td>
  </tr>
</table></td>
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
