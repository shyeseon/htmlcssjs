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
 			//객체를 초기화 하는 생성자 정의 ->생성자(함수)
 			//일반 함수와는 다른점: 필드값에 this.으로 객체를 초기화 시켜준다, 구분자로 쉽표 대신 따옴표를 준다  
 			function Car(){
 				this.name="그랜저";
 				this.price=500000;
 				this.start=function() {
 					console.log("시동을 겁니다");
 				};
 			}
 			function Person(name, age) {
 				this.name=name;
 				this.age=age;
 			}
 			//객체 생성(new 다음에 생성자 호출 코드가 온다)
 			const myCar=new Car();
 			console.log(myCar.name);
 			console.log(myCar.price);
 			myCar.start();
 			
 			
 			const my= new Person("홍길동",30);
 			const you = new Person("김자바", 20);
 			console.log(my);
 			console.log(you);
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam08_function_constructor</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>