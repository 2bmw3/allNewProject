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
								<c:forEach items="${view}" var="vo" varStatus="status">
									<li data-thumb="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e">
									<img src= "https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e" /></li>
								</c:forEach>
								</ul>
							</div>
						</div>
						<div class="col-md-7 single-top-right">
							<div class="details-left-info simpleCart_shelfItem">
								<h3>${view[0].pname}</h3>
								<p class="availability">
									Kind: <span class="color">${view[0].pkind}</span>
								</p>
								<div class="price_single">
									<span class="reducedfrom">${view[0].price+7000}원</span> <span
										class="actual item_price">${view[0].price}원</span>
								</div>
								<ul class="product-colors">
									<h3>available Colors ::</h3>
									<c:forEach items="${infoColor}" var="vo" varStatus="status">
										<image style="border-width : 1px; border-style : solid;" src='/resources/admin/images/color_info/${vo.picolor}.jpg' class='colorInfo' id='${vo.picolor}'/>
									</c:forEach>
									<div class="clear"></div>
								</ul>
								</br>
								<h3>SIZE</h3>
								<ul class="size">
								
									<li><a href="#">색상을 골라주세요</a></li>
									
								</ul>
								<div class="quantity_box">
									<ul class="product-qty">
										<h3>Quantity:</h3>
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
					${view[0].pcontent}	
					


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
		
		$(".product-colors")
	</script>
</html>