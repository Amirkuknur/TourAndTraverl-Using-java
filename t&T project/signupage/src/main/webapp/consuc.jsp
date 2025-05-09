<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="contact_success.css">
    <title>Contact Success</title>
    <style>
    	.contact-success-page {
    max-width: 500px;
    margin: 0 auto;
    text-align: center;
    padding: 50px 0;
    font-family: Arial, sans-serif;
    font-size: 24px;
    color: #333;
}

.contact-success-page h2 {
    font-size: 48px;
    margin-bottom: 30px;
}

.contact-success-page a {
    display: inline-block;
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin-top: 30px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.contact-success-page a:hover {
    background-color: #3e8e41;
}
    </style>
</head>
<body>
    <section class="contact-success-page">
        <h2>Contact Success</h2>
        <p>Your message has been successfully sent!</p>
        <a href="contact.jsp">Send Another Message</a>
    </section>
</body>
</html>