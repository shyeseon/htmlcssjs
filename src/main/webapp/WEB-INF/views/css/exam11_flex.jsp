<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<style type ="text/css">
		
			div{
				border:1px solid black;
			
			}
			
			#wrapper{
				display:flex;
				height: 500px; 
				flex-direction: row; 
				/* align-items: center;  */
				/* justify-content: center; */ 
				
			}
			
			#div1{
				/* width:100px;
				height:100px; */
				flex-grow:1;
				/* height:100%; */ <!--방향에 따라 100%를 지정해 주지 않아도 됨-->
				
			}
			#div2{
				/* width:100px;
				height:100px; */
				flex-grow:2;
				/* height:100%; */
			}
			#div3{
				/* width:100px;
				height:100px; */
				flex-grow:3;
				/* height:100%; */
			
			}
			
		
		</style>
	</head>
	<body>
	<h4>exam11_flex</h4>
	<hr/>
	<div id="wrapper">
		<div id="div1">div1</div>
		<div id="div2">div2</div>
		<div id="div3">div3</div>
	</div>
	
	</body>
</html>