<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f0f0f0;
    }

    .container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 80vh;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 15px 50px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin: 0 auto;
      margin-top:40px;
      width: 300px;
      
    }

    form {
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="password"] {
      border: 1px solid #ddd;
      border-radius: 4px;
      padding: 8px;
      font-size: 14px;
      margin-bottom: 10px;
      width: 100%;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      padding: 10px;
      font-size: 14px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
  <div class="container">
    <img src="boy.jpg" alt="Logo" style="width: 100px; margin-bottom: 20px;" />
    <h2>Welcome, Admin!</h2>
    <!-- ... your existing HTML code ... -->
<form action="LoginServlet" method="post">
  <label for="username">Username:</label>
  <input type="text" name="username" id="username" required />

  <label for="password">Password:</label>
  <input type="password" name="password" id="password" required />

  <input type="submit" value="Login" /><br>

  <!-- Registration link added below the login button -->
  
</form>
<!-- ... your existing HTML code ... -->

  </div>
</body>
</html>