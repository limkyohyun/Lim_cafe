<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        

<style>
body {
  height: 100%;
  padding: 0%;
  margin: 0%;
}


/* 1. tab 영역 css 설정 */
.tab-area {
  width: 100%
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}


/* 2. tab 메뉴 부분 디자인 */
.tab-area input {
  display: none;
}  

.tab-area label {

	padding :40px;
  margin-left: auto;
  margin-right: auto;
}
  
/* label에 마우스 올렸을 때 */
.tab-area label:hover {
  cursor: pointer; /*마우스 모양 변경*/
}
  
/* tab-area 안에 존재하는 input 태그가 체크되었을 때, 
체크된 input 태그 다음에 등장하는 label의 css 값 */
.tab-area input:checked + label {
  /* 해당 메뉴가 선택된 상태인지 아닌지를 사용자에게 알려줄 수 있음 */
  font-weight: bold;
  color: red;
}
  

/* 3. tab 내용 부분 디자인 */
.tab-content {
  width: 100%; /*부모 div width와 같은 width를 가진다.*/
  height: 100%;
  display: none; /*기본 값일땐 화면에 표시하지 않음. 체크 상태일 때, 화면에 표시되어야 함 */
  border-top: 2px solid rgba(200, 200, 200, 0.534);/*탭 메뉴와 내용구분선*/
}
  

/* input 태그가 체크 상태일떼, 이에 대응하는 content?를 display에 표시하도록 설정 */
#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
  display: flex;
}


/* 구분을 위해 추가 */

</style>



<html>

<body>
<div class="container text-center">
  <div class="row">
    <div class="col">
      <div class="tab-area" >
        <input type="radio" name="tabs" id="tab1" >
        <label for="tab1">신메뉴</label>
        <input type="radio" name="tabs" id="tab2"checked>
        <label for="tab2">커피</label>
        <input type="radio" name="tabs" id="tab3">
        <label for="tab3">음료</label>
        <input type="radio" name="tabs" id="tab4">
        <label for="tab4">디저트</label>




<!-- HTML 코드 (이미지와 관련된 추가 정보를 담은 data 속성 추가) -->
<div id="content1" class="tab-content red">
  <div class="row">
     <c:forEach items="${list}" var="my">
      <div class="col-md-3" style="padding:15px; width: 330px; height: 50%;">
        <div class="card">
          
         <a href="menu_detail?menuname=${my.menuname}"> <img src="/lim/image/${my.poster}" class="card-img-top" data-title="${my.menuname}" ></a>
          
          <div class="card-body">
            <h5 class="card-title">${my.menuname}</h5>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</div>
  

        <div id="content2" class="tab-content blue">
            
  <div class="row">
     <c:forEach items="${list2}" var="coffee">
      <div class="col-md-3" style="padding:15px; width: 330px; height: 50%;">
        <div class="card">
          
         <a href="menu_detail?menuname=${coffee.menuname}"> <img src="/lim/image/${coffee.poster}" class="card-img-top" data-title="${coffee.menuname}" ></a>
          
          <div class="card-body">
            <h5 class="card-title">${coffee.menuname}</h5>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</div>            
            
            
        <div id="content3" class="tab-content yellow">
  <div class="row">
     <c:forEach items="${list3}" var="drin">
      <div class="col-md-3" style="padding:15px; width: 330px; height: 50%;">
        <div class="card">
          
         <a href="menu_detail?menuname=${drin.menuname}"> <img src="/lim/image/${drin.poster}" class="card-img-top" data-title="${drin.menuname}"></a>
          
          <div class="card-body">
            <h5 class="card-title">${drin.menuname}</h5>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</div>   

        <div id="content4" class="tab-content green">
  <div class="row">
     <c:forEach items="${list4}" var="dessert">
      <div class="col-md-3" style="padding:15px; width: 330px; height: 50%;">
        <div class="card" >
         
         <a href="menu_detail?menuname=${dessert.menuname}"> <img src="/lim/image/${dessert.poster}" class="card-img-top" data-title="${dessert.menuname}" ></a>
          
          <div class="card-body">
            <h5 class="card-title">${dessert.menuname}</h5>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</div>  

</div>
</div> 
        </div>
    
    </div>
          
</body>
</html>

 