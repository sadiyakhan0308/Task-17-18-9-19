<html>
<head>
<style>
table {
	font-family: Calibri;
	color: white;
	font-size: 11pt;
	font-style: normal;
	font-weight: bold;
	text-align:;
	background-color: SlateBlue;
	border-collapse: collapse;
	border: 2px solid black height: 50px;
}

table.inner {
	border: 0px
}

body {
	background-color: black;
}
</style>
</head>
<body>
	<h3>Delete Student</h3>
	<form action="removestudent">
		<table align="center" cellpadding="10">

			<tr>
				<td>Roll No</td>
				<td><input type="text" name="rno" /></td>
			</tr>

			<td align="center"><input type="submit" value="delete">
			</td>
			</tr>
		</table>
	</form>
	<a href="delete.jsp">Delete-More-Students</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>