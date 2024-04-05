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
 		
 		<script>
 			function changeContent(){
 				//기존 내용을 대체 
 				$("#div1").html("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>");
 				//위 경로를 html 메소드를 사용해 넣어라 
 				//변수로 따로 받지 않고 $로 바로 받을 수 있음
 			}
 			function appendContent(){
 				const jq_img="<img src='/htmlcssjs/resources/image/photos/photo2.jpg' width='150'/>"
 				//기존 내용 뒤에 추가
 				$("#div1").append(jq_img);  
 				
 			}
 			function deleteContent(){
 				
 				//기존 내용을 모두 삭제
 				 /* $("#div1").html(""); */ 
 				
 				//맨 뒤에 있는 내용만 삭제
 				
 				 $("#div1").find("img:last-child").remove(); 
 			}
 			function changeCSS(){
 				
 				$("#img1").css("width","50px");
 				$("#img1").css("height","50px");
 				
 				$("#img1").css("border-radius","25px");
 				$("#img1").css("border-width","2px");
 				$("#img1").css("border-color","red");
 				$("#img1").css("border-style","solid");
 			}
 			
 			function changeAttribute() {
 				
 				$("#img2").attr("src","/htmlcssjs/resources/image/photos/photo6.jpg"); 
 				//값을 하나만 주면 값을 읽는 것이고 값을 두개 주게 되면 속성을 변경해준다 
 				//element가 공통적으로 가지는 속성이 아니므로 objects -> img 속성에서 찾아야 한다
 			}
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam03_jquery_element_manipulation</div>
		  <div class="card-body">
		  
		  	<div class="card">
		  		<div class="card-header">엘리먼트 변경 추가 및 삭제</div>
		  		<div class="card-body">
		  			<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
		  			<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
		  			<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
		  			<hr/>
		  			<div id="div1"></div>

		  		</div>
		  
			</div>
			
			<div class="card">
		  		<div class="card-header">스타일 변경</div>
		  		<div class="card-body">
		  			<button onclick="changeCSS()" class="btn btn-warning btn-sm">스타일 변경</button>
		  			
		  			<hr/>
		  			<div id="div2"></div>
		  			<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width='150'/>
		  			<img class="rounded-circle" src="/htmlcssjs/resources/image/photos/photo4.jpg" width="100" height="100"/>

		  		</div>
		  
			</div>
			
			<div class="card">
		  		<div class="card-header">속성값 변경</div>
		  		<div class="card-body">
		  			<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
		  			
		  			<hr/>
		  			<div id="div3"></div>
		  			
		  			<img id="img2" class="rounded-circle" src="/htmlcssjs/resources/image/photos/photo5.jpg" width="100" height="100"/>

		  		</div>
		  
			</div>

		  </div>
		  
		</div>
	</body>
</html>