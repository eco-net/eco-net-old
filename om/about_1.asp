<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-net - netværket for økologi, miljø og bæredygtighed</title>
<% curtab=5 %>
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
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;OM NETV&AElig;RKET</td>
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
<%level1=1%>
<!--#include file="inc_about_leftbar.asp"-->
</td>
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
<td valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="/shared/graphics/spacer.gif" name="detailContents">
<tr> 
<td colspan="2" class="contentHeader1" align="left"> Om &Oslash;ko-net</td>
</tr>
<tr> 
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td height"20">&nbsp;</td>
<td height="20" align="right" nowrap>&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/spacer.gif" width="1" height="5"></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> 
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr> 
<td class="contentHeader2">&nbsp;</td>
</tr>
<tr> 
<td valign="top"> 
<p>&Oslash;ko-net er en folkeoplysningsorganisation, 
stiftet i januar 1994. Med det overordnede m&aring;l at bidrage 
til en b&aelig;redygtig samfundsudvikling, er det &Oslash;ko-net's form&aring;l 
at informere, oplyse, inspirere og skabe bred folkelig inddragelse og dialog omkring 
&oslash;kologi, milj&oslash; og b&aelig;redygtig udvikling. Det erkendes mange 
steder - bl.a. i Agenda 21-dokumentet - at en helt afg&oslash;rende foruds&aelig;tning 
for faktisk at realisere en b&aelig;redygtig samfundsudvikling er en folkelig 
inddragelse.</p>
<p>&Oslash;ko-net vil placere sig som et oplysende, formidlende og faciliterende 
bindeled imellem forskningen og de mere fagligt og politisk orienterede milj&oslash;- 
og udviklingsorganisationer og s&aring; det folkelige, praktiske niveau. </p>
<p><span class="listheader">&Oslash;ko-net's aktiviteter:</span><br>
Det felt, &Oslash;ko-net har d&aelig;kket i de forl&oslash;bne &aring;r, har v&aelig;ret 
et nyt felt inden for folkeoplysningen, et omr&aring;de, der is&aelig;r efter 
Rio-topm&oslash;det i 1992 har v&aelig;ret et prioriteret omr&aring;de i det danske 
samfund. S&aring;ledes har &Oslash;ko-net is&aelig;r arbejdet med at oplyse om 
det folkelige Agenda 21-arbejde og med at skabe en folkelig og inddragende proces 
omkring den nationale strategi for b&aelig;redygtig udvikling - et arbejde, der 
bl.a. resulterede i &quot;<i>DanmarksDeklarationen - erkl&aelig;ring om en dansk 
dagsorden for b&aelig;redygtig udvikling i det 21. &aring;rhundrede</i>&quot; 
(se evt. <a href="http://www.DanmarksDeklarationen.dk" target="_blank">http://www.DanmarksDeklarationen.dk</a> 
og <a href="http://www.bu.dk" target="_blank">http://www.bu.dk</a> 
  ).</p>
<p>&Oslash;ko-net har i sin arbejdsmetoder v&aelig;ret meget netv&aelig;rksorienteret. 
Fx har &Oslash;ko-net via Nyhedsbladet &Oslash;ko-net og e-mail-korrespondance 
opbygget et kontaktnetv&aelig;rk til mere end 10.000 modtagere. Bladet er et gratis 
4 - 8 siders nyhedsblad, hvor der bredt omtales nyt inden for milj&oslash;omr&aring;det 
- fra projekter, over udgivelser til arrangementer. Det hele er i dag sammenk&aelig;det 
med en stor database-portal, Gr&oslash;nneSider ( <a href="http://www.eco-info.dk" target="_blank">http://www.Gr&oslash;nneSider.dk</a> 
), hvor der i dag er den st&oslash;rste samling af gr&oslash;nne adresser i Danmark.</p>
<p>Overordnet driver &Oslash;ko-net tre hjemmesider:<br>
<b>www.eco-net.dk</b> - der er foreningens hjemmeside og hvor man bl.a. kan l&aelig;se 
Nyhedsbladet &Oslash;ko-net og finde andre debatmaterialer fra &Oslash;ko-net.<br>
<b><a href="http://www.eco-info.dk" target="_blank">www.Gr&oslash;nneSider.dk</a></b> - 
der er en internetguide til &oslash;kologiens verden<br>
<a href="http://www.bu.dk" target="_blank"><b>www.bu.dk</b></a> 
- en indgang til alt om b&aelig;redygtig udvikling</p>
<p>Sidst men ikke mindst afholder &Oslash;ko-net j&aelig;vnligt folkelige debatm&oslash;der.</p>
<p>&Oslash;ko-net er medlem af to paraplyorganisationer, nemlig 92-gruppen (et 
samarbejde mellem 21 danske milj&oslash;- og udviklingsorganisationer om opf&oslash;lgningen 
p&aring; Rio-topm&oslash;det og nu Verdenstopm&oslash;det om B&aelig;redygtig 
Udvikling i Johannesburg) og Dansk Folkeoplysnings Samr&aring;d (39 danske folkeoplysningsorganisationer).</p>
<p><br>
</p>
</td>
</tr>
</table>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="8"><img src="/shared/graphics/spacer.gif" width="8" height="1"></td>
<td valign="top" width="200"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="contentHeader2">&nbsp;</td>
</tr>
<tr> 
<td>&Oslash;ko-net er medlemsorganisation hos Dansk Folkeoplysnings Samr&aring;d
og hos 92-gruppen - Forum for B&aelig;redygtig Udvikling, som er et samarbejde mellem 21 danske milj&oslash;- og udviklingsorganisationer, 
som alle arbejder med opf&oslash;lgningen p&aring; FN's milj&oslash;- og udviklingskonference 
i Rio i 1992.</td>
</tr>
</table>
</td>
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
<!--include virtual="/shared/log.asp"-->
<%'reg("omindex")%>
