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
 			class Car {
 				constructor(name="그랜저", price=5000000){
 					this.name=name;
 					this.price=price;
 					
 				}
 				start() {
 					console.log(this.name+"에 시동을 겁니다");
 				}
 				setPrice(price) {
 					this.price=price;
 					
 				}
 				
 			}
 			class SportsCar extends Car {
 				constructor(name="포르쉐", price=250000000, cc=3000) {
 					super(name,price);
 					this.cc=cc;
 					
 				}
 				fastRun() {
 					console.log("빠르게 달립니다.");
 				}
 				
 				start() {
 					console.log(this.name+"이(가) 왕왕거립니다"); //재정의 가능 
 				}
 			}
 			//자식 객체 생성
 			const myCar= new SportsCar("람보르기니", 50000000);
 			console.log(myCar.name);
 			console.log(myCar.price);
 			console.log(myCar.cc);
 			myCar.start();
 			myCar.setPrice(60000000);
 			console.log(myCar.price)
 			myCar.fastRun();
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam11_inheritance</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>