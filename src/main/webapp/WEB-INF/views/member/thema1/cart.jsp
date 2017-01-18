<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>  

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${cart}" var="vo">
                      <tr>
                      		
                        <td><a class="remove"  href="#"><fa class="fa fa-close" id="remove" value = '${vo.cno}'></fa></a></td>
                        <td><a href="#"><img src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.ptitlephoto}?alt=media&token=42abbd59-4fb8-4db9-8c06-88d563ca1b6e" alt="img"></a></td>
                        <td>
                        	<a class="aa-cart-title">${vo.pname}</a>
                        	<a> / ${vo.picolor} / ${vo.pisize}</a>
                        </td>
                        <td>$ ${vo.price}</td>
                        <td><input class="aa-cart-quantity" type="number" value='${vo.ccnt}' min='0'></td>
                        <td>$ ${vo.price}</td>
                      </tr>
                      </c:forEach>
                      </tbody>
                  </table>
                </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Cart Totals</h4>
               <table class="aa-totals-table" style='max-width: 100%;'>
                 <tbody>
                   <tr>
                     <th>Total</th>
                     <td>$450</td>
                   </tr>
                 </tbody>
               </table>
               <a href="checkout" class="aa-cart-view-btn">Proced to Checkout</a>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
 <script>
 /* firebase script */
 var config = {
    apiKey : "AIzaSyCCPgBU1lxPq7PVclQyoN5lUX3nFgtXClQ",
    authDomain : "project-26bd6.firebaseapp.com",
    databaseURL : "https://project-26bd6.firebaseio.com",
    storageBucket : "project-26bd6.appspot.com",
    messagingSenderId : "544848311496"
 };
 firebase.initializeApp(config);

 // Get a reference to the storage service, which is used to create
	// references in your storage bucket
 var storage = firebase.storage();

 // Create a storage reference from our storage service
 var storageRef = storage.ref();
 </script>
 <script>
 $("#remove").click(function(event){ 
	 var cno = ($("#remove").val());
	 console.log(cno);
	 var formData = {"cno" : cno}
	 $.ajax({	      
	        type : 'post',
	        url : "cartDelete",	      
	        data : formData,
            dataType : "JSON",	      
            complete : function () {
	           	alert("ss");
	            }             
	    });
});
 </script>

<%@include file="footer.jsp"%>

</html>

