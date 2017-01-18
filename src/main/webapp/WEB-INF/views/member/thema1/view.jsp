<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>

<!-- product category -->
<section id="aa-product-details">
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="aa-product-details-area">
				<div class="aa-product-details-content">
					<div class="row">
						<!-- Modal view slider -->
						<div class="col-md-5 col-sm-5 col-xs-12">
							<div class="aa-product-view-slider">
								<div id="demo-1" class="simpleLens-gallery-container">
									<div class="simpleLens-container">
										<div class="simpleLens-big-image-container">
											<a
												data-lens-image="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
												class="simpleLens-lens-image"> <img
												style="width: 600px; height: 400px"
												src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
												class="simpleLens-big-image">
											</a>
										</div>
									</div>
									<div class="simpleLens-thumbnails-container">
										<div class="item active" style="margin-left: 28px;">
											<c:set var="viewtotal">${fn.length(view) }</c:set>

											<c:set var="count">5</c:set>
											<c:forEach items="${view}" var="vo" varStatus="status">
												<c:if test="${status.count==count}">
										</div>
										<div class="item" style="margin-left: 28px;">
											<c:set var="count">${count+4 }</c:set>
											</c:if>
											<a
												data-big-image="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
												data-lens-image="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
												class="simpleLens-thumbnail-wrapper" href="#"> <img
												style='width: 75px; height: 75px;'
												src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e">
											</a>

											<c:if test="${status.count == viewtotal}">
											</c:if>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Modal view content -->
						<div class="col-md-7 col-sm-7 col-xs-12" >
							<div class="aa-product-view-content" style="margin-left:10%;">
								<div class="product-information" >

									<!--/product-information-->
										<h2>${view[0].pname}</h2>
										<p>
											<b>GENDER :</b> ${view[0].pgender}
										</p>
										<p>
											<b>KIND :</b> ${view[0].pkind}
										</p>
										<p>
											<b>SALES RATE :</b> ${view[0].sellcnt}
										</p>
										<p>
											<b>PRICE :</b> ${view[0].price}
										</p>
								</div>
								<h4>Color</h4>
								<c:forEach items="${infoColor}" var="vo" varStatus="status">
									<image style="border-width : 1px; margin-top:1%; border-style : solid;"
										src='/resources/admin/images/color_info/${vo.picolor}.jpg'
										class='colorInfo' name ='${vo.picolor}' />
								</c:forEach>
								<h4>Size</h4>
								<div class="aa-prod-view-size size">
									<h5>&nbsp;&nbsp;&nbsp;색상을 선택 해주세요</h5>
								</div>
								&nbsp;
								<div class="input-group col-md-3">
									<span class="input-group-btn">
										<button type="button" class="btn btn-danger btn-number"
											data-type="minus" data-field="quant[2]">
											<span class="glyphicon glyphicon-minus"></span>
										</button>
									</span> <input type="text" name="quant[2]" id="quantity"
										class="form-control input-number" value="1" min="1" max="10">
									<span class="input-group-btn">
										<button type="button" class="btn btn-success btn-number"
											data-type="plus" data-field="quant[2]">
											<span class="glyphicon glyphicon-plus"></span>
										</button>
									</span>
								</div>
								<div class="aa-prod-view-bottom">
									<a class="aa-add-to-cart-btn" href="#" id='cart'>Add To
										Cart</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="aa-product-details-bottom">
					<ul class="nav nav-tabs" id="myTab2">
						<li><a href="#detailView" data-toggle="tab">Detail View</a></li>
						<li><a href="#qna" data-toggle="tab">QnA</a></li>
						<li><a href="#review" data-toggle="tab">Reviews</a></li>
					</ul>


					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="detailView">
							<div class="pcontent" style="margin-left: 4%; margin-top: 5%">
								<div class="col-sm-12">${view[0].pcontent}</div>
							</div>
						</div>

						<div class="tab-pane fade" id="qna">
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
									<label for="qPassword">Password</label> <input type="password"
										class="form-control" id="qPassword" maxLength='4'
										placeholder="password(max length : 4)">
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



						<!-- review start -->
						<div class="tab-pane fade " id="review">
							<div class="aa-product-review-area">
								<ul class="aa-review-nav">
									<li>
										<div class="media">
											<div class="media-left">
												<a href="#"> <img class="media-object"
													src="/resources/themes/thema1/img/women/girl-1.png"
													alt="girl image">
												</a>
											</div>
											<div class="media-body">
												<c:forEach items="${review}" var="rvo">
													<!-- review display -->
													<div class="col-sm-10 showReview">
														<ul style="background-color: white;">
															<li><h3>${rvo.userid}(${rvo.rgrade}점)</h3></li>
															<li><h5>${rvo.rcontent}</h5>
																<h5>${rvo.rregdate}</h5></li>
															<br>
														</ul>
													</div>
													<!-- review display end-->
												</c:forEach>
											</div>
										</div>
									</li>
								</ul>
								<h4>Add a review</h4>
								<div class="aa-your-rating">
									<!--                      <p>Your Rating</p> -->
									<!--                      <a href="#"><span class="fa fa-star-o"></span></a> -->
									<!--                      <a href="#"><span class="fa fa-star-o"></span></a> -->
									<!--                      <a href="#"><span class="fa fa-star-o"></span></a> -->
									<!--                      <a href="#"><span class="fa fa-star-o"></span></a> -->
									<!--                      <a href="#"><span class="fa fa-star-o"></span></a> -->
									<input type="radio" id="mark_0_0" name="score_1" value="1">
									<span class="fa fa-star" style='color: #ff6600;'></span>&nbsp;
									<input type="radio" id="mark_0_1" name="score_1" value="2">
									<span class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span>&nbsp; <input
										type="radio" id="mark_0_2" name="score_1" value="3"> <span
										class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span>&nbsp; <input
										type="radio" id="mark_0_3" name="score_1" value="4"> <span
										class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span> <span
										class="fa fa-star" style='color: #ff6600;'></span>&nbsp; <input
										type="radio" id="mark_0_4" name="score_1" checked="checked"
										value="5"> <span class="fa fa-star"
										style='color: #ff6600;'></span> <span class="fa fa-star"
										style='color: #ff6600;'></span> <span class="fa fa-star"
										style='color: #ff6600;'></span> <span class="fa fa-star"
										style='color: #ff6600;'></span> <span class="fa fa-star"
										style='color: #ff6600;'></span>&nbsp;
								</div>
								<!-- review form -->
								<form action="" class="aa-review-form">
									<div class="form-group">
										<label for="message">Your Review</label>
										<textarea class="form-control" rows="3" id="message"></textarea>
									</div>
									<div class="form-group">
										<label for="name">Name</label> <input type="text"
											class="form-control" id="name" placeholder="Name">
									</div>
									<div class="form-group">
										<label for="email">Email</label> <input type="email"
											class="form-control" id="email"
											placeholder="example@gmail.com">
									</div>
									<button type="submit" class="btn btn-default aa-review-submit">Submit</button>
								</form>
							</div>
						</div>
					</div>
				</div>







				<!-- Related product -->
				<div class="aa-product-related-item">
					<h3>Related Products</h3>
					<ul class="aa-product-catg aa-related-item-slider">

						<!-- start single product item -->
						<li><figure> <a class="aa-product-img" href="#"><img
								src="/resources/themes/thema1/img/women/girl-7.png"
								alt="polo shirt img"></a> <a class="aa-add-card-btn" href="#"><span
								class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
							<h4 class="aa-product-title">
								<a href="#">This is Title</a>
							</h4>
							<span class="aa-product-price">$45.50</span> <span
								class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
							<div class="aa-product-hvr-content">
								<a href="#" data-toggle="tooltip" data-placement="top"
									title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
								<a href="#" data-toggle="tooltip" data-placement="top"
									title="Compare"><span class="fa fa-exchange"></span></a> <a
									href="#" data-toggle2="tooltip" data-placement="top"
									title="Quick View" data-toggle="modal"
									data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
							</div> <!-- product badge --> <span class="aa-badge aa-sale" href="#">SALE!</span>
						</li>
					</ul>
					<!-- quick view modal -->
					<div class="modal fade" id="quick-view-modal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<div class="row">

										<!-- Modal view slider -->
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="aa-product-view-slider">
												<div class="simpleLens-gallery-container" id="demo-1">
													<div class="simpleLens-container">
														<div class="simpleLens-big-image-container">
															<a class="simpleLens-lens-image"
																data-lens-image="/resources/themes/thema1/img/view-slider/large/girl-1.png">
																<img
																src="/resources/themes/thema1/img/view-slider/medium/girl-1.png"
																class="simpleLens-big-image">
															</a>
														</div>
													</div>
													<div class="simpleLens-thumbnails-container">
														<a href="#" class="simpleLens-thumbnail-wrapper"
															data-lens-image="/resources/themes/thema1/img/view-slider/large/girl-1.png"
															data-big-image="/resources/themes/thema1/img/view-slider/medium/girl-1.png">
															<img
															src="/resources/themes/thema1/img/view-slider/thumbnail/girl-1.png">
														</a> <a href="#" class="simpleLens-thumbnail-wrapper"
															data-lens-image="/resources/themes/thema1/img/view-slider/large/girl-1.png"
															data-big-image="/resources/themes/thema1/img/view-slider/medium/girl-1.png">
															<img
															src="/resources/themes/thema1/img/view-slider/thumbnail/girl-1.png">
														</a>
													</div>
												</div>
											</div>
										</div>
										<!-- Modal view content -->
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="aa-product-view-content">
												<h3>T-Shirt</h3>
												<div class="aa-price-block">
													<span class="aa-product-view-price">$34.99</span>
													<p class="aa-product-avilability">
														Avilability: <span>In stock</span>
													</p>
												</div>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Officiis animi, veritatis quae repudiandae quod nulla
													porro quidem, itaque quis quaerat!</p>
												<h4>Size</h4>
												<div class="aa-prod-view-size">
													<a href="#">S</a> <a href="#">M</a> <a href="#">L</a> <a
														href="#">XL</a>
												</div>
												<div class="aa-prod-quantity">
													<form action="">
														<select name="" id="">
															<option value="0" selected="1">1</option>
															<option value="1">2</option>
															<option value="2">3</option>
															<option value="3">4</option>
															<option value="4">5</option>
															<option value="5">6</option>
														</select>
													</form>
													<p class="aa-prod-category">
														Category: <a href="#">Polo T-Shirt</a>
													</p>
												</div>
												<div class="aa-prod-view-bottom">
													<a href="#" class="aa-add-to-cart-btn"><span
														class="fa fa-shopping-cart"></span>Add To Cart</a> <a href="#"
														class="aa-add-to-cart-btn">View Details</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!— /.modal-content —>
						</div>
						<!— /.modal-dialog —>
					</div>
					<!— / quick view modal —>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!— / product category —>

	<script>
	
	var ccnt = null;
	var color = null;
	var pno = ${view[0].pno};
	var size = null;
	var adminid = "${view[0].adminid}";
	
	$("#cart").on("click",function(){
		ccnt = $("#quantity").val();
		var formData = {"ccnt":ccnt,"pno":pno,"picolor":color,"pisize":size,"adminid":adminid};
		if(ccnt==null || color==null || size==null){
 	     	swal({
	     			title: "상품 상세 정보를 선택해주세요.",
	     	 		text: "",
	     			type: "error",
	     			timer: 1500,
	     			showConfirmButton: false
	     		});
		}else{
			swal({
				  title: "카트에 추가 하시겠습니까?",
				  text: "",
				  type: "info",
				  showCancelButton: true,
				  closeOnConfirm: false,
				  showLoaderOnConfirm: true,
				},
				function(){
				  setTimeout(function(){
					    $.ajax({      
					    	url: "/member/cartAdd", 
					        data: formData, 
					        dataType: "json",
					        type:"post",
					        complete:function(){   
				     	     	swal({
				  	     			title: "해당 상품을 카드에 추가 하였습니다.",
				  	     	 		text: "",
				  	     			type: "success",
				  	     			timer: 1500,
				  	     			showConfirmButton: false
				  	     		});
					        }
					    }); 
					    //ajax end
				  }, 1000);
				});

		}//End else
	});
	
	//사이즈 체크시 값 담기
	$(document).on("click",".pisize",function(){
		var thisSize = $(this); 
		size = thisSize.attr('name');
		$(".pisize").css("background-color","");
		thisSize.css("background-color","#922C2C");
	});

	
	// 색상 클릭시 해당 색상의 사이즈 별로 출력
	$(".colorInfo").on("click",function(event){
		$(".colorInfo").css("border-width","1px");
		$(this).css("border-width","5px");
		
		color = $(this).attr("name");
		var formData = {"pno":pno, "picolor":color};
		var str="";
	    $.ajax({      
	    	url: "/member/infoSize", 
	        data: formData, 
	        dataType: "json",
	        type:"get",
	        success:function(data){   
	        	$(".size").empty() ;
	            $.each(data, function(index) {
	                str += "<button style='padding: 5px 10px;' class='pisize' name = '"+ data[index].pisize +"'>" + (data[index].pisize) + "</button>";
	            });
	            $(".size").append(str);
	        }
	    });  
	});
	</script>


<%@include file="footer.jsp"%>

</html>