<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
  Connection conn;
  PreparedStatement stmt;
  ResultSet rs;
%>

<%
try
{
	 int empid=Integer.parseInt(request.getParameter("empid"));
	 Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "Amol@2121");
		
	 stmt=conn.prepareStatement("delete from employee where empid=?");
	 stmt.setInt(1, empid);
	 int value=stmt.executeUpdate();
	  if(value>0)
	  {
		  response.sendRedirect("viewemployee.jsp");
	  }
	  else
	  {
		  out.println("Some problem is there");
	  }
}
catch(Exception e)
{
	out.println("Error is "+e);
}

%>
</body>
</html>













