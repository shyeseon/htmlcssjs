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
 			//JSON이란 자바 스크립트 객체표기 (javascript와 다름)
 			//프론트엔드와 백엔드 사이의 데이터 전달을 위해서 사용
 			
 			//{"속성명": 값,"속성명": 값,...}
 			//반드시 속성명은 큰 따옴표로 감싸야한다
 			//값의 타입이 숫자일 경우 {"price":3000} ,{"키" : 170.5}
 			//값의 타입이 문자열일 경우 {"name": "손혜선"} 값을 반드시 큰 따옴표로 감싸아 한다
 			//값의 타입이 객체일 경우 {"data": {"bno":1, "title":"제목"}}
 			//값의 타입이 배열일 경우 {"hobby": ["음악","게임","여행"]}
 			
 			//-------------------
 			//javascript 객체를 json으로 변환시키기
 			const person={
 					name:"홍길동",
 					nation: '한국', //문자열에 큰따옴표와 작은 따옴표 둘 다 올 수 있다
 					age:25,
 					family: {father:'홍삼원', mother:"정관순"},
 					hobby: ["영화",'게임']
 					
 			}
 			console.log(person);
 			
 			const strJson=JSON.stringify(person);
 			console.log(strJson);
 			//스트림으로 흘러가기 때문에 출력시 작은 따옴표를 큰 따옴표로 출력
 			
 			//-----------------------------
 			//JSON 문자열을 javascript로 변환시키기 
 			const person2=JSON.parse(strJson);
 			console.log(person2);
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam17_jsonr</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>