<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:declaration>
  int a,b,c;
</jsp:declaration>
	<form name='frm' action='' method='POST'>
		<center>
			<input type='text' name='first' value=''
				placeholder='Enter the First Value'
				style='width: 400px; height: 30px;' /><br>
			<br> <input type='text' name='second' value=''
				placeholder='Enter the Second Value'
				style='width: 400px; height: 30px;' /><br>
			<br> <input type='submit' name='s' value='Login'
				style='width: 400px; height: 30px;' /><br>
			<br>

		</center>
	</form>
	
	<jsp:scriptlet>
	 String btn=request.getParameter("s");
	  if(btn!=null)
	  {
		  String first=request.getParameter("first");
		  String second=request.getParameter("second");
		    a=Integer.parseInt(first);
		    b=Integer.parseInt(second);
		   c=a+b;
		  
	  }
	</jsp:scriptlet>
	<h1>Addition is &nbsp;&nbsp;<jsp:expression>c</jsp:expression></h1>
</body>
</html>








