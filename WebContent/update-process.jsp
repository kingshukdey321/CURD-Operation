<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<a href="index.jsp"><h3>back to Home</h3></a>


<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/card";%>
<%!String user = "root";%>
<%!String pswd = "root";%>
<%
String id = request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String idno=request.getParameter("idno");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String psw=request.getParameter("psw");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
System.out.print("executing");
System.out.println(url+"\n"+user+"\n"+pswd);
con = DriverManager.getConnection(url,user,pswd);
System.out.println("Connection established");
String sql="Update emp set id=?,fname=?,lname=?,idno=?,gender=?,email=?,psw=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, fname);
ps.setString(3, lname);
ps.setString(4, idno);
ps.setString(5, gender);
ps.setString(6, email);
ps.setString(7, psw);
int i = ps.executeUpdate();
System.out.println("executed");
if(i > 0)
{
out.print("Record Updated Successfully");

}



else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>