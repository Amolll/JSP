<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!Connection conn;
	PreparedStatement stmt;
	ResultSet rs;%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align='center' />
	<tr>
		<td><input type='text' placeholder="Enter Employee Id Here" /></td>
		<br>
		<td><input type='button' value='Serach Employee' name='s' /></td>
	</tr>
	</table>


	<%
//	int empid=Integer.parseInt(request.getParameter("empid"));

	String btn=request.getParameter("s");
	if(btn!=null)
	{
		//empid=rs.getInt(1);
		out.println("I am emploeyee");	
	}
	else
	{
		out.println("I am not emploeyee");
	} 
	/* 	try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "Amol@2121");

			if (conn != null)
			{
				stmt=conn.prepareStatement("select *  from employee where empid=?");
				stmt.setInt(1, empid);
				int value=stmt.executeUpdate();
				 if(value>0)
				  {
						String btn=request.getParameter("s");
						if(btn!=null)
						{
							out.println("I am emploeyee");	
						}
						else
						{
							out.println("I am not emploeyee");
						}
						
				
				  }
				  else
				  {
					  out.println("Some problem is there");
				  }

			} 
			else 
			{
				out.println("I am Not Connceted");
			}
		} catch (Exception e) {
			out.println("Error is " + e);
		}
 */	
 %>



</body>
</html>