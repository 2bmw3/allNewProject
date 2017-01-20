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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="/resources/themes/thema1/js/bootstrap.js"></script>
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
					<!-- nav div start -->
					 <ul class="nav nav-tabs">
					    <li class="active"><a data-toggle="tab" href="#detailView">Detail View</a></li>
					    <li><a data-toggle="tab" href="#qna">QnA</a></li>
					    <li><a data-toggle="tab" href="#review">Review</a></li>
					  </ul>
					
					  <div class="tab-content">
					    <div id="detailView" class="tab-pane fade in active">
					   		<div class="col-sm-12">${view[0].pcontent}</div>
					    </div>
					    
					    <div id="qna" class="tab-pane fade">
					    	<h2>QnA</h2>
							<!--  QnA start -->
							  <div class="panel-group" id="accordion" style="margin-top: 2%;">
							   <c:forEach items="${qna}" var="qvo">		    
							    <div class="panel panel-default">
							      <div class="panel-heading">
							        <h4 class="panel-title">
							          <a data-toggle="collapse" data-parent="#accordion" href="#collapse${qvo.qno}">
							          	<i class="fa fa-lock" >  비공개 글입니다</i></a>
							        </h4>
							      </div>
							      <div id="collapse${qvo.qno}" class="panel-collapse collapse">
							        <div class="panel-body">
							        	<input type="text" id='questionPwcheck' maxlength="4" 
							        	placeholder='비밀번호를 입력해주세요' style="width: 70%;">
							        	<input id='questionPwcheckBtn' type="submit" class="btn btn-primary" value="확인" name="${qvo.qno}">
							        	<input type="hidden" value="${qvo.qcontent}">
							        	
								        </div>
								        <div class="panel-footer">${qvo.qwriter} / ${qvo.qregdate}</div>
								      </div>
								    </div>
								   </c:forEach>
								  </div>
								  <!-- QnA end --> 
								  <div class="row">
									<div class="col-sm-6">
									<input type="text" id='qwriter' name='qwriter' placeholder="Writer">
									</div>
									<div class="col-sm-3">
									<input type="password" id='qpw' name='qpw' placeholder="Password" maxlength="4">
									</div>
								</div>
							<textarea id='qcontent' name="qcontent" 
							style="height: 100px; width:100%;" placeholder='질문을 입력해주세요'></textarea>
							<input id='qsubmit' type="submit" class="btn btn-primary" value="Submit">
					    </div>
					    
					    <div id="review" class="tab-pane fade">
					      <h3>Review</h3>
					    </div>
					  </div>
				<!-- nav div end -->
				</div>
			<div class="clearfix"></div>
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
		
		//질문 등록
		$("#qsubmit").on("click",function(){
			
			var qwriter = $("#qwriter").val();
			var qpw = $("#qpw").val();
			var qcontent = $("#qcontent").val();
			var question = {"qwriter" : qwriter, "qpw" : qpw , "qcontent" : qcontent , "pno" : pno };
			
			$.ajax({
				url : "/questionWrite",
				data : question,
				dataType : 'text',
				type : "post",
				success : function(result) {
					var splitResult = result.split("#");
					swal("질문이 성공적으로 등록되었습니다!","","success");
					var str =  "<div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'>"
								+"<a data-toggle='collapse' data-parent='#accordion' href='#collapse"
								+splitResult[1]+"'><i class='fa fa-lock' >  비공개 글입니다</i></a>"
								+"</h4></div><div id='collapse"
								+splitResult[1]+"' class='panel-collapse collapse'><div class='panel-body'><input type='text' id='questionPwcheck' maxlength='4' placeholder='비밀번호를 입력해주세요' style='width: 70%;'>"
								+"<input id='questionPwcheckBtn' type='submit' class='btn btn-primary' value='확인' name='"
								+splitResult[1]+"'><input type='hidden' value='"+qcontent+"'></div><div class='panel-footer'>"+qwriter+" / "+splitResult[0]+"</div></div></div>"
					$("#accordion").prepend(str);
				}// end success
			});// end ajax
		});// end question submit
		
		// 질문 비밀번호 체크
		$(document).on('click', "#questionPwcheckBtn" , function(event){
			var qpwCheckBtn = $(this)[0];
			var qno = qpwCheckBtn.name;
			var inputPw = qpwCheckBtn.previousElementSibling.value;
			var qcontent = qpwCheckBtn.nextElementSibling.value;
			var pwCheck = {"qpw":inputPw, "qno":qno};
			
			$.ajax({
				url : "/questionPwCheck",
				data : pwCheck,
				dataType : 'text',
				type : "post",
				success : function(result) {
					var splitResult = result.split("#");
					
					if(splitResult[0] == "F"){
						swal("비밀번호가 틀립니다!","","error");
						$("#questionPwcheck").val("");
					}else if (splitResult[1] == "null"){						
						var str = "<h3>"+qcontent+"</h3>";
						qpwCheckBtn.parentElement.innerHTML = str;						
					}else{
						var qcontentStr = "<h3>"+qcontent+"</h3>"
						var str = "";
						for(var i = 1; i<splitResult.length-1; i++){
							str += "<hr/><b>Re: "+splitResult[i]+"</b>";
						}
						qpwCheckBtn.parentElement.innerHTML = (qcontentStr + str);
					}
				}// end success
			});// end ajax
		});// end questionPw check;
		

</script>
</html>