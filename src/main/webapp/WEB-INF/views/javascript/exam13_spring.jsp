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
 			var data="123456-7890123";
 			console.log("전체 문자 수: ",data.length); //14
 			console.log("성별에 해당되는 숫자: ", data.charAt(7)); //7
 			console.log("포함 여부: ",data.includes(456)); // true
 			console.log("포함 여부: ",data.indexOf(7890123)); //포함된 문자의 시작 인덱스 리턴
 			console.log("추출하기: ",data.slice(0,6)); //6은 포함하지 않는다 
 			console.log("추출하기: ",data.slice(7)); //6부터 끝까지
 			console.log("토큰배열: ",data.split("-")); // ['123456', '7890123']
 			console.log("추출하기: ",data.substr(0,6));
 			console.log("추출하기: ",data.substr(7));
 			console.log("추출하기2: ",data.substring(0,6)); 
 			console.log("추출하기2: ",data.substring(7));
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam13_spring</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>