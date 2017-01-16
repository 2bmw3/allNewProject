<%@include file="header.jsp"%>

<body class="shopping_cart_page">
<!-- mobile menu -->
<div id="mobile-menu">
  <ul>
    <li><a href="index" class="home1">Home</a>
    </li>
    <li><a href="list">Women</a>
      <ul>
        <li><a href="list" class="">Accessories</a>

        </li>
        <li><a href="list">Dresses</a>

        </li>
        <li> <a href="list">Shoes</a>

        </li>
        <li> <a href="list">Jwellery</a>

        </li>
        <li> <a href="list">Dresses</a>

        </li>
        <li> <a href="list">Swimwear</a>

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
                <div class="myaccount"><a title="My Account" href="/memberthema4_login"><i class="fa fa-user"></i><span class="hidden-xs">My Account</span></a></div>
                <div class="login"><a href="/memberthema4_login"><i class="fa fa-unlock-alt"></i><span class="hidden-xs">Log In</span></a></div>
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

            <li class="mt-root">

            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- end nav --> 

  <!-- Main Container -->
  <section class="main-container col1-layout wow bounceInUp animated">
    <div class="main container">
      <div class="col-main">
        <div class="cart">

          <div class="page-content page-order">
            <div class="order-detail-content">
              <div class="table-responsive">
                <table class="table table-bordered cart_summary">
                  <tbody>
                    <tr>
                      <td class="cart_product"><a href="#"><img src="/resources/themes/thema4/images/products/img01.jpg" alt="Product"></a></td>
                      <td class="cart_description"><p class="product-name"><a href="#">Ipsums Dolors Untra </a></p>
                        <small><a href="#">Color : Red</a></small><br>
                        <small><a href="#">Size : M</a></small></td>
                      <td class="availability in-stock"><span class="label">In stock</span></td>
                      <td class="price"><span>$49.88</span></td>
                      <td class="qty"><input class="form-control input-sm" type="text" value="1"></td>
                      <td class="price"><span>$49.88</span></td>
                      <td class="action"><a href="#"><i class="icon-close"></i></a></td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="2" rowspan="2"></td>
                      <td colspan="3">Total products (tax incl.)</td>
                      <td colspan="2">$237.88 </td>
                    </tr>
                    <tr>
                      <td colspan="3"><strong>Total</strong></td>
                      <td colspan="2"><strong>$237.88 </strong></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
              <div class="cart_navigation"> <a class="continue-btn" href="#"><i class="fa fa-arrow-left"> </i>&nbsp; Continue shopping</a> <a class="checkout-btn" href="#"><i class="fa fa-check"></i> Proceed to checkout</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<%@include file="footer.jsp"%>