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
 			function fun1(){
 				console.log(event.target); //어떤 element에서 event가 발생했는지 알 수 있음
 				console.log("button1이 클릭됨");
 			}
 			function fun2(){
 				console.log("button2가 클릭됨");
 				//<a> element가 기본적으로 가지고 있는 action을 막는다
 				event.preventDefault(); 
 			}
 			function fun3(){
 				
 				console.log("사용자가 입력한 내용을 검사합니다.(유효성 검사)");
 				//<form> element가 기본적으로 가지고 있는 action을 막는다
 				event.preventDefault();
 				
 			}
 			function fun4(){
 				
 				console.log("이메일 내용이 변경되었습니다");
 				console.log(event.target.value);
 			}
			function fun5(){
 				
 				console.log("패스워드가 변경되었습니다");
 				console.log(event.target.value);
 			}
			function fun6(){
				
				console.log("체크박스 상태가 변경되었습니다");
				if(event.target.checked) { 
					console.log("체크됨");
				} else{
					console.log("체크해제 됨");
				}
			}
 		</script>
 	
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam19_event</div>
		  <div class="card-body">
		  <button onclick="fun1()" class="btn btn-info btn-sm">button1</button>
		  <a onclick="fun2()" href = "/htmlcssjs" class="btn btn-info btn-sm">button2</a>
		  <hr/>
		  
		  <form action="/htmlcssjs" onsubmit="fun3()"> <!-- submit을 클릭했을 때 실행되는 행동  -->
			 <div class="mb-3 mt-3">
			 	<label for="email" class="form-label">Email:</label>
			    <input onchange="fun4()" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
			  </div>
			  <div class="mb-3">
			    <label for="pwd" class="form-label">Password:</label>
			    <input onkeyup="fun5()" type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
			  </div>
			  <div class="form-check mb-3">
			    <label class="form-check-label">
			      <input onchange= "fun6()" class="form-check-input" type="checkbox" name="remember"> Remember me
			    </label>
			  </div>
			  <button type="submit" class="btn btn-primary btn-sm">Submit</button>
			</form>
			</div>
		  
		</div>
	</body>
</html>