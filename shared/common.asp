<%
FUNCTION ReadFile(filename)
	DIM fs,ts,theText
	theText="file created"
	filename=Server.MapPath(filename)
	SET fs = CreateObject("Scripting.FileSystemObject")
	IF fs.FileExists(filename)=false THEN
		SET ts = fs.CreateTextFile(filename)
		ts.Write(theText)
	ELSE		
		Set ts=fs.OpenTextFile(filename)
		theText=ts.ReadAll()
	END IF
	fs=""
	ts=""
	ReadFile=theText
END FUNCTION

SUB WriteFile(theText,filename)
	DIM fs,ts
	filename=server.MapPath(filename)
	SET fs = createobject("Scripting.FileSystemObject")
	Set ts=fso.CreateTextFile(filename,true)
	ts.Write(theText)
	fso=""
	ts=""
END SUB

SUB DeleteFile(filename)
	DIM fso,fo
	filename=Server.MapPath(filename)
	Set fso = CreateObject("Scripting.FileSystemObject")
	IF fso.FileExists(filename)=true THEN
		SET fo=fso.GetFile(filename)
		fo.Delete(true)
		fo=""
	END IF
	fso=""
END SUB

SUB CreateFolder(foldername)
	DIM fso
	foldername=Server.MapPath(foldername)
	Set fso = CreateObject("Scripting.FileSystemObject")
	fso.CreateFolder(foldername)
	fso=""
END SUB

SUB DeleteFolder(foldername)
	DIM fso
	foldername=Server.MapPath(foldername)
	Set fso = CreateObject("Scripting.FileSystemObject")
	fso.DeleteFolder(foldername)
	fso=""
END SUB

SUB SendMail(theTo,theFrom,theSubject,theBody)

END SUB

FUNCTION SaveImage(filenumber,thePath,minwidth,maxwidth,minheight,maxheight,unique,returntag)
'filenumber = den fil der gemmes nu. Starter med 1
'thePath = stien til der hvor filen skal gemmes
'minwidth,maxwidth,minheight,maxheight = størrelse på billedet
'unique = true hvis eksiterende ikke skal overskrives
'returntag = true hvis en fuld images-tag ønskes, false hvis blot sti+filnavn ønskes

	DIM filename,fullpath,newpath
	IF unique=true THEN Post.OverwriteFiles=false ELSE Post.OverwriteFiles=false
	IF filenumber=1 THEN Post.saveVirtual(thePath)
	
	IF Post.Files(filenumber).ImageWidth > maxwidth OR Post.Files(filenumber).ImageHeight > maxHeight _
		OR  Post.Files(filenumber).ImageWidth < minwidth OR Post.Files(filenumber).ImageHeight < minHeight THEN
		Post.Files(filenumber).Delete
		SaveImage="-"
	ELSE
		filename=Post.files(filenumber).ExtractFileName
		IF returnTag=true THEN
			SaveImage="<img src=""" & thePath & filename & """ height=""" &_
				Post.Files(filenumber).ImageHeight & """ width=""" &_
				Post.Files(filenumber).ImageWidth & """>"
		ELSE
			SaveImage=thePath & filename
		END IF
	END IF
END FUNCTION

FUNCTION InsertRec(theSQL,theConn,theTable,theIDfield,theSelect)
	DIM theComm
    Set theComm = Server.CreateObject("ADODB.Command")
    theComm.ActiveConnection = theConn
    theComm.CommandText = theSQL
	theComm.Execute
    theComm.ActiveConnection.Close
	IF LEN(theTable)>0 THEN
		Set theComm = Server.CreateObject("ADODB.RecordSet")
		theComm.ActiveConnection = theConn
		theComm.Source = "SELECT MAX(" & theIDfield & ") as themax FROM " & theTable
		IF LEN(theSelect)>0 THEN
			theComm.Source = theComm.Source & " WHERE " & theSelect
		END IF
		theComm.Open()
		InsertRec=theComm.Fields.Item("themax").value
		theComm.Close()
	ELSE
		InsertRec=0
	END IF
END FUNCTION

SUB execCommand(theSQL,theConn)
	DIM theComm
    Set theComm = Server.CreateObject("ADODB.Command")
    theComm.ActiveConnection = theConn
    theComm.CommandText = theSQL
	theComm.Execute
    theComm.ActiveConnection.Close
END SUB

SUB MakeFile(theSQL,theConn,StartText,EndText,ModelText,Filename)
	DIM theRS, Format_Sel, fso, ts,theData,rowCount, colCount,i,ii, thisRow, theFile
	SET theRS= Server.CreateObject("ADODB.Recordset")
	theRS.ActiveConnection = theConn
	theRS.Source = theSQL
	theRS.Open()
	theData=theRS.GetRows
	theRS.Close()
	colCount=uBound(theData,2)
	rowCount=uBound(theData,1)
	theFile=StartText
	FOR i=0 TO colCount
		thisRow=ModelText
		FOR ii=0 TO rowCount
			thisRow=replace(thisRow,"#" & ii & "#",theData(ii,i) & " ")
		NEXT
		theFile=theFile & thisrow
	NEXT
	theFile=theFile & EndText
	WriteFile theFile,Filename
END SUB

Function FormatDate(theDate)
	IF LEN(theDate)>0 THEN
		theDate=CDate(theDate)
		FormatDate= DatePart("d",theDate) & "/" & DatePart("m",theDate) & "/" & DatePart("yyyy",theDate)
ELSE
	FormatDate="''"
	END IF
End Function
%>