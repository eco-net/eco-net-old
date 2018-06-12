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
<p><a href="Naturmelk.doc">Hent artikel som Word</a> </p>
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
<td><h1>Et &oslash;kologisk mejeri i Danmark &ndash; og biodynamik </h1>
  <p align="center"><strong>&nbsp;</strong><img src="/webmagasin/nov2007/naturmelk.jpg" alt="Naturm&aelig;lk" width="250" height="250"></p>
  <p><strong>Naturm&aelig;lk er p&aring; mange m&aring;der en b&aelig;redygtig virksomhed</strong>.  Mejeriet er for tiden &eacute;n af f&oslash;devareomr&aring;dets mest seri&oslash;se udfordrere til de  konventionelle produktionsformer i Danmark. Hvis man ser p&aring; praksis er Naturm&aelig;lk  en af de vigtigste akt&oslash;rer i forbindelse &oslash;kologi og b&aelig;redygtighed p&aring; mejeriomr&aring;det.&nbsp; </p>
  <p>Naturm&aelig;lk begyndte at lave &oslash;kologisk m&aelig;lk i 1988 &ndash; men fik  f&oslash;rst sin nuv&aelig;rende form i 1994. P&aring; det tidspunkt var &oslash;kologi endnu nyt i  Danmark; &oslash;kologisk sm&oslash;r, m&aelig;lk og ost var ganske enkelt ikke p&aring; markedet  dengang, og ikke alene skulle man overbevise folk om kvaliteten af disse &rdquo;nye&rdquo;  produkter, man skulle ogs&aring; k&aelig;mpe mod forhandlernes aftaler med de  konventionelle producenter. &nbsp;</p>
  <p>Hermann Lorenzen, der er  formand for Naturm&aelig;lk forklarer:<br>
      <em>Vi begyndte med &oslash;kologien fordi der ikke rigtigt var  nogen anden udvej. Dengang var der nogle &oslash;ko-till&aelig;g &ndash; jeg tror det var 10 % -  og det gjorde at vi kunne overleve i f&oslash;rste omgang. Men FDB begyndte at ville  lave &oslash;kologi, og s&aring; kom der en st&oslash;rre eftersp&oslash;rgsel. Vi var s&aring;dan set heldige,  - vi var allerede i gang. Vi havde de gamle folk fra det oprindelige Naturm&aelig;lk,  som vi kunne sp&oslash;rge til r&aring;ds, og det gjorde at vi kunne forts&aelig;tte. </em></p>
  <p>&Oslash;kologiske produkter st&aring;r i en markant anderledes situation  i dag end for bare fem &aring;r siden. For &oslash;kologiske varer er ikke l&aelig;ngere hverken  moderne eller specielle. De blevet noget, man forventer; i nogle tilf&aelig;lde, p&aring;  grund af den lidt h&oslash;jere pris, har de f&aring;et karakter af luksusprodukter,  produkter med en ekstraordin&aelig;r kvalitet. Det har muligvis gjort det lettere for  &oslash;kologiske mejerier som Thise og Naturm&aelig;lk. I hvert fald lever de begge og har  det godt &ndash; og synes at f&aring; det stadig bedre. </p>
  <p><strong>Sm&aring;t er godt</strong><br>
    Der er alts&aring; masser af fremgang i de dengang sm&aring; mejerier.  Sm&aring; er de i princippet stadig &ndash; i det mindste i forhold til et mejeri som Arla  &ndash; og det er da ogs&aring; den relativt beskedne st&oslash;rrelse, man m&aring; fremh&aelig;ve som en af  de v&aelig;sentligste &aring;rsager til succesen. Alts&aring; at den beskedne st&oslash;rrelse medf&oslash;rer  man&oslash;vredygtighed, hurtige omstillingsprocesser samt lysten og evnen til  nicheproduktion.</p>
  <p><em>I starten havde vi kun  nogle f&aring; produkter. Men i takt med at vi blev lidt st&oslash;rre, fik vi ogs&aring; mulighed  for at sprede produktionen ud. I dag har vi en del forskellige produkter &ndash; ikke  kun m&aelig;lk eller ost &ndash; og det betyder, at vi ikke l&aelig;ngere er s&aring; s&aring;rbare. Men vi  &oslash;nsker ikke at v&aelig;re et stort mejeri. Vi vil gerne blive ved med at v&aelig;re sm&aring;.  Det handler om at have et godt samarbejde. Og s&aring; er det vigtigt at man er til  at stole p&aring; som virksomhed, at folk kan regne med dig. </em></p>
  <p>Da der endnu er ganske mange mennesker, der ikke konsekvent  k&oslash;ber &oslash;kologiske varer, befinder disse relativt sm&aring; mejerier sig i den uheldige  situation, at de i et vist omfang m&aring; konkurrere med hinanden. Arlas &oslash;kologiske  linie er naturligvis ogs&aring; en stor spiller i denne sammenh&aelig;ng.</p>
  <p><strong>Hvor langt skal man  g&aring;?</strong><br>
    Et springende punkt i forbindelse med b&aelig;redygtighed, er  naturligvis at forst&aring;, hvilke betingelser der skal opfyldes, for at man reelt  kan tale om b&aelig;redygtighed. Hvor meget skal n&oslash;dvendigvis &aelig;ndres, f&oslash;r man kan  tale om b&aelig;redygtighed, hvor skal man starte og hvorn&aring;r er man godt i gang. Om  f&oslash;devarerne skal v&aelig;re biodynamiske eller blot &oslash;kologiske er i denne sammenh&aelig;ng  et sp&oslash;rgsm&aring;l om ytringsfrihed: hvad landmanden synger for sine k&oslash;er og  fort&aelig;ller sine f&aring;r kan man ikke blande sig i. S&aring;dan synes opfattelsen at v&aelig;re.  Hvor &oslash;kologien m&aring; opfattes som en n&aelig;rmest objektiv betingelse, eller i hvert  fald noget, man kan lovgive om, er det nok tvivlsomt om man nogensinde vil  opfatte biodynamikken som mere end et frivilligt supplement. <br>
  &nbsp; <br>
    Der er kun f&aring; dokumenterede forskelle p&aring; &oslash;kologiske og  biodynamiske produkter, men kvaliteten af det biodynamiske produkt lader  alligevel til at v&aelig;re mindst lige s&aring; god som den almindeligt &oslash;kologiske. For nu  at give et eksempel, vandt Naturm&aelig;lks biodynamiske g&aring;rdm&aelig;lk fra Langmoseg&aring;rd  den &oslash;kologiske guldmedalje i 2006, og blev alts&aring; k&aring;ret som den bedste m&aelig;lk. Hos  Naturm&aelig;lk har man alts&aring; &ndash; ud over den &oslash;kologiske linie &ndash; flere biodynamiske  produkter. Naturm&aelig;lk har to tilknyttede g&aring;rde, der producere biodynamisk. Og de  har v&aelig;ret med fra starten. Biodynamikken har, lidt forenklet, suppleret de  &oslash;kologiske retningslinier med et livssyn, et v&aelig;rdis&aelig;t. </p>
  <p><em>Med b&aelig;redygtigheden er  det jo s&aring;dan, at vi skal passe p&aring; at vi ikke siger ja til det hele. Man er n&oslash;dt  til at have r&aring;d til noget ekstra. Id&eacute;m&aelig;ssigt og visionsm&aelig;ssigt vil man jo gerne  have det hele med. Men man m&aring; tage en ting ad gangen, for at kunne f&oslash;lge med  &oslash;konomisk. </em></p>
  <p>Og d&eacute;t er i grunden b&aelig;redygtighedens betingelser, meget  pr&aelig;cist formuleret. At have id&eacute;erne og visionerne og s&aring; i &oslash;vrigt g&oslash;re hvad man  kan &ndash; under de begr&aelig;nsninger, man m&aring;tte v&aelig;re underlagt fra politisk side.&nbsp; </p>
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
