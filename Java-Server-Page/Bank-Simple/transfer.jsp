<!--manager.jsp-->
<%@page import="java.sql.*, java.io.PrintWriter, java.io.StringWriter"%>
<%!
Connection con;
Statement stmt;
String query;
String query1;
public void jspInit()
{
try{
new com.mysql.jdbc.Driver();
String url = "jdbc:mysql://localhost:3306/test2";
con = DriverManager.getConnection(url, "root","root");
stmt = con.createStatement();
}
catch(Exception e) {}
}
public boolean transfer(int src, int dst, int amount){
	try{
		query = "SELECT balance FROM accounts WHERE accNum=" + src;
		ResultSet rs = stmt.executeQuery(query);
		rs.next();
		int srcBal = rs.getInt("balance")- amount;
		query1 = "SELECT balance FROM accounts WHERE accNum=" + dst;
		ResultSet rs1 = stmt.executeQuery(query1);
		rs1.next();
		int dstBal = rs1.getInt("balance")+ amount;
		return doTransfer(src,dst,srcBal,dstBal);
	} catch(SQLException e){
		return false;
	}
}
public boolean doTransfer(int src, int dst, int srcBal, int dstBal){
	try{
		con.setAutoCommit(false);
		String query = "UPDATE accounts " + "SET balance = ? " + " WHERE accNum = ?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1, srcBal);
        pstmt.setInt(2, src);
		int row = pstmt.executeUpdate();
		String query1 = "UPDATE accounts SET balance=" +dstBal+ " WHERE accNum=" + dst;
		stmt.executeUpdate(query1);
		con.commit();
		return true;
	} catch(SQLException e){
		try{
			con.rollback();
		} catch (SQLException e1){
		}
		return false;
	}
}
%>
<%
try{
	int src = Integer.parseInt(request.getParameter("src"));
	int dst = Integer.parseInt(request.getParameter("dst"));
	int amount  = Integer.parseInt(request.getParameter("amount"));
	boolean a = transfer(src,dst,amount);
	if(a==true)
		out.println("<h2 align = \"center\">" + "Amount transferred successfully"+"</h2>");
	else
		out.println("Transaction failed!!");
}catch(Exception e){out.println(e);}
%>
