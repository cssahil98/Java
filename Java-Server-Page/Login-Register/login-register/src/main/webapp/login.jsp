<!--manager.jsp-->
<%@page import="java.sql.*"%>
<%!
Connection con;
Statement stmt;
String query;
String un,pd;
public void jspInit()
{
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/test2";
con = DriverManager.getConnection(url, "root","root");
stmt = con.createStatement();
}catch(Exception e) {}
}
%>

<%
try{
String name = request.getParameter("username");
String pwd = request.getParameter("password");
query = "SELECT uname,password FROM registration where uname= '"+name+"'";
ResultSet rs = stmt.executeQuery(query);

int flag=0;
int testu=0;
while(rs.next())
{
	un=rs.getString (1);
	pd=rs.getString (2);
	if((un.compareTo(name))==0)
	{
		flag=1;
		if((pd.compareTo(pwd))==0){
			testu=1;	
			out.println("<h2 align = \"center\">" + "You are Authenticated" +"<br>" + "Welcome "+un+"</h2>");
		}		
	}
	
}
if(flag == 0){
	out.println("<h2 align = \"center\">" + "No such username!" + "<br>" + "register first"+"</h2>");
}
if(flag == 1 && testu == 0)
	out.println("<h2 align = \"center\">" + "Wrong password, Enter the correct password" +"</h2>"+ "<br>");
	
}catch(Exception e) {out.println(e);}
%>
