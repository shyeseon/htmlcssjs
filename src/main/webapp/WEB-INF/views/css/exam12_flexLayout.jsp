<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<Style>
		*{
			margin: 0px; <!--우리가 준 크기 만큼만 여백을 가짐-->
			padding:0px;
			
		}
		#wrapper{
			display: flex;
			flex-direction: column;
			
		}
		header {
			border:1px solid black;
			text-align:center;
			padding :30px;
			background-color: darkgray;
			font-size:2em;
			color: white;
			
		}
		
		section{
			display:flex;
			flex-direction: row;
			border:1px solid black;
			height:300px;
			
		}
		
		nav{
			flex:3;
			border:1px solid yellow;
			height:100%; <!--방향에 따라 100%를 지정해 주지 않아도 됨-->
			box-sizing: border-box;
			padding: 20px;
			
		}
		
		article{
			flex:7;
			border:1px solid yellow;
			box-sizing: border-box;
			padding: 40px;
		}
		
		footer{
		border:1px solid black;
		font-size:20px;
		clear:both;
		padding:10px;
		text-align: center;	
		
		}
		


		
		</Style>
	</head>
	<body>
		
	<div id="wrapper">
        <header>
            <h2>Cities</h2>
        </header>

        <section> <!-- 주제 전체에 대한 내용 -->
            <nav>
                <ul> <!-- 왜 좌측에 붙나 -->
                    <li><a href="#">London</a></li>
                    <li><a href="#">Paris</a></li>
                    <li><a href="#">Seoul</a></li>
                </ul>
            </nav>
            <article>
                <h1>London</h1>
                <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
                <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
            </article>
        </section>

        <footer>
            <p>Footer</p>
        </footer>
    </div>
	</body>
</html>