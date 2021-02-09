<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testj</title>
<script type="text/javascript" src="/testj/resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<h1>자바스크립트에서 함수 다루기</h1>
<h2>기본 형식 : function 함수명([매개변수, .......]){ 실행할 구문작성 }</h2>
<p>정의된 함수의 실행은 html 태그에서 실행하는 경우는 on이벤트="함수명([전달인자,...])"
<br>스크립트 코드 구문 안에서 함수를 실행할 수도 있음</p>
<button onclick="javascript:test1();">실행확인</button>
<p id="p1"></p>
<script type="text/javascript">
	function test1(){
		document.getElementById("p1").innerHTML = "test1() 함수 실행됨...";
	}
</script>
<hr>
<h2>익명(Anonymus) 함수 : 함수참조변수 = function([매개변수,......]){ 구문작성 };</h2>
<p>이벤트 핸들러(이벤트 발생시 구동되는 함수를 말함) 작성시 주로 사용함</p>
<button onclick="test2()">실행확인2</button>
<p id="p2"></p>
<script type="text/javascript">
	test2 = function(){
		document.getElementById("p2").innerHTML = "test2가 참조하는 익명함수 실행됨...";
	};
</script>
<hr>
<h2>스스로 실행되는 함수 : (function(){ 구문작성 })();</h2>
<p id="p3"></p>
<script type="text/javascript">
	(function(){
		document.getElementById("p3").innerHTML = "자동으로 혼자 실행됨....";
	})();
</script>
<hr>
<h2>함수의 전달인자(argument : 함수로 전달하는 값)와
매개변수(parameter : 전달값 받는 변수)</h2>
<p>함수 실행시 정의된 함수의 매개변수 갯수를 맞추어서 함수() 안에 전달인자를
사용해야 함<br>
인자와 매개변수가 갯수가 일치하지 않으면 에러남</p>
<button id="btn1">실행확인</button>
<p id="p4"></p>
<script type="text/javascript">
	function test4(value){
		document.getElementById("p4").innerHTML = 
			"test4 함수로 전달온 값 확인 : " + value;
	}
	
	//자바스크립트에서 html 태그에 이벤트 설정을 할 수도 있음
	//반드시 window.onload 이벤트 핸들러 안에서 작성해야 함
	window.onload = function(){
		document.getElementById("btn1").onclick = function(){
			test4(window.prompt("고객의 이름을 입력하세요 : "));
		};
	};
</script>
<hr>
<h2>함수의 리턴 처리</h2>
<button id="btn2">실행확인</button>
<p id="p5"></p>
<script type="text/javascript">
	function testReturn(){
		return Math.floor(Math.random() * 100) + 1;		//1부터 100까지 랜덥
	}
	
		window.onload = function(){
		document.getElementById("btn2").onclick = function(){
			var value = testReturn();
			document.getElementById("p5").innerHTML =
				"1부터 100사이의 임의의 정수 발생 확인 : " + value;
		};
		
	};
</script>












</body>
</html>