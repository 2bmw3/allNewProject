<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>


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
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/themes/thema1/img/women/girl-2.png" alt="img"></a></td>
                        <td>
                        	<a class="aa-cart-title">one piece</a>
                        	<a> / red / F</a>
                        </td>
                        <td>$250</td>
                        <td><input class="aa-cart-quantity" type="number" value="0" min='0'></td>
                        <td>$250</td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/themes/thema1/img/women/girl-3.png" alt="img"></a></td>
                        <td><a class="aa-cart-title">Polo T-Shirt</a></td>
                        <td>$150</td>
                        <td><input class="aa-cart-quantity" type="number" value="0" min='0'></td>
                        <td>$150</td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/themes/thema1/img/women/girl-7.png" alt="img"></a></td>
                        <td><a class="aa-cart-title">Polo T-Shirt</a></td>
                        <td>$50</td>
                        <td><input class="aa-cart-quantity" type="number" value="0" min='0'></td>
                        <td>$50</td>
                      </tr>
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

<%@include file="footer.jsp"%>

</html>

