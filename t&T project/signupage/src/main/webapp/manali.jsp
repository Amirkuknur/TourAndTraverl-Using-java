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
    <a target="_blank" href="">
      <img src="Jogini_falls_20180430173032.jpg" alt="Forest" width="700" height="500">
    </a>
    <div class="desc"><b>Jogni Waterfall Road</b></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="Museum_Of_Himachal_Culture_&_Folk_Art,_Manali,_Kullu,_HP_India.jpg" alt="Northern Lights" width="700" height="500">
    </a>
    <div class="desc"><b>Museum Culture&Flok</b></div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="caption.jpg" alt="Mountains" width="700" height="500">
    </a>
    <div class="desc"><b>Bhrigu Lake</b></div>
  </div>
</div>

</body>
</html>


    