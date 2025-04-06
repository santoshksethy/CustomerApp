<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.CustomerBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Found</title>
    <link rel="stylesheet" href="FoundCustomer.css">
    <!-- Add Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<%
	CustomerBean cb= (CustomerBean) request.getAttribute("cBean");
	
		
	%>
    <div class="customer-card">
        <h1 class="customer-header">
            <i class="fas fa-user-check"></i> Customer Details
        </h1>
        
        <div class="detail-row">
            <span class="detail-label">ID:</span>
            <span class="detail-value"><%= cb.getId() %></span>
        </div>
        
        <div class="detail-row">
            <span class="detail-label">Name:</span>
            <span class="detail-value"><%= cb.getName() %></span>
        </div>
        
        <div class="detail-row">
            <span class="detail-label">City:</span>
            <span class="detail-value"><%= cb.getCity() %></span>
        </div>
        
        <div class="detail-row">
            <span class="detail-label">Email:</span>
            <span class="detail-value"><%= cb.getMid() %></span>
        </div>
        
        <div class="detail-row">
            <span class="detail-label">Phone:</span>
            <span class="detail-value"><%= cb.getPhno() %></span>
        </div>
        
        <div class="action-buttons">
            <a href="addCustomer.html">
                <i class="fas fa-user-plus"></i> Add New
            </a>
            <a href="searchCustomer.html">
                <i class="fas fa-search"></i> Search Again
            </a>
            <a href="ViewAllCustomer.html">
                <i class="fas fa-users"></i> View All
            </a>
        </div>
    </div>
</body>
</html>