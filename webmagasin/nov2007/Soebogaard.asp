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
<p><a href="Soebogaard_Guarana.doc">Hent artikel som Word</a> </p>
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
<td><h2><strong>&rdquo;Du skal ej spise  kirseb&aelig;r med herreb&oslash;rn, thi de spytter stenene i hovedet p&aring; dig&rdquo;</strong></h2>
  
    <span class="listheader"><em>Originaler og kopier, S&oslash;bogaard  og Guaran&aacute;Power</em>    </span>
    <p><img src="/webmagasin/nov2007/GP_bottle.jpg" alt="GP Bottle" width="108" height="300" align="left">P&aring; S&oslash;bogaard i Borup p&aring; Sj&aelig;lland vil man hellere lave noget  nyt end noget mere af det gamle. Derfor udvides r&aelig;kken af forskellige &oslash;kologiske  herligheder hele tiden. Honning, marmelade og saft, der m&aring;ske er det mest kendte:  solb&aelig;rsaft, bromb&aelig;rsaft og hindb&aelig;rsaft. Bl&aring;b&aelig;r, traneb&aelig;r, kirseb&aelig;r og ribs. Og  hylleblomst. H&aelig;ldt p&aring; store flasker, mindre flasker og sm&aring; flasker - s&aelig;rligt de  s&aring;kaldte caf&eacute;-flasker har gjort S&oslash;bogaard udbredt i Danmark, og n&aelig;rl&aelig;ses  etiketten p&aring; flasken med &oslash;kologisk kirseb&aelig;rsaft findes ovenn&aelig;vnte advarsel. Den vidner om den ligefremme og meget originale m&aring;de at  g&oslash;re arbejdet p&aring;, som man praktiserer p&aring; S&oslash;bogaard. </p>
  <p>Advarslen er et let omsat ordsprog  fra middelalderen: - <em>Vi har en  interesse for genren</em>, forklarer <br>
    Poul Hansen. Han begyndte at lave &oslash;kologisk honning p&aring;  S&oslash;bogaard i 1976 &ndash; og forts&aelig;tter:<br>
    - <em>Da vi startede for  30 &aring;r siden hed det ikke &rdquo;&oslash;kologisk&rdquo;. Det var ikke opfundet endnu. Dengang hed  det biodynamisk. I dag er &oslash;kologi omfattet af en masse love og regler &ndash; og det  kan ogs&aring; v&aelig;re fint nok. Men reglerne for hvad man kan kalde &oslash;kologisk er for  tillempede. Fx kan man smage sin marmelade til med </em><em>alt muligt og tyske &aelig;bler kan f&aring; det  &oslash;kologiske &Oslash;-m&aelig;rke, selvom de er spr&oslash;jtede. N&aring;r vi laver &oslash;kologi, for  det skal man jo, er der ikke noget ekstra tilsat. Der er fx kun jordb&aelig;r og  sukker &ndash; eller &aelig;blesaft - i vores jordb&aelig;rmarmelade.</em>&nbsp;&nbsp; </p>
  <ul type="disc">
    <li><strong>Danmarks bedste &aelig;blemost</strong></li>
  </ul>
  <p><img width="306" height="234" src="Soebogaard_clip_image001.gif" align="left" hspace="12" alt="Tekstboks: S&oslash;bogaard kan ikke k&oslash;bes i de store supermarkeder, for man vil hellere lave nye produkter end at s&aelig;lge store m&aelig;ngder af de gamle.  Se n&aelig;rmere p&aring; Soebogaard.dynamicweb.dk/Default.asp?ID=72.    Hvis man kunne t&aelig;nke sig at smage, kan man k&oslash;be S&oslash;bogaards produkter mange forskellige steder, men helsekostbutikker er et godt sted at starte.    K&oslash;b S&oslash;bogaard p&aring; Internettet:  &bull;	Danmark: fx gaardbutikkendirekte.dk   &bull;	Sverige: fx mossagarden.se  &bull;	Norge kunne bruge et godt sted  ">Som med s&aring; mange andre &oslash;kologiske produkter  kan en original vinkel &ndash; eller ganske enkelt en solid afstand til den  almindelige, fantasil&oslash;se markedsf&oslash;ring &ndash; v&aelig;re en del af produkternes succes.  Kvalitet alene opfattes sj&aelig;ldent som tilstr&aelig;kkeligt i markedssammenh&aelig;ng. Ikke  desto mindre er kvalitet langt mere afg&oslash;rende for folkene p&aring; S&oslash;bogaard end  historier og marketing. Til sp&oslash;rgsm&aring;let hvorfor deres &oslash;kologiske produkter har  f&aring;et s&aring; stor en succes, svarer Poul Hansen meget beskedent, at d&eacute;t aner han  ikke. <br>
    - <em>Vi har ikke en eller  anden mediestrategi. For mange &aring;r siden var der en meget trendy caf&eacute; i &Aring;rhus,  Casablanca, der kom og spurgte om de m&aring;tte s&aelig;lge vores &aelig;blemost. Vi lavede &ndash;  for nu at klappe os selv lidt p&aring; ryggen &ndash; Danmarks bedste &aelig;blemost. Og derefter  begyndte en masse andre caf&eacute;er at ville s&aelig;lge vores &aelig;blemost og vi begyndte at  lave nogle nye slags.&nbsp; </em></p>
  <ul type="disc">
    <li><strong>Kunst og sodavand</strong></li>
  </ul>
  <p>Ved siden af sine egne produkter distribuerer S&oslash;bogaard  sodavanden <em>Guaran&aacute; Power</em>, der laves af kunstnergruppen Superflex. Det er  en stort set upr&oslash;vet form for samarbejde, selv i international sammenh&aelig;ng, men  p&aring; S&oslash;bogaard beholder man benene p&aring; jorden:<br>
      <em>- Vi har valgt at  distribuere Guaran&aacute; Power og  har gjort det i et par &aring;r. Den er ikke &oslash;kologisk, </em><br>
      <em>men den er fair trade.  Og s&aring; er det jo meget sjovt at en kunstnergruppe laver s&aring;dan et projekt. Det er  jo meget originalt, s&aring; det ville vi gerne st&oslash;tte.&nbsp; </em><br>
      <em>Guaran&aacute; Power</em> ligner n&aelig;sten til forveksling den  sodavand, der er dominerende p&aring; det sydamerikanske marked. Men den er ogs&aring; et  stykke politisk kunst; med et betydningsindhold der s&aelig;tter den b&aelig;redygtige  udvikling p&aring; dagsordenen. Det politiske budskab  er en del af kunstv&aelig;rkets betydning, selvom sodavanden stadigv&aelig;k er en helt  almindelig guaran&aacute;-sodavand. </p>
  <p><img width="306" height="263" src="Soebogaard_clip_image002.gif" align="left" hspace="12" alt="Tekstboks: Guaran&aacute; er et b&aelig;r med en opkvikkende effekt. Det vokser i det brasilianske Amazonomr&aring;de. Udbredelsen af forskellige guaran&aacute;-produkter i almindelighed og de forskellige guaran&aacute;-drikke i s&aelig;rdeleshed er um&aring;delig stor i hele Sydamerika, - hvilket sikkert har v&aelig;ret en medvirkende &aring;rsag til, at der er opst&aring;et karteller - og at multinationale sodavandsfirmaer, s&aelig;rligt AmBev og PepsiCo - i tidens l&oslash;b har sat sig p&aring; samtlige produktionsled. Sodavandsfirmaerne bestemmer p&aring; nuv&aelig;rende tidspunkt selv hvor meget de vil betale, for de er de har monopol p&aring; k&oslash;b af guaran&aacute; - s&aring; b&oslash;nderne f&aring;r f&aelig;rre og f&aelig;rre penge for de b&aelig;r de producerer. Faktisk er prisen p&aring; guaran&aacute;-b&aelig;r faldet 80 % i l&oslash;bet af nogle f&aring; &aring;r.">Hvor S&oslash;bogaards &oslash;kologiske produkter p&aring; alle m&aring;der  er originale, har Superflex alts&aring; valgt en radikalt anden strategi. <em>Guaran&aacute; Power</em> kopierer ikke alene en anden  sodavands udseende, men hele dens eksisterende mediestrategi. Der g&oslash;res ikke  noget for at skjule, at der her er tale om en skaml&oslash;s kopi &ndash; med navnet <em>Guaran&aacute;  Power</em> p&aring; det, der ligner en ekstra m&aelig;rkat, klistret oven den oprindelige. N&aelig;sten  alt hvad man forbinder med den originale sodavand, kan man ogs&aring; forbinde med  kopi-drikken. Ved at efterligne p&aring; den m&aring;de, kommer de sm&aring; forskelle imidlertid  frem i lyset; s&aring; forankret er vores opfattelse af ophavsrettigheder og  originalitet, at den udtalte lighed g&oslash;r det let at finde den lille, men  altafg&oslash;rende forskel. Det ene produkt er fremstillet p&aring; en b&aelig;redygtig m&aring;de -  det er det andet ikke. </p>
  <ul type="disc">
    <li><strong>B&aelig;redygtige vilk&aring;r</strong></li>
  </ul>
  <p><img width="306" height="222" src="Soebogaard_clip_image003.gif" align="left" hspace="12" alt="Tekstboks: Superflex har, ud over Guaran&aacute; Power lavet en r&aelig;kke projkter, fx  Supergas projekt fra slutningen af halvfemserne. Billige biogasanl&aelig;g i bl.a. Tanzania og Cambodja. Biogasanl&aelig;ggene anvender organiske materialer &ndash; kom&oslash;j eksempelvis, og biogassen kan b&aring;de bruges til komfur og lys. I dag er Supergas et selvst&aelig;ndigt selskab, Supergas Ltd., der arbejder p&aring; en videre udbredelse af biogasanl&aelig;ggene. Superflex lavede en kopi af PH5-lampen, - modificeret s&aring; den ikke bruger str&oslash;m, men biogas, hvorved den kan bruges af mennesker der bor i omr&aring;der, hvor der ikke er adgang til elektricitet.    ">Et hvilket som helst produkt, der er  fremstillet p&aring; b&aelig;redygtige vilk&aring;r st&aring;r i denne situation. Det konventionelle  produkt er standarden og beh&oslash;ver ikke en ekstra betegnelse &ndash; s&aring; hvis man  fremstiller noget b&aelig;redygtigt eller &oslash;kologisk, er man n&oslash;dt til at skilte med  det. At fremstille et produkt p&aring; et b&aelig;redygtigt grundlag er en m&aring;de at adskille  sig fra den g&aelig;ldende praksis, alene af den &aring;rsag at b&aelig;redygtighed endnu er en  sj&aelig;ldenhed.<br>
      <em>- B&aelig;redygtighed har  begr&aelig;nsninger. Skal man lade v&aelig;re med at spise appelsinmarmelade, fordi  appelsinerne bliver transporteret med containerskibe? Vi vil gerne aftage fra  de sm&aring; avlere. Vores r&oslash;rsukker kommer fra Brasilien, men skal man lade v&aelig;re med  at aftage fra de mange sm&aring; leverand&oslash;rer fordi sukkeret bliver transporteret s&aring;  langt? </em></p>
  <p><em>Guaran&aacute;  Power</em> henviser til en anden sodavand, ingen tvivl om det. Det v&aelig;sentlige er blot, at  den selv er langt bedre end originalen, alene p&aring; grund af m&aring;den den bliver  fremstillet p&aring;. Var der ikke tale om et kunstv&aelig;rk, ville det naturligvis v&aelig;re  bet&aelig;nkeligt at kopiere et produkt i n&aelig;sten alle henseender &ndash; og om  b&aelig;redygtighed kan retf&aelig;rdigg&oslash;re det, m&aring; v&aelig;re et &aring;bent sp&oslash;rgsm&aring;l. Er der en god  grund til at produkter, fremstillet under b&aelig;redygtige vilk&aring;r, ikke m&aring; stille  sig p&aring; skuldrene af de konventionelle produkter? S&oslash;bogaard henviser  ikke. Der er ren originalitet i flaskerne. </p>
  <p align="center"><img src="/webmagasin/nov2007/aesel-th_pg.jpg" alt="&AElig;sel" width="113" height="176"></p>
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
