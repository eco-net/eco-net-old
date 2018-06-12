<html>
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
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
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;TIDLIGERE NYHEDER</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td valign="top" colspan="2"> 
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
<td><table width="98%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td>
<p><a href="http://www.ngoforum2002.dk" title="http://www.ngoforum2002.dk" target='_blank'><br>
Læs mere om NGO Forum </a> </p>
<br>
<img src="http://insider.eco-info.dk/admin/ei/billedbasen/rightcol/NGOForum2002(1)(1).jpg"> 
<p> <a href="http://www.ngoforum2002.dk" title="http://www.ngoforum2002.dk" target='_blank'> 
</a><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</p>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>
<a href="/nyhedsblad/index.asp" title="../nyhedsblad/index.asp" target='_blank'>Læs<br>
Nyhedsbladet Øko-net nr. 51 </a><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td valign="top"><a href="http://eco-net.47.testsider.dk/seminar/aarsmode_2003.asp" title="http://eco-net.47.testsider.dk/seminar/aarsmode_2003.asp" target='_blank'>Se 
program mv. her. </a><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td valign="top"> 
<p><a href="http://www.eco-info.dk/home/kampagne.asp" title="http://www.eco-info.dk/home/kampagne.asp" target='_blank'>Se 
materiale for Øko-info </a> </p>
<p> <a href="http://www.baeredygtigudvikling.dk/home/kampagne.asp" title="http://www.baeredygtigudvikling.dk/home/kampagne.asp"> 
Se materiale for BæredygtigUdvikling.nu </a> </p>
<p> <img src="http://insider.eco-info.dk/admin/ei/billedbasen/rightcol/plakat(1).jpg"> 
<br>
<br>

