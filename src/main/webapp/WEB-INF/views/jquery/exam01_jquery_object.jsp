<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 		<!-- jquery 외부라이브러리 설정 -->
 		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
 		
 		
 		<!-- 사용자 정의 자바스크립트 -->
 		<script>
 			function changeBgColor1(){
 				
 				var jq_color_div=document.querySelectorAll(".colorDiv");
 				console.log(jq_color_div);
 				
 				for(var el of jq_color_div) {
 					
 					el.style.background="orange";
 				}
 			}
 			
 			function changeBgColor2() {
 				
 				var jq_color_div=$(".colorDiv"); //css 선택자 문법으로 클래스를 호출
 				console.log(jq_color_div);
 				
 				//jquery 객체가 가진 메소드 호출
 				/* jq_color_div.css("background-color","orange"); */
 				jq_color_div.addClass("bg-danger");
 			}
 				
 			
 			
 		
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam01_jquery_object</div>
		  <div class="card-body">
					  <!-- 
					  jQuery 객체란
					  jQuery API를 이용해서 만들어진 객체 
					  jQuery 객체 내부에는 element 객체 배열이 저장 
					  jQuery 객체 내부에는 element 객체를 일괄적으로 변경하는 메소드를 포함
			
						--jQuery Object ---------------------------------------
						|                                                     |
						|  method1(), method2(), method3(), ...               |
						|                                                     |
						|-----------------------------------------------------|
						|    0    |    1    |    2    | ...                   |
						| Element | Element | Element | ...                   |
						-------------------------------------------------------		  
					   
					   -->
		   <button onclick="changeBgColor1()" class="btn btn-info btn-sm">배경색 변경</button>
		   <button onclick="changeBgColor2()" class="btn btn-info btn-sm">배경색 변경</button>
		   <hr/>
		   
		   <div class="d-flex ">
			   <div class="colorDiv me-3 border" style="width:100px; height:100px"> </div>
			   <div class="colorDiv me-3 border" style="width:100px; height:100px"> </div>
			   <div class="colorDiv me-3 border" style="width:100px; height:100px"> </div>
		   </div>

		  </div>
		  
		</div>
	</body>
</html>