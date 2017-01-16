<%@include file="header.jsp" %>

<body class="shop_grid_page">
<!-- mobile menu -->
<div id="mobile-menu">
  <ul>
    <li><a href="index" class="home1">Home</a>
    </li>
    <li><a href="list">Women</a>
      <ul>
        <li><a href="list" class="">Accessories</a>
          <ul>
            <li><a href="list">Cocktail</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="list">Men</a>
      <ul>
        <li> <a href="list" class="">Clothing</a>
          <ul class="level1">
            <li class="level2 nav-6-1-1"> <a href="list">Coats &amp; Jackets</a> </li>
          </ul>
        </li>
      </ul>
    </li>
  </ul>
</div>
<!-- end mobile menu -->
<div id="page"> 
  <!-- Header -->
  <header>
    <div class="header-container">
      <div class="header-top">
        <div class="container">
          <div class="row">

            <!-- top links -->
            <div class="headerlinkmenu col-lg-8 col-md-7 col-sm-7 col-xs-6">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="login"><i class="fa fa-user"></i><span class="hidden-xs">My Account</span></a></div>
                <div class="cart"><a title="My Cart" href="cart"><i class="glyphicon glyphicon-shopping-cart "></i><span class="hidden-xs">Cart</span></a></div>
                <div class="login"><a href="login"><i class="fa fa-unlock-alt"></i><span class="hidden-xs">Log In</span></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-xs-12"> 
            <!-- Header Logo -->
            <div class="logo"><a title="e-commerce" href="index"><img alt="e-commerce" src="/resources/themes/thema4/images/logo.png"></a> </div>
            <!-- End Header Logo --> 
          </div>  <!--support client-->

        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 
  
  <!-- Navbar -->
  <nav>
    <div class="stick-logo"><a title="e-commerce" href="index"><img alt="logo" src="/resources/themes/thema4/images/stick-logo.png"></a> </div>
    <div class="container">
      <div class="row">
        <div class="mtmegamenu">
          <ul>
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="index">
                <div class="title title_font"><span class="title-text">Home</span></div>
                </a></div>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a class="active" href="list">
                <div class="title title_font"><span class="title-text">Women</span></div>
                </a></div>
              <ul class="menu-items col-xs-12">
                <li class="menu-item depth-1 menucol-1-5 ">
                  <div class="title title_font"> <a href="list"> Accessories </a></div>
                  <ul class="submenu">
                    <li class="menu-item">
                      <div class="title"> <a href="list"> Cocktail </a></div>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="list">
                <div class="title title_font"><span class="title-text">Men</span></div>
                </a></div>
              <ul class="menu-items col-md-9 col-xs-12">
                <li class="menu-item depth-1 category menucol-1-4 ">
                  <div class="title title_font"> <a href="list"> Clothing </a></div>
                  <ul class="submenu">
                    <li class="menu-item">
                      <div class="title"> <a href="list"> Coats &amp; Jackets </a></div>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="mt-root">
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- end nav --> 
  <!-- Breadcrumbs -->
  
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"> <a title="Go to Home Page" href="index">Home</a><span>&raquo;</span></li>
            <li class=""> <a title="Go to Home Page" href="list">Women</a><span>&raquo;</span></li>
            <li class="category13"><strong>Women Collections </strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
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