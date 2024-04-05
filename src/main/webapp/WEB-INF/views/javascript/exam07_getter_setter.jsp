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
 			const car ={
 					naeme:"그랜저",
 					price:5000,
 					speed:100, //mile
 					start: function(){
 						console.log("시동을 겁니다")
 					},
 					//setter 선언
 					set KmSpeed(meter) {
 						//km->mile
 						this.speed=meter/0.621371;
 					},
 					//getter 선언 
 					//mile->km
 					get KmSpeed(){ //메소드 이름(KmSpeed)이 setter와 달라서는 안됨 
 						return this.speed*0.621371
 					}
 			};
 			car.KmSpeed =60; //대입 연산자를 사용하면 setter가 실행되고 대입 연산자가 없다면 getter가 실행
 			console.log("현재 속도(km/h): ", car.KmSpeed)
 			//추가 적인 연산을 가지고 계산하고자 할 때 getter와 setter를 메소드처럼 선언해 속성값 처럼 사용
 			
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam07_getter_setter</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>