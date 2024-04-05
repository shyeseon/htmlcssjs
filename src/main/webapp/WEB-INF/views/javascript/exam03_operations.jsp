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
 			//산술 연산자 
 			var var1= 2 ** 3;
 			console.log("var1: ", var1);
 			console.log("");
 			
 			//비교 연산자
 			console.log(3=="3"); //문자열 검사 
 			console.log(3==="3"); //타입 검사 
 			console.log(3!="3"); // 문자열 검사 
 			console.log(3!=="3"); //타입 검사
 			console.log("");
 			
 			//논리 연산자 
 			var var2 = true;
 			var var3= false;
 			console.log(var2 && var3); 
 			console.log(var2 && "홍길동");
 			console.log(var3 && "홍길동"); 
 			
 			console.log("");
 			console.log(var2 || var3);
 			console.log(var2 || "홍길동");
 			console.log(var3 || 3);
 			console.log(var3 || "홍길동");
 			
 			console.log(!var3)
 			console.log("");
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam03_operations</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>