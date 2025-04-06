<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Removed</title>
    <link rel="stylesheet" href="addCustomer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Confirmation-specific styles */
        .confirmation-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 36, 107, 0.1);
            padding: 2.5rem;
            max-width: 500px;
            margin: 5% auto;
            text-align: center;
            animation: fadeIn 0.6s ease;
        }
        
        .confirmation-icon {
            font-size: 3.5rem;
            color: #4CAF50; /* Green for success */
            margin-bottom: 1.5rem;
            animation: bounce 0.5s ease;
        }
        
        .confirmation-message {
            color: #00246B;
            font-size: 1.2rem;
            line-height: 1.6;
            margin: 1.5rem 0;
            padding: 0 1rem;
        }
        
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 2rem;
        }
        
        .home-btn {
            background-color: #00246B;
            color: white;
            padding: 0.8rem 1.8rem;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        
        .home-btn:hover {
            background-color: #001a4d;
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0, 36, 107, 0.2);
        }
        
        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }
    </style>
</head>
<body>
    <div class="confirmation-container">
        <div class="confirmation-icon">
            <i class="fas fa-check-circle"></i>
        </div>
        <div class="confirmation-message">
            <%
                String msg = (String) request.getAttribute("msg");
                out.println(msg);
            %>
        </div>
        <div class="action-buttons">
            <a href="home.html" class="home-btn">
                <i class="fas fa-home"></i> Return Home
            </a>
            <a href="searchCustomer.html" class="home-btn">
                <i class="fas fa-search"></i> Search Another
            </a>
        </div>
    </div>
</body>
</html>