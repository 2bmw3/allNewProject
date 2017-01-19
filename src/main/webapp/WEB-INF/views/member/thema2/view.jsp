<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script defer src="/resources/themes/thema2/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="/resources/themes/thema2/css/flexslider.css" type="text/css" media="screen" />

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
								<ul class="product-colors" id="product-colors">
									<h3>available Colors ::</h3>
									<c:forEach items="${infoColor}" var="vo" varStatus="status">
										<image style="border-width : 1px; border-style :solid;" src='/resources/admin/images/color_info/${vo.picolor}.jpg' class='colorInfo' name='${vo.picolor}'></image>
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
										<select id='quantity'>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
											<option>7</option>
											<option>8</option>
											<option>9</option>
											<option>10</option>
										</select>
									</ul>
								</div>
								<div class="clearfix"></div>
								<div class="single-but item_add">
									<input type="submit" id='cart' value="Add to cart" />
									 <input type="submit" id='order' value="Order now" />
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
				<li><a href="#review" data-toggle="tab"><span>QnA</span></a></li>
				<li><a href="#qna" data-toggle="tab"><span>Reviews</span></a></li>
				<div class="clearfix"></div>
			</ul>
			
			
		</div>
<!-- Tab panes -->
					<div class="tab-content">

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
												<img class="media-object"
													src="/resources/themes/thema1/img/women/girl-1.png"
													alt="girl image">
											</div>
											<div class="media-body">
											<h4 id='emptyReview'>리뷰가 아직 없어요 ㅠㅠ 리뷰를 남겨주세요!</h4>
												<c:forEach items="${review}" var="rvo">
												
												<div id = 'showReview'>
													<!-- review display -->
													<div class='col-sm-10 showReview'>
														<ul style='background-color: white;'>
															<li><h3>${rvo.userid}(${rvo.rgrade}점)</h3></li>
															<li><h5>${rvo.rcontent}</h5>
																<h5>${rvo.rregdate}</h5></li>
																
															<li>
															<img class = 'reviewImg' 
															src=
															'https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/review%2F${rvo.rphoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e'
															 style = 'width:100px; height100px;'></li>
															<br>
														</ul>
													</div>
													<!-- review display end-->
												</div>
												</c:forEach>
											</div>
										</div>
									</li>
								</ul>
								<div id = 'rate'class="aa-your-rating">
									
								</div>
								<!-- review form -->
								<form action="" class="aa-review-form">
									<div class="form-group">
										<span class="star-input" >
										  <span class="input">
										    <input type="radio" name="star-input" id="p2" value="1"><label for="p2">1</label>
										    <input type="radio" name="star-input" id="p4" value="2"><label for="p4">2</label>
										    <input type="radio" name="star-input" id="p6" value="3"><label for="p6">3</label>
										    <input type="radio" name="star-input" id="p8" value="4"><label for="p8">4</label>
										    <input type="radio" name="star-input" id="p10" value="5"><label for="p10">5</label>
										
										  </span>
										  <output for="star-input" ><b>0</b>점</output>
										</span>
										<textarea class="form-control" rows="3" id="reContent"></textarea>
										<input type='hidden' id='rePhoto' name = 'rphoto'> 
										<input type='file' id = 'photoFile'/>
									</div>
									<button class="btn btn-default aa-review-submit" id = 'reviewBtn'>Submit</button>
								</form>
							</div>
						</div>
					</div>
	</div>

	<%@include file="footer.jsp"%>
	<script>	
	
	var ccnt = null;
	var color = null;
	var pno = ${view[0].pno};
	var size = null;
	var adminid = "${view[0].adminid}";
	
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});

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
					  	     			title: "해당 상품을 카트에 추가 하였습니다.",
					  	     	 		text: "",
					  	     			type: "success",
					  	     			timer: 1000,
					  	     			showConfirmButton: false
					  	     		});
						        }
						    }); 
						    //ajax end
					  }, 500);
					});
 
			}//End else
		});
		
		$("#order").on("click",function(){
			ccnt = $("#quantity").val();
			var formData = {"ocnt":ccnt,"pno":pno,"picolor":color,"pisize":size,"adminid":adminid};
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
					  title: "주문 하시겠습니까?",
					  text: "",
					  type: "info",
					  showCancelButton: true,
					  closeOnConfirm: false,
					  showLoaderOnConfirm: true,
					},
					function(){
					  setTimeout(function(){
						    $.ajax({      
						    	url: "/member/orderWrite", 
						        data: formData, 
						        dataType: "json",
						        type:"post",
						        complete:function(){   
					     	     	swal({
					  	     			title: "결제되었습니다",
					  	     	 		text: "",
					  	     			type: "success",
					  	     			timer: 1000,
					  	     			showConfirmButton: false
					  	     		});
					     	     	location.href='order?shopname=${param.shopname}';
						        }
						    }); 
						    //ajax end
					  }, 500);
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
</html>