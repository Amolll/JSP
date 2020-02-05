<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%!Connection conn;
	PreparedStatement stmt;
	ResultSet rs;	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewEmployee</title>
</head>
<body>
<%@include file="master.jsp" %>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "Amol@2121");
			if (conn != null) {
				stmt = conn.prepareStatement("select *from employee");
				rs=stmt.executeQuery();
	%>
	<br><br>
	<table border='4' align='center'width='60%'>
	<tr><th>NAME</th><th>EMAIL</th><th>CONTACT</th><th>SALARY</th>
	<th>DELETE</th><th>UPDATE</th></tr>
	
	<% 
				while(rs.next())
				{
   %>
   	<tr>
   <td><%=rs.getString(2)%></td>
   <td><%=rs.getString(3) %></td>
   <td><%=rs.getString(4) %></td>
   <td><%=rs.getString(5) %></td>
   <td><a href='delete.jsp?empid=<%=rs.getInt(1)%>'>Delete</a></td>
   <td><a href=''>Update</a></td>
  
   </tr>
   
   <%	
				}

			} else {
				out.println("Not Connected");
			}
		} catch (Exception e) {
			out.println("Error is  " + e);
		}
	%>
</body>
</html>







