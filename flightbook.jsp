<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/databaseflight";
String user = "root";
String pass = "Bajrangi";
Connection conn = DriverManager.getConnection(url, user, pass);
Statement smt = conn.createStatement();
ResultSet rst = smt.executeQuery("select * from flights where Source='" + SOURCE + "'and Destination='" + DESTINATION + "'");
%>

<table>
<% while(rst.next()) { %>

<%
out.println(rst.getInt("S.No.")+   ". "  +rst.getString("Airline")+   "     "   + rst.getString("Source")+   "     "   +rst.getString("Destination")+   "     "   +rst.getInt("Price"));


%>


<%}
%>
</table>
<br>
<form action="customerdetails.jsp" method="post">
<input type="submit" value="Book Ticket">

</form>
