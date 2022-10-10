<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<form action="flightbook.jsp" method="post">
Date of travel <input type="date" id="dateoftravel" name="dateoftravel" placeholder="dd/mm/yyyy">
<br>
Source   <input list="source" id="date" name="source" />
<datalist id="source">
<option value="Patna">
<option value="Delhi">
</datalist>
<br>
Destination <input list="destination" id="date" name="destination" />
<datalist id="destination">
<option value="Delhi">
<option value="Patna">
</datalist>
Number of persons <input type="number" name="no of persons">
<br>
<button>search flight</button>





</form>