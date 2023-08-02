<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        


<html>

<body>
<div class="container text-center">
  <div class="row">
  <c:forEach items="${list1}" var="list">
  	<div><h2 style="font-weight:bold; padding: 30px;" align="center">${list.category}</h2></div>
    <div class="col">
     <img src="/lim/image/${list.poster}" style="width: 80%">
    </div>
    <div class="col" style="padding-top: 120px;">
     <div class= "title" align="left">
     <h4 style="font-weight:bold;">${list.menuname} <br></h4>
      <p>${list.menuename}<br></p>
         <hr style="border:  solid 2px black;">
     <p>${list.menuaccount}</p>
     <hr>
     <h5>제품 영양 정보</h5>
     <hr></div>
     
     <div class="row">
     <div class="col">
     카페인 ${list.caffeine}(mg)<br>
     칼로리 ${list.calorie}(kcal)<br>
     나트륨 ${list.natrium}(mg)
     </div>
     
     <div class="col">
     
     당류 ${list.sugars}(g)<br>
     단백질 ${list.protein}(g)<br>
     포화지방 ${list.saturatedfat}(g)
     </div>
     </div>
     
	<p style="padding: 20px;">(매장 상황에 따라 판매하지 않을 수 있습니다.)</p>
    </div>
    </c:forEach>
  </div>
</div>


                
</body>
</html>

 