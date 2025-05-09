<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        section {
            text-align: center;
            margin-top: 50px;
        }
        h1 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            color: #666;
            font-size: 1.2em;
            margin-bottom: 40px;
        }
        nav {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }
        nav a {
            color: #fff;
            background-color: #4CAF50;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s;
            font-size: 1.2em;
        }
        nav a:hover {
            background-color: #45a049;
        }
         #paymentSubcategories {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    #paymentSubcategories li {
        margin-bottom: 10px;
    }

    #paymentSubcategories li a {
        color: #333;
        text-decoration: none;
        font-size: 1em;
    }

    #paymentSubcategories li a:hover {
        text-decoration: underline;
    }
    </style>
</head>
<body>
    <section>
        <h1>Welcome, ${sessionScope.username}!</h1>
        <p>You have successfully logged in. Explore our services below:</p>
        <nav>
            <a href="Registerdetails.jsp">Register Details</a>
            <a href="indianbook.jsp">Indian Book Details</a>
            <a href="internationaldetail.jsp">International Details</a>
            <a href="messagecome.jsp">Feedback Details</a>
            <a href="contact.jsp">Contact Details</a>
            <a href="#" onclick="toggleSubcategories();">Payment Details</a> <!-- Add onclick event -->
    </nav>
    <ul id="paymentSubcategories" style="display: none;"> <!-- Add an ID and set display to none initially -->
        <li><a href="indianpaydetail.jsp">Indian pays</a></li>
        <li><a href="pay2.jsp">Internation pays</a></li>
    </ul>
</section>


<script>
    function toggleSubcategories() {
        var subcategories = document.getElementById('paymentSubcategories');
        if (subcategories.style.display === 'none') {
            subcategories.style.display = 'block';
        } else {
            subcategories.style.display = 'none';
        }
    }
</script>
</body>
</html>
