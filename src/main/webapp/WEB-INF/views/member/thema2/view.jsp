<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script defer src="/resources/themes/thema2/js/jquery.flexslider.js"></script>
<link rel="stylesheet"
	href="/resources/themes/thema2/css/flexslider.css" type="text/css"
	media="screen" />
<body>
	<%@include file="header.jsp"%>

	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-12 single-main-left">
					<div class="sngl-top">
						<div class="col-md-5 single-top-left">
							<div class="flexslider">
								<ul class="slides">
									<li data-thumb="/resources/themes/thema2/images/s1.jpg"><img
										src="/resources/themes/thema2/images/s1.jpg" /></li>
									<li data-thumb="/resources/themes/thema2/images/s2.jpg"><img
										src="/resources/themes/thema2/images/s2.jpg" /></li>
									<li data-thumb="/resources/themes/thema2/images/s3.jpg"><img
										src="/resources/themes/thema2/images/s3.jpg" /></li>
									<li data-thumb="/resources/themes/thema2/images/s4.jpg"><img
										src="/resources/themes/thema2/images/s4.jpg" /></li>
								</ul>
							</div>
						</div>
						<div class="col-md-7 single-top-right">
							<div class="details-left-info simpleCart_shelfItem">
								<h3>Accessories Latest</h3>
								<p class="availability">
									Availability: <span class="color">In stock</span>
								</p>
								<div class="price_single">
									<span class="reducedfrom">$800.00</span> <span
										class="actual item_price">$600.00</span><a href="#">click
										for offer</a>
								</div>
								<h2 class="quick">Quick Overview:</h2>
								<p class="quick_desc">Nam liber tempor cum soluta nobis
									eleifend option congue nihil imperdiet doming id quod mazim
									placerat facer possim assum. Typi non habent claritatem
									insitam; es</p>
								<ul class="product-colors">
									<h3>available Colors ::</h3>
									<li><a class="color1" href="#"><span> </span></a></li>
									<li><a class="color2" href="#"><span> </span></a></li>
									<li><a class="color3" href="#"><span> </span></a></li>
									<li><a class="color4" href="#"><span> </span></a></li>
									<li><a class="color5" href="#"><span> </span></a></li>
									<li><a class="color6" href="#"><span> </span></a></li>
									<li><a class="color7" href="#"><span> </span></a></li>
									<li><a class="color8" href="#"><span> </span></a></li>
									<div class="clear"></div>
								</ul>
								<ul class="size">
									<h3>Length</h3>
									<li><a href="#">7</a></li>
									<li><a href="#">6</a></li>
								</ul>
								<div class="quantity_box">
									<ul class="product-qty">
										<span>Quantity:</span>
										<select>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
										</select>
									</ul>
								</div>
								<div class="clearfix"></div>
								<div class="single-but item_add">
									<input type="submit" value="Add to cart" /> <input
										type="submit" value="Order now" />
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>

					<!-- Editor content view -->
					<img src="/resources/themes/thema2/images/editor1.jpg"
						style="width: 100%;" /> <img
						src="/resources/themes/thema2/images/editor2.jpg"
						style="width: 100%;" /> <img
						src="/resources/themes/thema2/images/editor3.jpg"
						style="width: 100%;" />

				</div>
				<div class="clearfix"></div>

			</div>
			<ul class="unit">
				<li><a href="#"><span>Review (2)</span></a></li>
				<li><a href="#"><span>QnA (3)</span></a></li>
				<div class="clearfix"></div>
			</ul>
			
			
		</div>

	</div>

	<%@include file="footer.jsp"%>
	<script>
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
</html>