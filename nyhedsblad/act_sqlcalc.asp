<%
Dim theWhere
theWhere="0=0"

if request("id")<>"" then
theWhere=theWhere & " AND id=" + request("id")
end if
if request("kapid")<>"" then
theWhere=theWhere & " AND kapitel_id=" + request("kapid")
end if

%>