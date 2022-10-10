<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <%@page import="java.sql.*"%>
  <%
  
  try {
		String usern = request.getParameter("username");
		String passw = request.getParameter("password");
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/databaseflight";
		String user = "root";
		String pass = "Bajrangi";
		Connection conn = DriverManager.getConnection(url,user,pass);
		PreparedStatement smt = conn.prepareStatement("select username,password from login where username=? and password=?");
		smt.setString(1, usern);
		smt.setString(2, passw);
		ResultSet rs = smt.executeQuery();
		response.sendRedirect("admin.jsp");
		
		
	} catch (Exception e) {
		out.println(e);
	}
	%>

      		
  