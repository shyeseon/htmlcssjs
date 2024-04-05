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
 			//함수 선언
 			function fun1(){
 				console.log("fun1() 실행");
 			}
 			//함수 실행 
 			fun1();
 			
 			//함수 선언
 			var fun2= function() {
 				console.log("fun2() 실행");
 			};
 			<!--함수를 객체로 인식하기 때문에 fun2는 함수명이자 번지수가 된다-->
 			<!--변수 선언에 함수를 대입한 실행문이기 때문에 세미콜론을 붙여준다-->
 			//함수 호출
 			fun2();
 			
 			//화살표 함수 (arrow funcion) 선언
 			var fun3=() => console.log("fun3() 실행");
 			<!--실행문이 하나일 경우 중괄호 생략 가능-->
 			
 			fun3();
 			
 			
 			var fun4= fun3;
 			<!--번지수를 대입했기 때문에 fun4도 번지수를 참조한다-->
 			fun4();
 			
 			//매개 변수가 있는 함수 
 			function fun5(arg1,arg2=0){
 				console.log("fun5() 실행");
 				console.log("arg1: ", arg1);
 				console.log("arg2: ", arg2);
 			}
 			
 			fun5(10,"abc");
 			fun5(5); //undefined
 			
 			var var6=(arg1,arg2)=>{
 				console.log("fun6() 실행");
 				console.log("arg1: ", arg1);
 				console.log("arg2: ", arg2);
 			}
 			var6('abc',"def");
 			//문자열도 작은 따옴표로 사용 가능하다 
 			
 			var fun7=(arg1) => console.log("fun7() 실행");
 			var fun8=arg1=> console.log("fun8() 실행"); //매개 변수가 하나 일 때는 괄호 생략 가능
 			
 			//리턴값이 있는 함수
 			
 			function fun9(x,y) {
 				let result =x+y;
 				return result1;
 			}
 			
 			var fun10= (x,y) => {return x+y;} ;
 			var fun11= (x,y) => x+y; 
 			//화살표 함수에서 리턴값이 하나 밖에 없을 경우 중괄호와 리턴을 생략할 수 있다.
 			
 			var result1= fun9(10,20);
 			var result2= fun10(10,20);
 			var result3= fun11(10,20);
 			console.log("result1: ", result1);
 			console.log("result2: ", result2);
 			console.log("result3: ", result3);
 			
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam04_function</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>