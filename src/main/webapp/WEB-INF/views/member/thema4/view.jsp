<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>

<body class="product-page">
	
		<!-- Main Containerd -->
		<div class="main-container col2-right-layout">
			<div class="container">
				<div class="row">
					<div class="col-main col-sm-12">
						<div class="product-view-area">
							<div
								class="product-big-image col-xs-12 col-sm-9 col-lg-5 col-md-5">
								<div class="large-image">
									<a class="cloud-zoom" id="magni_img"> <img
										style="width: 500px; height: 500px;"
										src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${view[0].pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e" /></a>
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
													style="width: 75px; height: 75px;"src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.pphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e"
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
										<p>
											<b>GENDER :</b> ${view[0].pgender}
										</p>
										<p>
											<b>KIND :</b> ${view[0].pkind}
										</p>
										<p>
											<b>SALES RATE :</b> ${view[0].sellcnt}
										</p>
									</div>
									<div class="price-box">
										<p>
											<b>PRICE : </b>${view[0].price}원
										</p>
									</div>
									<div class="product-color-size-area">
										<div class="color-area">
											<h2 class="saider-bar-title">Color</h2>
											<c:forEach items="${infoColor}" var="vo" varStatus="status">
												<image style="border-width : 1px; margin-top:1%; border-style : solid;"
													src='/resources/admin/images/color_info/${vo.picolor}.jpg'
													class='colorInfo' name='${vo.picolor}'></image>
											</c:forEach>
										</div>
										<div class="size-area">
											<h2 class="saider-bar-title">Size</h2>
											<div>
												<ul class="size">
													<li>색상을 선택 해주세요</li>
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
													<input type="text" class="qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
													<div
														onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
														class="inc qtybutton">
														<i class="fa fa-plus">&nbsp;</i>
													</div>
												</div>
											</div>
											<button class="button pro-add-to-cart" id="cart" title="Add to Cart"
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
	<script>
	
	var ccnt = null;
	var color = null;
	var pno = ${view[0].pno};
	var size = null;
	var adminid = "${view[0].adminid}";
	
	$("#cart").on("click",function(){
		ccnt = $("#qty").val();
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
				  	     			title: "해당 상품을 카트에 추가 하였습니다.",
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
		size = null;
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
	                str += "<li><button style='padding: 5px 10px;' class='pisize' name = '"+ data[index].pisize +"'>" + (data[index].pisize) + "</button></li>";
	            });
	            $(".size").append(str);
	        }
	    });  
	});
	</script>
	<%@include file="footer.jsp"%>
