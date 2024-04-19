<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="accordion" id="accordionExample">
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch01'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="${chNum=='ch01'}"
				aria-controls="collapseOne">Ch01 개발 환경 구축</button>
		</h2>
		<div id="collapseOne" class="accordion-collapse collapse ${chNum=='ch01'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch01/content">공통 레이아웃 구성</a></li>
					<!--  <li><a href="/springframework/ch01/content">공통 레이아웃 구성</a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch02'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="${chNum=='ch02'}"
				aria-controls="collapseTwo">Ch02. 요청 매핑</button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse ${chNum=='ch02'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch02/getMethod">GET 방식</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/postMethod">POST 방식</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/modelAndViewReturn">Model And View 리턴</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/voidReturn">void 리턴</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/objectReturn">Object 리턴</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor1">로그인X 내용</a></li>
					<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor2">로그인O 내용</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch03'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="${chNum=='ch03'}"
				aria-controls="collapseThree">Ch03</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse ${chNum=='ch03'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch03/receiveParamData?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">GET 방식으로 데이터 가져오기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/postMethodForm">POST 방식 폼 데이터 얻기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotation?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@RequestParam</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationRequired?param1=문자열&param2=5">@RequestParam의 required 속성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationDefaultValue?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@RequestParam의 defaultValue 속성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/typeChange?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청 파라미터 타입 변환</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/getDto?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청 파라미터의 값을 DTO로 받기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/ajax">AJAX로 요청 파라미터 보내기</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch04'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="${chNum=='ch04'}"
				aria-controls="collapseFour">Ch04</button>
		</h2>
		<div id="collapseFour" class="accordion-collapse collapse ${chNum=='ch04'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch04/loginForm">로그인 폼</a></li>
					<li><a href="${pageContext.request.contextPath}/ch04/signUpForm">회원가입 폼</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch05'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="${chNum=='ch05'}"
				aria-controls="collapseFive">Ch05. 요청 헤더값 및 쿠키 사용</button>
		</h2>
		<div id="collapseFive" class="accordion-collapse collapse ${chNum=='ch05'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch05/header">요청 헤더값 얻기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch05/createCookie">쿠키 생성 및 응답 HTTP에 포함시키기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch05/readCookie">요청 HTTP에서 쿠키값 얻기</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch06'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="${chNum=='ch06'}"
				aria-controls="collapseSix">Ch06. 포워드와 리다이렉트</button>
		</h2>
		<div id="collapseSix" class="accordion-collapse collapse ${chNum=='ch06'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch06/forward">포워드와 request 범위 데이터</a></li>
					<li><a href="${pageContext.request.contextPath}/ch06/redirect">리다이렉트와 session 범위 데이터</a></li>
					<li><a href="${pageContext.request.contextPath}/ch06/sessionData">session 범위 데이터</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch07'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="${chNum=='ch07'}"
				aria-controls="collapseSeven">Ch07. 데이터 전달</button>
		</h2>
		<div id="collapseSeven" class="accordion-collapse collapse ${chNum=='ch07'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch07/request1">Model and View : request 범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/request2">DTO : request 범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/sessionLoginForm">HttpSession : session 범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/application">ServletContext : application 범위</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch08'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="${chNum=='ch08'}"
				aria-controls="collapseEight">Ch08. 세션 지원</button>
		</h2>
		<div id="collapseEight" class="accordion-collapse collapse ${chNum=='ch08'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch08/productList">상품 목록</a></li>
					<li><a href="${pageContext.request.contextPath}/ch08/cartView">장바구니 보기</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch09'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="${chNum=='ch09'}"
				aria-controls="collapseNine">Ch09. 파일 업로드와 다운로드</button>
		</h2>
		<div id="collapseNine" class="accordion-collapse collapse ${chNum=='ch09'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch09/fileUploadForm">파일 업로드</a></li>
					<li><a href="${pageContext.request.contextPath}/ch09/downloadFileList">파일 다운로드</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch10'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="${chNum=='ch10'}"
				aria-controls="collapseTen">Ch10. 예외처리</button>
		</h2>
		<div id="collapseTen" class="accordion-collapse collapse ${chNum=='ch10'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch10/handlingException1">try-catch 이용</a></li>
					<li><a href="${pageContext.request.contextPath}/ch10/handlingException2">@Exception Handler 이용</a></li>
					<li><a href="${pageContext.request.contextPath}/ch10/handlingException3">사용자 정의 예외 처리</a></li>
					<li><a href="${pageContext.request.contextPath}/ch10/handlingException4">기타 500 예외 처리</a></li>
					<li><a href="${pageContext.request.contextPath}/ch10/404errorㅁㄴㅇㅁㄴㅇ">404 처리</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch11'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEleven" aria-expanded="${chNum=='ch11'}"
				aria-controls="collapseEleven">Ch11. 국제화</button>
		</h2>
		<div id="collapseEleven" class="accordion-collapse collapse ${chNum=='ch11'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch11/joinForm">다국어 처리</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum=='ch12'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwelve" aria-expanded="${chNum=='ch12'}"
				aria-controls="collapseTwelve">Ch12. 의존성 주입</button>
		</h2>
		<div id="collapseTwelve" class="accordion-collapse collapse ${chNum=='ch12'?'show':''}" data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch12/createBeanByXml">XML 설정으로 빈 생성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch12/diByXml">XML 설정으로 관리빈의 의존성 주입</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>