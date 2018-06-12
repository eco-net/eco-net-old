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
<td><img src="/shared/graphics/spacer.gif" width="3" height="8">
  <!--include file="inc_about_leftbar.asp"-->
</td>
</tr>
</table>
<!--#include virtual="/webmagasin/menu.asp" -->
<p><a href="Baeredygtige_huse.doc" target="_blank">Hent artikel som word</a></p>
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
<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><h1>Parcelhuse med Svanem&aelig;rke </h1>
  <p><strong><em>&nbsp;</em></strong><strong><em>Fremtidens parcelhuse med  Svanem&aelig;rke dokumenterer b&aelig;redygtighed og milj&oslash;&oslash;konomi</em></strong></p>
  <h5 align="center"><img src="/webmagasin/sep2007/Koge_hus.jpg" width="250" height="150"></h5>
  <p>Typehuse med det  nordiske milj&oslash;m&aelig;rke Svanen er en realitet. De f&oslash;rste af slagsen i Danmark  opf&oslash;res for tiden i Herf&oslash;lge. </p>
  <p><strong>Hvad betyder det?</strong><br>
    Svanem&aelig;rket betyder,  at boligerne opfylder s&aelig;rlige krav om valget af materialer og energiforbrug.  Videnscentret &rdquo;Det Gr&oslash;nne Hus&rdquo;, hvor enhver kan f&aring; information om energirigtigt  byggeri, st&aring;r bag et projekt, der kaldes &rdquo;Fremtidens parcelhuse.&rdquo; <br>
    Projektet omfattede i  starten 10 milj&oslash;rigtige huse. Men den store interesse har betydet, at der i dag  opf&oslash;res 64 boliger og 12 r&aelig;kkehuse i det nye boligomr&aring;de, der ligger i  Herf&oslash;lge.  Husene projekteres af flere forskellige byggefirmaer.&nbsp; </p>
  <p>Lavenergibyggeri er  blevet forbundet med selvbyggede huse af halm med muslingeskaller p&aring; taget. Det  har v&aelig;ret sv&aelig;rt at identificere sig med. Derfor har parcelhusfolket v&aelig;ret  tilbageholdende overfor b&aelig;redygtige huse. Og typehusfirmaerne har ikke bygget  mange b&aelig;redygtige huse. Med vores projekt her i Herf&oslash;lge er vi b&aelig;redygtige p&aring;  en ny m&aring;de. Vi fors&oslash;ger at bygge huse til den almindelige dansker, siger Ole  Alm, der er projektleder for byggeprojektet.</p>
  <p><strong>B&aelig;redygtige huse til alle</strong><br>
      Svanem&aelig;rkede  bygninger er ikke byggeri, hvor alt fra gulv til loft er fremstillet efter  b&aelig;redygtige principper. Men m&aelig;rket indeb&aelig;rer at man overvejer hvilke  milj&oslash;m&aelig;ssige konsekvenser, der er p&aring; det lange sigt. Ved at forene  overvejelserne om b&aelig;redygtighed med konventionelt byggeri, g&aring;r noget af det  kontroversielle af begrebet. Det bliver almindelig sund fornuft. S&aring; et skridt  ad den rigtige vej batter ogs&aring; noget. I det perspektiv handler det om, at f&aring; s&aring;  meget b&aelig;redygtighed ind i samfundet som overhovedet muligt. I et andet  perspektiv, m&aring; nogle byggerier v&aelig;re gennemf&oslash;rt b&aelig;redygtige ud i alle detaljer,  s&aring; de kan bane vejen fungere som gode eksempler.&nbsp;&nbsp; </p>
  <p>De nye huse i Herf&oslash;lge er p&aring; mange m&aring;der banebrydende trods  det at de mere repr&aelig;senterer god sund milj&oslash;- og energi&oslash;konomi. I mange tilf&aelig;lde  g&aring;r byggerierne endnu l&aelig;ngere end blot at overholde Svanem&aelig;rkets krav. B&aring;de sm&aring;  og store byggefirmaer er repr&aelig;senteret, og dermed ser mange forskellige  l&oslash;sninger dagens lys. Lige fra sekskantede huse til mere konventionelt udseende  parcelhuse og r&aelig;kkehuse. Den store variation i projektet betyder naturligvis,  at byggefirmaerne g&oslash;r sig en masse erfaringer. Statens Byggeforskningsinstitut,  Det lokale Agenda 21 Forum og Dansk Center for By&oslash;kologi har v&aelig;ret inddraget i  byggeprocessen. </p>
  <p><strong>Husene i Herf&oslash;lge overholder en r&aelig;kke krav:</strong></p>
  <ul>
    <li>Husene skal  have et lavt energiforbrug. Det sikres ved at husene skal leve op til  lavenergi-klasse 2 i<strong> </strong><strong><a href="http://www.fremtidensparcelhuse.dk/krav/energibestemmelser.html">de nye  energibestemmelser</a></strong> i det danske bygningsreglement. </li>
    <li>Husene <strong><a href="http://www.fremtidensparcelhuse.dk/krav/svanemaerket.html">Svanem&aelig;rkes</a></strong>, hvilket stiller en r&aelig;kke krav til byggeprocessen,  energiforbrug, ventilation og materialevalg. Der skal desuden ligge en  vejledning til beboerne om milj&oslash;rigtig brug og vedligeholdelse af huset.</li>
    <li>Der skal v&aelig;re  gr&oslash;nt p&aring; grunden. Det sikres ved krav til en <strong><a href="http://www.fremtidensparcelhuse.dk/krav/biofaktor.html">biofaktor</a></strong> p&aring; mere end 0.6. </li>
    <li>Regnvand skal  nedsives, genanvendes eller ledes til regnvandsanl&aelig;g.</li>
  </ul>
  <p><strong>Svanem&aelig;rkede  huse skal s&aelig;lges p&aring; designet</strong><br>
