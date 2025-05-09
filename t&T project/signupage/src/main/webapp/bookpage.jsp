<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bookpage.css">
</head>
<body>
    <section class="book-page">
        <h2>Book Destination 🌍</h2>
        <form method="post" action="book">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="destination">Destination:</label>
            <input type="text" id="destination" name="destination" required>

            <label for="rooms">Number of Rooms:</label>
            <input type="number" id="rooms" name="rooms" min="1" required>

            <label for="adults">Number of Adults:</label>
            <input type="number" id="adults" name="adults" min="1" required>

            <label for="children">Number of Children:</label>
            <input type="number" id="children" name="children" min="0" required>

            <button type="submit">Book Now 🚀</button>
        </form>
    </section>
</body>
</html>
