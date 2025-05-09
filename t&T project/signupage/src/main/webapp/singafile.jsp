<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height:auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 100%;
}

@media only screen and (max-width:700px) {
  .responsive {
    width:100%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>
<body>

<h2>Best Image Gallery</h2>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="desktop-wallpaper-dubai-burj-al-arab-on.jpg">
      <img src="5f06e551-0b51-44e4-9816-0404bf62c25c.jpg" alt="Cinque Terre" width="700px" height="300px">
    </a>
    <div class="desc"><b>Garden By Bay</b></div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="1597417814_shutterstock_476270212.webp" alt="Forest" width="700" height="500">
    </a>
    <div class="desc"><b>Universal Studios</b></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="xbjxqkhabl6zes0xhsjb.jpg" alt="Northern Lights" width="700" height="500">
    </a>
    <div class="desc"><b>Cloud Forest</b></div>
  </div>
</div>


</body>
</html>


    