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
<p><a href="Merkur.doc">Hent artikel som Word</a> </p>
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
<td><h1><strong>Merkur</strong><br>
        <strong><em>Penge p&aring; den b&aelig;redygtige konto</em></strong></h1>
  <p align="center"><img src="/webmagasin/nov2007/claus.jpg" alt="Claus med m&aelig;lk og tomater" width="250" height="186"></p>
  <p><em>B&aelig;redygtighed koster.  &Oslash;kologiske produkter er blevet langt dyrere, kvalitet er en afvigelse fra  standarden, og derfor luksuri&oslash;st. Men n&aring;r nu  b&aelig;redygtighed tilsyneladende er en luksus, er det godt at der findes en bank  som Merkur.</em></p>
  <p>&nbsp;</p>
  <p><strong>B&aelig;redygtighed koster</strong><br>
    Et af de mest afg&oslash;rende omr&aring;der, i forbindelse med  b&aelig;redygtighed og uddannelse for b&aelig;redygtig udvikling, er det &oslash;konomiske.  Naturligvis er hele det id&eacute;m&aelig;ssige fundament uomtvisteligt, men b&aelig;redygtighed  koster penge. B&aelig;redygtighed er ingen selvf&oslash;lge &ndash; den foruds&aelig;tter en forandring,  en oml&aelig;gning. Og en s&aring;dan oml&aelig;gning kan v&aelig;re dyr. S&aelig;rligt for sm&aring; virksomheder  koster det flere penge at v&aelig;re b&aelig;redygtig end at lade v&aelig;re. </p>
  <p>Om det er rigtigt, rimeligt eller forkert, er i den forstand  ikke s&aring; afg&oslash;rende, for det &oslash;konomiske aspekt af b&aelig;redygtigheden er en  flaskehals. Af samme grund er det endnu relativt f&aring; forundt at leve  b&aelig;redygtigt, eller at drive en virksomhed p&aring; et b&aelig;redygtigt grundlag. For &eacute;t er  at det kan v&aelig;re sv&aelig;rt, gr&aelig;nsende til det umulige at f&aring; st&oslash;tte til projekter,  der ikke har maksimal profit som eneste m&aring;l; et andet er, at &ndash; n&aring;r man  efterf&oslash;lgende selv &oslash;nsker at finansiere sit projekt &ndash; kan det v&aelig;re sv&aelig;rt,  gr&aelig;nsende til det umulige, at overtale sin traditionelle bank. Derfor er det  ogs&aring; mere end afg&oslash;rende, at der findes en bank som Merkur. </p>
  <p><strong>Det &oslash;kologiske, det  sociale og det kulturelle</strong><br>
    Merkur bank blev oprettet i 1982 &ndash; og arbejder hovedsageligt  med finansieringen af &oslash;kologiske, sociale og kulturelle projekter. Ud over de  tilbud, man kan f&aring; fra en hvilken som helst bank, har man mulighed for en r&aelig;kke  forskellige konti, som alle sammen st&oslash;tter et projekt &ndash; fx en &rdquo;Red Barnet  konto&rdquo; &ndash; hvor Red Barnet f&aring;r 1,5 % af det, der st&aring;r p&aring; kontoen hvert &aring;r. </p>
  <p>Merkur st&oslash;tter s&aring;ledes &oslash;kologiske, sociale og kulturelle  tiltag. &Oslash;kologien forst&aring;et som fx &oslash;kologisk og biodynamisk jordbrug, vedvarende  energi, b&aelig;redygtig produktion og handel og &oslash;kologisk byggeri. De sociale tiltag  kunne v&aelig;re &oslash;ko-samfund og bof&aelig;llesskaber, som eksperimenterer med nye bo-,  bygge- og ejerformer, alternative energiformer og ressourcebesparende  foranstaltninger, hjem for udviklingsh&aelig;mmede b&oslash;rn og voksne&nbsp;samt  opholdssteder for socialt belastede b&oslash;rn og unge. Og de kulturelle tiltag kunne  v&aelig;re projekter som fx frie skoler og b&oslash;rnehaver, h&oslash;jskoler, seminarier,  kulturhuse, teatre og spillesteder. </p>
  <p><strong>At v&aelig;re forudseende</strong><br>
    Denne prioritering er i princippet ganske enest&aring;ende. For  eksempler som de ovenn&aelig;vnte har en stor vigtighed. De er bare sj&aelig;ldent  &oslash;konomisk rentable</p>
  <p>En unders&oslash;gelse vist for nylig at  kun ganske f&aring; banker havde en holdning til b&aelig;redygtige sp&oslash;rgsm&aring;l. Det er  besynderligt, hvis man ser det i lyset af, at de fleste store firmaer inden for  de senere &aring;r har f&aring;et travlt med at profilere sig som b&aelig;redygtige, klimavenlige,  etiske eller lignende. Men det tyder jo p&aring;, at Merkur g&aring;r en god tid i m&oslash;de &ndash;  og frem for alt, at vilk&aring;rene for de organisationer og projekter, der st&oslash;ttes  af Merkur, bliver bedre. Og det tyder ogs&aring; p&aring; at man har v&aelig;ret tilstr&aelig;kkeligt  forudseende.&nbsp;&nbsp;&nbsp; </p>
  <p>B&aelig;redygtig udvikling er p&aring; flere m&aring;der paradoksal &ndash; i dette  &oslash;konomiske perspektiv. P&aring; den ene side er det helt og aldeles n&oslash;dvendigt at  udviklingen er b&aelig;redygtig, at man medt&aelig;nker sine beslutningers mulige  konsekvenser og fors&oslash;ger at g&oslash;re det rigtige, p&aring; lang sigt, i bred forstand. P&aring;  den anden side er b&aelig;redygtig udvikling sv&aelig;r at praktisere. Den afviger i h&oslash;j  grad fra den standardiserede m&aring;de at g&oslash;re noget som helst p&aring;, der kun kr&aelig;ver  hensynstagen til konsekvenserne her og nu. Og den eneste l&oslash;sning er efter al  sandsynlighed, at man fors&oslash;ger at v&aelig;re s&aring; b&aelig;redygtig som man kan, med de midler  man m&aring;tte have til r&aring;dighed. </p>
  <p><strong>Merkurs m&aring;ls&aelig;tninger </strong><br>
    - at det enkelte menneske i frihed f&aring;r de bedste betingelser  for at udvikle sine evner. Derfor l&aring;nefinansierer vi frie skoler,  undervisningsinstitutioner og kulturelle initiativer.</p>
  <p>- at alle mennesker behandles ligev&aelig;rdigt. Derfor  l&aring;nefinansierer vi nye, tidssvarende ejer- og samarbejdsformer indenfor blandt  andet landbrug, produktion, handel og bos&aelig;tning, projekter for socialt  belastede b&oslash;rn og unge og for udviklingsh&aelig;mmede b&oslash;rn og voksne.</p>
  <p>- at produktion og forbrug afspejler samfundets og den  enkeltes reelle behov og foreg&aring;r under hensyntagen til mennesker, natur og  milj&oslash;. Derfor l&aring;nefinansierer vi &oslash;kologisk og biodynamisk landbrug, &oslash;kologisk  byggeri, vedvarende energi og b&aelig;redygtig produktion og handel (fair trade).</p>
  <p>Og disse punkter fortjener at st&aring; for sig selv.</p>
  <h1 align="center"><img src="/webmagasin/nov2007/mercur.jpg" alt="Mercur" width="250" height="188"></h1>
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
