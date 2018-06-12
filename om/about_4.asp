<%@LANGUAGE="VBSCRIPT"%> 
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsPageData_numRows = rsPageData_numRows + Repeat1__numRows
%>
<html><!-- #BeginTemplate "/Templates/2cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>Øko-Net</title>
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
<%level1=4%>
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
<td class="contentHeader1" align="left"> VEDT&AElig;GTER</td>
</tr>
<tr> 
<td background="/shared/graphics/layout/dots_horz.gif" height="1"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td height"20">for Netv&aelig;rket for &oslash;kologisk folkeoplysning og praksis 
/ &Oslash;ko-net</td>
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
<p>&nbsp;</p>
<p>&sect; 1</p>
<p>Navnet p&aring; foreningen er &quot;Netv&aelig;rket for &oslash;kologisk folkeoplysning 
og praksis&quot; - i daglig tale kaldet &quot;&Oslash;ko-net&quot; efter foreningens 
blad: &quot;Nyhedsbladet &Oslash;ko-net&quot;. <br>
Foreningen er hjemmeh&oslash;rende i den kommune hvor sekretariatet har til huse.</p>
<p><br>
&sect; 2</p>
<p>Form&aring;let med foreningen er p&aring; et folkeligt niveau at informere, 
oplyse og inspirere omkring natur og milj&oslash;, &oslash;kologi og b&aelig;redygtig 
udvikling - samt at skabe debat og netv&aelig;rk omkring &oslash;kologiske og 
b&aelig;redygtige tiltag.<br>
Ved &oslash;kologi forst&aring;s en husholdning med ressourcer, der er i balance 
med naturen.<br>
Ved b&aelig;redygtig udvikling forst&aring;s en udvikling, der tager globale, 
milj&oslash;m&aelig;ssige og sociale hensyn b&aring;de til nulevende og kommende 
generationer.<br>
Der l&aelig;gges v&aelig;gt p&aring; ogs&aring; at engagere ungdommen i foreningen 
og i arbejdet med ovenn&aelig;vnte form&aring;l.</p>
<p><br>
&sect; 3</p>
<p>Netv&aelig;rkets midler tilvejebringes gennem fondsmidler, st&oslash;ttebel&oslash;b, 
sponsorst&oslash;tte og kontingent fra Netv&aelig;rkets medlemmer samt ved salg 
af diverse varer og tjenesteydelser. Bestyrelsen diskuterer l&oslash;bende retningslinjer 
for sponsorst&oslash;tte.</p>
<p><br>
&sect; 4</p>
<p>Generalforsamlingen p&aring; &aring;rsm&oslash;det er Netv&aelig;rkets &oslash;verste 
myndighed og afholdes hvert &aring;r i &aring;rets f&oslash;rste halv&aring;r. Indkaldelse til 
generalforsamlingen sker gennem medierne eller ved underretning af medlemmerne 
p&aring; anden m&aring;de, mindst 1 m&aring;ned forud. Forslag, som man &oslash;nsker 
dr&oslash;ftet p&aring; generalforsamlingen, skal v&aelig;re bestyrelsen i h&aelig;nde 
14 dage forud for m&oslash;det.</p>
<p>Dagsorden for ordin&aelig;r generalforsamling skal indeholde f&oslash;lgende 
punkter:<br>
1.Valg af dirigent.<br>
2. Beretning vedr. Netv&aelig;rkets aktiviteter i &aring;rets l&oslash;b.<br>
3. Freml&aelig;ggelse af &aring;rsregnskab.<br>
4. Indkomne forslag.<br>
5. Bestyrelsens motiverede forslag til kommende &aring;rs budget og aktiviteter. 
<br>
6. Fasts&aelig;ttelse af kontingent.<br>
7. Valg til bestyrelse og 2 bestyrelsessuppleanter.<br>
8. Valg af revisor.<br>
9. Evt.</p>
<p><br>
&sect; 5</p>
<p>Stk. 1 Generalforsamlingen v&aelig;lger en dirigent, der leder m&oslash;det. 
Enhver stemmeberettiget kan forlange skriftlig afstemning.</p>
<p>Stk. 2 De p&aring; generalforsamlingen behandlede anliggender afg&oslash;res 
ved simpelt stemmeflertal.</p>
<p>Stk. 3 Hvert medlem i Netv&aelig;rket har 1 stemme. For institutioner forst&aring;s: 
1 kontingent giver 1 stemme. Stemmeberettigelse kr&aelig;ver medlemsskab i det 
forgangne &aring;r.<br>
Stemmeberettigede medlemmer er valgbare til Netv&aelig;rkets bestyrelse.</p>
<p>Stk. 4 Der f&oslash;res beslutningsreferat. Referatet underskrives af m&oslash;dets 
dirigent.</p>
<p><br>
&sect; 6</p>
<p>Stk. 1 Generalforsamlingen v&aelig;lger en bestyrelse. Sekretariatslederen 
er f&oslash;dt medlem af bestyrelsen. Herudover v&aelig;lges indtil 6 medlemmer 
og 2 suppleanter. Efter valg konstituerer bestyrelsen sig med formand og n&aelig;stformand. 
I tilf&aelig;lde af formandens frav&aelig;r fungerer n&aelig;stformanden som formand.</p>
<p>Stk. 2 Bestyrelsesvalg g&aelig;lder for 2 &aring;r. Halvdelen afg&aring;r hvert 
&aring;r. Genvalg kan finde sted.</p>
<p>Stk. 3 Bestyrelsen er beslutningsdygtig, n&aring;r mindst halvdelen af medlemmerne 
er til stede. I tilf&aelig;lde af stemmelighed g&oslash;r formandens og i dennes 
frav&aelig;r n&aelig;stformandens stemme udslaget.</p>
<p>Stk. 4 Bestyrelsen kan fasts&aelig;tte en forretningsorden for bestyrelsens 
arbejde.</p>
<p>Stk. 5 Bestyrelsen f&oslash;rer referat over sine m&oslash;der, der p&aring; 
det efterf&oslash;lgende m&oslash;de godkendes.</p>
<p>Stk. 6 Den daglige drift varetages af Netv&aelig;rkets sekretariat og medarbejdere, 
der ledes af sekretariatslederen, som udpeges / ans&aelig;ttes af bestyrelsen.</p>
<p><br>
&sect; 7</p>
<p>Stk. 1 Netv&aelig;rkets regnskabs&aring;r f&oslash;lger kalender&aring;ret.</p>
<p>Stk. 2 Netv&aelig;rkets regnskaber revideres af en p&aring; generalforsamlingen 
valgt revisor.</p>
<p><br>
&sect; 8</p>
<p>Ekstraordin&aelig;r generalforsamling indkaldes n&aring;r bestyrelsen eller 
mindst en 1/3 af medlemmerne beg&aelig;rer det.</p>
<p><br>
&sect; 9</p>
<p>Stk. 1 Vedt&aelig;gterne kan &aelig;ndres p&aring; en generalforsamling, n&aring;r 
forslaget er udsendt mindst 2 uger f&oslash;r generalforsamlingenog n&aring;r 
mindst 2/3 af de fremm&oslash;dte stemmer derfor.</p>
<p>Stk. 2 Opl&oslash;sning af Netv&aelig;rket kan ske ved beslutning af s&aring;vel 
den ordin&aelig;re som af en ekstraordin&aelig;rt indkaldt generalforsamling. 
Vedtagelse af beslutning om Netv&aelig;rkets opl&oslash;sning kr&aelig;ver, at 
mindst tre fjerdedele af medlemmerne er repr&aelig;senterede ved generalforsamlingen 
og at to tredjedele af disse stemmer for opl&oslash;sningen af Netv&aelig;rket.<br>
Hvis ikke tre fjerdedele af Netv&aelig;rkets medlemmer er repr&aelig;senteret 
ved generalforsamlingen, indkalder bestyrelsen til en ny ekstraordin&aelig;r generalforsamling, 
hvor opl&oslash;sningen af Netv&aelig;rket kan vedtages af to tredjedele af de 
repr&aelig;senterede.</p>
<p>Stk. 3 S&aring;fremt opl&oslash;sningen vedtages og der ved likvidationen er 
midler i behold ud over, hvad der er forn&oslash;dent til d&aelig;kning af Netv&aelig;rkets 
forpligtelser, skal midlerne sk&aelig;nkes til form&aring;l, der ligger p&aring; 
linie med Netv&aelig;rkets form&aring;l.</p>
<p></p>
<p><br>
S&aring;ledes vedtaget p&aring; den stiftende generalforsamling p&aring;<br>
Den frie L&aelig;rerskole i Ollerup, s&oslash;ndag den 23. januar 1994.<br>
Sidst revideret og vedtaget p&aring; Galleri Galschi&oslash;t i Odense, s&oslash;ndag 
den 28. april 2013.</p>
</td>
</tr>
</table>
<img src="/shared/graphics/spacer.gif" width="8" height="1"><br>
<img src="/shared/graphics/spacer.gif" width="8" height="1"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="contentHeader2">&nbsp;</td>
</tr>
<tr> 
<td> 
<p>&nbsp;</p>
</td>
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
