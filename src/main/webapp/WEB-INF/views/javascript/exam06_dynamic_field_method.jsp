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
 		    //객체 생성
 			const car={}; //객체의 번지가 저장되는 것이므로  안의 속성값은바뀔 수 있다. 
 			//동적 속성 추가 
 			car.name="그랜저";
 			//동적 메소드 추가 
 			car.start=function() {
 				console.log("시동을 켭니다");
 			};
 			console.log(car);
 			car.start();
 			//car["start"] (); 멤버에 접근해 메소드를 호출하는 것도 가능하다 
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam06_dynamic_field_method</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>