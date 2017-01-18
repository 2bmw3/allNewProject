<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<!-- Start slider -->
<section id="aa-slider">
    <div class="aa-slider-area">
        <div id="sequence" class="seq">
            <ul class="seq-canvas">
                <!-- single slide item -->
                <li>
                    <div class="seq-model"> <!-- slider baner ::: 1920 x 700 -->
                        <img style = 'width : 100%; height : 700px;' data-seq src="/resources/themes/thema1/img/slider/1.jpg" alt="Men slide img"/>
                    </div>
                    <div class="seq-title">
<!--                         <span data-seq>Save Up to 75% Off</span> -->
<!--                         <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a> -->
                    </div>
                </li>
                <!-- single slide item -->
                <li>
                    <div class="seq-model">
                        <img style = 'width : 100%; height : 700px;' data-seq src="/resources/themes/thema1/img/slider/2.jpg" alt="Wristwatch slide img"/>
                    </div>
                    <div class="seq-title">
<!--                         <span data-seq>Save Up to 40% Off</span> -->
<!--                         <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a> -->
                    </div>
                </li>
                <!-- single slide item -->
                <li>
                    <div class="seq-model">
                        <img style = 'width :100%; height : 700px;' data-seq src="/resources/themes/thema1/img/slider/3.jpg" alt="Women Jeans slide img"/>
                    </div>
                    <div class="seq-title">
<!--                         <span data-seq>Save Up to 75% Off</span> -->
<!--                         <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a> -->
                    </div>
                </li>
                <!-- single slide item -->
                <li>
                    <div class="seq-model">
                        <img style = 'width : 100%; height : 700px;' data-seq src="/resources/themes/thema1/img/slider/4.jpg" alt="Shoes slide img"/>
                    </div>
                    <div class="seq-title">
<!--                         <span data-seq>Save Up to 75% Off</span> -->
<!--                         <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a> -->
                    </div>
                </li>
                <!-- single slide item -->
                <li>
                    <div class="seq-model">
                        <img style = 'width : 100%; height : 700px;' data-seq src="/resources/themes/thema1/img/slider/5.jpg" alt="Male Female slide img"/>
                    </div>
                    <div class="seq-title">
<!--                         <span data-seq>Save Up to 50% Off</span> -->
<!--                         <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a> -->
                    </div>
                </li>
            </ul>
            <!-- slider navigation btn -->
            <!--
                    <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                      <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
                      <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
                    </fieldset>
            -->
        </div>
    </div>
</section>
<!-- / slider -->


<!-- Start Promo section -->
<section id="aa-promo">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-promo-area">
                    <div class="row">
                    
                    
                        <!-- promo left -->
                        <!-- new product banner size ::: 450 x 450  -->
                        <div class="col-md-5 no-padding">
                            <div class="aa-promo-left">
                                <div class="aa-promo-banner">
                                    <img src="/resources/themes/thema1/img/promo-banner-1.jpg" alt="img">
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        <!-- promo right -->
                        <!-- hit product banner size ::: 300 x 220 -->
                        <div class="col-md-7 no-padding">
                            <div class="aa-promo-right">
                            
                            <!-- 하나 끝! -->
<%--                             <c:forEach items="${index}" var="vo" varStatus="status"> --%>
                                <div class="aa-single-promo-right">
                                    <div class="aa-promo-banner"> 
                                        <img src="/resources/themes/thema1/img/promo-banner-3.jpg" alt="img">
                                        <div class="aa-prom-content">
                                            <span>10% Off</span>
                                            <h4 style='text-align: center;'><a href="#">Outer</a></h4>
                                        </div>
                                    </div>
                                </div>
<%--                              </c:forEach> --%>
                            </div>
                        </div>
                         <!-- promo right -->
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Promo section -->


<!-- quick view modal -->
<div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="row">
                
                
                    <!-- Modal view slider -->
                	<!-- modal slider large size ::: 900 x 1024 -->
                	<!-- modal slider medium size ::: 250 x 300 -->
                	<!-- modal slider thumbnail size ::: 45 x 55 -->
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="aa-product-view-slider">
                            <div class="simpleLens-gallery-container" id="demo-1">
                                <div class="simpleLens-container">
                                    <div class="simpleLens-big-image-container">
                                        <a class="simpleLens-lens-image"
                                           data-lens-image="/resources/themes/thema1/img/view-slider/large/girl-1.png">
                                            <img src="/resources/themes/thema1/img/view-slider/medium/girl-1.png"
                                                 class="simpleLens-big-image">
                                        </a>
                                    </div>
                                </div>
                                <div class="simpleLens-thumbnails-container">
                                    <a href="#" class="simpleLens-thumbnail-wrapper"
                                       data-lens-image="/resources/themes/thema1/img/view-slider/large/girl-1.png"
                                       data-big-image="/resources/themes/thema1/img/view-slider/medium/girl-1.png">
                                        <img src="/resources/themes/thema1/img/view-slider/thumbnail/girl-1.png">
                                    </a>
                                    <a href="#" class="simpleLens-thumbnail-wrapper"
                                       data-lens-image="/resources/themes/thema1/img/view-slider/large/polo-shirt-2.png"
                                       data-big-image="/resources/themes/thema1/img/view-slider/medium/polo-shirt-2.png">
                                        <img src="/resources/themes/thema1/img/view-slider/thumbnail/polo-shirt-2.png">
                                    </a>

                                    <a href="#" class="simpleLens-thumbnail-wrapper"
                                       data-lens-image="/resources/themes/thema1/img/view-slider/large/polo-shirt-4.png"
                                       data-big-image="/resources/themes/thema1/img/view-slider/medium/polo-shirt-4.png">
                                        <img src="/resources/themes/thema1/img/view-slider/thumbnail/polo-shirt-4.png">
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
                                <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                            </div>
                            <p>products content</p>
                            <h4>Size</h4>
                            <div class="aa-prod-view-size">
                                <a href="#">S</a>
                                <a href="#">M</a>
                                <a href="#">L</a>
                                <a href="#">XL</a>
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
                                <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To
                                    Cart</a>
                                <a href="#" class="aa-add-to-cart-btn">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.modal-content -->
        
        
        
    </div><!-- /.modal-dialog -->
