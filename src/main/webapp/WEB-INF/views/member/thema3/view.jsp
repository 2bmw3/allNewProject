<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>

    ul {
        list-style: none;
        margin: 0;
        padding: 0;

    }

    #li {
        display: inline-block;

    }

    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
        width: 400px;
        height: 400px;
        margin: auto;
    }

    ul.unit {
        background: lavender;
        padding: 1em;

    }

    ul.unit li {
        display: inline-block;
        width: 10%;
        text-align: center;
    }

    ul.uli {
        padding: 1em;
    }

    ul.uli li {
        display: inline-block;
        width: 10%;
        text-align: center;
    }
</style>

<body>
<div class="container">
    <div class="row animate-box">
        <div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
            <h2>
                <span>View</span>
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-7  col-md-offset-1" style="margin: 0px">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li id="li" data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li id="li" data-target="#myCarousel" data-slide-to="1"></li>
                    <li id="li" data-target="#myCarousel" data-slide-to="2"></li>
                    <li id="li" data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">

                        <img src="/resources/themes/thema3/images/sample/470290_1_500.jpg">
                    </div>

                    <div class="item">
                        <img src="/resources/themes/thema3/images/sample/465579_2_500.jpg">
                    </div>

                    <div class="item">
                        <img src="/resources/themes/thema3/images/sample/438223_3_500.jpg">
                    </div>

                    <div class="item">
                        <img src="/resources/themes/thema3/images/sample/470290_1_500.jpg">
                    </div>
                    <div class="col-sm-offset-1" style="float: left">
                        <a class="left" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon">&#xe079;</span>
                        </a>
                    </div>
                    <div class="col-sm-1" style="float: right; padding: 0px">
                        <a class="right" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon">&#xe080;</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3" style="padding:0px;">
            <div class="title title-pin text-center">
                <h3>Product Name</h3>
                <hr>
            </div>
            <section>
                <p>
                    <b>Kind:</b>&nbsp; Top
                </p>
                <p>
                    <b>Price:</b> &nbsp;￦ 10000
                </p>
                <p>
                    <b>Color:</b> &nbsp;
                    <image src='/resources/themes/thema3/images/color_info/red.jpg' class='colorInfo' id='red'/>
                    <image src='/resources/themes/thema3/images/color_info/orange.jpg' class='colorInfo' id='orange'/>
                    <image src='/resources/themes/thema3/images/color_info/yellow.jpg' class='colorInfo' id='yellow'/>
                </p>
                <p>
                    <b>Size:</b> &nbsp;
                    <select>
                        <option></option>
                        <option>S</option>
                        <option>M</option>
                        <option>L</option>
                        <option>XL</option>
                    </select>
                </p>
                <p>
                    <b>Quantity:</b> &nbsp;
                    <input type="number" name="quantity" min="1" max="10" style="width: 47px;height: 23px;">
                </p>
            </section>

            <hr>
            <input type="submit" id="submit" class="btn btn-primary" value="Add Cart" style="width: 100%">
            <input type="submit" id="submit" class="btn btn-primary" value="Order" style="width: 100%;">
        </div>
    </div>
    <br>
    <div role="tabpanel">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab"
                                                      data-toggle="tab">Description</a></li>
            <li role="presentation"><a href="#qna" aria-controls="qna" role="tab" data-toggle="tab">QnA</a></li>
            <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">Review</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="description">
                <br>
                <div class="col-md-12 col-md-offset-2 ">
                    <div class="col-sm-8">
                        <p>Product Content hace a good time we can do it boom boom
                            Think like a man of action and act like man of thought.
                            By doubting we come at the truth.
                        </p>
                    </div>
                    <img src="/resources/themes/thema3/images/sample/16_awa074_kh_2.jpg" style="max-width: 100%;">
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="qna">
                <br>
                <div class="col-md-12 ">
                    <ul class="unit">
                        <li class="li" style='margin-right: 10%'><b>NO</b></li>
                        <li class="li" style="margin-right: 30%;"><b>Question</b></li>
                        <li class="li" style="margin-right: 15%"><b>Writer</b></li>
                        <li class="li"><b>Date</b></li>
                        <div class="clearfix"></div>
                    </ul>
                    <ul class="uli">
                        <li class="li" style='margin-right: 5%'><p>01</p></li>
                        <li class="li" style="margin-right: 15%; width: 30%;"><p>배송은 어떻게 되나요?</p></li>
                        <li class="li" style="margin-right: 15%"><p>User00</p></li>
                        <li class="li"><p>17-01-12</p></li>
                        <div class="clearfix"></div>
                    </ul>
                    <hr>
                </div>
                <form>
                    <div class="row">
                        <div class="col-sm-3">
                            <input type="text" placeholder="Writer">
                        </div>
                        <div class="col-sm-3">
                            <input type="password" placeholder="Password">
                        </div>
                    </div>
                    <br>
                    <input type="text" name="rcontent" style="height: 200px; width: 100%;">
                    <br>
                    <br>
                    <input type="submit" class="btn btn-primary" value="Submit">
                </form>
            </div>
            <div role="tabpanel" class="tab-pane" id="review">
                <br>
                <div class="col-md-12 ">
                    <ul class="unit">
                        <li class="li" style="margin-right: 45%;"><b>Content</b></li>
                        <li class="li" style="margin-right: 10%"><b>Writer</b></li>
                        <li class="li"><b>Date</b></li>
                        <li class="li"> <b>Rate</b></li>
                        <div class="clearfix"></div>
                    </ul>
                    <ul class="uli">
                        <li><img style='width: 100px; height: 100px; margin-right: 10%' src="/resources/themes/thema3/images/sample/431751_5_500.jpg"></li>
                        <li class="li" style="margin-right: 15%; width: 30%;"> <p>너무너무 멋져 눈이눈이 부셔 숨이 막힘</p></li>
                        <li class="li" style="margin-right: 10%"> <p>User01 님</p></li>
                        <li class="li"><p>17-01-12</p></li>
                        <li class="li"> <label for="mark_0_4" style="color:pink">★★★★★</label></li>
                        <div class="clearfix"></div>
                    </ul>
                    <hr>
                    <form>
                        <input type="hidden" name="userid">
                        <input type='file' id="rphoto" name="rphoto"/>
                        <input type="radio" id="mark_0_0" name="rgrade" value="1">
                        <label for="mark_0_0" style="color:pink">★</label>&nbsp;
                        <input type="radio" id="mark_0_1" name="rgrade" value="2">
                        <label for="mark_0_1" style="color:pink">★★</label>&nbsp;
                        <input type="radio" id="mark_0_2" name="rgrade" value="3">
                        <label for="mark_0_2" style="color:pink">★★★</label>&nbsp;
                        <input type="radio" id="mark_0_3" name="rgrade" value="4">
                        <label for="mark_0_3" style="color:pink">★★★★</label>&nbsp;
                        <input type="radio" id="mark_0_4" name="rgrade" checked="checked" value="5">
                        <label for="mark_0_4" style="color:pink">★★★★★</label>
                        <br>
                        <input type="text" name="rcontent" style="height: 200px; width: 100%;">
                        <br>
                        <br>
                        <input type="submit" class="btn btn-primary" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="footer.jsp"%>
<script>
    $(document).ready(function () {
        // Activate Carousel
        $("#myCarousel").carousel();

        // Enable Carousel Indicators
        $(".item1").click(function () {
            $("#myCarousel").carousel(0);
        });
        $(".item2").click(function () {
            $("#myCarousel").carousel(1);
        });
        $(".item3").click(function () {
            $("#myCarousel").carousel(2);
        });
        $(".item4").click(function () {
            $("#myCarousel").carousel(3);
        });

        // Enable Carousel Controls
        $(".left").click(function () {
            $("#myCarousel").carousel("prev");
        });
        $(".right").click(function () {
            $("#myCarousel").carousel("next");
        });
    });
</script>

</html>