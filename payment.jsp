<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<h2>your flight details</h2>
<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/databaseflight";
String user = "root";
String pass = "Bajrangi";
Connection conn = DriverManager.getConnection(url, user, pass);
Statement smt = conn.createStatement();
ResultSet rst = smt.executeQuery("select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'");
 %> 


 <% while(rst.next()) {%> 

<% 
out.println(rst.getInt("S.No.")+   ". "  +rst.getString("Airline")+   "     "   + rst.getString("Source")+   "     "   +rst.getString("Destination")+   "     "   +rst.getInt("Price"));
%>

<%}
 %>

<br>
<h2>payment successfull...</h2>
<br>
<h2>your ticket booked</h2>
<br>


