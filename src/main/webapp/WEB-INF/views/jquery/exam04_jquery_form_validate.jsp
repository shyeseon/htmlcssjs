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
 		
 		<!-- jquery 외부라이브러리 설정 -->
 		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
 		
 		<script>
 			function handleCheckData() {
 				console.log("입력데이터를 검사합니다");
 				//form 태그의 action 기능을 수행하지 못하도록 막는다
 				 event.preventDefault(); 
 				
 				//각 입력 양식의 데이터 검사 (유효성 검사)
 				var totalResult=true;
 				//1)ID 검사
	
 				var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
 				
 				var uidResult1=uidPattern.test($("#span"));
 				if(uidResult1) {
 					/* el_uid.classList.remove("text-danger"); */
 					$("#span").removeClass("text-danger");
 				} else {
 					/* el_uid.classList.add("text-danger"); */
 					$("#span").addClass("text-danger");
 					totalResult=false;
 				}
 				
 				//2)email 검사
 				
 				const emailPattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
 				var emailResult= emailPattern.test($("#email").val());
 				if (emailResult) {
 					$("#email").removeClass("bg-danger");
 				}else {
 					$("#email").addClass("bg-danger");
 					totalResult=false;
 				}
 				
 				//3)password 검사
 			
 				var pwPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
 				var pwResult=pwPattern.test($("#password").val());
 				
 				
 				if(pwResult) {
 					$("#pwspan").removeClass("text-danger");
 				} else{
 					$("#pwspan").addClass("text-danger");
 					totalResult=false;
 				}
 				
 				//4)phonNum 검사
 			
 				var phpattern=/^(010)-\d{3,4}-\d{4}$/;
 				var phResult=phpattern.test($("#phone").val());
 				if (phResult) {
 					$("#phonespan").html("예) 010-3245-2356");
 				} else{
 					$("#phonespan").html("전화번호가 올바르지 않습니다");
 					$("#phonespan").addClass("text-danger");
 					totalResult=false;
 				}
 				
 				//5)전체 유효성 검사 결과가 true일 경우 
 				if (totalResult){
 					//수동으로 action 기능을 수행 
 					//jquery는 submit 메소드를 가지지 않기 때문에 인덱스를 넣어 엘리먼트 요소로 바꿔준 후 메소드를 사용
 					$("#joinForm")[0].submit(); 
 				}
 				
 				
 				
 			}
 		</script>
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam04_jquery_form_validate</div>
		  <div class="card-body">
				<form id="joinForm" name="joinForm" action="/htmlcssjs/jquery" onsubmit="handleCheckData()" novalidate> 
				<div class="mb-3"></div>
				  <div class="form-group">
				    <label for="uid" class="form-lable">ID</label>
				    <input type="text" class="form-control" id="uid" name="uid" value="Abc123"/> 
				    <span  id="span" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10장 이하</span>
				  </div>
				 
				  <div class="mb-3"></div>
				    <label for="email" class="form-lable">Email</label>
				    <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com"/>
				  </div>
				
				  <div class="mb-3"></div>
				    <label for="password" class="form-lable">Password</label>
				    <input type="password" class="form-control" id="password" name="password" value="Abc12345"/>
				    <span id="pwspan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15장 이하</span>
				  </div>
				
				  <div class="mb-3"></div>
				    <label for="phone" class="form-lable">Phone</label>
				    <input type="text" class="form-control" id="phone" name="phone" value="010-123-1234"/>
				    <span  id="el_phonespan" class="form-text">예) 010-3245-2356</span>
				  </div>
				
				 <div class="mb-3"></div>
				    <label for="city" class="form-lable">City</label>
				    <select id="city" name="city" class="form-control">
				      <option value="seoul">서울</option>
				      <option value="pusan">부산</option>
				      <option selected value="jeju">제주</option>
				    </select>
				  </div>
				
				  <div class="mb-3"></div>
				    <label class="form-lable">Hobby</label>
				   <div class="d-flex">
				    <div class="form-check me-3"> 
				      <input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked/>
				      <label class="form-check-lable" for="hobby1"> 영화 </label>
				    </div>
				    <div class="form-check me-3">
				      <input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked/>
				      <label class="form-check-lable" for="hobby2"> 여행 </label>
				     </div>
				     <div class="form-check me-3">
				      <input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" />
				      <label class="form-check-lable" for="hobby3"> 게임 </label>
				     </div>
				   </div>
				    </div>
				  </div>
				<div class="mb-3"></div>
				  <div class="form-lable">
				    <label for="city">Job</label>
				    <div class="d-flex">
				    <div class="form-check me-3">
				      <input class="form-check-input" type="radio" id= "job1" name="job" value="developer" />
				      <label class="form-check-lable" for="job1"> 개발자 </label>
				      </div>
				       <div class="form-check me-3">
				      <input class="form-check-input" type="radio" id= "job2" name="job" value="designer" checked/>
				      <label class="form-check-lable" for="job2"> 디자이너 </label>
				      </div>
				       <div class="form-check me-3">
				      <input class="form-check-input"type="radio" id="job3" name="job" value="manager" />
				      <label class="form-check-lable" for="job3"> 매니저 </label>
				      </div>
				    </div>
				  </div>
				</div>
				  <div class="text-center">
				    <input type="submit" class="btn btn-primary" value="Join" />
				    <input type="reset" class="btn btn-primary" value="Reset" />
				  </div>
				</form>
		  </div>
		  
		</div>
	</body>
</html>