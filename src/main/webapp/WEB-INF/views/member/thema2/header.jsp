<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/themes/thema2/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/resources/themes/thema2/js/jquery-1.11.0.min.js"></script>
<!--theme-style-->
<link href="/resources/themes/thema2/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
    window.scrollTo(0, 1);
} </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic'
      rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
      rel='stylesheet' type='text/css'>
<!--//fonts-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/resources/themes/thema2/js/move-top.js"></script>
<script type="text/javascript" src="/resources/themes/thema2/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- start menu -->
<script src="/resources/themes/thema2/js/simpleCart.min.js"></script>
<link href="/resources/themes/thema2/css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="/resources/themes/thema2/js/memenu.js"></script>
<script>
	$(document).ready(function () {
	    $(".memenu").memenu();
	});
</script>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-4 top-header-middle">
                <a href="index?shopname=${param.shopname}"><img src="/resources/themes/thema2/images/logo-4.png" alt=""/></a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="top-nav">
            <ul class="memenu skyblue">
                <li class="active"><a href="/member/index">Main</a></li>
                <li class="active"><a href="index?shopname=${param.shopname}">Home</a></li>
                <li class="grid"><a href="list?shopname=${param.shopname}&pkind=전체&pageNum=1">Products</a></li>
                <li class="grid"><a href="#">PhotoSearch</a></li>
                <li class="grid"><a href="order?shopname=${param.shopname}">Order</a></li>
                <li class="grid"><a href="cart?shopname=${param.shopname}">Cart</a></li>
                   <li class="grid"><a href="/member/login">Login</a></li>
                      <li class="grid"><a href="/member/register">Join Us</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--bottom-header-->