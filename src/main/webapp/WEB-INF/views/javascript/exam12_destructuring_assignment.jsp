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
 			const board= {
 					bno:1,
 					title:"오늘은 월요일",
 					content:"날씨가 좋네요. 자바 스크립트 공부해야 겠어요",
 					writer: "홍길동"
 					
 			};
 			var title=board.title;
 			var {title} = board;
 			console.log("title:", title);
 			
 			var bno=board.bno;
 			var {bno} = board;
 			console.log("bno:",bno);
 			
 			var content= board.content;
 			var {content} = board;
 			console.log("content: ",content);
 			
 			function fun1({title}) {
 				
 				console.log(title);
 			}
 			fun1(board);
 			//= var {title} = board;
 			
 			//rest: 나머지 속성은 객체로 만듦 
 			var {writer, ...rest } =board;
 			console.log(writer);
 			console.log(rest);
 			//...은 나머지는 구조분해 해서 그대로 넣어라 
 			var newBoard1={...board,bno:2,title:"벚꽅이 좋아요"};
 			console.log(newBoard1);
 			
 			
 			//board를 매개값으로 받아서 hitcount를 포함하되 나머지 구조 분해되는 것들도 리턴한다
 			var newBoard2 = (obj) => {
 				return {...obj, hitcount:1};
 			};
 			
 			var newBoard2 = obj =>  ({...obj, hitcount:1});
 			//객체를 리턴해야 하는데 함수의 블록기호로 인식되기 때문에 괄호로 묶어서 사용해야 한다 
 			
 			console.log(newBoard2(board));
 		
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam12_destructuring_assignment</div>
		  <div class="card-body">

		  </div>
		  
		</div>
	</body>
</html>