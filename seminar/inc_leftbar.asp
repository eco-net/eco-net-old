<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="3"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=1 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"" width=""10"" height=""7"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="aarsmode_2003_program.asp">Program</a></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=2 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"" width=""10"" height=""7"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="aarsmode_2003_tilmelding.asp">Tilmelding</a></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
<tr height="20">
<td>
<%
IF level1=3 THEN
	response.write "<img src=""/shared/graphics/layout/arrows_fwd.gif"" width=""10"" height=""7"">"
ELSE
	response.write "<img src=""/shared/graphics/spacer.gif"" width=""10"" height=""20"">"
END IF
%>
</td>
<td class="sidebarHeader"><a href="aarsmode_2003_artikel.asp">Optaktsartikel</a></td>
</tr>
<tr>
<td colspan="2" background="/shared/graphics/layout/dots_horz.gif"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>
