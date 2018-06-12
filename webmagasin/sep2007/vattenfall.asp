<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<% menutab=1 %>
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
<p><a href="/webmagasin/sep2007/Vattenfall.doc" target="_blank">Hent artikel som word</a></p></td>
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
<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top">
  <h1><strong>Vattenfall  bliver gr&oslash;nnere </strong></h1>
  <p><strong>Svenske Vattenfall investerer 750 mio. kr. i  milj&oslash;teknologi p&aring; Fynsv&aelig;rket og reducerer CO2 udledningen med 200.000 ton</strong></p>
  <p align="center"><img src="/webmagasin/sep2007/fynsvarket.jpg" width="250" height="167"></p>
  <p>Moderne  virksomheder styrker deres image ved at erkl&aelig;re sig milj&oslash;rigtige; At udvise  ansvar kan afl&aelig;ses p&aring; bundlinjen. Men lever deres praksis op til de gode  visioner?</p>
  <p><strong>For 750 millioner kroner trov&aelig;rdighed</strong><br>
  Svenske  Vattenfall har for nyligt investeret 750 millioner kroner i en ombygning af  Fynsv&aelig;rket. <br>
  Afbr&aelig;ndingen af  170.000 ton halm, der med lidt god vilje kan kaldes CO2-neutral, vil om f&aring; &aring;r  erstatte ca. 87.000 ton kul. Det reducerer udledningen af CO2 med ca. 200.000  ton &aring;rligt. Samlet investerer Vattenfall omkring 30 mia. i milj&oslash;venlig  teknologi i Norden. De 30 milliarder skal, udover ombygningen af Fynsv&aelig;rket,  bl.a. bruges p&aring; en opfriskning af  vindm&oslash;lleparken ved Esbjerg, udskiftning af gamle m&oslash;ller andre steder og i en  udvidelse af Amagerv&aelig;rket. </p>
  <p>Ikke kun Vattenfall benytter sig af tidens gode muligheder for at brande sig  p&aring; b&aelig;redygtige l&oslash;sninger.&nbsp; Dong Energy  forhandler for &oslash;jeblikket med 30 store danske virksomheder om levering  af milj&oslash;rigtig energi. Energi, man ganske vist  allerede producerer, og som derfor kun er karakteriseret ved at v&aelig;re  dyrere.&nbsp; </p>
  <p><strong>De gr&aelig;nsel&oslash;st gr&oslash;nne</strong><br>
    B&aring;de Dong  Energy og Vattenfall forsyner Danmark med energi, der hovedsageligt stammer fra  kulfyrede kraftv&aelig;rker. Vattenfall er fra flere sider blevet kritiseret for sine  mange kulfyrede kraftv&aelig;rker, ligesom brunkulfyrede kraftv&aelig;rker og  atomkraftv&aelig;rker i b&aring;de Sverige og Tyskland har udl&oslash;st kritik.  Milj&oslash;organisationerne peger p&aring; den i&oslash;jnefaldende kl&oslash;ft mellem at &rdquo;lade som om  man er&rdquo; - og &rdquo;faktisk at v&aelig;re&rdquo; - gr&oslash;n, giver virksomheden et  trov&aelig;rdighedsproblem. At opfatte Vattenfall som en virksomhed, der g&oslash;r &eacute;t og  siger noget andet, giver da ogs&aring; i nogen grad mening, n&aring;r man sammenholder  virksomhedens faktiske investeringer i brunkulfyrede kraftv&aelig;rker og atomkraft  med udtalelser som &rdquo;Det er  Vattenfalls ambition at v&aelig;re den bedste p&aring; milj&oslash;omr&aring;det. Det er en ambition,  som kr&aelig;ver viden, helhedssyn og en langsigtet milj&oslash;indsats i alt, hvad vi  foretager os.&rdquo; </p>
  <p>En  b&aelig;redygtig virksomhed brander sig som &rdquo;fremtidens virksomhed&rdquo; og med at de  udviser &rdquo;rettidig omhu&rdquo;. Imageplejen er imidlertid spildt, hvis virksomhederne  alligevel fremst&aring;r som halvhjertede og utrov&aelig;rdige. Dong Energy advarer selv  andre virksomheder mod at g&aring; over til gr&oslash;n energi alene for at f&aring; en smart,  gr&oslash;n profil. Man kan sp&oslash;rge sig om de har noget at sige andre p&aring;? </p>
  <p><strong>Har milj&oslash;organisationerne stadig en sag?</strong><br>
    Hvilken  mening giver det at klandre virksomhederne for tidligere milj&oslash;synder og kalde  dem utrov&aelig;rdige, n&aring;r de i dag foretager massive investeringer i milj&oslash;venlig  teknologi? Vattenfalls investering p&aring; 750 millioner er dog en solid  investering. </p>
  <p>I et  milj&oslash;perspektiv b&aelig;rer forsyningsvirksomhederne et stort ansvar p&aring; deres  skuldre. Klimaet og levevilk&aring;rene for fremtidige generationer afh&aelig;nger af deres  vilje til investeringer i milj&oslash;venlig teknologi. Og s&aring;vel Dong Energy som  Vattenfall har stadig omfattende aktiviteter, der er meget uheldige i et  milj&oslash;m&aelig;ssigt perspektiv.</p>
  <p>Fra en pragmatisk synsvinkel er alt i orden. Investeringen taler  for sig selv. Fra en mere idealistisk synsvinkel er Vattenfall stadig en  tvivlsom, ikke b&aelig;redygtig, virksomhed, uanset den store investering. Fordi dele  af virksomheden fortsat tegner sig for en v&aelig;sentlig forurening. </p>
  <h1>&nbsp;</h1>
  <p align="center">Udgivet i forbindelse med kampagnen <a href="http://www.1tonmindre.dk">1tonmindre.dk</a></p></td>
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
