<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record successfully stored</title>
<link rel="stylesheet" href="addCustomerSuccess.css">

</head>
<body>
	<div class="success-message">
        <%
            String msg = (String)request.getAttribute("success");
            out.println(msg);
        %>
    </div>
	<div class="nav-links">
        <a href="addCustomer.html">Add Customer Details</a>
        <a href="searchCustomer.html">Search Customer</a>
        <a href="ViewAllCustomer.html">View All Customer</a>
    </div>
</body>
</html>