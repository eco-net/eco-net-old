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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;LEVERAND&Oslash;RER</td>
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
<td>
Leverandørerne til vores mad og musik arrangementer er så vidt muligt økologiske og lokale.<br><br>
Her er en kort beskrivelse af leverandørerne til det første arrangement fredag den 2. maj 2003.
</td>
</tr> 
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #BeginLibraryItem "/Library/newsmail.lbi" --><table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;NYHEDSBREV</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td colspan="2" class="sidebarText"> 
<script src="/shared/newsmail.js"></script>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="newsmail" action="" onSubmit="return newsMail(1,document.newsmail.themail.value,document.newsmail.site.value);">
<tr>
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
<tr> 
<td><span class="formLabeltext">Din emailadresse </span> 
<input type="text" name="themail" value="" class="formInputobject">
<input type="hidden" value="1" name="site">
<input type="button" value="Afmeld" class="formbutton"  name="afmeld" onClick="javascript:newsMail(2,document.newsmail.themail.value,document.newsmail.site.value);">
<input type="submit" value="Tilmeld" name="tilmeld" class="formSubmitbutton">
</td>
</tr>
<tr>
<td><img src="/shared/graphics/spacer.gif" width="3" height="8"></td>
</tr>
</form>
</table>
</td>
</tr>
</table><!-- #EndLibraryItem --><!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="100%" valign="top" name="maincontent"> 
<table width="98%" height="98%" border="0" cellspacing="0" cellpadding="5">
<tr> 
<td align="top"><img src="/shared/graphics/pages/logo_dgg.gif"></td>
<td width="240" valign="top"><a href="http://www.dengronnegren.dk">Den Gr&oslash;nne 
Gren</a><br>
VesterBregninge 17<br>
5970 &AElig;r&oslash;sk&oslash;bing<br>
Tlf. 62 58 20 45<br>
<br>
Den Gr&oslash;nne Gren danner ramme om &oslash;kologisk spisested, mad ud af huset, 
d&oslash;gnkiosk, v&aelig;relsesudlejning, kulturelle arrangementer musik og udstillinger.<br>
</td>
<td rowspan="2"><img src="/shared/graphics/pages/aroe.jpg"> </td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="2"><span class="tdmargin">Den Gr&oslash;nne 
Gren er kendt for sit kulinariske k&oslash;kken, der rummer et godt udvalg af 
hjemmelavede produkter. Der serveres altid hjemmebagt landbr&oslash;d og kage. 
Gr&oslash;ntsagerne er altid friske for det meste dyrket lokalt.</span></td>
</tr>
<td width="145" align="top"><img src="/shared/graphics/pages/logo_nhg.gif" width="125" height="125"></td>
<td width="240" valign="top">
<p>Nørhavegård<br>
Sdr. Landevej 34<br>
5900 Rudkøbing<br>
tlf. 62 51 14 28<br>
<br>
K&oslash;d fra &oslash;kologiske 
stude<br>
<br>
N&oslash;rhaveg&aring;rd ligger lige syd for Rudk&oslash;bing p&aring; Langeland. 
Dyrene lukkes ud p&aring; gr&aelig;s, s&aring; snart jorden kan b&aelig;re, dvs. 
de har adgang til gr&aelig;s i ca. 8-9 mdn. af &aring;ret. Her gr&aelig;sser de 
p&aring; Tranek&aelig;r Gods' store naturarealer hele sommeren og tilf&oslash;rer 
de ellers braklagte omr&aring;der nyt liv og fuglefl&oslash;jt. <br>
<br>
Dyrene vokser i det tempo og af det foder, som naturen har bestemt. Det betyder, 
at de f&aring;r en langsommere v&aelig;kst og dermed en st&oslash;rre egensmag.
<br>
</p>
</td>
<td rowspan="2"><img src="/shared/graphics/pages/norhave_dyr.jpg" width="173" height="195"></td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="2"><span class="tdmargin">Den Gr&oslash;nne 
Gren er kendt for sit kulinariske k&oslash;kken, der rummer et godt udvalg af 
hjemmelavede produkter. Der serveres altid hjemmebagt landbr&oslash;d og kage. 
Gr&oslash;ntsagerne er altid friske for det meste dyrket lokalt.<br>
<br>
De leverer mad ud overalt p&aring; &AElig;r&oslash;, men ogs&aring; udenfor &AElig;r&oslash;. 
Den Gr&oslash;nne Gren har bl.a leveret mad til et bryllup i Tyskland samt konfirmation 
p&aring; Fyn</span>. </td>
</tr>
<td width="145" align="top"><img src="/shared/graphics/pages/logo_dgg.gif"></td>
<td width="240" valign="top"><a href="http://www.dengronnegren.dk">Den Gr&oslash;nne 
Gren</a><br>
VesterBregninge 17<br>
5970 &AElig;r&oslash;sk&oslash;bing<br>
Tlf. 62 58 20 45<br>
<br>
Den Gr&oslash;nne Gren danner ramme om &oslash;kologisk spisested, mad ud af huset, 
d&oslash;gnkiosk, v&aelig;relsesudlejning, kulturelle arrangementer musik og udstillinger.<br>
</td>
<td><img src="/shared/graphics/pages/aroe.jpg"> </td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="2"><span class="tdmargin">Den Gr&oslash;nne 
Gren er kendt for sit kulinariske k&oslash;kken, der rummer et godt udvalg af 
hjemmelavede produkter. Der serveres altid hjemmebagt landbr&oslash;d og kage. 
Gr&oslash;ntsagerne er altid friske for det meste dyrket lokalt.<br>
<br>
De leverer mad ud overalt p&aring; &AElig;r&oslash;, men ogs&aring; udenfor &AElig;r&oslash;. 
Den Gr&oslash;nne Gren har bl.a leveret mad til et bryllup i Tyskland samt konfirmation 
p&aring; Fyn</span>. </td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4">&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4">&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4">&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4">&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4">&nbsp;</td>
</tr>
<tr> 
<td valign="bottom" align="left" colspan="4"> 
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
