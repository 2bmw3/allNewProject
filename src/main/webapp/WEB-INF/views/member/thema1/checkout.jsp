<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>


<h2 style='margin: auto;'>Order</h2>


<section id="cart-view" >
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="cart-view-area">
				<div class="cart-view-table">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th></th>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="#"><img
											src="/resources/themes/thema1/img/women/girl-7.png" alt="img"></a></td>
									<td>
										<a class="aa-cart-title" href="#">outer</a>
										<a>/ beige / F</a>
									</td>
									<td>$250</td>
									<td>1</td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<th>T o t a l</th>
									<th></th>
									<th></th>
									<td>$250</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>


<div class='aa-blog-content aa-blog-details'>
	<div id="respond">
		<h3 class="reply-title">Order</h3>
		<input type="radio" id="addRbtn" name="addRbtn" checked="checked">기본 배송지
		<input type="radio" id="newAddRbtn" name="addRbtn" >새 배송지
		<form id="commentform">
			<div class='col-md-7'>
				<p class="comment-form-author">
					<label for="author">Name <span class="required">*</span></label> <input
						type="text" name="author" value="" size="30" required="required">
				</p>
			</div>
			<div class='col-md-6'>
				<p class="comment-form-author">
					<label for="address">Address <span class="required">*</span></label>
					<input type="text" name="address" value="" aria-required="true"
						required="required">
				</p>
			</div>
			<div class='col-md-6'>
				<p class="comment-form-author">
					<label for="phone">Phone <span class="required">*</span></label> <input
						type="text" name="phone" value="" aria-required="true"
						required="required">
				</p>
			</div>
			<div>
				<p class="form-submit col-md-6">
					<input type="submit" name="submit" class="aa-browse-btn" value='Payment'>
				</p>
			</div>
		</form>
	</div>
</div>
<%@include file="footer.jsp"%>

</html>