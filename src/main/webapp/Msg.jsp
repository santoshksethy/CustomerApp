<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Couldn't Found</title>
</head>
<body>
	<%
		String msg= (String) request.getAttribute("msg");
    	out.println(msg);
	%>
	<a href="addCustomer.html">Add Customer Details</a><br>
	
	<a href="searchCustomer.html">Search Customer</a><br>
	
	<a href="viewAllCustomer.html">View All Customer</a><br>

</body>
</html>