<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%

String fname = request.getParameter("fname");//get value fromn jsp to servlet
System.out.println("fname" +fname);
String lname = request.getParameter("lname");
System.out.println("lname" +lname);
String idno = request.getParameter("idno");
System.out.println("idno" +idno);
String gender = request.getParameter("gender");
System.out.println("gender" +gender);
String email = request.getParameter("email");
System.out.println("email" +email);

String psw = request.getParameter("psw");
System.out.println("psw" +psw);



%>
<body>

</body>
</html>