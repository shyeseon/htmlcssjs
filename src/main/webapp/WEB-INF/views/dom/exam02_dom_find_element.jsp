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
 		<script>
 			function findElementById() {
 				//방법 1(document 메소드를 통해 찾음)
 				/* var el_p1=window.document.getElementById("p1");
 				console.log(el_p1); */
 				
 			
 				// 방법 2(css선택자를 통해 찾음)
 			 	var el_p1=document.querySelector("#p1"); //조건에 맞는 selector를 하나만 리턴한다
 				console.log(el_p1);
 				
 			}
 			
 			function findElementByClass(){
 				//방법 1
 				var el_c1=window.document.getElementsByClassName("class1");
 				console.log(el_c1);
 				console.log(el_c1[0]); //el_c1은 배열은 아니지만 collection 타입이므로 배열처럼 사용가능
 				for(var el of el_c1){ 
 					console.log(el);
 				}  
 				console.log("");
 				//방법2
 				var el_c1=document.querySelectorAll(".class1"); 
 				console.log(el_c1); //NodeList 타입 리턴
 				console.log(el_c1[0]);
 				for (var el of el_c1) {
 					console.log(el);
 				}
 			}
 			
 			function findElementByTag() {
 				//방법1
 				var el_p=document.getElementsByTagName("p");
 				for (var el of el_p) {
 					console.log(el);
 				}
 				//방법2
 				el_p= document.querySelectorAll("p")
 				for (var el of el_p) {
 					console.log(el);
 				}
 				
 			}
 			function findElementByChecked() {
 				var el_checked=document.querySelectorAll("[name=skill]:checked");
 				console.log(el_checked);
 			}
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam02_dom_find_element</div>
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