<%@LANGUAGE="VBSCRIPT"%>
<!--#include virtual="/shared/sqlcheck.asp"-->
<!--#include virtual="/shared/showimage.asp" -->
<!--#include virtual="/Connections/ecoinfo.asp" -->
<!--#include virtual="/log/econet/newsnr.inc"-->
<!--#include file="nav.asp" -->
<!--include virtual="/shared/stat.asp" -->
<%
init()
%>
<%
function picasaImgSize(imgsrc,w)
i=1
imgname=Right(imgsrc,i) 
while InStr(imgname,"/")=0 
i=i+1
imgname=Right(imgsrc,i) 
wend
imgsrc=Left(imgsrc,Len(imgsrc)-i)
if Right(imgsrc,5)="/s144" then 'hvis thumbnail er kopieret
imgsrc=Left(imgsrc,Len(imgsrc)-5)
end if
imgsrc=imgsrc & w & imgname
picasaImgSize=imgsrc
end function

set rsPageData = Server.CreateObject("ADODB.Recordset")
rsPageData.ActiveConnection = MM_ecoinfo_STRING
rsPageData.Source = "SELECT top " & number & " *  FROM bu_Artikel a LEFT JOIN bu_Artikel_site s ON a.Artikel_ID=s.artikel_id  WHERE s.econetsite=1  ORDER BY create_date desc"
rsPageData.CursorType = 0
rsPageData.CursorLocation = 2
rsPageData.LockType = 3
rsPageData.Open()
rsPageData_numRows = 0
%>
<%
set rsBlad = Server.CreateObject("ADODB.Recordset")
rsBlad.ActiveConnection = MM_ecoinfo_STRING
rsBlad.Source = "SELECT *  FROM enblad_maindata  WHERE chosen=1"
rsBlad.CursorType = 0
rsBlad.CursorLocation = 2
rsBlad.LockType = 3
rsBlad.Open()
rsBlad_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsPageData_numRows = rsPageData_numRows + Repeat1__numRows
%>
<html><!-- #BeginTemplate "/Templates/3cols.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>&Oslash;ko-net - netv&aelig;rket om &oslash;kologi, milj&oslash; og b&aelig;redygtighed</title>
<style type="text/css">
<!--
.style3 {color: #006600}
-->
</style>
<style type="text/css">
<!--
.style4 {color: #FF0000}
-->
</style>
<style type="text/css">
<!--
.style5 {color: #00CC00}
-->
</style>
<style type="text/css">
<!--
.style6 {
	color: #009900;
	font-weight: bold;
}
-->
</style>
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
</table></td>
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
<div align="center"> <img src="/shared/graphics/ECO-NET-logo.gif" width="180" height="58"></div></td>
</tr>
</table>
<!-- #EndLibraryItem --><!-- END HEADER -->
<!-- #BeginEditable "menu" -->
<div align="center">
  <!--#include file="membercount.asp"-->
    <!-- #BeginLibraryItem "/Library/menu.lbi" -->
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
  </tr></table>
    <!-- #EndLibraryItem --></div>
<!-- #EndEditable --> 
<table width="750" border="0" cellspacing="0" cellpadding="0" name="Contentarea">
<tr> 
<td width="180" valign="top" name="leftbar"><!-- #BeginEditable "leftbar" -->
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
    <tr>
      <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
      <td width="98%" align="left" valign="middle" class="sidebarHeader"><div align="left">&nbsp;&nbsp;&Aring;RSM&Oslash;DE 2014</div></td>
    </tr>
    <tr>
      <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
  </table>
  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td valign="top"><p align="center"><span class="style3"><br>
            <strong>&Oslash;KO-NET's<br>
            </strong></span><span class="style3"><strong>20 &aring;rs jubil&aelig;umns-seminar &amp; &aring;rsm&oslash;de 2014</strong></span></p>
        <p align="center"><strong><span class="style5">Det nye gr&oslash;nne AGOGO!</span><br>
        &ndash;   den</strong> <span class="style4"><strong>r&oslash;de</strong> </span><strong>tr&aring;d er   at </strong><span class="style6">gr&oslash;n </span><strong>er det   nye sort!</strong></p>
        <p align="center"><strong>S&oslash;ndag   d. 4. maj 2014 kl.   10.00-22.30 i Dome   of Visions, K&oslash;benhavn<BR>
            <br>
        </strong><em><span class="style4">M&oslash;d   og h&oslash;r indl&aelig;g ved:</span><br>
        </em><strong>Martin   Manthorpe</strong>,   Dome of Visions og NCC Construction Danmark<br>
        <strong>Allan   Born&oslash; Clausen</strong>,   Hegnstrup &Oslash;kologiske Jordbrug<br>
        <strong>Christian   Hjorth W&ouml;hliche</strong>&nbsp;&amp; <strong>Morten   Ingemann Thaysen,</strong>b&aelig;redygtig   opfinderi<br>
        <strong>Nilas   Bay Foged,</strong>&nbsp;Alternativet, sekretariatsleder for partiet<br>
        <strong>Tobias   Lau</strong>,   Social Action<br>
        <strong>Malaika   Thomsen</strong>,   Dreamjobbing &ndash; b&aelig;redygtig strategiudvikling<br>
        <br>
        <span class="style4"><strong>ST&Oslash;TTEFEST med musik:</strong></span><strong>Raga-Rock </strong>v.   John Teglgaard<br>
        <strong>Nordkap </strong>v.   Mads &amp; Hjalmer<br>
        <strong>Bo   Evers<br>
        Carsten   Hentze<br>
        </strong><strong>&amp; S&oslash;ren Berlev<br>
          Jens   Lysdal<br>
              <br>
          </strong><strong>Hent <a href="http://web.eco-net.dk/home/NytEco-net_april2014.pdf">programmet som pdf </a><br>
            </strong><br>
&Aring;rsm&oslash;det vil bl.a. have fokus omkring <span class="style4">Aktions-&aring;ret for FOLKEOPLYSNING &amp; UDDANNELSE FOR B&AElig;REDYGTIG OMSTILLING &amp; UDVIKLING</span> som vi startede i forbindelse med &Oslash;ko-nets 20 &aring;rs jubil&aelig;ums-reception der fandt sted d. <br>
          23. januar 2014.<br>
          <br>
          <span class="style4"><strong>Vel m&oslash;dt! <br>
            <br>
          </strong></span></p>
        </td>
    </tr>
  </table>
  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td valign="top"><p align="center"><a href="/blog/index.asp"><br>
      </a></p>        </td>
    </tr>
  </table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
    <tr>
      <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
      <td width="98%" align="left" valign="middle" class="sidebarHeader"><div align="left">&nbsp;&nbsp;&Oslash;KO-NET p&aring; FACEBOOK</div></td>
    </tr>
    <tr>
      <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
  </table>
  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td valign="top"><p align="center"> <br>
        V&aelig;r med i &Oslash;ko-nets Facebook gruppe, og inviter dine venner med.<br>
        <br>
        <a href="https://www.facebook.com/pages/%C3%98KO-NET-ECO-NETDK/144487175645018" target="_blank"><img src="/shared/graphics/facebook.gif" alt="Facebook" height="60" border="0"><br>
        </a>
        <br>
      </p></td>
    </tr>
  </table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="left" class="sidebarHeader">&nbsp;&nbsp;BLIV MEDLEM  </td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<p align="center" class="leftmargin"><a href="bliv_medlem.asp"> Bliv medlem af &Oslash;KO-NET</a></p>
<p align="center" class="leftmargin"><a href="giv_bidrag.asp">Giv et bidrag - din st&oslash;tte hj&aelig;lper </a></p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="left" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SERVICES</td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>

<p align="center" class="leftmargin">Modtag Nyhedsmail - send mail til: <a href="mailto: eco-net@eco-net.dk">eco-net@eco-net.dk </a><br>
  Skriv Nyhedsmail i Emnefeltet, og skriv dit navn mv. i mailen</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
  <tr>
    <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
    <td width="98%" align="center" class="sidebarHeader">&nbsp;&nbsp;LOKALAFDELINGER</td>
  </tr>
  <tr>
    <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
  </tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top"><p align="center"><br>
      &Oslash;ko-net har lokalafdelinger<br> 
      <a href="/om/about_6.asp">L&aelig;s mere</a><br>
      <br>
    </p>        </td>
  </tr>
</table>
<div align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
    <tr>
      <td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
      <td width="98%" align="left" valign="middle" class="sidebarHeader"><div align="left">&nbsp;&nbsp;DEBATH&AElig;FTE</div></td>
    </tr>
    <tr>
      <td colspan="2" height="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
    </tr>
  </table>
  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td valign="top"><strong><br>
        FYR DEN AF &ndash; for milj&oslash;et</strong><br>
        - er en pjece om projektet &rsquo;B&aelig;redygtigt Energi Projekt &ndash; Karatu&rsquo; i Tanzania.
        <p align="center"><img src="graphics/fyrdenaf.jpg" align="middle"></p>
        <p>Pjecen er til oplysning og kan f.eks. bruges i undervisning om milj&oslash; i u-landshj&aelig;lpen<br>
          F&aring; et levende indblik i det projekt &Oslash;ko-net,<br>
          i samarbejde med en lokal ngo i Tanzania,<br>
          Karatu Development Association,<br>
          har gennemf&oslash;rt fra 2006-10.<br>
          <br>
          <a href="../Files/FyrDenAf.pdf" target="_blank" style="font-size:11px;">Hent pjecen her</a><br>
          <br>
          <br>
        </p></td>
    </tr>
  </table>
  <p><a href="sitemap.asp">Sitemap<img src="/shared/graphics/layout/folder.gif" alt="Alle &Oslash;ko-net's sites" width="15" height="15" hspace="5" border="0"></a></p>
</div>
<!-- #EndEditable --></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br></td>
<td width="388" height="100%" valign="top" name="maincontent"> 
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td valign="top"> <!-- #BeginEditable "maincontent" --> 

  <p align="center" style="padding-left:5px;">
    <!--vindue-->
    <!--include virtual="log/econet/inc_leader.txt"-->
	<strong><img src="/home/graphics/klimaalarm_cover.jpg" width="157" height="153" hspace="8" vspace="8" align="right"><br>
	NY st&oslash;tte-CD<br>
    </strong>En musikalsk lyrik-samling, hvor den gr&oslash;nne tr&aring;d er klimakrisen, et problem der   ber&oslash;r os alle - ung som gammel.  <br>
    <br>
    <STRONG>Klimaalarmen er g&aring;et!<BR>
    G&oslash;r noget!</STRONG> <br>
    <br>
    Bestil og l&aelig;s n&aelig;rmere om cd'en:<a href="http://www.klimaalarm.dk" target="_top"><strong> www.klimaalarm.dk</strong></a><br>
  </p>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;SIDSTE NYT FRA &Oslash;KO-NET</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table></td>
</tr>
</table>
<br>
<% 
While ((Repeat1__numRows <> 0) AND (NOT rsPageData.EOF)) 
%>
<table width="98%" border="0" cellspacing="5" cellpadding="0" align="center">
<tr> 
<td valign="top"> 
<% count(rsPageData.Fields.Item("Artikel_ID").Value) %>
<i><%=DatePart("d",rsPageData("create_date"))&"."&DatePart("m",rsPageData("create_date"))&"."&DatePart("yyyy",rsPageData("create_date"))%></i> <span class="contentHeader2"><br>
<a href="detail.asp?id=<%=rsPageData("Artikel_ID")%>"><%=(rsPageData.Fields.Item("Header").Value)%></a></span><br>
<%=(rsPageData.Fields.Item("ShortDescription").Value)%><br></td>
<td valign="top"> 
<div align="right"> 
<% if (rsPageData.Fields.Item("img_id").Value)>0 then %>
<a href="detail.asp?id=<%=rsPageData("Artikel_ID")%>"><img src="<%=getImage(rsPageData.Fields.Item("img_id").Value,"th")%>" border="0"></a> 
<% end if %>
<% if Len(rsPageData.Fields.Item("imagefilename1").Value)>0 then %>
<a href="detail.asp?id=<%=rsPageData("Artikel_ID")%>">
<img src="<%=picasaImgSize(rsPageData("imagefilename1"),"/s144")%>" alt="<%=rsPageData("img_text")%>" width=60 hspace="0" vspace="0" border=0 /></a> 
<% end if %>
</div></td>
</tr>
<tr> 
<td height="1" background="/shared/graphics/layout/dots_horz.gif" colspan="2"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  rsPageData.MoveNext()
Wend
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td> 
<p align="center"><a href="tidl_nyt.asp">Tidligere nyheder</a></p></td>
</tr>
</table>
<p>&nbsp;</p>
<!-- #EndEditable --> </td>
</tr>
<tr> 
<td valign="bottom" align="left"> 
<!--#include virtual="/shared/pagetools.asp" --></td>
</tr>
</table></td>
<td width="1" background="/shared/graphics/layout/dots_vert.gif"><br></td>
<td width="180" valign="top" name="rightbar"><!-- #BeginEditable "rightbar" --> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="/shared/graphics/layout/header_arrows.gif" width="22" height="22"></td>
<td width="98%" class="sidebarHeader">&nbsp;&nbsp;&Oslash;KO-NET SITES</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
<td> 
<p align="center"><br>
&Oslash;ko-net's databaser <br>
finder du her: <br>
<a href="http://www.eco-info.dk" target="_top"><img src="/shared/graphics/pages/eco-info-logo.gif" width="151" height="85" border="0"></a></p></td>
</tr>
<tr> 
<td><p align="center"><a href="http://www.eco-info.dk/dgs/index.asp" target="_top">De 
Gr&oslash;nne Sider</a></p>
<p align="center"><a href="http://www.eco-info.dk/ok/index.asp" target="_top">&Oslash;ko-Kalenderen</a></p>
<p align="center"><a href="http://www.eco-info.dk/dgb/index.asp" target="_top">Det 
Gr&oslash;nne Bibliotek</a></p>
<p align="center"><a href="http://www.eco-info.dk/opsl/index.asp" target="_top">Opslagstavlen<br>
</a><br>
</p>
</td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
  <td align="center" valign="top">
<p align="center"><a href="http://www.baeredygtigudvikling.nu" target="_top"><img src="/shared/graphics/layout/79.gif" width="158" height="51" vspace="5" border="0"></a><br>
  Springbr&aelig;ttet til information om b&aelig;redygtig udvikling!<br>
      <br>
</p></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
  <td align="center" valign="top"><br><p><a href="http://www.ubu10.dk" target="_new"><img src="graphics/UBU_plakat_120.jpg" alt="B&aelig;redygtig Udvikling" width="120" height="168" border="0"><br>
    <br>
  </a>&Oslash;ko-nets portal for Uddannelse for<br>
      B&aelig;redygtig Udvikling<br>
      <a href="http://www.ubu10.dk" target="_new"><strong>www.ubu10.dk</strong></a><br>
      <br>
  </p>    </td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr>
  <td height="306"><div align="center">
    <p><a href="http://www.balanceakten.dk" target="_new"><img src="graphics/balanceakten.jpg" width="133" height="189" border="0"><br>
      <br>
    </a>Nordisk samarbejde om Uddannelse for B&aelig;redygtig Udvikling<br>
      <a href="http://www.balanceakten.dk"><strong>www.balanceakten.dk<br>
      </strong></a><strong>og<br>
      <a href="http://www.thebalancingact.info">www.thebalancingact.info</a></strong><a href="http://www.balanceakten.dk"><strong><br>
      </strong></a></p>
    </div></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td ><p align="center"><br>
    <a href="http://www.cdbu.dk" target="_new"><img src="graphics/1.jpg" width="158" height="133" border="0"><br>
    <br>
    </a><span class="contentHeader2"><span class="homeHeader">ROCK MED! <br>
    FOR MINDRE KLODE-SLITAGE og 
FOR ST&Oslash;RRE GLOBAL ANSVARLIGHED: </span><br>
<a href="http://www.cdbu.dk" target="_blank">www.cdbu.dk</a></span><br>
    <br>
</p></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<div align="center"><a href="http://www.sustainabledevelopment.dk" target="_top"><br>
</a><strong>Sustainable Energy Project,</strong><br />
<strong>Karatu &ndash; Tanzania</strong><br />
<span class="homeHeader">&Oslash;ko-Net samarbejder med en lokal partner  i Tanzania om: B&aelig;redygtigt Energi Projekt - Karatu. </span><br>
<br>
<strong>L&aelig;s mere <a href="tanzania.asp">her</a></strong> <br />
og
    bes&oslash;g projektets site:<br />
    <a href="http://www.sepk.org" target="_blank"><strong>www.sepk.org</strong></a><br>
<br>
</div></td>
</tr>
<tr> 
<td colspan="2" height="1" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr> 
<td> 
<div align="center"><br>
<a href="http://www.03-03-03.dk/" target="_top"></a><a href="http://www.sustainabledevelopment.dk" target="_top"><img src="/shared/graphics/pages/sus.gif" width="130" height="50" border="0"></a><br>
debate on education for sustainability<br>
<br>
<br>
</div></td>
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
<!-- #EndTemplate -->
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-3636900-3";
urchinTracker();
</script></html>
<%
rsPageData.Close()
%>
<%
rsBlad.Close()
%>
<!--include virtual="shared/log.asp"-->
<%'reg("homeindex")%>