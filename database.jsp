<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>


<form action="payment.jsp" method="post"> 
<h1>PAYMENT DETAILS</h1> <br>
Debit Card no. <input type="number" name="cardnumber"> <br>
Expiry date    <input type="text" name="expiry"> <br>
CVV no.        <input type="number" name="cvv"> <br>
        <input type="submit" value="Submit">

</form> 