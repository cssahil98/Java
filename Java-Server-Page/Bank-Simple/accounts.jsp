<!--manager.jsp-->
<%@page import="java.sql.*"%>
<%
try{
new com.mysql.jdbc.Driver();
String url = "jdbc:mysql://localhost:3306/test2";
Connection con = DriverManager.getConnection(url, "root","root");
Statement stmt = con.createStatement();
String create = "CREATE TABLE accounts(		"+
				" accNum integer primary key, "+
				" holderName varchar(20), "+
				" balance integer "+
				")";
stmt.executeUpdate(create);

String insert = "INSERT INTO accounts VALUES(1, 'Uttam Roy', 100000)";
stmt.executeUpdate(insert);
String insertt = "INSERT INTO accounts VALUES(2, 'Bibhas Dhara', 200000)";
stmt.executeUpdate(insertt);
stmt.close();
con.close();
out.println("Created table accounts");
} catch(Exception e){
out.println(e);
}
%>
