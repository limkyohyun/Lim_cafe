<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
       
<style>
.row{
padding: 10px;
}
.form-check{
padding: 10px;
}
.menuform{
padding-top: 30px;
}
</style>

<html>


<body>
    <div class="container text-center">
  <div class="row" style="font-family: fantasy; padding-top: 80px;">
    <div class="col">
    <p style="font-size: 50px;">Insert Menu<br></p>
    <p style="font-size: 40px;">메뉴 입력</p><br>
    <br>
    </div>
    </div>
    </div>
    
	<form action="menu_save" class="menuform" method="post" enctype="multipart/form-data">
	<div class="container text-center" >
  <div class="row">
    <label for="menuname" class="col-sm-2 col-form-label">메뉴명</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="menuname" id="menuname">
    </div>
    <label for="menuename" class="col-sm-2 col-form-label">메뉴영어이름</label>
    <div class="col-sm-4">
      <input type="text" class="form-control"  name="menuename" id="menuename">
    </div>
  </div>
  
    <div class="row">
    <label for="caffeine" class="col-sm-2 col-form-label">카페인</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="caffeine" name="caffeine">
    </div>
    <label for="calorie" class="col-sm-2 col-form-label">칼로리</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="calorie" name="calorie">
    </div>
        <label for="natrium" class="col-sm-2 col-form-label">나트륨</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="natrium" name="natrium">
    </div>
 	</div>
 	
 	<div class="row">
    <label for="sugars" class="col-sm-2 col-form-label">당류</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="sugars" name="sugars">
    </div>
    <label for="saturatedfat" class="col-sm-2 col-form-label">포화지방</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="saturatedfat" name="saturatedfat">
    </div>
        <label for="protein" class="col-sm-2 col-form-label">단백질</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="protein" name="protein">
    </div>
 	</div>
  
  
  <div class="row">
  <label for="menuaccount" class="col-sm-2 col-form-label">메뉴설명</label>
  <div class="col-sm-10">
  <textarea class="form-control" id="menuaccount" name="menuaccount" rows="3"></textarea>
</div>
</div>

  <div class="row">
  <label for="poster" class="col-sm-2 col-form-label">이미지 첨부</label>
  <div class="col-sm-10">
  <input class="form-control" type="file" name="poster" id="poster">
  </div>
</div>


  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="inlineRadio1" value="신메뉴">
  <label class="form-check-label" for="inlineRadio1">신메뉴</label>
</div>

<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="inlineRadio2" value="커피">
  <label class="form-check-label" for="inlineRadio2">커피</label>
</div>

<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="inlineRadio3" value="음료">
  <label class="form-check-label" for="inlineRadio3">음료</label>
</div>

<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="category" id="inlineRadio4" value="디저트">
  <label class="form-check-label" for="inlineRadio4">디저트</label>
</div>
</div>
<div class="row">
<div class="col">
  <button type="submit" class="btn btn-primary">입력</button>
</div>
</div>
</form>


  
    

</body>

</html>