</div><!-- / quick view modal -->
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- / Products section -->


<!-- popular section -->
<section id="aa-popular-category">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="aa-popular-category-area">
                        <!-- start prduct navigation -->
                        <ul class="nav nav-tabs aa-products-tab">
                            <li class="`"><a href="#popular" data-toggle="tab">Popular</a></li>
                            <li><a href="#latest" data-toggle="tab">Latest</a></li>
                        </ul>
                        
                        
                        <!-- Tab panes -->
                        <!-- list products size ::: 250 x 300 -->
                        <div class="tab-content">
                            <!-- Start men popular category -->
                            <div class="tab-pane fade in active" id="popular">
                                <ul class="aa-product-catg aa-popular-slider">
                                
								<!--인기상품 시작 -->
                                	<c:forEach items="${hitItem}" var="vo">
                                    <li>
                                        <figure>
                                            <a class="aa-product-img" 
                                            	href="/member/thema1/view?pno=${vo.pno}">
                                           	 <img src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.ptitlephoto}?alt=media&token=5efdca0d-caa2-4c84-b3d8-23683e4f3164"
                                           	  style="height:20em; display: block; margin-left: auto; margin-right: auto; ">
                                            </a>
                                            <a class="aa-add-card-btn" href="#">
                                            <span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                            <figcaption>
                                                <h4 class="aa-product-title">
                                                <a href="#">${vo.pname}</a></h4>
                                                <span class="aa-product-price">${vo.price}원</span>
                                            </figcaption>
                                        </figure>
                                        <div class="aa-product-hvr-content">
                                            <a href="/member/thema1/view?pno=${vo.pno}" data-toggle2="tooltip" data-placement="top" title="Quick View" 
                                            	data-toggle="modal" data-target="#quick-view-modal">
                                           	<span class="fa fa-search"></span></a>
                                        </div>
                                    </li>
                                   </c:forEach>
                              	<!--인기상품 끝 -->
                                   
                                </ul>
                                <a class="aa-browse-btn" href="products">Browse all Product 
                                <span class="fa fa-long-arrow-right"></span></a>
                            </div>
                            <!-- / popular product category -->
                          
                            <!-- start latest product category -->
                            <div class="tab-pane fade" id="latest">
                                <ul class="aa-product-catg aa-latest-slider">
                                    <!-- start single product item -->
                                    
                                    <!--최근상품 시작 -->
                                	<c:forEach items="${newItem}" var="vo">
                                    <li>
                                        <figure>
                                            <a class="aa-product-img" 
                                            	href="/member/thema1/view?pno=${vo.pno}">
                                           	 <img src="https://firebasestorage.googleapis.com/v0/b/project-26bd6.appspot.com/o/products%2F${vo.ptitlephoto}?alt=media&token=5efdca0d-caa2-4c84-b3d8-23683e4f3164"
                                           	  style="height:20em; display: block; margin-left: auto; margin-right: auto; ">
                                            </a>
                                            <a class="aa-add-card-btn" href="#">
                                            <span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                            <figcaption>
                                                <h4 class="aa-product-title">
                                                <a href="#">${vo.pname}</a></h4>
                                                <span class="aa-product-price">${vo.price}원</span>
                                            </figcaption>
                                        </figure>
                                        <div class="aa-product-hvr-content">
                                            <a href="/member/thema1/view?pno=${vo.pno}" data-toggle2="tooltip" data-placement="top" title="Quick View" 
                                            	data-toggle="modal" data-target="#quick-view-modal">
                                           	<span class="fa fa-search"></span></a>
                                        </div>
 										<span class="aa-badge aa-hot" href="#">NEW</span>
                                    </li>
                                   </c:forEach>
                              	<!--최근상품 끝 -->

                                </ul>
                                <a class="aa-browse-btn" href="#">Browse all Product <span
                                        class="fa fa-long-arrow-right"></span></a>
                            </div>
                            <!-- / latest product category -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="footer.jsp"%>
</html>
