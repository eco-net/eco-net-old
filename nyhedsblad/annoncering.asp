<!--#include virtual="/shared/showimage.asp" -->
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
<% curtab=2 %>
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
<table width="185" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;<span class="listheader">KONTAKT</span></td>
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
<p>&nbsp;</p>
<p>Kontakt og indlevering<br>
Kontaktperson p&aring; annoncer er <span class="listheader">Lars Myrthu-Nielsen</span>, 
&Oslash;ko-net, <br>
tlf.: <span class="listheader">62 24 43 24</span> <br>
e-mail:<a href="mailto:eco-net@eco-net.dk">eco-net@eco-net.dk</a></p>
<p></p>
<p>Nyhedsbladet &Oslash;ko-net<br>
H&oslash;jskolehjemmet<br>
Svendborgvej 9, Ollerup<br>
5762 Vester Skerninge<br>
</p>
</td>
</tr>
</table>
</td>
</tr>
</table>
<br>
<table width="185" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;<span class="listheader">MATERIALE</span></td>
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
<p>Annoncer kan indleveres som positiv spejlvendt film, reproklar papir eller 
elektronisk p&aring; som PDF-, InDesign-, Photoshop- eller Illustratordokument.<br>
</p>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --><br>

<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td>
<p align="left" class="contentHeader1">Annonceinformation til Nyhedsbladet &Oslash;ko-net</p>
<p><br>
Det er muligt at annoncere i Nyhedsbladet &Oslash;ko-net, som har et oplag p&aring; 
10.000 hvoraf de 8000 sendes direkte til en meget specifik og interessant m&aring;lgruppe 
for alle gr&oslash;nne virksomheder, forhandlere mv.</p>
<p>Nyhedsbladet &Oslash;ko-net udgives af Netv&aelig;rket for &oslash;kologisk 
folkeoplysning og praksis. Nyhedsbladet formidler id&eacute;er, inspiration og 
folkeoplysning inden for &oslash;kologi, milj&oslash; og natur.<br>
Det sendes ud til en r&aelig;kke organisationer, institutioner, undervisere og 
folkeoplysere, NGO-organisationer, offentlige og private personer.<br>
M&aring;ls&aelig;tningen er at danne et let og tilg&aelig;ngeligt overblik over 
hvilke tiltag, der er p&aring; &oslash;kologi- og milj&oslash;om&aring;det samt 
indenfor feltet b&aelig;redygtig udvikling.</p>
<p>Bladet udkommer 4-6 gange &aring;rligt. I 2003 udkommer nyhedsbladet i marts, 
juni, september og december. Annoncer modtages l&oslash;bende.</p>
<p></p>
<p class="listheader">Formater</p>

<div align="center">
<p><br>
<img src="<%=getImage(298,"T")%>" border="0"> <br>
<img src="<%=getImage(470,"T")%>" border="0"> 
</p>
<p>&nbsp;</p>
<p></p>
<p>&nbsp; </p>
</div>
</td>
</tr>
</table>
<p>&nbsp;</p>
<p align="left">&nbsp;</p>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp" -->
</td>
</tr>
</table>
</td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --> 
<table width="180" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;<span class="listheader">PRISER/RABATTER</span></td>
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
<p class="listheader">Priser<br>
</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<div align="right">92*65 mm</div>
</td>
<td> 
<div align="right">1350 kr</div>
</td>
</tr>
<tr> 
<td> 
<div align="right">92*132 mm</div>
</td>
<td> 
<div align="right">2600 kr</div>
</td>
</tr>
<tr> 
<td height="17"> 
<div align="right">190*132 mm</div>
</td>
<td height="17"> 
<div align="right">4900 kr</div>
</td>
</tr>
<tr> 
<td> 
<div align="right">Helside</div>
</td>
<td> 
<div align="right"></div>
</td>
</tr>
<tr> 
<td> 
<div align="right">190*270 mm</div>
</td>
<td> 
<div align="right">9500 kr</div>
</td>
</tr>
<tr> 
<td> 
<div align="right">Bagsiden</div>
</td>
<td> 
<div align="right"></div>
</td>
</tr>
<tr> 
<td> 
<div align="right">125*175 mm</div>
</td>
<td> 
<div align="right">10500 kr</div>
</td>
</tr>
</table>
<p><span class="listheader">Rabatter</span> <br>
Vi giver gentagelsesrabat ved aftaler der l&oslash;ber over 3 numre eller 6 numre. 
Dvs. et halvt &aring;r eller et helt &aring;r. For et halvt &aring;r gives 10 
% rabat for et helt &aring;r 20 % rabat.</p>
<p align="left">&nbsp;</p>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- #EndEditable --></td>
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
