<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<% menutab=2 %>
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
<p><a href="Novozymes.doc">Hent artikel som Word</a> </p>
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
<td><h1><strong>Novozymes</strong></h1>
<p class="listheader"><em>B&aelig;redygtighed i  erhvervslivet &ndash; Mennesker, Milj&oslash; og Mammon</em></p>
<p align="center" class="listheader"><img src="/webmagasin/nov2007/Kalundborg.jpg" alt="Kalundborg" width="250" height="167"></p>
<p>Der er utallige eksempler p&aring;, at b&aelig;redygtighed i erhvervslivet  opfattes som en risiko, der m&aring; h&aring;ndteres p&aring; den bedst mulige m&aring;de. Mange  virksomheder v&aelig;lger naturligvis helt at undg&aring; denne risiko, ved enten ikke at  v&aelig;re b&aelig;redygtige &ndash; eller kun akkurat s&aring; b&aelig;redygtige som loven foreskriver. </p>
  <p>Men b&aelig;redygtighed er uden tvivl p&aring; vej ind i s&aring;vel det  danske som i store dele af det internationale erhvervsliv. Ser man n&aelig;rmere p&aring;,  hvordan det sker i praksis, er nogle firmaer mere interessante end andre. De  fleste firmaer er ikke b&aelig;redygtige, pr&oslash;ver ikke at blive det og er derfor  uinteressante. Nogle firmaer h&aelig;vder m&aring;ske at v&aelig;re 100 % b&aelig;redygtige &ndash; og er derfor  heller ikke s&aring; interessante, idet man ser p&aring;, hvordan en virksomhed <em>bliver</em> b&aelig;redygtig i dag. De interessante  firmaer er derimod dem, der er i stand til at h&aring;ndtere de permanente  udfordringer, det indeb&aelig;rer at bev&aelig;ge sig hen mod en b&aelig;redygtig  forretningsdrift. Og p&aring; samme tid skabe v&aelig;kst &ndash; ikke p&aring; trods af tiltagene, men  p&aring; grund af dem. </p>
  <p>Det er lykkedes for Novozymes. Sidste &aring;r blev de nummer et  p&aring; listen over verdens mest b&aelig;redygtige b&oslash;rsnoterede selskaber. Det er det  s&aring;kaldte <em>Dow Jones' Sustainability Group  Index</em> der blandt 1800 firmaer har k&aring;ret Novozymes til det mest b&aelig;redygtige. </p>
  <p><strong>Ikke kun hvor meget &ndash;  ogs&aring; hvordan.</strong><br>
    Claus Stig Pedersen, der er leder af  sustainability-funktionen ved Novozymes, forklarer, at<br>
  <em>&nbsp;- Novozymes producerer enzymer - og leverer  s&aring;ledes b&aelig;redygtige biologiske l&oslash;sninger; for n&aring;r man anvender enzymer, sparer  man energi, kemi eller vand &ndash; og det er per definition godt for milj&oslash;et - hver  gang man s&aelig;lger enzymer, sparer man kemikalier, energi eller vand. Og det er p&aring;  samme tid godt for forretningen. I dag ser man jo ikke alene p&aring;, hvor mange  penge en virksomhed tjener &ndash; men i h&oslash;j grad ogs&aring; p&aring;, hvordan den tjener dem. </em></p>
  <p>B&aelig;redygtighed  er blevet en faktor, som s&aelig;rligt store firmaer m&aring; tage alvorligt.<br>
    Internationale  virksomheder har altid s&oslash;gt at vurdere hvilke konsekvenser, de forskellige  tiltag m&aring;tte have p&aring; lang sigt. Og som noget relativt nyt er b&aelig;redygtighed den  del af disse overvejelser. B&aelig;redygtighed er meget omtalt netop nu &ndash; og derfor  er der en &oslash;konomisk gevinst at hente; for ikke alene f&aring;r man fordelen af at  blive identificeret med planetens fremtid, b&aelig;redygtighed er ogs&aring; et  konkurrenceparameter. </p>
  <p><strong>Adskillige gode grunde</strong><br>
    Claus  Stig Pedersen forts&aelig;tter;<br>
  <em>Der er god &oslash;konomisk mening i at v&aelig;re  b&aelig;redygtig. Ikke kun for en virksomhed som Novozymes, hvor b&aelig;redygtigheden i et  vist omfang er givet. Alle virksomheder vil kunne hente en gevinst ved  eksempelvis at have styr p&aring;, hvad &nbsp;underleverand&oslash;rerne foretager sig &ndash; og man kan  pege p&aring; flere andre omr&aring;der, hvor b&aelig;redygtighed medf&oslash;rer en forretningsm&aelig;ssig  fordel. For det f&oslash;rste forbedrer det virksomhedens omd&oslash;mme; og ved at g&oslash;re det  vil man i langt h&oslash;jere grad kunne tiltr&aelig;kke dygtige medarbejdere. Dertil  kommer, at man reducerer de forretningsm&aelig;ssige risici. M&aring;ske v&aelig;sentligst er  det, at s&aelig;tter man fokus p&aring; milj&oslash;, s&aring; sparer man penge. Tilbagebetalingstiden  er ganske enkelt kort.</em></p>
  <p><strong>Global Compact</strong><br>
    FN  har et organ, <em>Global Compact</em> hedder  det, der er en international indsats for b&aelig;redygtighed i erhvervslivet. FNs Global  Compact er mere pr&aelig;cist ti principper om en indsats for menneskerettigheder,  rettigheder for ansatte, for milj&oslash;et og for bek&aelig;mpelsen af korruption. <br>
  <img width="342" height="438" src="Novozymes_clip_image001.gif" align="left" hspace="12" alt="Tekstboks: De 10 punkter i Global Compact    Menneskerettigheder  1.	Virksomheder b&oslash;r st&oslash;tte og respektere beskyttelsen af internationalt erkl&aelig;rede   menneskerettigheder; og  2.	sikre sig, at de ikke medvirker til kr&aelig;nkelse af menneskerettighederne.  Arbejdstagerrettigheder  3.	Virksomheder b&oslash;r opretholde organisationsfrihed og effektivt anerkende retten til kollektiv forhandling;  4.	st&oslash;tte udryddelse af alle former for tvangsarbejde;   5.	st&oslash;tte en effektiv afskaffelse af b&oslash;rnearbejde; og at  6.	diskrimination i arbejds- og ans&aelig;ttelsesforhold elimineres.  Milj&oslash;  7.	Virksomheder b&oslash;r st&oslash;tte en forsigtig tilgang til milj&oslash;m&aelig;ssige udfordringer;  8.	tage initiativer til at fremme en st&oslash;rre milj&oslash;m&aelig;ssig ansvarlighed; og  9.	tilskynde udvikling og spredning af milj&oslash;venlige teknologier.  Anti-korruption  10.	Virksomheder b&oslash;r modarbejde alle former for korruption, herunder afpresning og bestikkelse.    "><br>
    3000  st&oslash;rre virksomheder har underskrevet Global Compact, og en af dem er Novozymes,  der for andet &aring;r i tr&aelig;k er blevet anerkendt af initiativet &ndash;. For at det kan  ske, skal man ikke alene tilslutte sig Global Compact, men desuden rapportere  tilbage om hvilke fremskridt, virksomheden m&aring;tte have gjort inden for omr&aring;det.  Global Compact kan alts&aring; hj&aelig;lpe med at holde firmaer fast p&aring; de v&aelig;sentlige  m&aring;ls&aelig;tninger, uden at der af den grund er tale om overv&aring;gning eller regulering.  Der tages dermed h&oslash;jde for, at b&aelig;redygtighed er en vedvarende proces &ndash; hvilket  er afg&oslash;rende. </p>
  <p>Som Claus  Stig Pedersen forklarer:<br>
      <em>Novozymes er blevet indskrevet i FNs  retningslinier som et &rdquo;best practise&rdquo; &ndash; et godt eksempel p&aring; hvordan  b&aelig;redygtighed kan praktiseres. Om Global Compact, m&aring; man konstatere, at det  ganske enkelt er en god id&eacute;. Det kr&aelig;ver ikke specielt mange ressourcer og det  er i det hele taget meget let at tilslutte sig. Derfor er det mig en g&aring;de  hvorfor der ikke er flere virksomheder, der har tilsluttet sig. </em></p>
  <p>Initiativet  har den store fordel, at det kan fungere som en f&aelig;lles referenceramme og at det  ikke, som Dow Jones&rsquo; indeks kr&aelig;ver at man er b&oslash;rsnoteret. Faktisk skal en virksomhed  blot have mere end 10 ansatte for at kunne tilslutte sig. Da der endvidere er  tale om et s&aelig;t af v&aelig;rdier, vil det v&aelig;re op til virksomhederne at vurdere,  hvordan de skal oms&aelig;tte dem til praksis. </p>
  <p><strong>Mennesker, Milj&oslash; og Mammon.</strong><br>
      <img width="162" height="199" src="Novozymes_clip_image002.gif" align="left" hspace="12" alt="Tekstboks: Er man interesseret i at vide mere om tilslutningen til Global Compact, kan man kontakte FN's Udviklingsprograms   Nordiske Kontor i K&oslash;benhavn telefonisk (+45) 35 46 70 00.      ">P&aring; Novozymes er der et system, hvor der  udl&oslash;ses en bonus hvis man n&aring;r sine m&aring;l inden for social og milj&oslash;m&aelig;ssig  ansvarlighed. Med andre ord et ganske konventionelt bel&oslash;nningssystem i  kommerciel sammenh&aelig;ng, men omsat til et redskab, der vil kunne fremme  b&aelig;redygtige tiltag. Dette system kunne m&aring;ske v&aelig;re inspirerende for andre  virksomheder. Det b&aelig;redygtige tiltag udl&oslash;ser en gevinst i mods&aelig;tning til den  g&aelig;ngse id&eacute; om at der er en direkte forbindelse mellem den b&aelig;redygtige indsats  og udgifter og risici. &nbsp;&nbsp;</p>
  <p><em>Det er en vigtig  pointe, at der ikke er en konflikt mellem god forretning og b&aelig;redygtighed. For  at man kan tale om b&aelig;redygtighed er der jo tre forhold, der skal h&aelig;nge sammen:  Mennesker, Milj&oslash; og Mammon.&nbsp; </em></p>
  <h1 align="center"><img src="/webmagasin/nov2007/enzymes.jpg" alt="enzymes" width="250" height="375"></h1>
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
