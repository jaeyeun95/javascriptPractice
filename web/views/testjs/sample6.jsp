<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testj</title>
</head>
<body>
<p>
<script type="text/javascript">
	var arr1 = new Array(5);
	var arr2 = new Array("red", "yellow", "blue");
	var arr3 = new Array();
	
	//arr1 이 참조하는 배열 공간에 값 기록 처리
	for(var i = 0; i < arr1.length; i++){
		arr1[i] = (i + 1) * 100;
		arr3.push(arr1[i]);	//기록값을 push로 기록한다 () 안에가 들어갈 값
	}
	
	//배열 값 확인하기
	document.write("arr1 : " + arr1.toString() + "<br>");
	document.write("arr3 : " + arr3.toString() + "<br>");
	document.write("arr2 : " + arr2.toString() + "<br>");
	
	document.write("arr3.length : " + arr3.length + "<br>");
	
	//arr2 가 참조하는 배열공간의 값 기록 확인 출력
	for(var i = 0; i < arr2.length; i ++){
		document.write("arr2[" + i + "] : " + arr2[i] + "<br>");
	}
	
	//arr3 가 참조하는 배열공간의 기록 값 출력 확인
	document.write("arr3 가 참조하는 배열공간의 기록값 확인<br>");	//push로 입력한것은 pop으로만 꺼낼수 있음
	//push() 로 기록한 경우에는 pop() 으로만 값 추출함
	//pop() 으로 값을 추출하면, 배열 공간의 값의 갯수가 하나씩 줄어들게 됨
	//var count = arr3.length;
	for(; arr3.length > 0; ){	//초기식, 조건식, 증감식 없으면 생략해도 됨
		document.write("arr3 에 저장된 값의 갯수 : " + arr3.length);
		document.write("pop() 한 값 : " + arr3.pop() + "<br>");
	}
</script>
</p>




</body>
</html>