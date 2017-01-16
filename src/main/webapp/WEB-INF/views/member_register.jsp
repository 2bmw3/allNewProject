<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping mall</title>
</head>
<body>
<%@include file="member/header.jsp"%>

<!-- === BEGIN CONTENT === -->
<div id="content">
    <div class="container background-white">
        <div class="row margin-vert-30">

            <!-- Register Box -->
            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                <form class="signup-page margin-top-20" action="#">
                    <div class="signup-header" style="text-align: center;">
                        <h3 class="margin-bottom-20">필수입력 사항</h3>
                    </div>

                    <label>아이디  <i id="idCheck" class="fa fa-check-square-o" style="cursor: pointer;"></i></label>
                    <input class="form-control margin-bottom-20" type="text" maxlength=16 name="userid">

                    <div class="row">
                        <div class="col-sm-6">
                            <label>비밀번호</label>
                            <input class="form-control margin-bottom-20" type="password" maxlength=16 name="userpw">
                        </div>
                        <div class="col-sm-6">
                            <label>비밀번호 확인</label>
                            <input class="form-control margin-bottom-20" type="password" maxlength=16>
                        </div>
                    </div>

                    <label>이름</label>
                    <input class="form-control margin-bottom-20" type="text" name="uname">

                    <div class="row">
                        <div class="col-sm-6">
                            <label>우편번호
                            </label>
                            <input id="address" class="form-control margin-bottom-20" type="text" placeholder="우편번호 찾기">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <label>도로명 주소
                            </label>
                            <input class="form-control margin-bottom-20" type="text">
                        </div>
                        <div class="col-sm-6">
                            <label>지번 주소
                            </label>
                            <input class="form-control margin-bottom-20" type="password">
                        </div>
                    </div>

                    <label>나머지 주소</label>
                    <input class="form-control margin-bottom-20" type="text">
                    <input type="hidden" name="uaddress">

                    <label>휴대폰 번호</label>
                    <input class="form-control margin-bottom-20" type="text">

                    <hr/>

                    <div class="signup-header" style="text-align: center;">
                        <h3 class="margin-bottom-20">선택 입력사항</h3>
                    </div>

                    <label>성별</label>
                    <select class="form-control margin-bottom-20" name="ugender">
                        <option selected>성별</option>
                        <option>남성</option>
                        <option>여성</option>
                    </select>

                    <label>이메일</label>
                    <input class="form-control margin-bottom-20" type="email" name="uemail">

                    <label>생일</label>
                    <input class="form-control margin-bottom-20" type="date" name="ubirth">

                    <div class="row">
                        <div class="col-lg-8 text-right">
                            <button class="btn btn-primary" type="submit">가입하기</button>
                        </div>
                    </div>

                </form>
            </div>
            <!-- End Register Box -->
        </div>
    </div>
</div>
<!-- === END CONTENT === -->


<%@include file="member/footer.jsp"%>
</body>
</html>