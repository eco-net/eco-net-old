<%
'Denne fil includes p� alle sider der modtager input, for at undg� injections. 
'Ved fors�g p� injections sendes den bes�gende til ErrorPage.
'P� sider der skriver til database, sikres mod injections med parameter:
'Set param1 = objCommand.CreateParameter ("user", adWChar, adParamInput, 20)
'param1.value = strUserName
'objCommand.Parameters.Append param1
'Talv�rdier checkes med isNumeric()
'P� Client side s�ttes inputfelter med maxl�ngde og alle felter valideres.
'Tabel med adgangskoder b�r krypteres med md5

Dim BlackList, ErrorPage, errorstr
BlackList = Array("--","/*","*/","@@","char","nchar","varchar","nvarchar","alter","begin","cast","create","cursor","declare", "delete","drop","exec","execute","fetch","insert","kill","open","select","sysobjects","syscolumns","table","update","xp_")
ErrorPage="/shared/sqlerrorpage.asp"
errorstr=""

Function CheckStringForSQL(str) 
  On Error Resume Next 
'single quote �ndres til dobbelt, for at undg� injection som: Username: ' or 1=1 --- 
str=replace(str, "'", "''") 
  Dim lstr 
   ' If the string is empty, return 
  If ( IsEmpty(str) ) Then
    CheckStringForSQL = false
    Exit Function
  ElseIf ( StrComp(str, "") = 0 ) Then
    CheckStringForSQL = false
    Exit Function
  End If  
  lstr = LCase(str)
  ' Check if the string contains any patterns in our black list
  For Each s in BlackList
    If ( InStr (lstr, s) <> 0 ) Then
	errorstr=s
      CheckStringForSQL = true
      Exit Function
    End If
  Next 
  CheckStringForSQL = false
End Function 

'  Check forms data
For Each s in Request.Form
  If ( CheckStringForSQL(Request.Form(s)) ) Then
    Response.Redirect(ErrorPage & "?e=" & errorstr & "&p=" & request("URL"))
  End If
Next

'  Check query string
For Each s in Request.QueryString
  If ( CheckStringForSQL(Request.QueryString(s)) ) Then
    Response.Redirect(ErrorPage & "?e=" & errorstr & "&p=" & request("URL"))
  End If
Next

'  Check cookies
For Each s in Request.Cookies
  If ( CheckStringForSQL(Request.Cookies(s)) ) Then
    Response.Redirect(ErrorPage & "?e=" & errorstr & "&p=" & request("URL"))
  End If
Next
%>