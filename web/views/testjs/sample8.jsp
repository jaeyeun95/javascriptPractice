<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testj</title>
</head>
<body>
<h1>자바스크립트에서 객체(json) 다루기</h1>
<h2>function 객체명(){ 멤버 구성 }</h2>
<button onclick="testObject()">실행확인</button>
<p id="p1">함수명은 소문자로 시작, 객체명은 대문자로 시작함<br></p>
<script type="text/javascript">
	function Book(){	// 객체 정의이면서 동시에 생성자 정의이기도 함
		//멤버변수(field) : this.필드명[ = 초기값];
		this.title = null;	//책제목 기록용
		this.author = null;	//저자명 기록용
		this.price = 0;	//책가격 기록용
		
		//멤버함수(method)
		//this.메소드명 = function([매개변수, .....]){ 소스 구문 작성 }
		this.setBook = function(t, a, p){
			this.title = t;
			this.author = a;
			this.price = p;
		};
		this.display = function(){
			document.getElementById("p1").innerHTML += this.title + ", " +
						this.author + ", " + this.price + "<br>";
		}
	}	//Book object

	function testObject(){
		var b= new Book();
		b.setBook("자바스크립트 완성", "홍길동", 25000);
		b.display();
	}
</script>
<hr>
<h2>버튼을 누르면 p2 영역 안에 div 태그가 추가되게 함</h2>
<button onclick="addDiv();">div 추가</button>
<p id="p2">div 박스가 추가되는 객체 테스트</p>
<script type="text/javascript">
	function MkDiv(){
		//Field
		this.element = null;
		
		//Method
		this.element = function(id, w, h, c){
			this.element = document.createElement("div");
			this.element.id = id;
			this.element.style.width = w + "px";
			this.element.style.height = h + "px";
			this.element.style.backgroundColor = c;
			
			return this.element;
		}		
	}

	function addDiv(){
		document.getElementById("p2").appendChild(
				new MkDiv().make("d2", 30, 20, "red"));
	}
	
</script>










</body>
</html>