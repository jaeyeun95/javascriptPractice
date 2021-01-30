<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testj</title>
<script type="text/javascript">
	function getId(){
		var boxDiv = document.getElementById("box");	//id명이 box인 객체의 정보를 가져와서 boxDiv에 담는다
		boxDiv.style.backgroundColor = "olive";
		alert("div 태그 안에 기록된 문자열 : " + boxDiv.innerHTML
					+ "\n배경색 : " + boxDiv.style.backgroundColor);  	//innerHTML get과 set역할을함
		boxDiv.innerHTML = "자바스크립트에서 값 바꿧데요~";//innerHTML = , 이퀄이 들어가면 boxDiv에 있는 내용을 바꾸눈 것
	}
</script>
</head>
<body>
<h1>자바스크립트 document 객체가 제공하는 메소드 중 태그 엘리먼트 정보 얻는 메소드 테스트</h1>
<ol>
	<li>var 태그객체변수 = document.getElementById("아이디명");</li> <!-- 아이디를 사용해서 태그를 받음, 한가지만 받는다 -->
	<button onclick="getId();">아이디로 태그 정보 얻기</button>	<!-- getId()라는 함수를 실행해라, 함수먼저 만들고 작성하기 -->
	<div id="box" style="background:orange; width:200px; height:100px;">   <!-- 모든 태그에 사용 가능한 css 태그 id, style, css,  인라인방법 -->
	box 영역입니다...
	</div>
	
	<li></li>
	<li></li>
</ol>
</body>
</html>