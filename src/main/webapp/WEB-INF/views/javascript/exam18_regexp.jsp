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
 			var tel="012-1234-1234";
 			const pattern=/^(010|011)-\d{3,4}-\d{4}$/;
 			//010-1234-1234-234 (true)가 나오지 않게 하기 위해서 
 			//정규표현식 작성 방법
 			// /^...$/ 
 			
 			//전화번호 유효성 검사 
 			var result= pattern.test(tel);
 			console.log(result); //true
 			
 			var email = "fall@naver.com"
 			const emailPattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
 			var result1=emailPattern.test(email);
 			console.log(result1);
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam18_regexp</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>