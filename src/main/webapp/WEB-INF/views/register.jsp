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
		<li class="active">�⺻ �Է»���</li>
		<li>�� �Է»���</li>
		<li>�׸� ����</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">ȯ���մϴ�!</h2>
		<h3 class="fs-subtitle">����Ͻ� ���̵�� ��й�ȣ�� �Է����ּ���</h3>
		<input type="text" name="adminid" placeholder="���̵�" /> 
		<input type="password" id="adminpw" name="adminpw" placeholder="��й�ȣ" /> 
		<input type="password" id="adminpwCheck" placeholder="��й�ȣ Ȯ��" /> 
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>

	<fieldset>
		<h2 class="fs-title">�� ����</h2>
		<h3 class="fs-subtitle">������ �� ������ �Է����ּ���</h3>
		<input type="text" name="aname" placeholder="�̸�" /> 
		<input type="email" name="aemail" placeholder="�̸���" /> 
		<input type="text" name="aphonenumber" placeholder="��ȭ��ȣ" /> 
		<input type="text" name="shopname" placeholder="���� �̸�" /> 
		<input type="text" name="aaddress" placeholder="���� �ּ�" /> 
		<input type="text" name="businessnum" placeholder="����� ��Ϲ�ȣ" />
		<h5>���� �ΰ�</h5>
		<input type="file" id="logoImg" /> 
		<input type="button" name="previous" class="previous action-button" value="Previous" /> 
		<input type="hidden" name="shoplogo">
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>

	<fieldset>
		<h2 class="fs-title">Ȩ������ �׸�����</h2>
		<h3 class="fs-subtitle">���Ͻô� �׸��� Ŭ�����ּ���</h3>
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