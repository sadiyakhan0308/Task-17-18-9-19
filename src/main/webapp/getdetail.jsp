<%@page isELIgnored="false" %>
<html>
<body>
<h2>Details are....!</h2>
<hr>

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
	<a href="search.jsp">Search-More</a><br>
	<a href="index.jsp">Home</a><br>
</body>
</html>