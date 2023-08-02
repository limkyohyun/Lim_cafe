<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
<script>
function clickEvent(){
	alert('수정 성공!');
}
</script>

<html>

<body>
<c:forEach items="${list2}" var="list">
<div class="container text-center">
  <div class="row">
  <div class=col>
  
  	<div><h2 style="font-weight:bold; padding: 30px;" align="center">${list.category}</h2></div>
     <img src="/lim/image/${list.poster}" style="width: 30%">

    </div>
    </div>
    </div>
    
    <form action="menu_modifysave" class="menuform" method="post" enctype="multipart/form-data">
	<div class="container text-center">
  <div class="row">
    <label for="menuname" class="col-sm-2 col-form-label">메뉴명</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="menuname" id="menuname" value="${list.menuname}" readonly>
    </div>
    <label for="menuename" class="col-sm-2 col-form-label">메뉴영어이름</label>
    <div class="col-sm-4">
      <input type="text" class="form-control"  name="menuename" id="menuename" value="${list.menuename}">
    </div>
  </div>
  
    <div class="row">
    <label for="caffeine" class="col-sm-2 col-form-label">카페인</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="caffeine" name="caffeine" value="${list.caffeine}">
    </div>
    <label for="calorie" class="col-sm-2 col-form-label">칼로리</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="calorie" name="calorie" value="${list.calorie}">
    </div>
        <label for="natrium" class="col-sm-2 col-form-label">나트륨</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="natrium" name="natrium" value="${list.natrium}">
    </div>
 	</div>
 	
 	<div class="row">
    <label for="sugars" class="col-sm-2 col-form-label">당류</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="sugars" name="sugars" value="${list.sugars}">
    </div>
    <label for="saturatedfat" class="col-sm-2 col-form-label">포화지방</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="saturatedfat" name="saturatedfat" value="${list.saturatedfat}">
    </div>
        <label for="protein" class="col-sm-2 col-form-label">단백질</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="protein" name="protein" value="${list.protein}">
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
  <input class="form-control" type="file" name="poster" id="poster" >
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
  <button type="submit" class="btn btn-primary" onclick="clickEvent()">입력</button>
</div>
</div>

</form>
</c:forEach>          
</body>
</html>

 