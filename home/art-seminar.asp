<html>
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
<!-- #EndEditable --> 
<script src="/shared/common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/shared/styles.css" type="text/css"></head>
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
<table width="95%"  border="0" align="center">
  <tr>
    <td><p>&nbsp;</p> <center> <img src="/home/Klimakrise rund.jpg" width="120" height="120" /> </center>
      <p>&nbsp;</p>
      <p align="center">&nbsp;</p> 
      <p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      </td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br>
</td>
<td width="569" height="100%" valign="top" name="maincontent"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="16">
    <tr>
      <td valign="top"><p>&nbsp;</p>
          </td>
    </tr>
  </table>
  <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="5">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" -->
  <p><strong> </strong><strong>Baggrundsartikler  til seminaret:</strong><br>
&nbsp;<br>
<strong>KLIMAKRISE NEJ TAK!<br>
- j</strong><strong>a tak til  klimasikring og b&aelig;redygtighed</strong> </p>
  <p><strong>Fra  92-gruppen:</strong><br>
  Find  Klima synspunkter og forslag fra 92-gruppen i forbindelse med  klimakonventionsm&oslash;det i Polen<br>
    Link: <br>
    <a href="http://92grp.dk/cms/92/nyheder/92-gruppe%20positionspapir%20ifm%20klimakonventionsmoedet%20i%20Polen%20dec%202008.pdf" target="_blank">http://92grp.dk/cms/92/nyheder/92-gruppe%20positionspapir%20ifm%20klimakonventionsmoedet%20i%20Polen%20dec%202008.pdf</a></p>
  <p><strong>Fra  Verdensnaturfonden &ndash; WWF:</strong> <br>
    Rapport:<br>
    Dansk  forbrug, global forurening<br>
    En  analyse af Danmarks CO2-fodaftryk med s&aelig;rlig fokus p&aring; Kina<br>
    Link:  <a href="http://www.wwf.dk/dk/Materiale/Files/Nyheder/Dansk+forbrug%2c+global+forurening" target="_blank">http://www.wwf.dk/dk/Materiale/Files/Nyheder/Dansk+forbrug%2c+global+forurening</a></p>
  <p align="left"><strong>Fra Jeppe  L&aelig;ss&oslash;e, DPU:</strong><br>
    Jeppe L&aelig;ss&oslash;e skrev d. 2. august 2008 et debat indl&aelig;g i  Politiken om det kollektive selvbedrag, og han efterlyser en ny bev&aelig;gelse, der  vil konfrontere selvbedraget. <br>
    Var med i en debat-artikel-serie i Politiken om V&aelig;kst og  forbrug, august 2008.<br>
    Artiklen kan hentes som pdf fra www.ubu10.dk eller her. <br>
    Link:<br>
    <a href="http://www.ubu10.dk/downloadfiles/jeppe_laessoe_020808.pdf" target="_blank">http://www.ubu10.dk/downloadfiles/jeppe_laessoe_020808.pdf</a></p>
  <p align="left"><strong>Fra Inge R&oslash;pke,  DTU:</strong><br>
    Inge R&oslash;pke skrev i august 2008 et debat indl&aelig;g i Politiken  om en politisk styret begr&aelig;nsning af forbruget.<br>
    Var med i en debat-artikel-serie i Politiken om V&aelig;kst og  forbrug, august 2008.<br>
    <a href="http://web.eco-net.dk/Files/inge_røpke_08.08.pdf" target="_blank">Hent artiklen som pdf fra &Oslash;ko-net </a></p>
  <p align="left"><strong>Fra Ross  Jackson, Gaia Trust:</strong><br>
    Ross Jackson har lavet et forslag til en ideel klimaaftale.<br>
    <a href="http://web.eco-net.dk/Files/ross_jackson_ideel_aftale.pdf">Hent forslaget p&aring; dansk her</a> </p>
  <p align="left">Artiklen findes ogs&aring; p&aring; engelsk p&aring;:  <a href="http://www.ross-jackson.com/rj/21987/44051" target="_blank">http://www.ross-jackson.com/rj/21987/44051</a></p>
  <p align="left"><strong>Fra Kirsten  Halsn&aelig;s, UNEP Ris&oslash; Centre</strong><br>
  Kirsten Halsn&aelig;s skrev i august 2008 en debat artikel i Politike  klimasikring af samfundet.<br>
  Var med i en debat-artikel-serie i Politiken om V&aelig;kst og  forbrug, august 2008.<br>
    <a href="http://web.eco-net.dk/Files/Kirsten_halsnaes_08.08t.pdf" target="_blank">Hent artiklen som pdf fra &Oslash;ko-net</a><br>
  </p>
  <p align="left">&nbsp;</p>
  <p>&nbsp;</p>
<!-- #EndEditable --></td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp"--></td>
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
