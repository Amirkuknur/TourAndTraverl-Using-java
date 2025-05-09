<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Confirmation</title>
<style type="text/css">
/* styles.css */

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.payment-confirmation {
    max-width: 600px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.payment-confirmation h2 {
    color: #333;
    text-align: center;
}

.details {
    margin-top: 20px;
}

.details h3 {
    color: #666;
}

.details ul {
    list-style-type: none;
    padding: 0;
}

.details ul li {
    margin-bottom: 10px;
}

.details ul li strong {
    font-weight: bold;
}

.email-notice {
    text-align: center;
    margin-top: 30px;
    color: #4CAF50;
    font-size: 18px;
}

</style> <!-- Link your CSS file -->
</head>
<body>
<div class="payment-confirmation">
    <h2>Thank You for Your Payment!</h2>
    <div class="details">
        <h3>Your Package Details:</h3>
        <ul>
            <li><strong>Date:</strong> <!-- JavaScript will be used to display current date --></li>
            <li><strong>Bus Number:</li>
            <li><strong>Hotel Name:</li>
            <li><strong>Room Number:</li>
            <li><strong>Restaurant Name:</li>
        </ul>
    </div>
    <p class="email-notice">These all details will be sent to your email shortly.</p>
</div>



</body>
</html>
