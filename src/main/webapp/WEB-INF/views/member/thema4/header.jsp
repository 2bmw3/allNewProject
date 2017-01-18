<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Favicon  -->
<link rel="shortcut icon" type="image/x-icon" href="/resources/themes/thema4/favicon.ico">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Karla:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200italic,300,300italic,400,400italic,600,600italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Dancing+Script:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Source+Code+Pro:400,500,600,700,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' type='text/css' rel='stylesheet' media='all' />
<link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
<!-- CSS Style -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/bootstrap.min.css">

<!-- font-awesome & simple line icons CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/simple-line-icons.css" media="all">

<!-- owl.carousel CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/owl.theme.css">

<!-- animate CSS  -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/animate.css" media="all">

<!-- flexslider CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/flexslider.css" >

<!-- slider CSS  -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/slit-slider.css">

<!-- style CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/style.css" media="all">

<!-- shortcodes -->
<link rel="stylesheet" media="screen" href="/resources/themes/thema4/css/shortcodes/shortcodes.css" type="text/css" />

<!-- accordion -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/js/accordion/accordion.css" />

<!-- tooltips -->
<link rel="stylesheet" href="/resources/themes/thema4/js/tooltips/tooltip.css" />

<!-- progressbar -->
<link rel="stylesheet" href="/resources/themes/thema4/js/progressbar/ui.progress-bar.css">

<!-- popup newsletter css -->
<link rel="stylesheet" href="/resources/themes/thema4/css/popup-newsletter.css">

<!-- home7 CSS -->
<link rel="stylesheet" type="text/css" href="/resources/themes/thema4/css/home7.css" media="all">
<!-- jquery-ui.min CSS  -->
<link rel="stylesheet" href="/resources/themes/thema4/css/jquery-ui.css">
<link href="http://t4t5.github.io/sweetalert/dist/sweetalert.css" rel="stylesheet">
<script src="http://t4t5.github.io/sweetalert/dist/sweetalert.min.js"></script>

 
<!-- mobile menu -->
<div id="mobile-menu">
  <ul>
  	<li><a href="/member/index">Main</a></li>
    <li><a href="index?shopname=${param.shopname}" class="home1">Home</a></li>
	<li><a href="topList?shopname=${param.shopname}&pkind=상의&pageNum=1">Top</a></li>
    <li><a href="bottomList?shopname=${param.shopname}&pkind=하의&pageNum=1">Bottom</a></li>
    <li><a href="outerList?shopname=${param.shopname}&pkind=아우터&pageNum=1">Outer</a></li>
    <li><a href="shoesAccList?shopname=${param.shopname}&pkind=신발 및 악세사리&pageNum=1">Shoes & Acc</a></li>
    <li><a href="etcList?shopname=${param.shopname}&pkind=기타&pageNum=1">Etc</a></li>
  </ul>
</div>
<!-- end mobile menu -->
<div id="page"> 
  
  <!-- Header -->
  <header>
    <div class="header-container">
      <div class="header-top">
        <div class="container">
          <div class="row">
            <!-- top links -->
            <div class="headerlinkmenu col-lg-8 col-md-7 col-sm-7 col-xs-6">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="/member/login"><i class="fa fa-user"></i><span class="hidden-xs">My Account</span></a></div>
                <div class="cart"><a title="My Cart" href="cart?shopname=${param.shopname}"><i class="glyphicon glyphicon-shopping-cart "></i><span class="hidden-xs">Cart</span></a></div>
                <div class="login"><a href="/member/login"><i class="fa fa-unlock-alt"></i><span class="hidden-xs">Log In</span></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-xs-12 col-md-6"> 
            <!-- Header Logo -->
            <div class="logo"><a title="e-commerce" href="index?shopname=${param.shopname}"><img alt="e-commerce" src="/resources/themes/thema4//images/logo-black.png"></a> </div>
            <!-- End Header Logo --> 
          </div>
          <!-- top cart -->
        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 
  
  <!-- Navbar -->
  <nav>
    <div class="container">
      <div class="row">
        <div class="mtmegamenu">
          <ul>
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="/member/index">
                <div class="title title_font"><span class="title-text">Main</span></div>
                </a></div>
            </li>

            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="index?shopname=${param.shopname}">
                <div class="title title_font"><span class="title-text">Home</span></div>
                </a></div>
            </li>
            
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="topList?shopname=${param.shopname}&pkind=상의&pageNum=1">
                <div class="title title_font"><span class="title-text">Top</span></div>
                </a></div>
            </li>
            
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="bottomList?shopname=${param.shopname}&pkind=하의&pageNum=1">
                <div class="title title_font"><span class="title-text">Bottom</span></div>
                </a></div>
            </li>
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="outerList?shopname=${param.shopname}&pkind=아우터&pageNum=1">
                <div class="title title_font"><span class="title-text">Outer</span></div>
                </a></div>
            </li>
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="shoesAccList?shopname=${param.shopname}&pkind=신발 및 악세사리&pageNum=1">
                <div class="title title_font"><span class="title-text">Shoes & Acc</span></div>
                </a></div>
            </li>
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="etcList?shopname=${param.shopname}&pkind=기타&pageNum=1">
                <div class="title title_font"><span class="title-text">Etc</span></div>
                </a></div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- end nav -->

<!-- Modernizer Script for old Browsers -->
<script src="/resources/themes/thema4/js/modernizr-2.6.2.min.js"></script>