<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>

<body class="shop_grid_page">

  <!-- Main Container -->
  <div class="main-container col2-right-layout">
    <div class="container">
      <div class="row">
        <div class="col-main col-sm-9">
          <div class="page-title">
            <h2>Women Collections</h2>
          </div>
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#x"><img alt="" src="/resources/themes/thema4/images/cat-slider-img1.jpg"></a>
                    <div class="inner-info">
                      <div class="cat-img-title"> <span>Fashion Current Sale Item</span>
                        <h2 class="cat-heading"><strong>UP TO 50% OFF</strong></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
                        <a class="info" href="#">shop Now</a> </div>
                    </div>
                  </div>
                  <!-- End Item --> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#x"><img alt="" src="/resources/themes/thema4/images/cat-slider-img2.jpg"></a> </div>
                  
                  <!-- End Item --> 
                  
                </div>
              </div>
            </div>
          </div>
          <div class="toolbar">
            <div class="view-mode">
              <ul>
                <li class="active"> <a href="list"> <i class="fa fa-th-large"></i> </a> </li>
                <li> <a href="list"> <i class="fa fa-th-list"></i> </a> </li>
              </ul>
            </div>
            <div class="sorter">
              <div class="short-by">
                <label>Sort By:</label>
                <select>
                  <option selected="selected">Position</option>
                  <option>Name</option>
                  <option>Price</option>
                  <option>Size</option>
                </select>
              </div>
              <div class="short-by page">
                <label>Show:</label>
                <select>
                  <option selected="selected">12</option>
                  <option>16</option>
                  <option>20</option>
                  <option>30</option>
                </select>
              </div>
            </div>
          </div>
          <div class="product-grid-area">
            <ul class="products-grid">
              <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 wow fadeInUp">
                <div class="product-item">
                  <div class="item-inner">
                    <div class="product-thumbnail">
                      <div class="icon-new-label new-right">New</div>
                      <div class="pr-img-area">
                        <figure> <img class="first-img" src="/resources/themes/thema4/images/products/img12.jpg" alt=""> <img class="hover-img" src="/resources/themes/thema4/images/products/img12.jpg" alt=""></figure>
                        <button type="button" class="add-to-cart-mt"> <i class="fa fa-shopping-cart"></i><span> Add to Cart</span> </button>
                      </div>
                      <div class="pr-info-area">
                        <div class="pr-button">
                          <div class="mt-button quick-view"> <a href="view"> <i class="fa fa-search"></i> </a> </div>
                        </div>
                      </div>
                    </div>
                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"> <a title="Ipsums Dolors Untra" href="view">Ipsums Dolors Untra </a> </div>
                        <div class="item-content">
                          <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                          <div class="item-price">
                            <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="pagination-area wow fadeInUp">
            <ul>
              <li><a class="active" href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Main Container End -->
 <%@include file="footer.jsp"%>