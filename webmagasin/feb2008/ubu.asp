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
<p><a href="/webmagasin/feb2008/OM_ubu_0208.doc" target="_blank">Hent artikel som Word</a> </p>
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
<td><h1>Det er en ommer!</h1>
  <h3>- regeringen sylter FN&rsquo;s ti&aring;r  for Uddannelse for B&aelig;redygtig Udvikling</h3>
  <p>&rdquo;Det er en  ommer&rdquo;, ville det have lydt hvis Regeringens og dermed Danmarks forel&oslash;bige  indsats for FN&rsquo;s ti&aring;r for Uddannelse for B&aelig;redygtig Udvikling (UBU) havde v&aelig;ret  vist i reklametiden p&aring; TV2. Men intet bare tiln&aelig;rmelsesvis en reklame p&aring; TV2  har der v&aelig;ret ydet af indsats, for at skabe et folkeligt engagement og kendskab  til dette ti&aring;r. Desv&aelig;rre Bertel Haarder, for du bryster dig jo af at der er  gjort meget. Men pr&oslash;v dog selv at lave en unders&oslash;gelse af hvor mange der i det  danske uddannelsessystem kender til ti&aring;ret, og arbejder med at implementere og  udvikle det. Du f&aring;r sv&aelig;rt ved at finde ret mange.</p>
  <p>S&aring; for lige at  summere op for dem der ikke er meget bekendt med UBU, s&aring; kort om UBU:<br>
    FN&rsquo;s ti&aring;r for  Uddannelse for B&aelig;redygtig Udvikling (UBU) l&oslash;ber fra 2005-2014. Den danske  regering har tilsluttet sig UNECE&rsquo;s strategi for UBU. Denne strategi indeholder  en r&aelig;kke forpligtelser og vejledninger i forhold til hvorledes Danmark engagerer  sig i FN&rsquo;s ti&aring;r for UBU.<br>
    Det er nu snart  et &aring;r siden at undervisningsminister Bertel Haarder var kaldt i samr&aring;d i  Folketingets Milj&oslash;- og Planl&aelig;gningsudvalg (22. marts 2007) vedr&oslash;rende  Undervisningsministeriets indsats for UBU. P&aring; dette samr&aring;d orienterede Bertel  Haarder om, at indsatsen indeb&aelig;rer, at der inden udgangen af 2007 (fase 1) vil  ske en:&nbsp; </p>
  <ol>
    <li>Gennemgang  af aktuelle politiske initiativer, juridiske og operationelle strukturer,  finansielle mekanismer samt uddannelsesaktiviteter, herunder p&aring;pegning af evt.  hindringer eller mangler.</li>
    <li>Freml&aelig;ggelse  af udkast til en relevant national implementeringsplan og koordinering med  regeringens opl&aelig;g til en strategi for b&aelig;redygtig udvikling. </li>
    <li>Udvikling  af evalueringsmetoder og indikatorer, prim&aelig;rt kvalitative, for implementering  af UBU og at Danmark agter at tage udgangspunkt i UNECE&rsquo;s arbejde med  indikatorer.</li>
  </ol>
  <p>&nbsp;</p>
  <p>Men forel&oslash;big  forg&aring;r en eventuel indsats i det hemmelige og uden at offentligheden f&aring;r  kendskab til ti&aring;ret.</p>
  <p>Hvorfor nu det?  Har regeringen ikke selv skiftet hest i forhold til milj&oslash; og klima? Og satser  alt p&aring; at f&aring; en stor succes med klimatopm&oslash;det i 2009. I den forbindelse har  Undervisningsministeriet netop afsat et st&oslash;rre bel&oslash;b til at etablere en  klimaundervisningsportal p&aring; Internettet. Det st&aring;r desv&aelig;rre i &aring;benlys kontrast  til det meget lave aktivitets niveau for UBU, et projekt, der kan betegnes som  &rsquo;det lange seje tr&aelig;k&rsquo;, n&aring;r det g&aelig;lder at skabe og udvikle en indsats for  folkelig mobilisering og omstilling til b&aelig;redygtighed. UBU-begrebet stammer  s&aring;ledes fra Agenda 21-delklarationen (kap. 38), og har fra FNs side f&aring;et et  helt ti&aring;r i erkendelse af at der skal et st&oslash;rre indsats til.</p>
  <p>Da ansvaret i  Danmark ligger hos Undervisningsministeriet, er det bet&aelig;nkeligt at l&aelig;se for  nylig i Information at Bertel Haarder mener at temaet  allerede er en del af uddannelsessystemet, da temaer for b&aelig;redygtig udvikling  indg&aring;r i en r&aelig;kke bekendtg&oslash;relser og l&aelig;rerplaner i folkeskolen og i  ungdomsuddannelserne.</p>
  <p>Desuden  siger han: &quot;Vi er hverken forsinkede eller bagud. Vi f&oslash;lger den tidsplan  vi hele tiden har lagt,&quot;</p>
  <p>Hvad for en tidsplan? Og dertil m&aring; man sp&oslash;rge, hvor er de  andre ministerier? S&aring;ledes blev der i det f&oslash;rste &aring;r af ti&aring;ret fra  Undervisningsministeriet udmeldt at der blev etableret et tv&aelig;rministerielt  udvalg best&aring;ende af bl.a. F&oslash;devarerministeriet, Indenrigs- og  Sundhedsministeriet, Integrationsministeriet, Kulturministeriet,  Milj&oslash;ministeriet, Familieministeriet, Videnskabsministeriet,  Transportministeriet, Udenrigsministeriet og Undervisningsministeriet.</p>
  <p>Hvor  er de andre ministerier henne i forhold til at f&aring; etableret UBU i Danmark. Og  hvordan kan man overhovedet seri&oslash;st etablere klimaaktiviteter uden at  sammenkoble visionerne for UBU. Jeg efterlyser hermed regeringen og  ministerierne i det tv&aelig;rministerielle udvalg - hvem vil tage over, n&aring;r nu  Bertel Haarder ikke har forst&aring;et at UBU ikke blot er mere  naturfagsundervisning?</p>
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
