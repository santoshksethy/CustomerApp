<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.CustomerBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Customer Records</title>
    <link rel="stylesheet" href="ViweAllCustomers.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Additional table-specific styles */
        .customer-table-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 36, 107, 0.1);
            padding: 25px;
            margin: 30px auto;
            overflow-x: auto;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        
        th {
            background-color: #00246B;
            color: white;
            padding: 12px;
            text-align: left;
        }
        
        td {
            padding: 10px 12px;
            border-bottom: 1px solid #CADCFC;
        }
        
        tr:nth-child(even) {
            background-color: #f5f9ff;
        }
        
        tr:hover {
            background-color: #e1ebfa;
        }
        
        .action-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }
        
        .action-links a {
            background-color: #00246B;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        
        .action-links a:hover {
            background-color: #001a4d;
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0, 36, 107, 0.2);
        }
        
        @media (max-width: 768px) {
            .customer-table-container {
                padding: 15px;
            }
            
            table {
                font-size: 0.9rem;
            }
            
            th, td {
                padding: 8px 10px;
            }
        }
    </style>
</head>
<body>
    <div class="customer-table-container">
        <h1 class="form-title">
            <i class="fas fa-users"></i> Customer Records
        </h1>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>City</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                <% 
                @SuppressWarnings("unchecked")
                ArrayList<CustomerBean> customers = (ArrayList<CustomerBean>) request.getAttribute("customerCollection");
                for(CustomerBean cb : customers) { 
                %>
                <tr>
                    <td><%= cb.getId() %></td>
                    <td><%= cb.getName() %></td>
                    <td><%= cb.getCity() %></td>
                    <td><%= cb.getMid() %></td>
                    <td><%= cb.getPhno() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
        <div class="action-links">
            <a href="addCustomer.html">
                <i class="fas fa-user-plus"></i> Add New Customer
            </a>
            <a href="searchCustomer.html">
                <i class="fas fa-search"></i> Search Customers
            </a>
        </div>
    </div>
</body>
</html>