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
		&nbsp;&nbsp; <input type='submit' name='s' value='Print Table'
			style='width: 200px; height: 30px;' /><br> <br>
	</form>

	<%
		String btn = request.getParameter("s");
		if (btn != null) {
			int no = Integer.parseInt(request.getParameter("n"));
			out.println("<table align='center' border='4' width='60%'>");
			out.println("<tr><th>Number</th><th>X</th><th>Iteration</th><th>=</th><th>Result</th></tr>");
			for (int i = 1; i <= 10; i++) {
				out.println("<tr>");
				out.println("<td>" + no + "</td>");
				out.println("<td>X</td>");
				out.println("<td>" + i + "</td>");
				out.println("<td>=</td>");
				out.println("<td>" + (i * no) + "</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		}
	%>
</body>
</html>







