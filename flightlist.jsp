<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="java.sql.*" %>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    String Url="jdbc:mySql://localhost:3306/databaseflight";
    String user="root";
    String pass="Bajrangi";
    Connection conn=DriverManager.getConnection(Url, user, pass);
    Statement smt=conn.createStatement();
    ResultSet rst=smt.executeQuery("select * from flights");
    %>
    <h2>Flight List</h2>
    <%while(rst.next()){%>
    <%
    
    out.println(rst.getInt("S.No.")  + "  " +  rst.getString("Airline")  + "  " +  rst.getString("Source")   + " "  + rst.getString("Destination")  + "  " +  rst.getInt("Price") + "<br>" ); 
    
    %>

    
    
    <%} %>
    
    