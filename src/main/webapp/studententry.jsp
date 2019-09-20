<html>
<head>
<style>
table {
  font-family: Calibri; 
  color:white; 
  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  text-align:; 
  background-color: SlateBlue; 
  border-collapse: collapse; 
  border: 2px solid black
  height: 50px;
 
}
table.inner{
  border: 0px
}
body {
  
  background-color: black; 
 
}

</style>
</head>
<body>
	<h3>Student-Entry-Form</h3>
		<form action="savestudent">
	<table align="center" cellpadding = "10" >
 
<tr>
<td>Roll No </td>
<td><input type="text" name="rno"/>
</td>
</tr>
<tr>
<td>Name </td>
<td><input type="text" name="name"/>
</td>
</tr>
<tr>
<td>Branch </td>
<td><input type="text" name="branch"/>
</td>
</tr>
<tr>
<td>Semester </td>
<td><input type="text" name="sem"/>
</td>
</tr>
<tr>
<td  align="center">
<input type="submit" >
</td>
</tr>
</table>			
		</form>
</body>
</html>