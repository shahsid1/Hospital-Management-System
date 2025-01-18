<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Generate Bill</title>
    <style>
      body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJIDOuWTy3ejUoyBPpXYp25w9_9SfQyg99A&usqp=CAU");
        background-position:fixed;
    color: #333;
    margin: 0;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.bill-container {
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 100%;
    max-width: 600px;
    text-align: left;
    box-sizing: border-box;
}

h2 {
    color: #4A90E2;
    margin-top: 0;
}

p {
    font-size: 16px;
    margin: 10px 0;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.total {
    font-weight: bold;
}

.footer {
    text-align: center;
    margin-top: 20px;
    font-style: italic;
}

.error-message {
    color: #e74c3c;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
}

button.back {
    background-color: #4CAF50; 
    color: white;
    border: none; 
    padding: 15px 30px; 
    text-align: center; 
    text-decoration: none; 
    display: inline-block; 
    font-size: 16px; 
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.3s;
    margin-top: 20px; 
}

button.back:hover {
    background-color: #45a049; 
    transform: scale(1.05);
}

    </style>
</head>
<body>
    <div class="bill-container">
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) { 
        %>
            <div class="error-message"><%= errorMessage %></div>
        <% } else { 
            String patient = (String) request.getAttribute("patient");
            Integer serviceCharge = (Integer) request.getAttribute("serviceCharge");
            Integer doctorCharge = (Integer) request.getAttribute("doctorCharge");
            Double totalCost = (Double) request.getAttribute("totalCost");
            Double gst = (Double) request.getAttribute("gst");
            Double finalAmount = (Double) request.getAttribute("finalAmount");
        %>
            <h2>Your Bill Details:</h2>
            <p><strong>Patient:</strong> <%= patient %></p>
            <p><strong>Service Charge:</strong> Rs. <%= serviceCharge %></p>
            <p><strong>Doctor Charge:</strong> Rs. <%= doctorCharge %></p>
            <p><strong>Total Cost:</strong> Rs. <%= totalCost %></p>
            <p><strong>IGST 18%:</strong> Rs. <%= gst %></p>
            <p class="total"><strong>Total Final Amount to be paid:</strong> Rs. <%= finalAmount %></p>
            <hr>
            <div class="footer">======== Thank you ========</div>
        <% } %>
         <button class="back" type="button" onclick="window.location.href='App.jsp';">Home Page</button>
    </div>
</body>
</html>