<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<!--qnxmtmxmfoq 5 외부 라이브러리 설정-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 		<!-- jquery 외부라이브러리 설정 -->
 		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
 		
 		
 		<!-- 사용자 정의 자바스크립트 -->
 		<script>
 		console.log("해석 전", $("img").length); //다운로드가 완료되지 않은 시점에서 $("img")를 사용할 수 없다 
 		function loadCompleted() {
 			console.log("모든 자원이 다운로드 완료됨");
 			console.log("모든 자원이 다운로드 완료된 후", $("img").length);
 		}
 		$(document).ready(function() {
 			console.log("html 해석이 완료 됨1");
 			console.log("해석 후", $("img").length); //html 로딩과 실행이 동시에 가능 
 		});
 		
 		$(function(){
 			console.log("html 해석이 완료 됨2");
 			console.log("해석 후", $("img").length);
 		});
 		
 		$(()=> {
 			console.log("html 해석이 완료 됨3");
 			console.log("해석 후", $("img").length);
 		});
 	
 		
 		</script>
	</head>
	<body onload="loadCompleted()">
		<div class="card">
		  <div class="card-header">exam05_jquery_ready_event</div>
		  <div class="card-body">
		  <img src="/htmlcssjs/resources/image/photos/photo1.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo2.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo3.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo4.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo5.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo6.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo7.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo8.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo9.jpg" width="50" height="50" class="me-2">
		  <img src="/htmlcssjs/resources/image/photos/photo10.jpg" width="50" height="50" class="me-2">
		  
		  

		  </div>
		  
		</div>
	</body>
</html>