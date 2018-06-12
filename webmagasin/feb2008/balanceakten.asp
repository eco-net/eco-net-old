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
<p><a href="/webmagasin/feb2008/Balanceakten.doc" target="_blank">Hent artikel som Word</a> </p>
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
<td><h1><strong>Balanceakten</strong></h1>
  <p align="center"><img src="/webmagasin/feb2008/balanceakten.jpg" alt="Balanceakten" width="400" height="299"></p>
  <p>Uddannelse for b&aelig;redygtig udvikling kan v&aelig;re et vanskeligt  emne at afgr&aelig;nse. Projekter kan v&aelig;re b&aelig;redygtige p&aring; mange, mere eller mindre  direkte m&aring;der. Er det eksempelvis b&aelig;redygtigt at bygge huse, som er ekstremt  energivenlige, men dyre, s&aring; man m&aring; optage enorme l&aring;n i banken &ndash; eller skal man  bygge sit eget hus og undg&aring; at st&oslash;tte det eskalerende forbrug? Begge muligheder  tr&aelig;kker samfundet i den b&aelig;redygtige retning, men p&aring; m&aring;der, der udelukker  hinanden. </p>
  <p>I visse tilf&aelig;lde er der imidlertid slet ingen tvivl &ndash; visse  tiltag fremmer uddannelse for b&aelig;redygtig udvikling. </p>
  <p><em>Balanceakten</em> er et  s&aring;dant tiltag. En kampagne, der gennem 3 overordnede m&aring;l og 7 v&aelig;rdier s&oslash;ger at  fremme uddannelse for b&aelig;redygtig udvikling. Den retter sig mod  uddannelsesinstitutioner og er s&aring; at sige en f&aelig;rdig l&oslash;sning. En  uddannelsesinstitution kan uden videre tilslutte sig &ndash; forudsat, naturligvis, at  man har t&aelig;nkt sig at leve op til de tre m&aring;l og de 7 v&aelig;rdier. </p>
  <p>Balanceakten er udarbejdet af norske Id&eacute;banken, svenske  Ekocentrum og danske &Oslash;ko-net i samarbejde med kunstneren Jens Galschi&oslash;t. Jens  Galschi&oslash;t er blevet kendt for en bred vifte af ofte kontroversielle skulpturer.  Det seneste skud p&aring; stammen er den korsf&aelig;stede, gravide teenager. Det er titlen  p&aring; Jens Galschi&oslash;ts skulpturer, <em>Balanceakten</em>,  der har givet kampagnen sin titel. </p>
  <p>&nbsp;</p>
  <p><strong>B&aelig;redygtighed er en  balanceakt; hvor de konsekvenser, vores handlinger m&aring;tte f&aring;, overvejes i et  st&oslash;rre perspektiv. </strong></p>
  <p>Det kan ikke komme som en overraskelse for nogen, at man  ikke kan n&oslash;jes med at tage h&oslash;jde for konsekvenserne her og nu &ndash; hvis man  nogensinde har kunnet. Man har etisk og moralsk ansvar for sine handlinger  inden for sin forst&aring;elseshorisont. Man kan ikke altid sige <em>hvilke</em> konsekvenser en handling m&aring;tte have p&aring; den anden side af  jorden om 100 &aring;r, men i visse tilf&aelig;lde kan man sige, <em>at</em> der bliver konsekvenser og at de bliver negative. Hvis man ikke  har forst&aring;et det, kan man d&aring;rligt bebrejdes &ndash; s&aring; det er vigtigt, at alle har  forst&aring;et det. </p>
  <p>Det m&aring; st&aring; nogenlunde klart, at et f&aelig;lles ansvar som regel kommer  til at betyde det samme som intet ansvar, i det mindste i praksis. <br>
  &nbsp;<br>
    I denne &aring;nd er Balanceaktens m&aring;l naturligvis f&oslash;rst og  fremmest at &aelig;ndre menneskers indstilling til ressourcerne og til hinanden &ndash;  hvilket er langt mere effektivt end den faktiske forbedrende indsats p&aring;  uddannelsesinstitutionen. Milj&oslash;indsatsen er v&aelig;sentlig nok, ingen tvivl om det;  holdnings&aelig;ndringer vejer blot tungere, da de kan sprede sig til andre mennesker. </p>
  <p>&nbsp;</p>
  <p>De 7 v&aelig;rdier er:</p>
  <ol start="1" type="1">
    <li>Vi       vil tage hensyn til kommende generationer, og vil derfor vurdere f&oslash;lgerne       af vore handlinger i et langsigtet perspektiv.</li>
    <li>Vi       erkender, at vi kun har &eacute;n klode med begr&aelig;nsede ressourcer og kapacitet,       og vi vil derfor prioritere milj&oslash;- og ressourceansvar.</li>
    <li>Vi       erkender, at vi lever i en verden med ulige fordeling, og at det derfor er       vores moralske ansvar at arbejde for en mere ligelig global fordeling af       klodens ressourcer og goder.</li>
    <li>Vi       indser, at alle m&aring; deltage for at l&oslash;se de globale udfordringer og vil       derfor bidrage hertil samtidig med, at vi arbejder for at styrke demokratiet       p&aring; alle niveauer.</li>
    <li>Vi       vil s&oslash;ge ny probleml&oslash;sende viden p&aring; tv&aelig;rs af faglige gr&aelig;nser og vil       uddanne mennesker, der f&oslash;ler et globalt medborgerskab med bevidsthed om       milj&oslash;m&aelig;ssige og sociale problematikker.</li>
    <li>Vi       vil vise sammenh&aelig;ngen imellem ord og handling ved at arbejde efter       b&aelig;redygtighedsprincipper i den daglige drift og praksis.</li>
    <li>Vi       vil bidrage til en folkelig og politisk debat om b&aelig;redygtighed og v&aelig;re       synlige og debatskabende i samfundet &ndash; s&aring;vel omkring v&aelig;rdierne som omkring       hvilke tiltag, der kan lette vejen til b&aelig;redygtig praksis.</li>
  </ol>
  <p>Det er det globale, sociale ansvar der kommer til udtryk i  disse v&aelig;rdier. Det er v&aelig;rdier, der er s&aring; l&oslash;st formuleret, at man b&oslash;r kunne  tilslutte sig n&aelig;sten uanset politisk observans. Og alligevel form&aring;r de at  udtrykke ganske v&aelig;sentlige forhold i den b&aelig;redygtige sammenh&aelig;ng.&nbsp;&nbsp;&nbsp;&nbsp; </p>
  <p>&nbsp;</p>
  <p class="listheader">De 7 v&aelig;rdier konkretiseres i 3 konkrete m&aring;l: </p>
  <ol start="1" type="1">
    <li>Undervisningen omfatter b&aelig;redygtighed i teori og praksis.</li>
    <li>Institutionens drift er b&aelig;redygtig.</li>
    <li>Institutionen skaber folkeoplysning samt folkelig og politisk       debat om b&aelig;redygtig udvikling.</li>
  </ol>
  <p><strong>Det er meget  v&aelig;sentligt at b&aelig;redygtighed ikke bliver et projekt, der h&aelig;nger sammen med en  bestemt politisk orientering. B&aelig;redygtighed er grundl&aelig;ggende et projekt, man  ikke kan v&aelig;re imod.&nbsp; </strong></p>
  <p>De 10 bronzeskulpturer, med titlen <em>Balanceakten</em>, er spinkle, menneskelignende figurer, dersvajer p&aring; tynde kulfiberst&aelig;nger, op til  14 meter  over jorden. De undg&aring;r med n&oslash;d og n&aelig;ppe at v&aelig;lte; og har, ved p&aring; den m&aring;de at  demonstrere den h&aring;rfine gr&aelig;nse mellem balance og ubalance, en elegant lighed  med b&aelig;redygtighedsopgaven. Sammenligningen er formentlig t&aelig;nkt i forhold til et  samfund i b&aelig;redygtig udvikling &ndash; forst&aring;et som et samfund i balance, et samfund,  der s&aring; at sige ikke taber sig selv p&aring; jorden. Hvilket det nuv&aelig;rende samfund &ndash;  forst&aring;et som den modsatte pol - er faretruende t&aelig;t p&aring;. Figurerne p&aring; toppen af  kulfiberst&aelig;ngerne fremst&aring;r naturligvis som svage og skr&oslash;belige og man  fornemmer, at det hele tiden kan g&aring; galt. Ved at g&oslash;re det tydeligt i enhver  omtale, at det handler om b&aelig;redygtig udvikling &ndash; og p&aring; samme tid at vise de  spinkle, svajende mennesker, f&aring;r man et budskab serveret. B&aelig;redygtig udvikling  er en skr&oslash;belig balance. &nbsp;</p>
  <p><em>Balanceakten</em> rummer s&aring;dan set ikke et sv&aelig;rt begribeligt indhold. Figurerne er &aring;benlyse og ligetil;  bl.a. fordi de blot henviser til den opgave, b&aelig;redygtigheden indeb&aelig;rer.  B&aelig;redygtighed er ogs&aring; i et vist omfang ligetil &ndash; men rummer dog en  kompleksitet, som skulpturerne tr&aelig;kker p&aring;. Det er ogs&aring; deres kvalitet: de giver  ikke svarene, de viser kun opgaven. </p>
  <p><strong>Kunst og  b&aelig;redygtighed</strong><br>
    Er det muligt at kunst og b&aelig;redygtighed har noget til  f&aelig;lles? Politisk kunst har i h&oslash;jere grad end de fleste andre former for kunst  en tradition for at indeholde et budskab, eller i det mindste en tradition for  at v&aelig;re mere konkret i sit indhold end de fleste eksempler p&aring; moderne kunst. <br>
    Den del af den politiske kunst, der har v&aelig;ret i opposition,  har et udgangspunkt i forhold, hvor &rdquo;budskabet&rdquo; p&aring; den ene eller den anden m&aring;de  m&aring;tte pakkes ind, camoufleres. </p>
  <p>Balanceakten er i nogen grad politisk, - og man m&aring;  foruds&aelig;tter, at den er vellykket. Den er ogs&aring; i opposition, men der er ikke  noget ved den, der er skjult. Og da den m&aring; t&aelig;nkes som en fysisk afbildning af  b&aelig;redygtighedens vilk&aring;r, m&aring; der v&aelig;re et indhold, der deles af skulpturerne og  b&aelig;redygtighedsopgaven. Derfor er den naturligvis ogs&aring; mere end bare politisk &ndash;  ligesom b&aelig;redygtighed er mere end bare politisk. B&aelig;redygtighed rummer som  minimum etiske, sociale og kulturelle aspekter; og er i det hele taget et felt,  der griber ind i utrolig mange forhold. </p>
  <h1>&nbsp;</h1>
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
