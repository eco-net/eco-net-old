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
<p><a href="Samsoe.doc" target="_blank">Hent artikel som word</a></p></td>
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
<td><h1>Sams&oslash;s Energiakademi </h1>
  <h2>- lokale kr&aelig;fter skaber b&aelig;redygtighed </h2>
  <p><strong>Sams&oslash;s Energiakademi udbreder erfaringer med vind,  halm og sol b&aring;de lokalt og internationalt. </strong></p>
  <h5 align="center"><img src="/webmagasin/sep2007/Havvind_Samsoe_Denmark.jpg" width="250" height="130"></h5>
  <p>Lokale kr&aelig;fter p&aring; Sams&oslash; er b&aelig;rende for Sams&oslash;s succes med  at v&aelig;re 100% selvforsynende med vedvarende energi. Sams&oslash;s Energiakademi bygger  p&aring; samarbejde og det gode eksempels magt. De f&oslash;rste sm&aring; succeser har banet  vejen for de store.</p>
  <p>Sams&oslash; er en frontl&oslash;ber i  b&aelig;redygtig sammenh&aelig;ng. Kun f&aring; danske medier har f&aring;et &oslash;je for historien. Derimod  har en r&aelig;kke af de st&oslash;rste udenlandske nyhedsmedier for l&aelig;ngst opdaget, at  Sams&oslash; er en us&aelig;dvanlig &oslash;. Sams&oslash; er blevet et bevis p&aring;, at b&aelig;redygtighed kan  fungere i praksis. De fossile br&aelig;ndsler er p&aring; vej ud. </p>
  <p><strong>En b&aelig;redygtig  frontl&oslash;ber</strong><br>
    Sams&oslash;s Energiakademi er opf&oslash;rt efter milj&oslash;rigtige  retningslinjer, med h&oslash;jisolering og energiruder, med el fra solceller og  vindm&oslash;ller. De f&aring;r varme fra et af &oslash;ens tre halmfyrede fjernvarmev&aelig;rker. Huset  er desuden et forskningscenter, hvor man kan tage imod de s&aring;kaldte  erhvervsturister, der ofte kommer rejsende langvejs fra for ved selvsyn at se  de sp&aelig;ndende l&oslash;sninger. Med eksperimentarium,  energikontor, rundvisninger og informationscenter er akademiet i sig selv et  godt eksempel p&aring;, hvad man kan p&aring; Sams&oslash;.<br>
    At Sams&oslash; skulle v&aelig;re energirigtig i det omfang, &oslash;en er i  dag, var kun en l&oslash;s id&eacute; i starten &ndash; men dog en id&eacute;. Derfor oprettede man et  energikontor, der siden udviklede sig til Sams&oslash;s Energiakademi. </p>
  <p><em>- </em>Vi har  kontakt med universiteter og tekniske skoler, forklarer S&oslash;ren Hermansen, der er  daglig leder af akademiet. Energiakademiet skal tilbyde feltstudier for  studerende og forskere. Vi skal afholde kurser og seminarer for firmaer,  institutioner og forvaltninger - og arrangementer for b&aring;de borgere og  interessegrupper. Huset skal ogs&aring; rumme en offentlig udstilling der fort&aelig;ller  om vedvarende energi og om Sams&oslash;s eksempler.</p>
  <h2>100% Selvforsynende med energi </h2>
  <p>I 1997 blev Sams&oslash; k&aring;ret som  &rdquo;Danmarks vedvarende energi &oslash;&rdquo;. I konkurrencen deltog bl.a. ogs&aring; &AElig;r&oslash; og M&oslash;n.  Der begyndte udviklingen mod den status, &oslash;en har i dag.&nbsp; Hvor man internationalt er opm&aelig;rksomme p&aring;  aktiviteterne. Sams&oslash;s skels&aelig;ttende initiativ er i international sammenh&aelig;ng  blevet et godt eksempel til inspiration for andre. Det ambiti&oslash;se m&aring;l om at  Sams&oslash; skulle v&aelig;re selvforsynende med energi i 2008 er allerede i 2007  realiseret p&aring; el-omr&aring;det. Den b&aelig;redygtige el-produktion baserer sig p&aring; flere  forhold. De 11 vindm&oslash;ller p&aring; land og de 10 vindm&oslash;ller p&aring; havet producerer mere  str&oslash;m end &oslash;en har behov for. Vindm&oslash;llernes overskud af str&oslash;m overf&oslash;res til  fastlandets net. Til geng&aelig;ld forsynes &oslash;en med str&oslash;m fra fastlandet, n&aring;r det  ikke bl&aelig;ser. I det samlede regnskab er der overskud af vedvarende energi. Fire  fjernvarmeanl&aelig;g, der fyres med halm og tr&aelig;flis, d&aelig;kker 70 % af varmeforbruget.  De t&aelig;ller ogs&aring; med p&aring; den b&aelig;redygtige konto. Endelig er der en stor m&aelig;ngde sm&aring;  private anl&aelig;g med fx solvarme. </p>
  <h2>Transporten er en udfordring</h2>
  <p>Den sidste egentlige  udfordring p&aring; &oslash;en er transporten. Men ogs&aring; her arbejder man med interessante  l&oslash;sninger. I det samlede regnskab kompenserer vindkraften for bilernes benzin-  og dieselmotorer. Men p&aring; sigt er der mulighed for alt fra brint til rapsolie.  &Oslash;ens beboere arbejder med en r&aelig;kke forskellige forslag. Eksempelvis kunne &oslash;ens  store ressource, vindkraften ogs&aring; anvendes til produktion af brint. Brinten vil  kunne bruges til busser. Det er en l&oslash;sning, der allerede anvendes.&nbsp; </p>
  <p><strong>Realistiske planer</strong><br>
    - Det har v&aelig;ret en  udfordring at f&aring; projektet gjort levende og virkeligt i folks bevidsthed,  fort&aelig;ller S&oslash;ren Hermansen. Der er rigtig mange projekter i luften, og mange  bliver ikke til noget. Folk er derfor afventende og forsigtige med at vise  deres begejstring. <br>
    - Men vi har form&aring;et at  vise folk et budget og en plan for realiseringen, der allerede fra starten i  1998 har vist sig at holde stik. Da det f&oslash;rste projekt, med 11 vindm&oslash;ller og  450 andelshavere fik succes, var det n&aelig;ste projekt, Nordby og M&aring;rup fjernvarme,  lettere at f&aring; folk med p&aring;.</p>
  <p><strong>Bred lokal forankring</strong><br>
    Opskriften p&aring; de gode  resultater synes at v&aelig;re kombinationen af ekspertise og lokal interesse. Med  energiakademiet som udgangspunkt, siger S&oslash;ren Hermansen:<br>
    - Vi har b&aring;de ingeni&oslash;rer, som  kan beregne, og lokale, som kan kommunikere. Det er utroligt vigtigt. Og s&aring;  tager vi faktisk demokratiet alvorligt. Vi kalder det &rdquo;energidemokrati&rdquo;.</p>
  <p>Energidemokratiet giver  mening, fordi &oslash;ens befolkning faktisk er optaget af de forskellige b&aelig;redygtige  l&oslash;sninger. Det er de, if&oslash;lge S&oslash;ren Hermansen, fordi de selv er en del af  l&oslash;sningerne. Sams&oslash;s befolkning har andele i vindm&oslash;llerne, landm&aelig;ndene tjener  penge p&aring; halmen til de halmfyrede fjernvarmev&aelig;rker osv. Den store lokale  interesse er derfor en vigtig del af &aring;rsagen til, at projektet fungerer s&aring;  godt. M&aring;ske har borgrne fra starten forst&aring;et projekterne. Der er ikke tale om  en omstilling, der er blevet dikteret ovenfra. Borgerne p&aring; &oslash;en har v&aelig;ret  involveret i snart hvert eneste led i processen. Den brede st&oslash;tte er en af de  interessante ting ved projektet. Flere steder er der n&aelig;sten 100% opbakning. </p>
  <p><strong>CBS NEWS</strong> </p>
  bragte i marts 2007 et indslag  om Sams&oslash; og &oslash;ens forskellige energirigtige l&oslash;sninger. Indslaget finder man  lettest ved at bes&oslash;ge <u><a href="http://www.cbsnews.com/">cbsnews.com</a>. S</u>&oslash;g efter &rdquo;Samso&rdquo;. Her finder man  ogs&aring; en r&aelig;kke interesserede amerikaneres kommentarer; som fx: &rdquo;Why are they so  much smarter in Europe?&rdquo; &nbsp;&nbsp;
  <p><strong>Energilejrskolen</strong><br>
    Det  seneste projekt fra Energiakademiet er en s&aring;kaldt energilejrskole.  Energilejrskolen bliver dels et tilbud til de 200 skoleklasser, der hvert &aring;r  bes&oslash;ger Sams&oslash;. Og dels til &oslash;ens skoler og de l&aelig;rere, der vil arbejde med energi  og milj&oslash; i undervisningen. Elever, der bes&oslash;ger energilejrskolen, f&aring;r mulighed  for selv at arbejde med energien fra sol, vind, b&oslash;lger og biomasse. </p>
  <h4>Info</h4>
  <p><a href="http://www.veo.dk/">www.veo.dk</a><br>
    <a href="http://www.samsohavvind.dk/">www.samsohavvind.dk</a></p>
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
