<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login&regi.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tourest - Explore the World</title>

  <!-- 
    - favicon
  -->
  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

  <!-- 
    - custom css link
  -->
  <link rel="stylesheet" href="homepage.css">

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Comforter+Brush&family=Heebo:wght@400;500;600;700&display=swap"
    rel="stylesheet">

</head>

<body id="top">

  <!-- 
    - #HEADER
  -->

  <header class="header" data-header>
    <div class="container">

      <a href="#">
        <h1 class="logo">Tourester</h1>
      </a>

      <button class="nav-toggle-btn" data-nav-toggle-btn aria-label="Toggle Menu">
        <ion-icon name="menu-outline" class="open"></ion-icon>
        <ion-icon name="close-outline" class="close"></ion-icon>
      </button>

      <nav class="navbar">

        <ul class="navbar-list">
        
        <li>
            <a href="" class="navbar-link">Home</a>
          </li>

          <li>
            <a href="inernational.html" class="navbar-link">International-Packages</a>
          </li>

          <li>
            <a href="indian.html" class="navbar-link">Indian-Package</a>
          </li>

          <li>
            <a href="aboutpage.jsp" class="navbar-link">About Us</a>
          </li>

<li>
            <a href="" class="navbar-link">Log Out</a>
          </li>
          
        </ul>

        <a href="login.jsp" class="btn btn-secondary">Admin</a>

      </nav>

    </div>
  </header>
    <article>
	<section class="section hero">
        <div class="container">

          <div class="hero-content">

            <p class="section-subtitle">Explore Your Travel</p>

            <h2 class="hero-title">Trusted Travel Agency</h2>

            <p class="hero-text">
              I travel not to go anywhere, but to go. I travel for travel's sake the great affair is to move.
            </p>

            <div class="btn-group">
              <a href="contactus.jsp" class="btn btn-primary">Contact Us</a>
              <a href="feedback.jsp" class="btn btn-primary">Feedback</a>

              
            </div>

          </div>
        </div>
      </section>
    </article>
    </body>
        </html>
    