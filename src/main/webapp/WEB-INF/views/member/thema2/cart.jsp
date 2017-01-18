<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@include file="header.jsp"%>

<div class="ckeckout">
   <div class="container">
      <div class="ckeckout-top">
         <div class=" cart-items heading">
            <h3>Cart</h3>
            <div class="in-check">
               <ul class="unit">                  
                  <li ><span>Item</span></li>
                  <li><span>Product Name</span></li>
                  <li><span>Unit Price</span></li>
                  <li><span>Stock Status</span></li>
                  <div class="clearfix"></div>
               </ul>
               
               <ul class="cart-header">
                  <li class="ring-in"><a href="#"><img style="width:50%;" src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e" alt="img"></a></li>
                  <li><span>${vo.pname} / ${vo.picolor} / ${vo.pisize}</span></li>
                  <li><span>￦ ${vo.price}</span></li>
                  <li><span>${vo.ccnt}</span></li>
                  <li><img src="/resources/themes/thema2/images/close-1.png" style="margin:17%"></li>
                  <li class="ring-in"><a href="#"><img
                        src="/resources/themes/thema2/images/s-1.jpg" class="img-responsive" alt=""></a></li>
                  <div class="clearfix"></div>
               </ul>
               
               
            </div>
         </div>
      </div>
   </div>
</div>

<%@include file="footer.jsp"%>
</body>
<script>
   $(document).ready(function(c) {
      $('.close1').on('click', function(c) {
         $('.cart-header').fadeOut('slow', function(c) {
            $('.cart-header').remove();
         });
      });
   });
   $(document).ready(function(c) {
      $('.close2').on('click', function(c) {
         $('.cart-header1').fadeOut('slow', function(c) {
            $('.cart-header1').remove();
         });
      });
   });
   $(document).ready(function(c) {
      $('.close3').on('click', function(c) {
         $('.cart-header2').fadeOut('slow', function(c) {
            $('.cart-header2').remove();
         });
      });
   });
</script>
</html>