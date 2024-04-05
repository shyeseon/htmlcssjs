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
 			function basic(){
 				console.log("basic()");
 				//배열 생성
 				const arr=["JAVA","JAVASCRIPT", "VEU.JS"];
 				//배열 항목 읽기 
 				console.log("1인덱스의 값:",arr[1]);
 				arr[2]="spring"; //배열 항목 변경 
 				console.log("배열의 길이:",arr.length); //배열의 길이 (항목의 갯수)
 				//항목 반복(1)
 				for(var i=0; i<arr.length;i++) {
 					console.log(arr[i]);
 				}
 				//항목 반복(2)
 				//자바에서는 for(String item: arr)
 				for(var item of arr) { //of는 항목 반복 in은 인덱스 반복
 					console.log(item);
 				}
 				
 			}
 			
 			function appendItem(){
 				console.log("appendItem()");
 				//배열 생성
 				const arr=["java"];
 				//맨 뒤에 새 항목 추가  
 				arr.push("html");
 				arr.push("css");
 				//항목 반복 읽기
 				for (var item of arr) {
 					console.log(item);
 				}
 				
 			
 				
 			}
 			function removeAndInsertItem(){
 				console.log("removeAndInsertItem");
 				//배열 생성
 				var arr= ["banana", "orange","apple", "mango"];
 				
 				//항목 삭제(자바스크립트 배열은 자바의 리스트와 비슷>배열의 길이가 고정되어 있지 않고 삭제시 뒤에 인덱스의 값이 앞으로 당겨옴)
 				arr.splice(2,1); //2인덱스부터 1개를 삭제 
 				console.log(arr);
 				
 				//항목을 삽입할 때
 				//매개 변수가 3개 이상이고 두번째 값이 0이어야 추가
 				var arr= ["banana", "orange","apple", "mango"];
 				arr.splice(2,0,"lemon","kiwi")//2인덱스부터 0개를 삭제하고 세번째 값 이후를 삽입
 				console.log(arr);
 				
 				//항목 대체 
 				var arr= ["banana", "orange","apple", "mango"];
 				arr.splice(0,2,"lemon","kiwi"); //2인덱스 부터 2개를 삭제하고 대신에 3번째 이후를 삽입 
 				console.log(arr);
 				
 			
 			}
 			function concatArray() {
				const arr1= ["Banana","Orange"];
				const arr2 = ["Apple","Mango"];
				const arr3=arr1.concat(arr2);
				console.log(arr3);
			}
 			function filterItem(){
 				 const arr = [
 			          { bno: 1, title: "제목1", writer: "홍길동" },
 			          { bno: 2, title: "제목2", writer: "홍길서" },
 			          { bno: 3, title: "제목3", writer: "홍길남" },
 			          { bno: 4, title: "제목4", writer: "홍길서" },
 			          { bno: 5, title: "제목5", writer: "홍길북" },
 			        ];
 				 //const newArr=arr.filter((item) => {return item.writer==="홍길서";});
 				 const newArr=arr.filter(item => item.writer==="홍길서" ); //항목의 갯수만큼 실행
 				 console.log(newArr);
 				 
 				 const newArr2= arr.filter(item => item.bno%2===1) ;
 				 console.log(newArr2); 
 				 
 				const newArr3 = arr.filter(filterFun);
 				console.log(newArr3);
 		
 	 			
 			}
 			
 				
 			function filterFun(item){
	 				return item.writer==="홍길서";
 			}
 			
 			function findItem(){
 				 const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			        ];
 				 //bno가 3인 게시물 찾기
 				 /* const board=arr.find(item => item.bno===3); */
 				 const board= arr.find(findFun);
 				 
 				 console.log(board);
 				 
 				 //writer가 홍길남인 게시물 찾기
 				 const board2=arr.find((item) => {return item.writer==="홍길남";});
 				 console.log(board2);
 			
 			}
 			
 			function findFun(item){
 				return item.bno===3;
 			}
 			function handleEachItem(){
 				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			        ];
 				//항목 반복(1)
 				for(var i =0; i<arr.length;i++) {
 					console.log(arr[i]);
 				}
 				//항목 반복(2)
 				for (var item of arr) {
 					console.log(item);
 					
 				}
 				
 				//항목 반복(3) 배열의 forEach() 메소드 이용
 				arr.forEach(item => {
 					console.log(item);
 					console.log(item.bno,item.title, item.writer);
 				});
 			}
 			function mapItem() {
 				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			        ];
 				//제목으로 구성된 새로운 배열 생성
 				const titles= arr.map(item => item.title);
 				console.log(titles);
 				//게시물 번호로 구성된 새로운 배열 생성
 				const bnos = arr.map(item => item.bno);
 				console.log(bnos);
 				
 				//항목에 오늘의 날짜를 date:'2024.04.02'을 추가한 새로운 항목 배열을얻기 
 				const newArr= arr.map(item => {
 					var now = new Date();
 					var strDate = now.getFullYear()+"."+(now.getMonth()+1)+"."+now.getDate();
 					
 					return {...item, date:strDate}
 				});
 				console.log(newArr);
 			}
 			function sortItem() {
 				const fruits = ["Banana", "Orange", "Apple", "Mango"];
 				fruits.sort(); //올림차순 정렬
 				console.log(fruits);
 				fruits.reverse(); //내림 차순 정렬(전제로 sort()를 한 후에 실행)
 				console.log(fruits);
 				const arr1 = [
			          { bno: 4, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 5, title: "제목3", writer: "홍길남" },
			          { bno: 1, title: "제목4", writer: "홍길서" },
			          { bno: 3, title: "제목5", writer: "홍길북" },
			        ];
 				//bno 기준으로 올림차순하기 
 				arr1.sort((item1, item2) => {return item1.bno-item2.bno;}); //차 값이 -1이 되면 첫 값이 앞으로 오고 1이 나오면 첫 값이 뒤로 간다 
 				console.log(arr1);
 				const arr3 = [
			          { bno: 4, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 5, title: "제목3", writer: "홍길남" },
			          { bno: 1, title: "제목4", writer: "홍길서" },
			          { bno: 3, title: "제목5", writer: "홍길북" },
			        ];
 				arr3.sort((item1, item2) => {return -(item1.bno-item2.bno);});
 				console.log(arr3);
 				const arr2 = [
			          { bno: 4, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 5, title: "제목3", writer: "홍길남" },
			          { bno: 1, title: "제목4", writer: "홍길서" },
			          { bno: 3, title: "제목5", writer: "홍길북" },
			        ];
 				arr2.sort((item1,item2) =>  {
 					if (item1.title<item2.title){
 						return 1;
 					}else if (item1.title===item2.title){
 						return 0;
 					}else 
 						return -1;
 				});
 				console.log(arr2);
 			}
 			
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam21_array</div>
		  <div class="card-body">
		  
		  	
		  	<p><button onclick="basic()" class="btn btn-info btn-sm">기본</button></p>
		  	<p><button onclick="appendItem()" class="btn btn-info btn-sm">새항목 추가</button></p>
		  	<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입</button></p>
		  	<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합치기</button></p>
		  	<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
		  	<p><button onclick="findItem()" class="btn btn-info btn-sm">항목찾기</button></p>
		  	<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목일괄처리(반복처리)</button></p>
		  	<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목을 변환하고 새로운 배열 생성</button></p>
		  	<p><button onclick="sortItem()" class="btn btn-info btn-sm">항목 정렬</button></p>

		  </div>
		  
		</div>
	</body>
</html>