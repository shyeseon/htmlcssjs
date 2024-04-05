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
 			//클래스(설계도) 선언
 			class Car{
 				
 				//생성자 
 				constructor(){
 					//필드 선언과 초기화
 					this.name="그랜저";
 					this.price=500000;
 					
 				}
 				
 				//메소드
 				start() {
 					console.log(this.name+"시동을 켭니다")
 				}
 				
 				setPrice(price){
 					this.price=price;
 				}
 			}
 			
 			const myCar=new Car();
 			const yourCar=new Car();
 			console.log(myCar.name);
 			console.log(myCar.price);
 			myCar.start();
 			myCar.setPrice(600000);
 			console.log(myCar.price);
 			
 			class Person {
 				
 				constructor(name,age) {
 					this.name=name;
 					this.age= age;
 				}
 				
 			}
 			const me = new Person("홍길동", 30);
 			const you =new Person("감자바", 27)
 			console.log(me.name);
 			console.log(me.age)
 			console.log(you.name);
 			console.log(you.age);
 			me.name="홍길남";
 			me.age=25;
 			console.log(me);
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam09_class</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>