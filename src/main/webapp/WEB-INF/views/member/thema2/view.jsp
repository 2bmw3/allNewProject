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
									<input type="submit" id='order' value="Add to cart" />
									 <input type="submit" value="Order now" />
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

		$("#order").on("click",function(){
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
</html>