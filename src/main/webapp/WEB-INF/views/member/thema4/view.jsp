<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<%@include file="header.jsp"%>

<body class="product-page">
	<!-- mobile menu -->
	<div id="mobile-menu">
		<ul>
			<li><a href="index" class="home1">Home</a></li>
			<li><a href="list">Women</a>
				<ul>
					<li><a href="list" class="">Accessories</a>
						<ul>
							<li><a href="list">Cocktail</a></li>
						</ul></li>
				</ul></li>
			<li><a href="list">Men</a>
				<ul>
					<li><a href="list" class="">Clothing</a>
						<ul class="level1">
							<li class="level2 nav-6-1-1"><a href="list">Coats &amp;
									Jackets</a></li>
						</ul></li>
				</ul></li>
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
								<div class="myaccount">
									<a title="My Account" href="login"><i class="fa fa-user"></i><span
										class="hidden-xs">My Account</span></a>
								</div>
								<div class="cart">
									<a title="My Cart" href="cart"><i
										class="glyphicon glyphicon-shopping-cart "></i><span
										class="hidden-xs">Cart</span></a>
								</div>
								<div class="login">
									<a href="login"><i class="fa fa-unlock-alt"></i><span
										class="hidden-xs">Log In</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-xs-12">
						<!-- Header Logo -->
						<div class="logo">
							<a title="e-commerce" href="index"><img alt="e-commerce"
								src="/resources/themes/thema4/images/logo.png"></a>
						</div>
						<!-- End Header Logo -->
					</div>
				</div>
			</div>
		</div>
		</header>
		<!-- end header -->

		<!-- Navbar -->
		<nav>
		<div class="stick-logo">
			<a title="e-commerce" href="index"><img alt="logo"
				src="/resources/themes/thema4/images/stick-logo.png"></a>
		</div>
		<div class="container">
			<div class="row">
				<div class="mtmegamenu">
					<ul>
						<li class="mt-root demo_custom_link_cms">
							<div class="mt-root-item">
								<a href="index">
									<div class="title title_font">
										<span class="title-text">Home</span>
									</div>
								</a>
							</div>
						</li>

						<li class="mt-root">
							<div class="mt-root-item">
								<a class="active" href="list">
									<div class="title title_font">
										<span class="title-text">Women</span>
									</div>
								</a>
							</div>
							<ul class="menu-items col-xs-12">
								<li class="menu-item depth-1 menucol-1-5 ">
									<div class="title title_font">
										<a href="list"> Accessories </a>
									</div>
									<ul class="submenu">
										<li class="menu-item">
											<div class="title">
												<a href="list"> Cocktail </a>
											</div>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="mt-root">
							<div class="mt-root-item">
								<a href="list">
									<div class="title title_font">
										<span class="title-text">Men</span>
									</div>
								</a>
							</div>
							<ul class="menu-items col-md-9 col-xs-12">
								<li class="menu-item depth-1 category menucol-1-4 ">
									<div class="title title_font">
										<a href="list"> Clothing </a>
									</div>
									<ul class="submenu">
										<li class="menu-item">
											<div class="title">
												<a href="list"> Coats &amp; Jackets </a>
											</div>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="mt-root"></li>
					</ul>
				</div>
			</div>
		</div>
		</nav>
		<!-- end nav -->
		<!-- Breadcrumbs -->

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<ul>
							<li class="home"><a title="Go to Home Page" href="index">Home</a><span>&raquo;</span></li>
							<li class=""><a title="Go to Home Page" href="list">Women</a><span>&raquo;</span></li>
							<li class="category13"><strong>Donec Ac Tempus</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumbs End -->
		<!-- Main Container -->
		<div class="main-container col2-right-layout">
			<div class="container">
				<div class="row">
					<div class="col-main col-sm-9">
						<div class="product-view-area">
							<div
								class="product-big-image col-xs-12 col-sm-9 col-lg-5 col-md-5">
								<div class="large-image">
									<a class="cloud-zoom" id="magni_img"
										data-big="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
										data-overlay="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
										rel="useWrapper: false, adjustY:0, adjustX:20"> <img
										style="width: 500px; height: 500px;"
										src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e" /></a>
								</div>
								<div class="flexslider flexslider-thumb">
									<ul class="previews-list slides">
										<c:set var="viewtotal">${fn.length(view)}</c:set>

										<c:set var="count">5</c:set>
										<c:forEach items="${view}" var="vo" varStatus="status">
											<c:if test="${status.count==count}">

												<c:set var="count">${count+4 }</c:set>
											</c:if>
											<li><a
												href='https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e'
												class='cloud-zoom-gallery'
												rel="useZoom: 'magni_img', smallImage: 'https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e' "><img
													src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
													alt="Thumbnail 2" /></a></li>
											<c:if test="${status.count == viewtotal}">
											</c:if>
										</c:forEach>
									</ul>
								</div>


								<!-- end: more-images -->

							</div>
							<div class="col-xs-12 col-sm-9 col-lg-7 col-md-7">
								<div class="product-details-area">
									<div class="product-name">
										<h2>${view[0].pname}</h2>
										<p>${view[0].pgender}</p>
										<p>
											<b>종류:</b> ${view[0].pkind}
										</p>
										<p>
											<b>판매량:</b> ${view[0].sellcnt}
										</p>
									</div>
									<div class="price-box">
										<p>￦${view[0].price}</p>
									</div>
									<div class="product-color-size-area">
										<div class="color-area">
											<h2 class="saider-bar-title">Color</h2>
											<c:forEach items="${infoColor}" var="vo" varStatus="status">
												<image style="border-width : 1px; margin-top:1%; border-style : solid;"
													src='/resources/admin/images/color_info/${vo.picolor}.jpg'
													class='colorInfo' id='${vo.picolor}' />
											</c:forEach>
										</div>
										<div class="size-area">
											<h2 class="saider-bar-title">Size</h2>
											<div class="size">
												<ul>
													<c:forEach items="${infoSize}" var="vo" varStatus="status">
														<li><a href="#">${vo.pisize}</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-variation">
										<form action="#" method="post">
											<div class="cart-plus-minus">
												<label for="qty">Qty:</label>
												<div class="numbers-row">
													<div
														onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;"
														class="dec qtybutton">
														<i class="fa fa-minus">&nbsp;</i>
													</div>
													<input type="text" class="qty" title="Qty" value="1"
														maxlength="12" id="qty" name="qty">
													<div
														onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
														class="inc qtybutton">
														<i class="fa fa-plus">&nbsp;</i>
													</div>
												</div>
											</div>
											<button class="button pro-add-to-cart" title="Add to Cart"
												type="button">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="product-overview-tab wow fadeInUp">
							<ul id="product-detail-tab" class="nav nav-tabs product-tabs">
								<li class="active"><a href="#description" data-toggle="tab">
										Description </a></li>
								<li><a href="#reviews" data-toggle="tab">Reviews</a></li>
								<li><a href="#product_tags" data-toggle="tab">QnA</a></li>
								</li>
							</ul>
							<div id="productTabContent" class="tab-content">
								<div class="tab-pane fade in active" id="description">
									<div class="std">
										<div class="tab-pane fade in active" id="detailView">
											<div class="pcontent" style="margin-left: 4%; margin-top: 5%">
												<div class="col-sm-12">${view[0].pcontent}</div>
											</div>
										</div>
									</div>
								</div>
								<div id="reviews" class="tab-pane fade">
									<div class="col-sm-5 col-lg-5 col-md-5">
										<div class="reviews-content-left">
											<h2>Customer Reviews</h2>
											<div class="review-ratting">
												<c:forEach items="${review}" var="rvo">
													<div class="col-sm-10 showReview">
														<ul style="background-color: white;">
															<li><h3>${rvo.userid}(${rvo.rgrade}점)</h3></li>
															<li><h5>${rvo.rcontent}</h5>
																<h5>${rvo.rregdate}</h5></li>
														</ul>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="col-sm-7 col-lg-7 col-md-7">
										<div class="reviews-content-right">
											<h2>Write Your Own Review</h2>
											<form>
												<h3>
													You're reviewing: <span>Donec Ac Tempus</span>
												</h3>
												<h4>
													How do you rate this product?<em>*</em>
												</h4>
												<div class="table-responsive">
													<table>
														<tbody>
															<tr>
																<th></th>
																<th>1 star</th>
																<th>2 stars</th>
																<th>3 stars</th>
																<th>4 stars</th>
																<th>5 stars</th>
															</tr>
															<tr>
																<td>Quality</td>
																<td><input type="radio"></td>
																<td><input type="radio"></td>
																<td><input type="radio"></td>
																<td><input type="radio"></td>
																<td><input type="radio"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="form-area">
													<div class="form-element">
														<label>Nickname <em>*</em></label> <input type="text">
													</div>
													<div class="form-element">
														<label>Summary of Your Review <em>*</em></label> <input
															type="text">
													</div>
													<div class="form-element">
														<label>Review <em>*</em></label>
														<textarea></textarea>
													</div>
													<div class="buttons-set">
														<button class="button submit" title="Submit Review"
															type="submit">
															<span><i class="fa fa-thumbs-up"></i> &nbsp;Review</span>
														</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tags">
									<h2>QnA</h2>
									<ul>
										<li><p>QnA page</p></li>
									</ul>
									<form action="" class="aa-review-form">
										<div class="form-group">
											<label for="qContent">Question</label>
											<textarea class="form-control" rows="3" id="qContent"
												style='max-width: 100%;'></textarea>
										</div>
										<div class="form-group">
											<label for="qName">Name</label> <input type="text"
												class="form-control" id="qName" placeholder="Name">
										</div>
										<div class="form-group">
											<label for="qPassword">Password</label> <input
												type="password" class="form-control" id="qPassword"
												maxLength='4' placeholder="password(max length : 4)">
										</div>
										<button type="submit" class="btn btn-default aa-review-submit"
											id='qBtn'>Submit</button>
										<c:forEach items="${qna}" var="qvo">
											<!-- QnA 1개 -->
											<div class="col-sm-10 showQnA">
												<ul style="background-color: white;">
													<li><h3>${qvo.qwriter}</h3>
														<h6>${qvo.qregdate}</h6></li>
													<li id='c${qvo.qno}'><h5>${qvo.qcontent}</h5></li>
													<c:forEach items="${answer}" var="avo">
														<c:if test="${qvo.qno == avo.qno }">
															<li><i class="material-icons">subdirectory_arrow_right</i>
																RE : ${avo.acontent}</li>
														</c:if>
													</c:forEach>

												</ul>
											</div>
										</c:forEach>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>