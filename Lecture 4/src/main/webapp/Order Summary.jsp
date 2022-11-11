<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#panel {
	display: block;
    margin-left: auto;
    margin-right: auto;
    width: 25%;
}
table, td {
  border:1px solid black;
}
</style>
</head>
<body style="background:url(product-images/rawpixel.jpg);background-repeat: no-repeat;background-size: cover ;background-attachment :fixed">
<%
	String[] peripherals = request.getParameterValues("Peripherals");

%>
<div id="panel">
    <h1>Order summary:</h1>
    <table>
        <tr>
          <td>Processor:</td>
          <td>
          	<%if(request.getParameter("Processor") != null) { %>
          		<%= request.getParameter("Processor") %>
          	<% } else { %>
          		<p>No processor selected.</p>
          	<% } %>
          </td>
        </tr>
        <tr>
          <td>Accessories:</td>
          <td><%if(request.getParameter("Accessories") == null && peripherals == null) { %>     		
          		<p>No accessories or peripherals selected.</p>
          	  <% } %>
          	  <%if(request.getParameter("Accessories") != null) { %>
          	  	<%= request.getParameter("Accessories") %><br> 
          	  <% } %>
          	  <%if(peripherals != null) { %>
 				<%for(int i = 0; i < peripherals.length; i++) { %>
          	  	<%= peripherals[i] %><br>
          	  	<%} %>
          	  <% } %>
          </td>
        </tr>
      </table>
</div>
</body>
</html>