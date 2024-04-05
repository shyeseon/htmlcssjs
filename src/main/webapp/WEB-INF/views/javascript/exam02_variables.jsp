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
		  	<!--변수를 선언하는 3가지 방법-->
		  	<!--함수 밖에서 선언된 값 전역변수-->
		  	var var1=1; <!--var에는 모든 값을 대입할 수 있다-->
		  	let var2=1.0; 
		  	const var3="abc"; <!--불변값-->
		  	<!--콘솔 값 출력-->
			console.log("var1: ", var1);
			console.log("var2: ", var2);
			console.log("var3: ", var3);
			console.log("");
		  	/* //수정 여부 */
		  	var1=2;
		  	var2=3.5;
		  	var3="def";
		  	
		  	console.log("var1: ", var1);
		  	console.log("var2: ", var2);
		  	console.log("");
		  	/* console.log("var3: ", var3); (x)*/
		</script>
		
		
 		<script type="text/javascript">
 		<!--함수 선언-->
 		<!--함수 안에서 선언된 값 지역변수는 함수 안에서만 사용 가능하다-->
		function fun1() {
			var var4=10;
			let var5 =10.0;
			const var6 = "ghi";
			if (true) {
				var var7=100;
				let var8 =100.0;
				const var9 = "jhr";
				
				console.log("var1: ", var1);
				console.log("var2: ", var2);
				console.log("var3: ", var3);
				console.log("var4: ", var4);
				console.log("var5: ", var5);
				console.log("var6: ", var6);
				console.log("var7: ", var7);
				console.log("var8: ", var8);
				console.log("var9: ", var9);
				console.log("");
				
			}
			console.log("var1: ", var1);
			console.log("var2: ", var2);
			console.log("var3: ", var3);
			console.log("var4: ", var4);
			console.log("var5: ", var5);
			console.log("var6: ", var6);
			console.log("var7: ", var7);
			<!--지역 변수에서 함수 레벨인 var는 if 블록이 끝나도 사용 가능하지만 블록 레벨인 let,const는 if 블록이 끝나면 사용할 수 없기 때문에 8,9는 출력할 수 없다-->
/* 			console.log("var8: ", var8);
			console.log("var9: ", var9); */
			console.log("");
			
		}
		
		fun1();
		function fun2() {
	
			console.log("var1: ", var1);
			console.log("var2: ", var2);
			console.log("var3: ", var3);
			console.log("var4: ", var4);
			console.log("var5: ", var5);
			console.log("var6: ", var6);
			console.log("var7: ", var7);
			console.log("var8: ", var8);
			console.log("var9: ", var9);
			console.log("");
			
			
		}

		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam02_variables</div>
		  <div class="card-body">


		  </div>
		  
		</div>
	</body>
</html>