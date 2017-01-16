<%@include file="header.jsp"%>

<body class="cms-index-index cms-home-page home-7">
 
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
  <!-- newsletter popup -->
  <div class="newsletter-popup" style="display:none;">
    <div class="newsletter-bg newsletter-ready"></div>
    <div class="newsletter-wrap newsletter-close-btn-in">
      <div class="newsletter-container">
        <div class="newsletter-content">
          <div class="news-inner">
            <div class="news-popup">
              <div class="popup-title">
                <h2>Newsletter <span class="text-main">Popup</span></h2>
                <div class="divider divider-icon divider-md">&#x268A;&#x268A; &#x2756; &#x268A;&#x268A;</div>
                <p class="notice">Sign up to our email newsletter to be the first to hear about great offers &amp; more</p>
              </div>
              <form class="form-subscribe">
                <input placeholder="Sign up your email..." type="text">
                <button class="button"><i class="fa fa-envelope"></i> SUBSCRIBE</button>
              </form>
              <div class="checkbox">
                <label>
                  <input value="" type="checkbox">
                  DON’T SHOW THIS POPUP AGAIN</label>
              </div>
            </div>
            <button title="Close (Esc)" type="button" class="newsletter-close">×</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- end newsletter popup --> 
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
          <div class="col-xs-12 col-sm-4 col-md-3"> 
            <!-- Search -->
            
            <div class="top-search">
              <div id="search">
                <div class="input-group">
                  <input name="search" placeholder="Search" class="form-control" type="text">
                  <button type="button" class="btn-search"><i class="fa fa-search"></i></button>
                </div>
              </div>
            </div>
            
            <!-- End Search --> 
          </div>
          <div class="col-sm-3 col-xs-12 col-md-6"> 
            <!-- Header Logo -->
            <div class="logo"><a title="e-commerce" href="index"><img alt="e-commerce" src="/resources/themes/thema4//images/logo-black.png"></a> </div>
            <!-- End Header Logo --> 
          </div>
          <!-- top cart -->
        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 
  
  <!-- Navbar -->
  <nav>
    <div class="stick-logo"><a title="e-commerce" href="list"><img alt="logo" src="/resources/themes/thema4//images/stick-logo.png"></a> </div>
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
              <div class="mt-root-item"><a href="list">
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
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- end nav -->
  <!--
        Home Slider
        ==================================== -->
		
		<section id="home-slider">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">
				
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">

						<div class="bg-img bg-img-1"></div>

						<div class="slide-caption">
                            <div class="caption-content">
                                <h2 class="animated fadeInDown">FASHION & DESIGN  Women's</h2>
                                <span class="animated fadeInDown hidden-xs"> Lorem Ipsum is that it has a more-or-less normal.</span>
                                <a href="#" class="btn btn-blue btn-effect">View Collection</a>
                            </div>
                        </div>
						
					</div>

				</div><!-- /sl-slider -->

                <!-- 
                <nav id="nav-arrows" class="nav-arrows">
                    <span class="nav-arrow-prev">Previous</span>
                    <span class="nav-arrow-next">Next</span>
                </nav>
                -->
                
                <div id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a href="javascript:;" class="sl-prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a href="javascript:;" class="sl-next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </div>
                

				<div id="nav-dots" class="nav-dots visible-xs visible-sm hidden-md hidden-lg">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
				</div>

			</div><!-- /slider-wrapper -->
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->  
<!-- Product Box Area -->
		
        
        <div class="product-box-area">
	
				<!-- Product Box -->
				<div class="product-box">
					<!-- Single Product Box -->
					<div class="single-product-box">
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/men.jpg" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>Men’s Wear</h2>
							<p>Metric is not over with fashion fever week! </p>
							<a href="list">shop now</a>
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-two">
						<div class="product-box-content">				
							<h2>Women’s Wear</h2>
							<p>The Most Popular Store 2015/2016</p>
							<a href="list">let's shop now!</a>
						</div>
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/women.jpg" alt="product"></a>							
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-three">
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/camerea.jpg" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>Electronic</h2>
							<p>the New & Exiting 2016 Collection </p>
							<a href="list">View All</a>
						</div>
					</div>
                    
                    
                    
				</div><!-- End Product Box -->
              
	
		</div>
  <div class="product-box-area">
	
				<!-- Product Box -->
				<div class="product-box">
					<!-- Single Product Box -->
					<div class="single-product-box">
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/shoes.jpg" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>CASUAL SHOES</h2>
							<p>Allen casual shoes collection 2016 </p>
							<a href="list">shop now</a>
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-two">
						<div class="product-box-content">				
							<h2>BEAUTIFUL & FRESH</h2>
							<p>Get more jewelry accessories from Allen spring jewelry Collection 2016</p>
							<a href="list">let's shop now!</a>
						</div>
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/women-f.jpg" alt="product"></a>							
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-three">
						<div class="product-box-img">
							<a href="list"><img src="/resources/themes/thema4//images/handbags.jpg" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>Handbags & Wallets</h2>
							<p>the New & Exiting 2016 Collection </p>
							<a href="list">View All</a>
						</div>
					</div>
				</div><!-- End Product Box -->
		</div>
        <!-- End Product Box Area -->
<%@include file="footer.jsp"%>