<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Status</title>
    <link rel="stylesheet" href="addCustomer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Status-specific styles */
        .status-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 36, 107, 0.1);
            padding: 2rem;
            max-width: 500px;
            margin: 5% auto;
            text-align: center;
            animation: fadeIn 0.5s ease;
        }
        
        .status-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }
        
        .error-icon {
            color: #e63946; /* Soft red for errors */
        }
        
        .status-message {
            color: #00246B;
            font-size: 1.2rem;
            margin: 1rem 0;
            line-height: 1.6;
        }
        
        .home-link {
            display: inline-block;
            margin-top: 2rem;
            background: #00246B;
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .home-link:hover {
            background: #001a4d;
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
    <div class="status-container">
        <div class="status-icon error-icon">
            <i class="fas fa-exclamation-circle"></i>
        </div>
        <div class="status-message">
            <%
                String msg = (String) request.getAttribute("msg");
                out.println(msg);
            %>
        </div>
        <a href="home.html" class="home-link">
            <i class="fas fa-home"></i> Return Home
        </a>
    </div>
</body>
</html>