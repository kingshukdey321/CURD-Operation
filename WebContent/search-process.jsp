<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Your Data is search successfully! </h1>

<a href="index.jsp"><h3>back to Home</h3></a>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String idno = request.getParameter("idno");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "card";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>First name</b></td>
<td><b>Last name</b></td>
<td><b>Idno</b></td>
<td><b>gender</b></td>
<td><b>Email</b></td>
<td><b>Psw</b></td>
<td><b>Action1</b></td>
<td><b>Action2</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM card.emp WHERE idno='"+idno+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("idno") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("psw") %></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("id") %>">
<button type="button" class="delete">Delete</button></a></td>

<td><a href="update.jsp?id=<%=resultSet.getString("id") %>">
<button type="button" class="update">update</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>



</body>
</html>