&rdquo;Det Gr&oslash;nne Hus&rdquo; tog initiativet til projektet. Men  udveksling af viden mellem de mange forskellige producenter og eksperter, har  haft afg&oslash;rende betydning for projektets udvikling.&nbsp; </p>
  <p>- N&aring;r vi skal forklare id&eacute;en med husene for andre kommuner  eller byggefirmaer, er det meget v&aelig;rdifuldt, at vi kan henvise til Svanem&aelig;rket,  siger Ole Alm. <br>
    - Hvis vi bare havde opstillet en r&aelig;kke krav for bygningerne  her i kommunen, ville man som byggefirma have sv&aelig;rt ved at tage id&eacute;erne med  sig. Svanem&aelig;rket er for alle og kan bruges overalt. Rigtigt mange kender til  Svanem&aelig;rket og forbinder det med noget godt. Man kan s&aring; sp&oslash;rge sig selv,  hvorfor er der ikke flere energirigtige huse i Danmark. Men det er ganske  enkelt ikke en salgsfaktor. Da Rockwool byggede Seest-huset &ndash; som er et af de  mest energirigtige huse i landet &ndash; tog det to &aring;r at s&aelig;lge. Og da det endelig  blev solgt, var det p&aring; grund af lysindfaldet. Der er ingen prestige i  energirigtighed endnu. Derfor har vi lagt v&aelig;gt p&aring;, at de individuelle l&oslash;sninger  bliver integreret.&nbsp; </p>
  <p><strong>B&aelig;redygtige l&oslash;sninger er rentable </strong><br>
    Projektet vil dokumentere &oslash;konomien og rentabiliteten  omkring milj&oslash;rigtigt byggeri. Det vil g&oslash;re det lettere for almindelige  mennesker at gennemskue, hvor meget det koster at bygge sit hus efter milj&oslash;rigtige  principper. S&aring; bygherren har redskaber til at overbevise banken om, at det er  en god id&eacute; at investere ekstra i energi- og milj&oslash;venlige l&oslash;sninger. Et hus, der  kun bruger meget lidt energi til opvarmning er lidt dyrere at bygge &ndash; men denne  ekstraudgift tjenes hjem p&aring; sigt over den lavere varmeregning. Derfor er den  helt afg&oslash;rende udfordring i forbindelse med udbredelsen af lavenergi- og  milj&oslash;rigtige huse, at tilvejebringe dokumentationen der kan vise, at det er  billigere at bygge b&aelig;redygtigt i det store perspektiv. </p>
  <p><strong>Passivhuse er t&aelig;t p&aring; 0 energi</strong></p>
  <p>Et passivhus er en bygning,  der er designet optimalt med henblik p&aring; at spare energi. Der anvendes velkendte  teknikker og designprincipper, men alligevel er det lykkedes at reducere  opvarmningsbehovet til under 15 kWh/m2. Energiforbruget er s&aring;ledes  s&aring; lille, at der ikke l&aelig;ngere er behov for et konventionelt opvarmningssystem.  Samtidig betyder den gode isolering og mekanisk ventilation, at den indend&oslash;rs  komfort er bedre end normalt. </p>
  <p>Passivhuse bygger p&aring;  principper om enkelhed og optimering af bygningens komponenter: v&aelig;gge, gulve,  tage, vinduer med hensyn til energiforbrug og indeklima. Ved hj&aelig;lp af  forskellige konstruktionsprincipper kan man derfor opn&aring; en s&aelig;rlig  passivhus-standard, der er et mere energivenligt end almindeligt  lavenergibyggeri.</p>
  <p><strong>Se eksempler p&aring;</strong><br>
      <a href="http://www.passivhus.dk/"><strong>www.passivhus.dk</strong></a><br>
      <a href="http://www.europeanpassivehouses.org/"><strong>www.europeanpassivehouses.org</strong></a><br>
      <strong><a href="http://www.passivhausprojekte.de/">www.passivhausprojekte.de</a></strong> </p>
  <p><strong>Fremtidens parcelhuse: <a href="http://www.fremtidensparcelhuse.dk/">www.fremtidensparcelhuse.dk</a></strong> </p>
  <p><strong>Det gr&oslash;nne hus:</strong>    <a href="http://www.detgroennehus.dk"><strong>www.detgroennehus.dk</strong></a> </p>
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
