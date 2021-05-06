<!--manager.jsp-->
<%@page import="java.sql.*"%>
<%!
Connection con;
Statement stmt;
String query;
public void jspInit()
{
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/test2";
con = DriverManager.getConnection(url, "root","root");
stmt = con.createStatement();
}
catch(Exception e) {}
}
public void addtotable(String fname,String lname,String uname,String pwd)
{
try{
query= "INSERT INTO registration values ('"+fname+"','"+lname+"','"+uname+"','"+pwd+"')";
stmt.executeUpdate(query);
} catch(SQLException e) {}
}
%>
<%
try{
String fname = request.getParameter("first_name");
String lname = request.getParameter("last_name");
String uname = request.getParameter("username");
String pwd = request.getParameter("password");
addtotable(fname,lname,uname,pwd);
out.println("<h2 align = \"center\">"+"User Registered successfully"+"</h2>");
}catch(Exception e){out.println(e);}
%>