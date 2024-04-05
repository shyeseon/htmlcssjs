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
		#wrapper {
			border : 1px solid black;
		
		}
		header {
			text-align:center;
			padding :30px;
			background-color: darkgray;
			border : 1px solid red;
			font-size:2em;
			color: white;
		}
		
		section {
			font-size:20px;
			height: 300px;
			border : 1px solid green;
		}
		
		footer {
			border : 1px solid blue;
			font-size:20px;
			clear:right;
			padding:10px;

			text-align: center;
		}
		
		nav{
			border:1px solid black;
			width: 30%;
			height: 100%;
			float: left;
			box-sizing: border-box;
			background-color: orange;
			padding: 80px;
		}
		
		article {
			width: 70%;
			float : left;
			height:100%;
			border:1px solid black;
			box-sizing: border-box;
			padding: 40px;
			
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
                <ul> 
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