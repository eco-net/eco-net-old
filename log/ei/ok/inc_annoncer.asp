<%
IF len(recinfo)>0 THEN
	response.write "<table width='181' height='100%' border='0' cellspacing='0' cellpadding='0'>" &_
		"<tr><td width='1' height='100%' background='/shared/graphics/layout/dots_vert.gif'><img src='/shared/graphics/spacer.gif' width='1' height='1'></td><td width='180' valign='top'>" &_
		"<table width='180' border='0' cellspacing='0' cellpadding='0'>" &_
		"<tr bgcolor='#FAFAF4'><td>" &_
		"<img src='/shared/graphics/layout/header_arrows.gif' width='22' height='22'></td>" &_
		"<td width='98%' class='sidebarHeader'>" &_
		"&nbsp;&nbsp;SE OGS� ...</td></tr><tr>" &_
		"<td colspan='2' height='1' background='/shared/graphics/layout/dots_horz.gif'>" &_
		"<img src='/shared/graphics/spacer.gif' width='3' height='1'></td></tr>" &_
		"<tr><td valign='top' colspan='2'>"
	'**** Writing contentheader
	response.write "<table width='90%' border='0' cellspacing='0' cellpadding='0' align='center'>" &_
		"<tr><td><img src='/shared/graphics/spacer.gif' width='3' height='8'></td></tr>"
ELSE
	response.write "<table width='180' border='0' cellspacing='0' cellpadding='0'>" &_
		"<tr><td colspan='2' height='1' background='/shared/graphics/layout/dots_horz.gif'><img src='/shared/graphics/spacer.gif' width='3' height='1'></td></tr>" &_	
		"<tr bgcolor='#FAFAF4'><td><img src='/shared/graphics/layout/header_arrows.gif' width='22' height='22'></td>" &_
		"<td width='98%' class='sidebarHeader'>&nbsp;&nbsp;SE OGS� ...</td></tr>" &_
		"<tr><td colspan='2' height='1' background='/shared/graphics/layout/dots_horz.gif'><img src='/shared/graphics/spacer.gif' width='3' height='1'></td></tr>" &_
		"<tr><td valign='top' colspan='2'><table width='90%' border='0' cellspacing='0' cellpadding='0' align='center'>" &_
		"<tr><td><img src='/shared/graphics/spacer.gif' width='3' height='8'></td></tr>"

END IF

response.write "<tr><td><span class='sidebarHeader'><a href='http://www.b�redygtigudvikling.nu' >B�redygtig Udvikling</a></span><br>" &_
	"�ko-net's hjemmeside der bredt fort�ller om emnet<div align='center'><br><a href='http://www.b�redygtigudvikling.nu' ><img src='/log/ei/ads/baeredygtig.gif' height='51' width='158' border='0'></a></div>" &_
	"<br><br></td></tr>"


IF len(recinfo)>0 THEN
	'**** Content footer
	response.write "<tr><td><img src='/shared/graphics/spacer.gif' width='3' height='8'></td>" &_
		"</tr></table>"
END IF
'**** Writing Footer
response.write "</td></tr></table></td></tr></table>"
%>
