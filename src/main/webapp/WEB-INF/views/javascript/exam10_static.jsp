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
 				//정적 필드와 초기화 
 				static company ="현대 자동차";
 				
 				constructor(name="그랜저", price=500000) {
 					//인스턴스 필드와 초기화 -> 생성자 안에서 선언해야 함
 					this.name=name;
 					this.price=price;
 				}
 				
 				static setCompany (company) {
 					return Car.company=company;
 				}
 				//정적 메소드 선언
 				static getCompany() {
 					return Car.company; //정적 메소드에서는 this를 사용할 수 없다 
 				}
 				
 				
 				//인스턴스 메소드 선언 
 				setPrice(price) {
 					this.price=price;
 				}
 				getPrice() {
 					return this.price;
 				}
 			}
 			
 			//정적 멤버 사용
 			console.log(Car.company);
 			Car.setCompany("KIA 자동차");
 			console.log(Car.getCompany());
 			console.log()
 			//인스턴스 멤버 사용
 			const myCar= new Car("포르쉐",250000000);
 			console.log(myCar.name);
 			console.log(myCar.price);
 			myCar.setPrice(300000000);
 			console.log(myCar.getPrice());
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam10_static</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>