</p>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</table>
</td>
</tr>
<!-- CONTENT HERE -->
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" -->
<table width="98%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td>11-12-2002<br>
<span class="contentHeader2">&Oslash;ko-net udstiller p&aring; NGO FORUM p&aring; 
Holmen i K&oslash;benhavn </span> 
<p><br>
Parallelt med EU-stats- og regeringsledernes topm&oslash;de i K&oslash;benhavn, 
december 2002, afholder danske og udenlandske organisationer et folkeligt topm&oslash;de 
p&aring; Holmen d. 13.-15. december. </p>
<p>NGO Forum p&aring; Holmen er arrangeret af NGO Forum Stop Volden &#150; et 
netv&aelig;rk best&aring;ende af flere end 65 organisationer, heriblandt &Oslash;ko-net, 
der alle arbejder for mangfoldige og fredelige politiske aktiviteter under det 
danske EU-formandskab. </p>
<p>NGO Forum er &aring;ben:<br>
fredag den 13.12 kl. 15.00 til 22.00<br>
l&oslash;rdag den 14.12 kl. 10.00 til 22.00<br>
og s&oslash;ndag den 15.12 kl. 10.00 til 18.00 </p>
<p>Kom forbi os p&aring; vores stand &#150; se efter en lille udgave af den amerikanske 
frihedsgudinde fra kampagnen Freedom to Pollute, der vil v&aelig;re en del af 
&Oslash;ko-nets stand.<br>
Her er vi gode for en snak, et stykke gratis &oslash;kologisk M&oslash;lle Skovly 
chokolade. Desuden kan du hente op til tre plakater, en med Freedom To Pollute, 
to fra informations materialet for &Oslash;ko-net to Internetportaler &Oslash;ko-info 
og B&aelig;redygtigUdvikling.nu samt meget andet materiale fra &Oslash;ko-net 
(fx de sidste debatmateriale udgivelser). </p>
<p>Giv et bidrag og st&oslash;t &Oslash;ko-net<br>
I de tre dage vi er p&aring; NGO Forum og standen vil vi ogs&aring; intensivere 
vores jagt p&aring; nye medlemmer og st&oslash;ttebidrags ydere &#150; s&aring; 
er du ikke allerede medlem har vi et tilbud til dig:<br>
Bliv medlem i resten af 2002 (10 kr.) og 2003 for halvpris (80 kr.) og giv samtidig 
et st&oslash;ttebel&oslash;b p&aring; mindst 50 kr. (Betal i alt 140 kr.) og f&aring; 
samtidig som gave &Oslash;ko-nets debatbog &Oslash;kologi er p&aring; alles l&aelig;ber 
</p>
<p>Det er vigtigt at vi har s&aring; mange medlemmer som muligt og at vi modtager 
over hundrede st&oslash;ttebel&oslash;b pr. &aring;r (min. 50 kr.), da det udl&oslash;ser 
et tilskud fra Tips- og Lottomidlerne. </p>
<p>Vi h&aring;ber at vi ses p&aring; Holmen! <br>
<br>
<br>
</p>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>
02-12-2002<br>
<span class="contentHeader2">Nyt nummer af Nyhedsbladet &Oslash;ko-net </span> 
<p></p>
<p>Nr. 51 - december 2002 - er netop udkommet og kan ogs&aring; l&aelig;ses p&aring; 
nettet.</p>
<p>I &Oslash;ko-net nr. 51 pr&aelig;senteres et helt nyt informationsmateriale 
for &Oslash;ko-net&#146;s to nyttige internetportaler: &Oslash;ko-info og b&aelig;redygtigudvikling.nu 
&#150; l&aelig;serne opfordres til at v&aelig;re behj&aelig;lplige med at g&oslash;re 
opm&aelig;rksom p&aring; materialet og portalerne til relevante personer og steder.</p>
<p>Desuden er der indbydelse til &Oslash;ko-net&#146;s seminar og &aring;rsm&oslash;de 
2003, der finder sted p&aring; Brenderup Folkeh&oslash;jskole d. 25.-26. Januar 
&#150; titlen p&aring; m&oslash;det er: Det r&aring;ber til himlen! &#150; hvordan 
kobles visionen om b&aelig;redygtighed med dr&oslash;mmen om det gode liv?</p>
<p>&Oslash;ko-net nr. 51 udkommer lige op til NGO Forum, der er det folkelige 
topm&oslash;de p&aring; Holmen d. 13.-15. December i K&oslash;benhavn, parallelt 
med EU-stats- og regeringsledernes topm&oslash;de.</p>
<p>L&aelig;s meget mere om NGO Forum og andre aktiviteter/m&oslash;der i forbindelse 
med EU-topm&oslash;det (fx om Bundm&oslash;de p&aring; Christiania).</p>
<p>L&aelig;s ogs&aring; nyt om bl.a.:</p>
<p>Gr&oslash;n Forening, der hj&aelig;lper idr&aelig;tsverdenen til at g&oslash;re 
en indsats for milj&oslash;et <br>
92-gruppen &#150; et samarbejde mellem danske NGO&#146;ere <br>
Naturr&aring;det der har sl&aring;et alarm p&aring; vegne af naturen <br>
Hvad blev resultaterne ved WSSD <br>
Nyt om bogudgivelser <br>
Ny forening om Europas milj&oslash;<br></p>
<br>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td> 02-12-2002<br>
<span class="contentHeader2">Det r&aring;ber til himlen!<br>
- hvordan kobles visionen om b&aelig;redygtighed med dr&oslash;mmen om det gode 
liv?</span> 
<p><br>
&Oslash;ko-net&#146;s seminar og &aring;rsm&oslash;de 2003 afholdes fra l&oslash;rdag 
d. 25. januar kl. 10.00 til s&oslash;ndag d. 26. januar kl. 14.00 p&aring; Brenderup 
Folkeh&oslash;jskole p&aring; Fyn. <br>
Om l&oslash;rdagen vil forsker ved Danmarks Milj&oslash;unders&oslash;gelser Jeppe 
L&aelig;ss&oslash;e og lektor ved Roskilde Universitetscenter Claus Heinberg give 
hver deres bud p&aring;, hvordan visionen om b&aelig;redygtighed kobles med dr&oslash;mmen 
om det gode liv.</p>
<p>Desuden vil milj&oslash;konsulent ved Det &Oslash;kologiske R&aring;d Uffe 
Geertsen, rejse en debat om, hvordan de gode visioner bliver til m&aring;lrettet 
handling. En debat om at skabe en modbev&aelig;gelse - finde Lysten til en pionerindsats.</p>
<p>Weekenden byder ogs&aring; p&aring; dialogv&aelig;rksted om samme emne, styret 
af Flemming Meier</p>
<p>Desuden er der generalforsamling i &Oslash;ko-net s&oslash;ndag formiddag.<br>
&Aring;rsm&oslash;det afsluttes med et foredrag s&oslash;ndag formiddag efter 
&Oslash;ko-net&amp;fnyt;s generalforsamling 2003.<br>
Advokat og tidligere folketingsmedlem for Venstre Laue Traberg Smidt vil give 
sit bud (tankel&aelig;snings fors&oslash;g) p&aring;: Hvad mener og vil regeringen 
egentlig p&aring; milj&oslash;-omr&aring;det.<br>
<br>
<br>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>
18-11-2002<br>
<span class="contentHeader2">Nyt PR-materiale for gr&oslash;nne portaler </span> 
<p></p>
<p>&Oslash;ko-net har netop f&aelig;rdiggjort et helt nyt informationsmateriale 
for portalerne &Oslash;ko-info og B&aelig;redygtigUdvikling.nu &#150; best&aring;ende 
af hhv. en folder og en A3 plakat.</p>
<p>Materialet er netop sendt ud til alle skoler og institutioner i Danmark via 
amtscentrene. </p>
<p>Vi opfordre hermed alle til at v&aelig;re behj&aelig;lpelig med at g&oslash;re 
opm&aelig;rksom p&aring; materialet og portalerne til relevante personer og steder.</p>
<p>Materialets to plakater og to foldere kan ogs&aring; hentes som pdf-filer direkte 
fra portalerne eller de kan rekvireres hos &Oslash;ko-net p&aring; tlf. 62 24 
43 24.</p>
<br><br><br><br><br><br><br><br><br>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>
<p align="center"><a href="http://www.eco-net.dk/NYforside.htm" target="_blank">Tidligere 
nyheder</a></p>
</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td background="/shared/graphics/layout/dots_horz.gif" height="1">
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</table>
<br>
<br>
<br>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp"-->
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
<td colspan="3" class="footer" height="20" valign="middle">Se andre &Oslash;ko-net 
sites: <a href="http://www.eco-info.dk">&Oslash;ko-info</a> | <a href="http://baeredygtigudvikling.nu">B&aelig;redygtig 
Udvikling</a><br>
</td>
</tr>
</table>
<!-- START HEADER -->
</body>
</html>
