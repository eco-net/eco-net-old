<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<%' curtab=0 %>
<style type="text/css">
<!--
.style1 {
	font-weight: bold;
	font-style: italic;
}
-->
</style>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;KLIMA-NETV&AElig;RK</td>
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
<tr> 
<td>- et projekt med  m&aring;let at udvikle et netv&aelig;rk for unge om b&aelig;redygtig udvikling</td>
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
<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
  <td><p><span class="contentHeader1">Klimanetv&aelig;rk for Unge</span><br>
  </p>
    <span class="contentHeader1">Fra b&aelig;redygtighed til klima og tilbage</span>
    <p>Med st&oslash;tte fra Dansk  Folkeoplysnings Samr&aring;d har &Oslash;ko-net i efter&aring;ret 2006 og for&aring;ret 2007 opstartet  et udviklingsprojekt med udvikling af et Klimanetv&aelig;rk for Unge. Et projekt der  dog undervejs blev l&oslash;bet helt over ende af det store fokus der kom p&aring;  klimaproblematikken, et skred der skete i efter&aring;ret 2006 hvor Al Gore havde  premierer p&aring; sin store film om klimaet &ndash; en Ubekvem Sandhed.</p>
    <p>Sp&oslash;rgsm&aring;let &eacute;r, og  det ikke n&aelig;rmere er et B&aelig;redygtighedsnetv&aelig;rk for Unge, der er brug for. Gerne  med afs&aelig;t i klimakrisen og klimaproblematikken, da den &aring;benbart er til at  forst&aring;. Men hvad er l&oslash;sningen. For unge mennesker m&aring;ske at forst&aring; hvordan et  b&aelig;redygtigt fodaftryk ser ud. Og helt konkret kan unge v&aelig;re med til at s&aelig;tte  b&aelig;redygtighed p&aring; dagsordenen via FN-ti&aring;ret for Uddannelse for B&aelig;redygtig  Udvikling (der kan l&aelig;ses mere om p&aring; www.ubu10.dk). Alle unge er&nbsp; i gang med uddannelse p&aring; et eller andet  niveau, og alle uddannelser b&oslash;r v&aelig;re i gang med at omstille uddannelserne til  at kunne leve op til ambitionerne omkring UBU.</p>
    <span class="contentHeader1">Baggrunden for projektet</span>
    <p>Baggrunden for  projektet skal findes i at&nbsp;de menneske skabte klima&aelig;ndringer er nu blevet  en erkendt realitet og udg&oslash;r nu en af de st&oslash;rste trusler imod den b&aelig;redygtige  udvikling af det danske samfund og det globale samfund.</p>
    <p>Der er derfor meget  der peger p&aring; at problematikkerne omkring klima&aelig;ndringer vil blive et de  fremtidige st&oslash;rste debat emner og v&aelig;re centralt i den demokratiske debat i  Danmark.</p>
    <p>Klima&aelig;ndringer har  imidlertid op til nu v&aelig;ret n&aelig;sten totalt frav&aelig;rende i den folkelige dialog.  Samtidig viser unders&oslash;gelser, at folks viden omkring hele problem komplekset  klima&aelig;ndringer er meget begr&aelig;nset.</p>
    <p>Der er derfor et  stort behov for en folkelig oplysningsindsats p&aring; omr&aring;det.</p>
    <p>Klimaproblematikken  er et klassisk eksempel p&aring; det centrale i begrebet b&aelig;redygtig udvikling.<br>
      At nutidige  handlinger (eller frav&aelig;ret af handlinger) rammer andre mennesker til en anden  tid og/eller et andet sted.</p>
    <p>I Danmark vil det  v&aelig;re den yngre generation der mest markant vil komme til at m&aelig;rke  konsekvenserne af de klima&aelig;ndringer der allerede er ved at ske og som vil komme  til at finde sted.<br>
      Det vil v&aelig;re deres  fremtidige livsvilk&aring;r som i st&oslash;rst omfang vil blive truet af den manglende  b&aelig;redygtighed i udviklingen.</p>
    <p>Det vil derfor ogs&aring;  v&aelig;re den yngre generation, der vil v&aelig;re mest motiveret til at g&aring; aktivt ind i  et folkeoplysnings arbejde. Samtidig ved vi fra vores hidtidige aktiviteter at  den generation indtil nu kun har v&aelig;ret lidt involveret i det folkelige  milj&oslash;arbejde.<br>
      Dette skyldes  muligvis at dette arbejde har v&aelig;ret pr&aelig;get af tidligere tiders  aktivitetsformer.<br>
      Det m&aring; derfor  erkendes, at der er brug for nye aktivitetsformer hvis det store potentiale,  der ligger i den yngre generation, skal inddrages aktivt i et folkeligt  oplysnings arbejde omkring klima problematikkerne.</p>
    <p>&Oslash;ko-net vil derfor  iv&aelig;rks&aelig;tte et udviklingsprojekt for dette arbejde, projektet vil v&aelig;re baseret  p&aring; f&oslash;lgende principper:<br>
      Netv&aelig;rks baseret.<br>
      Hente inspiration fra  principperne bag det norske projekt: P&aelig;dagogik for de rige.<br>
      Baseret p&aring;  principperne bag Uddannelse for B&aelig;redygtig Udvikling.<br>
      Refleksion &ndash; dialog &ndash;  aktivitet.</p>
    <p><u>L&aelig;s mere om projektet  her.</u></p>
    <p><em>ovenst&aring;ende link skal f&oslash;re hen til:</em></p>
    <p>Klimanetv&aelig;rk for Unge</p>
    <p><strong class="contentHeader1">Metoden</strong> der vil blive brugt i  dette projekt har som udgangspunkt at unge mennesker har brug for nye  informationsmetoder hvis de skal engagere sig i et formidlingsarbejde. De  traditionelle informationsm&aring;der er ikke i stand til at skabe et engagement. Der  er brug for en form der appellerer til de unge samt skabe mulighed for  aktivitet.</p>
    <p>Den metode for informationsformidling der vil  blive brugt vil have to elementer:</p>
    <p>1. Formidling af rent saglige informationer om </p>
    <ul type="disc">
      <li>&Aring;rsagerne       til klimaforandringerne.</li>
      <li>Hvilke       klimaforandringer der kan forventes</li>
      <li>Klima&aelig;ndringernes       konsekvenser for vores livsvilk&aring;r.</li>
    </ul>
    <p>2. Samt en mere aktivitets pr&aelig;get  informationsformidling hvor modtageren gennem forskellige aktivitetsformer  konfronteres med nye og overraskende indgange til konsekvenserne af  klima&aelig;ndringerne. Overraskelseseffekten af disse nye informationer skal gerne  bevirke at modtageren begynder at reflektere over disse nye informationer,  informationer som ikke tidligere var i modtagerens bevidsthed.<br>
      Refleksionen skal gerne lede til at der skabes  nye muligheder for dialog og senere til aktivitet.</p>
    <p>Det er vigtigt at der i aktionsformen holdes en  balance.<br>
      At den er saglig<br>
      At den er utraditionel uden at blive plat. <br>
      At den indeholder et provokatorisk element uden  at den skaber konflikt.<br>
      At den p&aring;peger de elementer af moralske krav der  m&aring;tte v&aelig;re uden den bliver moraliserende.</p>
    <p>Det vil v&aelig;re vigtigt at aktivitetsformen ikke  bliver moraliserende, men fokuserer p&aring; hvad den enkelte kan g&oslash;re for at  medvirke til at de negative konsekvenser af de klima&aelig;ndringer der kommer blive  reduceret mest muligt.<br>
      Der skal fokuseres p&aring; at det facts at den m&aring;de  vi lever p&aring; i vores del af verdenen har nogle konsekvenser for andre  generationer og for andre mennesker globalt set.<br>
      Projektet kan ogs&aring; ses som en mulig ventil for  de unge mennesker som kommer i ber&oslash;ring med projektet og som vil f&oslash;le en  uretf&aelig;rdighed i m&oslash;det med konsekvenserne af klima&aelig;ndringerne.</p>
    <p>De folkeoplysende aktivitetsformer, der gerne  skulle komme ud af dette projekt, vil have karakter af stunts. Et eksempel  kunne v&aelig;re at stille sig op i et lavtliggende omr&aring;de, som vil v&aelig;re meget truet  af at blive opslugt af havet ved stigende vandstand som f&oslash;lge af varmere  globalt klima. Og der &rdquo;konfrontere&rdquo; folk med disse kendsgerninger og sp&oslash;rge  hvor de s&aring; vil flytte hen, men is&aelig;r hvad der kan g&oslash;res for at afv&aelig;rge de v&aelig;rste  konsekvenser.</p>
    <p>Den m&aring;de at formidle informationer omkring  klimaproblematikkerne kan ses som en metode til at give en gruppe af unge et  redskab til at skabe en debat og aktiviteter, om et emne der har stor  ber&oslash;ringsflade til deres fremtidige livsvilk&aring;r. Samtidig kan den blive en  vigtig indgang til at de kan indg&aring; i en demokratisk proces om fordeling af  v&aelig;rdier i samfundet:<br>
  &Oslash;konomisk  v&aelig;kst og materielle goder her og nu<br>
      kontra<br>
      Fremtidige  livsvilk&aring;r for kommende generationer og livsvilk&aring;rene for mennesker andre  steder p&aring; kloden, is&aelig;r med verdensborgere i syd. </p>
    <p>I projektevalueringen vil der blive lagt v&aelig;gt p&aring;  at dokumentere i hvilket omfang denne form for folkeoplysning er i stand til at  engagere de unge og hvordan det er muligt at undg&aring; de faldgrupper, som der  ligger latent i en s&aring;dan form. Projektevalueringen skal ogs&aring; give en indikation  af effekten af den aktionsform der er indbygget i informationsformidlingen til  den endelige m&aring;lgruppe, samt hvordan denne aktionsform fungerer  demokratisk.&nbsp;</p>
    <p><strong class="contentHeader1">Netv&aelig;rket</strong><br>
      Den umiddelbare <strong>m&aring;ls&aelig;tning</strong> for dette projekt er s&aring;ledes  at udvikle og dokumentere en proces, der kan skabe et netv&aelig;rk af unge  mennesker, der aktivt vil deltage i en spredning af information omkring  klimaproblematikker og b&aelig;redygtig udvikling. <br>
  &nbsp;&nbsp;  Den langsigtede m&aring;ls&aelig;tning for projektet er en etablering af et  ungdomsnetv&aelig;rk i organisationen &Oslash;ko-net, et netv&aelig;rk, der kan formidle oplysning  om klima&aelig;ndringer og b&aelig;redygtig udvikling og iv&aelig;rks&aelig;tte aktiviteter og debat  omkring disse emner. <br>
  &nbsp;&nbsp;  Det er v&aelig;sentligt at der bliver tale om en netv&aelig;rksstruktur, der  er tilg&aelig;ngelig, og at der dannes grundlag for etableringen af fora p&aring;  netv&aelig;rksmedlemmernes pr&aelig;misser. Netv&aelig;rkets form m&aring; v&aelig;re n&aelig;rv&aelig;rende og ligne  medlemmernes kommunikationsform, for s&aring; effektivt som muligt at kunne formidle  information.</p>
    <p><br>
      <strong class="contentHeader1">Informationsm&oslash;der</strong><br>
      Forud for informationsm&oslash;derne, vil  der blive afholdt en workshop med projektf&oslash;lgegruppen, hvor id&eacute;en  videreudvikles, de kommunikative metoder udvikles og rapporteringsprocedurerne  fastl&aelig;gges. Der vil blive udarbejdet informationsmateriale omkring projektet,  klimaproblematikkerne og b&aelig;redygtig udvikling og de grundl&aelig;ggende elementer for  et internetbaseret netv&aelig;rksm&oslash;dested for projektet vil blive ridset op. Denne  workshop vil blive afholdt i Ollerup. </p>
    <p>En r&aelig;kke skoletyper  (produktionsskole, gymnasiet, efterskole, h&oslash;jskole) vil blive kontaktet  vedr&oslash;rende afholdelsen af informationsm&oslash;derne. </p>
    <p>Informationsm&oslash;derne har til  hensigt at informere om klimaforandringerne, deres &aring;rsager og mulige  konsekvenser. Der skal tilstr&aelig;bes en relativ enkel og balanceret freml&aelig;ggelse,  is&aelig;r med v&aelig;gt p&aring; konsekvenserne, som skal fremstilles gennem konkrete  eksempler. Det vil v&aelig;re vigtigt, at der gennem m&oslash;det skabes en forst&aring;else af,  at den m&aring;de vi lever p&aring; p&aring;virker udviklingen af klimaet, hvilket har  konsekvenser for livsvilk&aring;rene for fremtidige generationer og for andre  mennesker. M&oslash;det skal skabe baggrund for, at de unge mennesker kan reflektere  over klima&aelig;ndringernes konsekvenser for dem selv og for andre - og skabe  grobund for en dialog.<br>
        <u>Informationsm&oslash;derne skal  fungere som katalysator for etableringen af netv&aelig;rkerne, der t&aelig;nkes, p&aring; l&aelig;ngere  sigt at kunne udvikle sig selvst&aelig;ndigt.&nbsp; </u></p>
    <p>Deltagernes reaktioner, sp&oslash;rgsm&aring;l  og tilkendegivelser vil blive dokumenteret, ligesom deltagerne vil blive  opfordret til at give feedback.</p>
    <p><strong class="contentHeader1">Aktiviteter for aktivister</strong><br>
      Informationsm&oslash;derne vil  forh&aring;bentlig medf&oslash;re s&aring; mange tilkendegivelser fra interesserede unge til at  v&aelig;re aktive med at arbejde videre med klimaproblematikkerne og b&aelig;redygtig  udvikling.<br>
      For disse vil der blive afholdt  workshops. I disse workshops vil der blive orienteret videre om grundideerne i  projektet, om netv&aelig;rksarbejdsformen og om nogle af mulighederne for det videre  arbejde. Workshoppen skulle gerne munde ud i at der etableres et egentlig  netv&aelig;rk for det videre arbejde &ndash; eksempelvis med interesserede fungerende som  forankringspunkter for spredningen af information.</p>
    <p><strong><em>Projektf&oslash;lgegruppe</em></strong></p>
    <p><em>Der er til projektet tilknyttet en  projektf&oslash;lgegruppe af ressource personer (7 personer), der vil indg&aring; i et  arbejde omkring ide udvikling, analyse af projektforl&oslash;bet og dialog/r&aring;dgivning  omkring udviklingsforl&oslash;bet.</em></p>
    <p><em>Der skal afholdes et opstartende m&oslash;de  og evt. en mindre workshop med projektf&oslash;lgegruppen hvor projekt id&eacute;en  videreudvikles, de kommunikative metoder udvikles og rapporteringsprocedurerne  fastl&aelig;gges.</em></p>
    <p><em>Der skal udarbejdes informations  materiale omkring projektet, klimaproblematikkerne og b&aelig;redygtig udvikling.  Dertil dette internet-baseret netv&aelig;rksm&oslash;dested for projektet.</em></p>
    <p><em>Erfaringsopsamling og projekt  afrapportering</em><br>
        <em>Projektf&oslash;lgegruppen m&oslash;des for at  opsamle og evaluere erfaringerne for det hidtidige projektforl&oslash;b samt hvis  n&oslash;dvendigt, at give anbefalinger til det videre forl&oslash;b.</em><br>
        <em>Hvis det er muligt, afholdes der en  workshop hvor aktivisterne m&oslash;des med projektf&oslash;lgegruppen for at evaluere og  erfaringsopsamle omkring projektforl&oslash;bet, videreudvikle konceptet og planl&aelig;gge  videre aktiviteter.</em><br>
        <em>Der udarbejdes ogs&aring; en kortfattet  rapport om erfaringerne fra projektet.</em></p>
    <p class="style1">Projektf&oslash;lgegruppen best&aring;r af:</p>
    <p><strong><em>Helga Mathiassen, stud. p&aring; RUC</em><br>
        <em>Kristoffer Thur&oslash;e, demokratimedarbejder  p&aring; Kraftwerket</em><br>
        <em>Peter Mundthe-Kaas, Kraftw&aelig;rket</em><br>
        <em>Claus Heinberg , Lektor p&aring; RUC - Tek-sam</em><br>
        <em>Birgitte Hoffmann, Faggruppen for  B&aelig;redygtig Byudvikling, BYG.DTU</em><br>
        <em>Kirsten Hasberg, Milj&oslash;- og  energir&aring;dgiver</em><br>
        <em>Asbj&oslash;rn Wejdling, stud. p&aring; RUC</em></strong></p>
    <p><strong><em>Fra &Oslash;ko-net&rsquo;s sekretariat deltager:</em></strong></p>
    <p><strong><em>Lars   Myrthu-Nielsen, sekretariatsleder</em></strong></p>
    <p>**</p>
    <p>Kontakt/n&aelig;rmere oplysninger f&aring;s hos sekretariatsleder Lars Myrthu-Nielsen:</p>
    <p>&Oslash;ko-net&nbsp;<br>
      Svendborgvej 9,  Ollerup<br>
      5762 Vester Skerninge</p>
    <p>Tlf.: 62 24 43 24<br>
      Mobil: 40 73 43 24<br>
      E-mail: lmn@eco-net.dk</p>
    <p>Hjemmesider:&nbsp;<br>
      <a href="http://www.eco-net.dk">www.eco-net.dk</a>&nbsp; &nbsp;<br>
      <a href="http://www.eco-info.dk">www.eco-info.dk&nbsp; </a>&nbsp;<br>
      <a href="http://www.bu.dk">www.bu.dk</a>&nbsp; <br>
      <a href="http://www.ubu10.dk">www.ubu10.dk</a><br>
      --------------------------------------------------&nbsp;<br>
  &Oslash;ko-net er medlem af  de tre paraplyorganisationer: &ldquo;92-gruppen &ndash; Forum for B&aelig;redygtig Udvikling&rdquo; (21  danske milj&oslash;- og udviklingsorganisationer), &ldquo;Dansk Folkeoplysnings Samr&aring;d&rdquo; (38  landsd&aelig;kkende, folkeoplysende organisationer) og &ldquo;Projektr&aring;dgivningen&rdquo; (194  danske udviklingsorganisationer)</p>    <p class="contentHeader1">&nbsp;</p>    </td>
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
