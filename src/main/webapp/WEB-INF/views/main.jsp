<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');

    .user-wrap {
position: relative;

}
    .user-wrap2 {
position: relative;

}
.user-image {
}
.user-text {
  padding: 10px 20px;
  text-align: left;
  position: absolute;
  top: 5%;
  left: 2%;
  font-family: fantasy;
}
</style>

<html>


<body>
<div class="container text-center">
  <div class="row">
    <div class="col">
     <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" >
      <img src="/lim/image/포스터1.jpg" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="/lim/image/포스터2.jpg" class="d-block w-100" >	
    </div>
    <div class="carousel-item">
      <img src="/lim/image/포스터3.jpg" class="d-block w-100" >
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
     
    </div>
  </div>

  <div class="row">
  	<div class="col-6" >
  				<div class="user-wrap">
  				<div class="user-image">
  			<a href="/"><img src="/lim/image/포스터5.jpg" style="width: 110%; height: 150%"> </a>
  			    </div>
  			    <div style="text-align: center; padding: 30px; font-size: 40px; width:110%; height:120%; font-family: cursive;">
  			    별★다방
  				  </div>
  			    <div class="user-text">
  			    <p>VARIOUS BEVERAGE<br>
  			    에이드, 티, 주스, 등 취향대로 골라먹는 즐거움!</p>
  			    </div>
  			    </div>
  	</div>
  	
  	<div class="col-6">
  				<div class="user-wrap2">
  				<div class="user-image2">
  			<a href="/"><img src="/lim/image/포스터6.jpg" style="width: 100%; height: 70%"> </a>
  			
  			 	</div>
  			<div class="user-text">
  			<p>VARIOUS BEVERAGE<br>
  			    에이드, 티, 주스, 등 취향대로 골라먹는 즐거움!</p>
  			    </div>
  			    </div>
  	</div>
  		</div>
  		
  <div class="row" >
    <div class="col">
        <a href="/"><img src="/lim/image/포스터4.jpg" class="d-block w-100"></a>
    </div>
  
    </div>
    </div>
    <div class="row" >
    
    <div class="col" style="font-family: fantasy; padding-top: 150px;">
    		<p style="font-size: 50px;">STAR’S COFFEE SNS<br></p>
        <p style="font-size: 30px;"><br>#별다방 #별다방신메뉴 #별다방이벤트<br></p>
        <div>
        <img src="/lim/image/페이스북.png" style="width: 5%; padding: 30px;"> <img src="/lim/image/인스타그램1.png" style="width: 5%;padding: 30px;">
        </div>
    </div>
    
    </div>
    
  


</body>
</html>
