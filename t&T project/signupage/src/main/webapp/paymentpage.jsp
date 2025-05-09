<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Make a Payment</title>
</head>
<body>
    <h1>Make a Payment</h1>
    <form action="paymentServlet" method="post">
        <label for="destination">Destination:</label>
        <input type="text" id="destination" name="destination" required><br><br>
        <label for="amount">Amount:</label>
        <input type="number" step="0.01" id="amount" name="amount" required><br><br>
        <label for="paymentType">Payment Type:</label>
        <select id="paymentType" name="paymentType" required>
            <option value="">-- Select Payment Type --</option>
            <option value="credit_card">Credit Card</option>
            <option value="debit_card">Debit Card</option>
            <option value="bank_transfer">Bank Transfer</option>
            
            </select><br><br>
        <input type="submit" value="Submit Payment">
    </form>
</body>
</html>
