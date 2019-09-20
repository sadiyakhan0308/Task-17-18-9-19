<%@page isELIgnored="false" %>
<html>
<body>
	
	
	
	<hr>
	<h3> ${message}</h3>
	<table align="center" cellpadding = "10" >
 
<tr>
<td>RollNo  ${student.rno}</td>
</tr>
<tr>
<td>Name  ${student.name}</td>
</tr>
<tr>
<td>Branch  ${student.branch}</td>
</tr>
<tr>
<td>Semester ${student.sem}</td>
</tr>
</table>				
	<hr>
	<a href="studententry.jsp">Add-More</a><br>
	<a href="index.jsp">Home</a><br>
</body>
</html>