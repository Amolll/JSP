<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
 <%!
  Connection conn;
  PreparedStatement stmt;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="master.jsp" %>
<form name='frm' action='' method='POST'>
<center>
<input type='text' name='name' value='' placeholder='Enter the Name' style='width:400px;height:30px;'/><br><br>
<input type='text' name='email' value='' placeholder='Enter the Email' style='width:400px;height:30px;'/><br><br>
<input type='text' name='contact' value='' placeholder='Enter the Contact' style='width:400px;height:30px;'/><br><br>
<input type='text' name='sal' value='' placeholder='Enter the Salary' style='width:400px;height:30px;'/><br><br>

<input type='submit' name='s' value='Add New Employee' style='width:400px;height:30px;'/><br><br>

</center>
</form>
<%
 String button=request.getParameter("s");
  if(button!=null)
  {
	  String name=request.getParameter("name");
	  String email=request.getParameter("email");
	  String contact=request.getParameter("contact");
	  int sal=Integer.parseInt(request.getParameter("sal"));
	  try
	  {
		  Class.forName("com.mysql.jdbc.Driver");
		  //com.mysql.jdbc.Driver d=new com.mysql.jdbc.Driver();
		  //DriverManager.registerDriver(d)
		 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Amol@2121");
		 if(conn!=null)
		 {
		stmt=conn.prepareStatement("insert into employee values('0',?,?,?,?)");
		stmt.setString(1, name);
		stmt.setString(2,email);
		stmt.setString(3, contact);
		stmt.setInt(4, sal);
		int value=stmt.executeUpdate();
		  if(value>0)
		  {
	%>
	 <center>Record Save Success.............</center>
	<%  
		  }
		  else
		  {
  %>
  <center>Record Not Save</center>
  <%	  
		  }
		 }
		 else
		 {
			 out.println("<center>Not Connected</center>");
		 }
	  }
	  catch(Exception e)
	  {
		  out.println("error is "+e);
	  }
  }
%>
</body>
</html>











