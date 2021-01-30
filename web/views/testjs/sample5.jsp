<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testj</title>
<script type="text/javascript">
	//한 줄 주석 : script 태그 영역 안에서 사용함
	/*
		여러 줄 주석문 처리에 사용
		script 태그 영역 안에서 사용함
	*/
	
	//전역변수(Global Variable) : 자동 window 객체의 멤버변수가 됨
	//함수(funciton) 영역 밖에서 선언된 변수임
	//함수 영역 밖에서 선언할 때는 var 변수명 또는 변수명 으로 선언함 (var 붙여도되고 안붙여도 됨)
	var name = "홍길동";	//전역변수임(함수 안에서 만든게 아니니까)
	age = 25;	//전역변수임(함수 안에서 만든게 아니니까)
	
	function testFn(){
		//전역변수는 선언된 이후부터 script 안 어디서나 사용 가능함
		//alert("이름 : " + window.name + "\n나이 : " + window.age); //window.age 윈도우 객체의 age멤버변수
		alert("이름 : " + name + "\n나이 : " + age);
		
		//함수 안에서 선언된 변수 : 지역변수(Local Variable)
		//지역변수는 선언시에 반드시 앞에 var 을 붙인다.
		//함수 안에서 var 없이 변수 선언하면, 자동 전역변수가 됨
		var email = "admin@ict.or.kr";	//지역변수
		address = "서울시 마포구 서교동 첨단빌딩 7층"; //전역변수
		
		document.getElementById("area").innerHTML =
			"이름 : " + name + "<br>나이 : " + age +
			"<br>이메일 : " + email + "<br>주소 : " + 
			address;
		
		testFn2();
	}
	
	function testFn2(){
		document.getElementById("area2").innerHTML =
			"이름 : " + name + "<br>나이 : " + age +
			 "<br>주소 : " + address;
	}
	
	//웹서버에서 전송된 문서가 브라우저에서 읽어들이기가 완료되면
	//객체.on이벤트 = 실행할함수명;
	//window.onload = testFn;  //여기서는 괄호 빼고 함수명만 사용한다.--> 자바스크립트에서 이벤트사용
	
	
</script>
</head>
<!-- <body onload="testFn();"> -->  <!-- 읽어들이기가 완성되면 --> 
<body>
<h1>주석문, 변수, 연산자, 자료형 테스트 페이지</h1>
<!-- html 주석 태그임 : 브라우저 상에서 보이지 않음
	  브라우저에서 페이지 소스보기로 확인할 수 있음
 -->
 <div id="area" style="width:300px; height:100px; border:1px solid blue;"></div>
 <hr>
 <div id="area2" style="width:300px; height:100px; border:1px solid red;"></div>
 <hr>
 <h3>문자열과 숫자의 + 연산</h3>
 <p>문자열 + 숫자 => 문자열이 결과임<br>
 숫자 + 숫자 + 문자열 => 앞의 숫자 두개가 먼저 계산이 되고, 그 결과와 뒤의 문자열이 합쳐짐</p>
 <script type="text/javascript">
 	document.write("apple" + 20 + 30);	//apple2030 출력됨
 	document.write("<br>");	//document에는 태그도 ""안에
 	document.write(20 + 30 + "banana"); //50banana 출력됨
 </script>
 <hr>
 <h3>자바스크립트에서 문자열 다루기 : 내장객체인 string 객체의 메소드 사용</h3>
 <script type="text/javascript">
 	var str = "javascript";
 	document.write("str : " + str + "<br>");
 	document.write("글자갯수 : " + str.length + "<br>");
 	document.write("대문자로 변환 : " + str.toUpperCase() + "<br>");
 	document.write("4번쨰 인덱스 위치의 문자 : " + str.charAt(4) + "<br>");
 	document.write("r 문자의 위치 : " + str.indexOf('r') + "<br>");
 	document.write("0번째부터 3번째까지 문자 분리 추출 : " + str.substring(0,4));
 </script>
 <hr>
 <h3>자바스크립트에서의 숫자데이터 처리 : Math 객체의 메소드가 제공됨</h3>	<!-- Math는 내장객체 -->
 <script type="text/javascript">
 	var value = Math.random();
 	document.write("value : " + value + "<br>");
 	document.write("-5의 철대값 : " + Math.abs(-5) + "<br>");
 	document.write("소숫점 둘째자리까지 반올림 처리 : " + 
 					(Math.round(value * 100) / 100) + "<br>");
 </script>
 <hr>
 <h3>용어 정리</h3>
 <script type="text/javascript">
 	var value1 = 10;
 	var value2 = "orange";
 	
 	document.write("value1 : " + value1 + ", 자료형 : " + (typeof value1) + "<br>");
 	document.write("value2 : " + value2 + ", 자료형 : " + (typeof value2) + "<br>");
 	document.write(value1 + "3" + "<br>");	/* 103 */
 	document.write(value1 + Number("3") + "<br>");	// Number를 사용해서 String형을 int로 파싱
 	document.write(value1 + parseInt("3") + "<br>");
 </script>
</body>
</html>





