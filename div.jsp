<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true" errorPage="error.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="menu.jsp" %>

<br><br>
<center>
	<form name='frm' action='' method='POST'>
		<input type='text' name='first' value=''
			style='width: 500px; height: 30px;'
			placeholder='Enter the First Value' /><br> <br> <input
			type='text' name='second' value=''
			style='width: 500px; height: 30px;'
			placeholder='Enter the Second Value' /><br> <br> <input
			type='submit' name='s' value='Calculate'
			style='width: 500px; height: 30px;' /><br>
	</form>
</center>
	<%
		String button = request.getParameter("s");
		if (button != null) {
			int a = Integer.parseInt(request.getParameter("first"));
			int b = Integer.parseInt(request.getParameter("second"));
			int c=a/b;
		out.println("<h1>Division is &nbsp;&nbsp;"+c+"</h1>");

		}
	%>
</body>
</html>





