<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="contact.css">
    <title>Contact Us - Your Travel Companion</title>
</head>
<body>
    <header>
        <h1>Tourister</h1>
    </header>

    <section class="contact-page">
        <div class="contact-info">
            <h2>Contact Information</h2>
            <p>Have questions or need assistance? Reach out to us!</p>
            <address>
                <strong>Tourester's Contact Us</strong><br>
                Mayani Road ,GP <br>
                vita, Sangli 415314<br>
                <strong>Email:</strong>Tourister@gmail.com<br>
                <strong>Phone:</strong> +91 (9552436143)
            </address>
        </div>

        <div class="contact-form">
            <h2>Contact Us</h2>
            <form method="post" action="conncet">
                <label for="name">Name:</label>
                <input type="text"  name="name" required>

                <label for="email">Email:</label>
                <input type="email" name="email" required>

                <label for="message">Message:</label>
                <textarea name="message" rows="4" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <footer>
        <p>2024 Tourister. All rights reserved.</p>
    </footer>

  
</body>
</html>
