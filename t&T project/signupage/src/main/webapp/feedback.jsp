<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="feed.css">
  <title>Feedback Form</title>
</head>
<body>

  <div class="container">
    <form action="feedback" method="post">
      <h2>Feedback Form</h2>

      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="rating">Rating:</label>
      <select id="rating" name="rating" required>
        <option value="5">5 - Excellent</option>
        <option value="4">4 - Very Good</option>
        <option value="3">3 - Good</option>
        <option value="2">2 - Fair</option>
        <option value="1">1 - Poor</option>
      </select>

      <label for="comments">Comments:</label>
      <textarea id="comments" name="comments" rows="4" required></textarea>

      <button type="submit">Submit Feedback</button>
    </form>
  </div>

</body>
</html>
    