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
 			function findElementById() {
 				
 			 	var jq_p1=$("#p1"); 
 				console.log("찾은 element 수:" ,jq_p1.length);
 				console.log("내부 배열의 0 인덱스에 저장된 element: ", jq_p1[0]); //jquery 자체는 배열이 아니지만 내부 배열의 인덱스의 값을 얻을수 있다.
 			}
 			
 			function findElementByClass(){
 		
 				var jq_c1=$(".class1"); 
 				console.log("찾은 엘리먼트 수:",jq_c1.length); 
 				console.log(jq_c1[0]);
 				for (var jq of jq_c1) {
 					console.log(jq);
 				}
 			}
 			
 			function findElementByTag() {

 				var jq_p= $("p");
 				console.log("찾은 엘리먼트 수:" ,jq_p.length)
 				for (var jq of jq_p) {
 					console.log(jq);
 				}
 				
 			}
 			function findElementByChecked() {
 				var jq_checked=$("[name=skill]:checked");
 				console.log(jq_checked);
 			}
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam02_jquery_find_element</div>
		  <div class="card-body">
		    <button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
            <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
            <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
            <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            <hr/>
            <div class="d-flex"> <!--display:flex(기본값은 row) -->
                <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-danger " style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-info rounded-circle" style="width: 100px; height: 100px;"></p>
            </div>
            <hr/>
            <div class="d-flex align-items-center" >
                <div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
                <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                <div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            </div>

		  </div>
		  
		</div>
	</body>
</html>