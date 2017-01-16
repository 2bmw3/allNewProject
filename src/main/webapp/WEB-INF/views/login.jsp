<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Shopping mall</title>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/price-range.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet">

<link href="http://t4t5.github.io/sweetalert/dist/sweetalert.css"
	rel="stylesheet" />
<script src="http://t4t5.github.io/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="header-middle">
	<div class="container">
		<div class="row">
			<!-- 로고 아이콘 -->
			<div class="col-sm-4">
				<div class="logo pull-left">
					<a href="/member/index"><img
						src="${pageContext.request.contextPath}/resources/images/home/logo.png"
						alt="" /></a>
				</div>
			</div>
		</div>
	</div>
</div>




<title>Shopping mall</title>
</head>
<body>
	<section id="form" style="margin-top:-50px"><!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<!--LATEST ARRIVALS -->

				<div class="features_items">
					<div class="col-sm-6 col-sm-offset-1">
						<div class="login-form">
							<div class="logmod__wrapper">
								<span class="logmod__close">Close</span>
								<div class="logmod__container">
									<ul class="logmod__tabs">
										<li data-tabtar="lgm-2"><a>기업 로그인</a></li>
										<li data-tabtar="lgm-1"><a>회원 로그인</a></li>
									</ul>
									<div class="logmod__tab-wrapper">
										<div class="logmod__tab lgm-1">
											<div class="logmod__heading">
												<span class="logmod__heading-subtitle"><strong>회원
														로그인</strong> </span>
											</div>
											<div class="logmod__form">
												<form action="login" method="post">
													<input type="text" placeholder="아이디" name="adminid" /> <input
														type="password" placeholder="비밀번호" name="adminpw" /> <span>
														<input id="remember_me"
														name="_spring_security_remember_me" type="checkbox" />자동 로그인
														
													</span>
													<button type="submit" class="btn btn-default">로그인</button>
												</form>

											</div>
											<!--                                  <div class="logmod__alter"> -->
											<!--                                     <div class="logmod__alter-container"> -->
											<!--                                        <a href="#" class="connect facebook"> -->
											<!--                                           <div class="connect__icon"> -->
											<!--                                              <i class="fa fa-facebook"></i> -->
											<!--                                           </div> -->
											<!--                                           <div class="connect__context"> -->
											<!--                                              <span>Sign in with <strong>Facebook</strong></span> -->
											<!--                                           </div> -->
											<!--                                        </a> <a href="#" class="connect googleplus"> -->
											<!--                                           <div class="connect__icon"> -->
											<!--                                              <i class="fa fa-google-plus"></i> -->
											<!--                                           </div> -->
											<!--                                           <div class="connect__context"> -->
											<!--                                              <span>Sign in with <strong>Google+</strong></span> -->
											<!--                                           </div> -->
											<!--                                        </a> -->
											<!--                                     </div> -->
											<!--                                  </div> -->

										</div>
										<div class="logmod__tab lgm-2">
											<div class="logmod__heading">
												<span class="logmod__heading-subtitle"><strong>기업 로그인</strong> </span>
											</div>
											<div class="logmod__form">
												<form action="login" method="post">
													<input type="text" placeholder="아이디" name="username" /> <input
														type="password" placeholder="비밀번호" name="password" /> <span>
														<div class="checkbox">
															<label> <input name="remember-me" type="checkbox">
																자동 로그인
															</label>
														</div>
													</span>
													<button type="submit" class="btn btn-default">로그인</button>

												</form>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
					<div class="col-sm-1" style="margin-top: 190px;">
						<h2 class="or">또는</h2>
					</div>
					<div class="col-sm-4" style="margin-top: 168px;">
						<div class="signup-form">
							<!--sign up form-->
							<h2>가족이 되어요</h2>
							<form action="#">
								<button type="submit" class="btn btn-default">개인 가입</button>
							</form>
							<br>
							<form action="/admin_register">
								<button type="submit" class="btn btn-default">기업 가입</button>
							</form>
						</div>
						<!--/sign up form-->
					</div>
				</div>
			</div>

		</div>

	</div>

	</section>


	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

	<%@include file="member/footer.jsp"%>
</body>
</html>S