<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
    ul.unit {
        background:lavender;
        padding:1em;

    }
   ul.uli {
       padding:1em;
   }

    ul.unit li {
        display:inline-block;
        width:10%;

        text-align:center;
    }

    ul.uli li {
        display:inline-block;
        width:10%;

        text-align:center;
    }
</style>
<body>
	<div class="container">
		<div class="row animate-box">
			<div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
				<h2>
					<span>Cart</span>
				</h2>
			</div>
		</div>
		<ul class="unit">
			<li class="li" style="margin-right: 40%;"><b>Product</b></li>
			<li class="li" style="margin-right: 15%"><b>Quantity</b></li>
			<li class="li"><b>Price</b></li>
			<div class="clearfix"></div>
		</ul>
		<ul class="uli">
			<li class="li"><img
				style='width: 100px; height: 100px; margin-right: 10%'
				src="/resources/themes/thema3/images/sample/438223_3_500.jpg"></li>
			<li class="li" style="margin-right: 30%;"><p>Productname</p>
				<h5>L / Red</h5></li>
			<li class="li" style="margin-right: 15%"><input type="number"
				name="quantity" min="1" max="10" style="width: 100%" value="1"></li>
			<li class="li"><p>￦ 10000</p></li>
			<li class="li"><i class="fa fa-remove" style="color: red"></i></li>
			<div class="clearfix"></div>
		</ul>
		<hr>
		<input type="submit" class="btn btn-primary" value="Order"
			style="float: right"> <input type="submit"
			class="btn btn-primary" value="Continue Shopping"
			style="float: right">
</body>
<%@include file="footer.jsp"%>
</html>