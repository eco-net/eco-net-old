<%
'naviHTML=rsPageData.RecordCount
'forwardParams=MM_keepMove &_
'	"&sektion" & einextcount & "=ok" &_
'	"&count=" & einextcount &_
'	"&recid" & einextcount & "=" & rsPageData.Fields.Item("id").value &_
'	"&recname" & einextcount & "=" & rsPageData.Fields.Item("title").value &_
'	"&recoffset" & einextcount & "=" & MM_offset &_
'	"&offset="
' Creating return-link
'IF eibackcount="" THEN
 'Back to list or indexpage
'	IF LEN(request("coll"))>0 THEN
	'Back to index-page
'		naviHtml="<a href=""index.asp"" title=""Tilbage til den side du kom fra"">Tilbage</a> | " & NaviHtml
'	ELSE
'		naviHtml="<a href=""list.asp?" & backParams & """ title=""Tilbage til oversigten for din s�gning"">Tilbage</a> | " & NaviHtml
'	END IF	
'ELSE
'	naviHtml="<a href=""/detail.asp?" & backParams & """ title=""Tilbage til organisationen i De gr�nne sider"">Tilbage</a> | " & NaviHtml
'END IF

' dgs - organisations
set rsData = Server.CreateObject("ADODB.Recordset")
rsData.ActiveConnection = MM_ecoinfo_STRING

rsData.source="SELECT m.id,m.name,m.firstname,m.middlename,m.lastname,m.stopped FROM eiorg_maindata m LEFT JOIN eical_r_org o ON m.id=o.orgid WHERE o.calid=" & rsPageData.Fields.Item("id").value & " ORDER BY name"
rsData.open()
IF NOT rsData.EOF THEN
	i=0
	dgsList="<br><table cellspacing=""0"" cellpadding=""0"" border=""0"">"
	WHILE NOT rsData.EOF
	'if rsData.Fields.Item("stopped").value=1 then
		IF LEN(rsData.Fields.Item("name").value)>0 THEN
			dgsList=dgsList & "<tr valign='top'><td><a href='http://www.eco-info.dk/dgs/detail.asp?id=" & rsData.Fields.Item("id").value & "'>" & rsData.Fields.Item("name").value & "</a></td></tr>"
		ELSE
			dgsList=dgsList & "<tr valign='top'><td><a href='http://www.eco-info.dk/dgs/detail.asp?id=" & rsData.Fields.Item("id").value & "'>" & rsData.Fields.Item("firstname").value & "&nbsp;" & rsData.Fields.Item("middlename").value & "&nbsp;" & rsData.Fields.Item("lastname").value & "</a></td></tr>"
		END IF
	'else
	'	IF LEN(rsData.Fields.Item("name").value)>0 THEN
	'		dgsList=dgsList & "<tr valign=""top""><td><a href=""http://www.eco-info.dk/dgs/detail.asp?" & forwardParams & CStr(i) & """ title=""Viser denne organisation"">" & rsData.Fields.Item("name").value & "</a></td></tr>"
	'	ELSE
	''		dgsList=dgsList & "<tr valign=""top""><td><a href=""http://www.eco-info.dk/dgs/detail.asp?" & forwardParams & CStr(i) & """ title=""Viser denne organisation"">" & rsData.Fields.Item("firstname").value & "&nbsp;" & rsData.Fields.Item("middlename").value & "&nbsp;" & rsData.Fields.Item("lastname").value & "</a></td></tr>"
	'	END IF
	'end if
		rsData.moveNext
		i=i+1
	WEND
	dgsList=dgsList & "</table>"
END IF	
rsData.close()

' Categories
rsData.source="SELECT c.name,c.id FROM eical_cat_maindata c LEFT JOIN eical_r_cat l ON c.id=l.catid WHERE l.calid=" & rsPageData.Fields.Item("id").value
catList="<br><b>Kategori:</b><br>"
rsData.open()
IF NOT rsData.EOF THEN
	catList=catList & "<a href=""/ok/list.asp?okcat=" & rsData.Fields.Item("id").value & "&okcatname=" & rsData.Fields.Item("name").value & """ title=""Finder publikationer i denne kategori"">" & rsData.Fields.Item("name").value & "</a>"
	rsData.movenext
	WHILE NOT rsData.EOF
		catList=catList & " | <a href=""/ok/list.asp?okcat=" & rsData.Fields.Item("id").value & "&okcatname=" & rsData.Fields.Item("name").value & """ title=""Finder publikationer i denne kategori"">" & rsData.Fields.Item("name").value & "</a>"
		rsData.movenext
	WEND
ELSE
	catList=catList & "Ingen"
END IF
rsData.close()
catList=catList & "<br>"
' Keywords
rsData.source="SELECT s.name,s.id FROM eisbj_maindata s LEFT JOIN eical_r_sbj l ON s.id=l.sbjid WHERE l.calid=" & rsPageData.Fields.Item("id").value
sbjList="<br><b>Emneord:</b><br>"
rsData.open()
IF NOT rsData.EOF THEN
	sbjList=sbjList & "<a href=""/ok/list.asp?oksbj=" & rsData.Fields.Item("id").value & "&oksbjname=" & rsData.Fields.Item("name").value & """ title=""Finder arrangementer tilknyttet dette emne"">" & rsData.Fields.Item("name").value & "</a>"
	rsData.movenext
	WHILE NOT rsData.EOF
		sbjList=sbjList & " | <a href=""/ok/list.asp?oksbj=" & rsData.Fields.Item("id").value & "&oksbjname=" & rsData.Fields.Item("name").value & """ title=""Finder arrangementer tilknyttet dette emne"">" & rsData.Fields.Item("name").value & "</a>"
		rsData.movenext
	WEND
ELSE
	sbjList=sbjList & "Ingen"
END IF
rsData.close()
sbjList=sbjList & "<br>"

%>