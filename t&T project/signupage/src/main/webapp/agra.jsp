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
      <img src="40.jpg" alt="Cinque Terre" width="700px" height="300px">
    </a>
    <div class="desc"><b>Taj-Mahal</b></div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="Jahangiri-Mahal-Agra-Fort1.jpg" alt="Forest" width="700" height="500">
    </a>
    <div class="desc"><b>Agra-Fort</b></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="Mehtab_Bagh_facing_Taj_Mahal.jpg" alt="Northern Lights" width="700" height="500">
    </a>
    <div class="desc"><b>Mehtab-Bagh</b></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="Taj-Museum.jpg" alt="Mountains" width="700" height="500">
    </a>
    <div class="desc"><b>Taj-Museum</b></div>
  </div>
</div>

</body>
</html>


    