<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name='frm' action='' method='POST'>
		<input type='text' name='n' value=''
			style='width: 500px; height: 30px;' placeholder="Enter the Number" />
		&nbsp;&nbsp;<input type='submit' name='s' value='Print Table'
			style='width: 200px; height: 30px;' /><br> <br>
	</form>
	<%
		String btn = request.getParameter("s");
		if (btn != null) {
			int no = Integer.parseInt(request.getParameter("n"));
	%>
	<table border='5' align='center' width='60%' height='60%'>
		<tr>
			<th>Number</th>
			<th>X</th>
			<th>Iteration</th>
			<th>=</th>
			<th>Result</th>
		</tr>
		<%
			for (int i = 1; i <= 10; i++) {
		%>
		<tr>
			<td><%=no%></td>
			<td>X</td>
			<td><%=i%></td>
			<td>X</td>
			<td><%=i * no%></td>
		</tr>

		<%
			}
		%>
	</table>
	<%
		}
	%>
</body>
</html>




