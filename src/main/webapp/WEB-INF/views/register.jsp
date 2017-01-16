<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>register page</title>
<link rel="stylesheet" href="/resources/admin/css/register.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
</head>
<body>

<form id="msform" method="post" action="/registerAction">

	<ul id="progressbar">
		<li class="active">기본 입력사항</li>
		<li>상세 입력사항</li>
		<li>테마 선택</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">환영합니다!</h2>
		<h3 class="fs-subtitle">사용하실 아이디와 비밀번호를 입력해주세요</h3>
		<input type="text" name="adminid" placeholder="아이디" /> 
		<input type="password" id="adminpw" name="adminpw" placeholder="비밀번호" /> 
		<input type="password" id="adminpwCheck" placeholder="비밀번호 확인" /> 
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>

	<fieldset>
		<h2 class="fs-title">상세 정보</h2>
		<h3 class="fs-subtitle">고객님의 상세 정보를 입력해주세요</h3>
		<input type="text" name="aname" placeholder="이름" /> 
		<input type="email" name="aemail" placeholder="이메일" /> 
		<input type="text" name="aphonenumber" placeholder="전화번호" /> 
		<input type="text" name="shopname" placeholder="가게 이름" /> 
		<input type="text" name="aaddress" placeholder="가게 주소" /> 
		<input type="text" name="businessnum" placeholder="사업자 등록번호" />
		<h5>가게 로고</h5>
		<input type="file" id="logoImg" /> 
		<input type="button" name="previous" class="previous action-button" value="Previous" /> 
		<input type="hidden" name="shoplogo">
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>

	<fieldset>
		<h2 class="fs-title">홈페이지 테마선택</h2>
		<h3 class="fs-subtitle">원하시는 테마를 클릭해주세요</h3>
		<img src="/resources/indexImg/indexImg/index1.png" class="thmeaImg" name="1"> 
		<img src="/resources/indexImg/indexImg/index2.png" class="thmeaImg" name="2"> 
		<img src="/resources/indexImg/indexImg/index3.png" class="thmeaImg" name="3"> 
		<img src="/resources/indexImg/indexImg/index4.png" class="thmeaImg" name="4"> 
		<input type="button" name="previous" class="previous action-button"	value="Previous" /> 
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
</form>

</body>
<script src="/resources/admin/js/register.js"></script>
</html>