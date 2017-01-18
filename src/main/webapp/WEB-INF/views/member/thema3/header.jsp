<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Flower</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by freehtml5.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="freehtml5.co" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Sacramento"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Animate.css -->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/flexslider.css">

<!-- Theme style  -->
<link rel="stylesheet"
	href="/resources/themes/thema3/assets/css/style.css">

<!-- Modernizr JS -->
<script src="/resources/themes/thema3/assets/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->

<script src="/resources/themes/thema3/assets/js/respond.min.js"></script>
<style>
ul.pagination {
	display: table;
	margin-left: auto;
	margin-right: auto;
	padding: 0;
}

ul.pagination li {
	display: inline;
}

ul.pagination li a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination li:first-child a {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
}

.pagination li:last-child a {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

ul.pagination li a.active {
	background-color: lightpink;
	color: white;
	border: 1px solid lightpink;
}

ul.pagination li a:hover:not (.active ) {
	background-color: #ddd;
}
</style>
<head>
<div class="fh5co-loader"></div>

<div id="page">
	<nav class="fh5co-nav" role="navigation">
	<div class="container-fluid">
		<div class="row">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 text-left menu-1">
							<ul>
								<li><a href="/member/index">Main</a></li>
								<li><a href="index?shopname=${param.shopname}">Home</a></li>
								<li class="has-dropdown"><a> Products</a>
									<ul class="dropdown">
										<li><a href="list?shopname=${param.shopname}&pkind=전체&pageNum=1">All</a></li>
										<li><a href="topList?shopname=${param.shopname}&pkind=상의&pageNum=1">Top</a></li>
										<li><a href="bottomList?shopname=${param.shopname}&pkind=하의&pageNum=1">Bottom</a></li>
										<li><a href="outerList?shopname=${param.shopname}&pkind=아우터&pageNum=1">Outer</a></li>
										<li><a href="shoesAccList?shopname=${param.shopname}&pkind=신발 및 악세사리&pageNum=1">Shoes & Acc</a></li>
										<li><a href="etcList?shopname=${param.shopname}&pkind=기타&pageNum=1">Etc</a></li>
									</ul></li>
								<li><a href="order?shopname=${param.shopname}">Order</a></li>
								<li><a href="cart?shopname=${param.shopname}">cart</a></li>
							</ul>
						</div>
						<div class="col-sm-5">
							<ul class="fh5co-social-icons">
								<li><a href="/member/login"><i class="material-icons">lock</i></a></li>
								<li><a href="/member/register"><i class="material-icons">group_add</i></a></li>
								<li><a href="#"><i class="material-icons">photo_camera</i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<br> <br>
</head>