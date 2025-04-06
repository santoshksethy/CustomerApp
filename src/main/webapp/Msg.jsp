<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Not Found</title>
    <link rel="stylesheet" href="addCustomer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Error-specific styles */
        .not-found-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 36, 107, 0.1);
            padding: 2.5rem;
            max-width: 500px;
            margin: 5% auto;
            text-align: center;
            animation: fadeIn 0.6s ease;
        }
        
        .error-icon {
            font-size: 3.5rem;
            color: #e63946; /* Soft red */
            margin-bottom: 1.5rem;
        }
        
        .error-message {
            color: #00246B;
            font-size: 1.2rem;
            line-height: 1.6;
            margin: 1.5rem 0;
            padding: 0 1rem;
        }
        
        .action-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin-top: 2rem;
        }
        
        .action-link {
            background-color: #00246B;
            color: white;
            padding: 0.8rem;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        
        .action-link:hover {
            background-color: #001a4d;
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0, 36, 107, 0.2);
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="not-found-container">
        <div class="error-icon">
            <i class="fas fa-user-slash"></i>
        </div>
        <div class="error-message">
            <%
                String msg = (String) request.getAttribute("msg");
                out.println(msg);
            %>
        </div>
        <div class="action-links">
            <a href="addCustomer.html" class="action-link">
                <i class="fas fa-user-plus"></i> Add New Customer
            </a>
            <a href="searchCustomer.html" class="action-link">
                <i class="fas fa-search"></i> Search Again
            </a>
            <a href="viewAllCustomer.html" class="action-link">
                <i class="fas fa-users"></i> View All Customers
            </a>
        </div>
    </div>
</body>
</html>