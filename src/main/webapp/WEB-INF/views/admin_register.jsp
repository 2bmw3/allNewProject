<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Shopping mall</title>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/price-range.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet">

<link href="http://t4t5.github.io/sweetalert/dist/sweetalert.css"
	rel="stylesheet" />
<script src="http://t4t5.github.io/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/price-range.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
    
</head>


<style>
    #mc-canvas {
        width:220px;  /* For best results, set width to between 210px and 240px */
        height:154px; /* For best results, set height to between 140px and 170px */
        background:#fff -9999px -9999px no-repeat;
        /* 사용자 템플릿 추가 시 템플릿 이미지를 추가해 재 생성한다. */
        background-image: url('http://www.josscrowcroft.com/demos/motioncaptcha/MotionCAPTCHA/motionCaptcha-shapes.jpg') !important;
    }

    /* The shapes: */
    #mc-canvas.triangle     { background-position:  10px   10px }
    #mc-canvas.x            { background-position:-200px   10px }
    #mc-canvas.rectangle    { background-position:-400px   10px }
    #mc-canvas.circle       { background-position:-600px   10px }
    #mc-canvas.check        { background-position:  10px -150px }
    #mc-canvas.caret        { background-position:-200px -150px }
    #mc-canvas.zigzag       { background-position:-400px -150px }
    #mc-canvas.arrow        { background-position:-600px -150px }
    #mc-canvas.leftbracket  { background-position:  10px -300px }
    #mc-canvas.rightbracket { background-position:-200px -300px }
    #mc-canvas.v            { background-position:-400px -300px }
    #mc-canvas.delete       { background-position:-600px -300px }
    #mc-canvas.leftbrace    { background-position:  10px -450px }
    #mc-canvas.rightbrace   { background-position:-200px -450px }
    #mc-canvas.star         { background-position:-400px -450px }
    #mc-canvas.pigtail      { background-position:-600px -450px }
    /* 사용자 추가 */
    #mc-canvas.pigtail1      { background-position:-600px -450px }

    /* Disable mouse-selection on the page (only while user is actively drawing on the canvas): */
    .mc-noselect {
        -webkit-user-select: none,
           -moz-user-select: none,
                user-select: none
    }

.Rlabel {
	background: white;
	border: 1px #A9A9A9 solid;
	color: #696763;
	display: block;
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	font-weight: 300;
	height: 40px;
	margin-bottom: 10px;
	outline: medium none;
	padding-left: 10px;
	width: 100%;
	vertical-align: middle;
	cursor: pointer;
}

.Rlabel input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 1px E6E6FA solid;
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	font-weight: 300;
}

.register {
	background-color: #F0F0E9;
}

.head {
	position: relative;
	width: 768px;
	min-width: 460px;
	margin: 0 auto;
}

.input1 {
	background: white;
	border: 1px #A9A9A9 solid;
	color: #696763;
	display: block;
	font-family: 'Roboto', sans-serif; font-size : 14px; font-weight : 300;
	height: 40px;
	outline: medium none;
	padding-left: 10px;
	width: 100%;
	padding-bottom: 1px;
	font-size: 14px;
	font-weight: 300;
}
</style>
<body class="register" style="text-shadow:0 0 0;color:black">
	<div class="container">
		<div class="head">
			<div class="col-md-4 col-md-offset-5" style="padding-bottom: 30px;padding-top: 30px; padding-left: 0px;">
				<a href="/member/index"><img
					src="${pageContext.request.contextPath}/resources/images/home/logo.png"
					alt="" /></a>
			</div>
		</div>
		<div class="col-sm-10 col-sm-offset-1">
			<div>
				<!--login form-->
				<div class="register">
					<form method="post" action="/registerAction"
						enctype="multipart/form-data" id="register">
						<div class="group" style="margin-bottom: 20px;">
							<div class="row">
								<div class="col-md-4 col-md-offset-4" style="margin-left: 28.333333%; padding-right: 0px;">
									<input type="text" name="adminid" placeholder="아이디"
										id='inputId' maxlength=16 class="input1" />
								</div>
								<div class="col-md-1" style="background-color: white; padding-right: 0px; width: 6.8%; border: 1px #A9A9A9 solid;">
									<i class="fa fa-check-square-o"
										style="font-size: 38px; cursor: pointer;"></i>
								</div>
							 </div>
			                     <div class="row">
			                        <div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
			                           <input type="password" id='adminpw' name="adminpw" placeholder="비밀번호"
			                              class="input1" />
			                        </div>
			                     </div>
			                     <div class="row">
			                        <div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
			                           <input type="password" id='pwCheck' placeholder="비밀번호확인"
			                              class="input1" />
			                        </div>
			                     </div>
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="text" name="aname" placeholder="사장님이름"
										class="input1" />
								</div>
							</div>
						</div>
						<div class="group" style="margin-bottom: 20px;">
							<div class="row">
							<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="text" id="postCode"
										placeholder="우편번호"> 
									<input type="button"
										onclick="execDaumPostcode()" value="우편번호 찾기"><br> 
									<input type="text" id="roadAddress" placeholder="도로명주소"> 
									<input type="text" id="address" placeholder="지번주소"> 
									<span id="guide" style="color: #999"></span>
									<input type="text" name="aaddress" placeholder="상세 회사주소"
										class="input1 detailAddress" />
									
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="email" name="aemail" placeholder="회사 이메일"
										class="input1" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="text" name="aphonenumber" placeholder="회사 번호"
										class="input1" />
								</div>
							</div>
						</div>
						<div class="group" style="margin-bottom: 20px;">
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="text" name="shopname" placeholder="회사 이름"
										class="input1" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<input type="text" name="businessnum" placeholder="사업자번호"
										class="input1" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-md-offset-4" style="margin-left: 28.333333%;">
									<label for="file" class="Rlabel"> 회사 로고 </label>
									<input
										type="file" id="file"
										onchange="fileUpload(this)" style="display: none"
										class="input1" />
									<input type='hidden'  name="shoplogo" id="shoplogo"/>
								</div>
							</div>
						</div>

						<div class="row">
							
						</div>
					</form>
					<form action="/registerAction" method="post" id="mycoolform" enctype="multipart/form-data" style="margin-left: 340px">
<canvas id="mc-canvas" style="margin:0px;"></canvas>
</form>
				</div>
				<div class="row" style="margin-top: 30px;">
					<div class="col-md-1 col-md-offset-4" style="margin-left: 26%;">
						<button id="registerBtn" class="btn btn-default">회원가입</button>
					</div>
					<div class="col-md-1 col-md-offset-3">
						<button id="cancelBtn" class="btn btn-default">작성취소</button>
					</div>
				</div>
			</div>
			<!--/login form-->
		</div>
	</div>
<%@include file="member/footer.jsp"%>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.6.2/firebase.js"></script>
    <script type="text/javascript">
    jQuery.fn.motionCaptcha || (function($) {

        $.fn.motionCaptcha = function(options) {
            return this.each(function() {
                var opts = $.extend({}, $.fn.motionCaptcha.defaults, options);

                opts.actionId = '#' + opts.actionId.replace(/\#/g, '');
                opts.canvasId = '#' + opts.canvasId.replace(/\#/g, '');
                opts.divId = '#' + opts.divId.replace(/\#/g, '');
                opts.submitId = ( opts.submitId ) ? '#' + opts.submitId.replace(/\#/g, '') : false;

                var brush,
                    locked = false;

                var $body = $('body'),
                    $form = $(this),
                    $container = $(opts.divId),
                    $canvas = $(opts.canvasId);

                var canvasWidth = $canvas.width(),
                    canvasHeight = $canvas.height(),
                    borderLeftWidth = 1 * $canvas.css('borderLeftWidth').replace('px', ''),
                    borderTopWidth = 1 * $canvas.css('borderTopWidth').replace('px', '');            

                $canvas[0].width = canvasWidth;
                $canvas[0].height = canvasHeight;

                var ctx = $canvas[0].getContext("2d");

                ctx.canvasWidth = canvasWidth;
                ctx.canvasHeight = canvasHeight;
                ctx.font = opts.canvasFont;
                ctx.fillStyle = opts.canvasTextColor;

                $canvas.addClass( opts.shapes[Math.floor(Math.random() * (opts.shapes.length) )] );
                var _isDown = false,
                    _holdStill = false,
                    _points = [], 
                    _r = new DollarRecognizer();
                brush = new Ribbon(ctx);

                var touchStartEvent = function(event) {
                    if ( locked )
                        return false;

                    event.preventDefault();

                    var pos = getPos(event),
                        x = pos[0],
                        y = pos[1];
                    _isDown = true;
                    _holdStill = true;
                    
                    $('body').addClass('mc-noselect');

                    ctx.clearRect(0, 0, canvasWidth, canvasHeight);
                    brush.strokeStart(x, y);
                    $canvas.removeClass('mc-invalid mc-valid');
                    _points = [NewPoint(x, y)];
                    return false;
                }; // mousedown/touchstart event

                var touchMoveEvent = function(event) {
                    if ( _holdStill ) {
                        return _holdStill = 0;
                    }
                    if ( !locked && _isDown ) {
                        event.preventDefault();
                        
                        var pos = getPos(event),
                            x = pos[0],
                            y = pos[1];
                        _points[_points.length] = NewPoint(x, y);
                        brush.stroke(x, y);
                    }
                    return false;
                }; // mousemove/touchmove event

                var touchEndEvent = function(event) {
                    // If mouse is down and canvas not locked:
                    if ( !locked && _isDown ) {
                        _isDown = false;
                        $('body').removeClass('mc-noselect');
                        if (_points.length >= 10) {
                            var result = _r.Recognize(_points);
                            // Check result:
                            if ( $canvas.attr('class').match(result.Name) && result.Score > 0.7 ) {
                                locked = 1;
                                setTimeout( brush.destroy, 500 );
                                $canvas.addClass('mc-valid');
                                ctx.fillText(opts.successMsg, 10, 24);
                                opts.onSuccess($form, $canvas, ctx);

                            } else {
                                $canvas.addClass('mc-invalid');
                                ctx.fillText(opts.errorMsg, 10, 24);
                                opts.onError($form, $canvas, ctx);
                            }

                        } else { // fewer than 10 points were recorded:

                            // Add 'mc-invalid' class to canvas:
                            $canvas.addClass('mc-invalid');

                            // Write error message into canvas:
                            ctx.fillText(opts.errorMsg, 10, 24);

                            // Pass off to the error callback to finish up:
                            opts.onError($form, $canvas, ctx);
                        }
                    }
                    return false;
                }; // mouseup/touchend event

                // Bind events to canvas:
                $canvas.bind({
                    mousedown:  touchStartEvent,
                    mousemove: touchMoveEvent,
                    mouseup:  touchEndEvent,
                });

                $canvas[0].addEventListener('touchstart', touchStartEvent, false);
                $canvas[0].addEventListener('touchmove', touchMoveEvent, false);
                $canvas[0].addEventListener('touchend', touchEndEvent, false);

                // Add active CSS class to form:
                $form.addClass(opts.cssClass.replace(/\./, ''))

                function getPos(event) {
                    var x, y;

                    // Check for mobile first to avoid android jumpy-touch bug (iOS / Android):
                    if ( event.touches && event.touches.length > 0 ) {
                        // iOS/android uses event.touches, relative to entire page:
                        x = event.touches[0].pageX - $canvas.offset().left + borderLeftWidth;
                        y = event.touches[0].pageY - $canvas.offset().top + borderTopWidth;
                    } else if ( event.offsetX ) {
                        // Chrome/Safari give the event offset relative to the target event:
                        x = event.offsetX - borderLeftWidth;
                        y = event.offsetY - borderTopWidth;
                    } else {
                        // Otherwise, subtract page click from canvas offset (Firefox uses this):
                        x = event.pageX - $canvas.offset().left - borderLeftWidth;
                        y = event.pageY - $canvas.offset().top - borderTopWidth;
                    }
                    return [x,y];
                }

            }); // this.each

        } // end main plugin function

        $.fn.motionCaptcha.defaults = {
            actionId: '#mc-action',     // The ID of the input containing the form action
            divId: '#mc',               // If you use an ID other than '#mc' for the placeholder, pass it in here
            canvasId: '#mc-canvas',     // The ID of the MotionCAPTCHA canvas element
            submitId: false,            // If your form has multiple submit buttons, give the ID of the main one here
            cssClass: '.mc-active',     // This CSS class is applied to the form, when the plugin is active
            shapes: ['triangle', 'x', 'rectangle', 'circle', 'check', 'caret', 'zigzag', 'arrow', 'leftbracket', 'rightbracket', 'v', 'delete', 'star', 'pigtail'],
            canvasFont: '15px "Lucida Grande"',
            canvasTextColor: '#111',
            errorMsg: 'Please try again.',
            successMsg: 'Captcha passed!',
            noCanvasMsg: "Your browser doesn't support <canvas> - try Chrome, FF4, Safari or IE9.",
            label: '<p>Please draw the shape in the box to submit the form:</p>',
            onSuccess: function($form, $canvas, ctx) {
                var opts = this,
                    $submit = opts.submitId ? $form.find(opts.submitId) : $form.find('input[type=submit]:disabled');
                $form.attr( 'action', $(opts.actionId).val() );
                $submit.prop('disabled', false);
                return;
            },
            onError: function($form, $canvas, ctx) {
                var opts = this;
                return;
            }
        };

        function Ribbon( ctx ) {
            this.init( ctx );
        }

        Ribbon.prototype = {
            ctx: null,
            X: null, 
            Y: null,
            painters: null,
            interval: null,
            init: function( ctx ) {
                var scope = this,
                    userAgent = navigator.userAgent.toLowerCase(),
                    brushSize = ( userAgent.search("android") > -1 || userAgent.search("iphone") > -1 ) ? 2 : 1,
                    strokeColor = [0, 0, 0];

                this.ctx = ctx;
                this.ctx.globalCompositeOperation = 'source-over';

                this.X = this.ctx.canvasWidth / 2;
                this.Y = this.ctx.canvasHeight / 2;

                this.painters = [];

                // Draw each of the lines:
                for ( var i = 0; i < 38; i++ ) {
                    this.painters.push({
                        dx: this.ctx.canvasWidth / 2, 
                        dy: this.ctx.canvasHeight / 2, 
                        ax: 0, 
                        ay: 0, 
                        div: 0.1, 
                        ease: Math.random() * 0.18 + 0.60
                    });
                }

                // Set the ticker:
                this.interval = setInterval( update, 1000/60 );

                function update() {
                    var i;

                    scope.ctx.lineWidth = brushSize;            
                    scope.ctx.strokeStyle = "rgba(" + strokeColor[0] + ", " + strokeColor[1] + ", " + strokeColor[2] + ", " + 0.06 + ")";

                    for ( i = 0; i < scope.painters.length; i++ ) {
                        scope.ctx.beginPath();
                        scope.ctx.moveTo(scope.painters[i].dx, scope.painters[i].dy);

                        scope.painters[i].dx -= scope.painters[i].ax = (scope.painters[i].ax + (scope.painters[i].dx - scope.X) * scope.painters[i].div) * scope.painters[i].ease;
                        scope.painters[i].dy -= scope.painters[i].ay = (scope.painters[i].ay + (scope.painters[i].dy - scope.Y) * scope.painters[i].div) * scope.painters[i].ease;
                        scope.ctx.lineTo(scope.painters[i].dx, scope.painters[i].dy);
                        scope.ctx.stroke();
                    }
                }
            },
            destroy: function() {
                clearInterval(this.interval);
            },
            strokeStart: function( X, Y ) {
                this.X = X;
                this.Y = Y

                for (var i = 0; i < this.painters.length; i++) {
                    this.painters[i].dx = X;
                    this.painters[i].dy = Y;
                }

                this.shouldDraw = true;
            },
            stroke: function( X, Y ) {
                this.X = X;
                this.Y = Y;
            }
        };

        function Point(x, y) {
            this.X = x;
            this.Y = y;
        }

        // Wrapper for Point class (saves mega kb when compressing the template definitions):
        function NewPoint(x, y) {
            return new Point(x, y)
        }

        // Rectangle class
        function Rectangle(x, y, width, height) {
            this.X = x;
            this.Y = y;
            this.Width = width;
            this.Height = height;
        }

        // Template class: a unistroke template
        function Template(name, points) {
            this.Name = name;
            this.Points = Resample(points, NumPoints);
            var radians = IndicativeAngle(this.Points);
            this.Points = RotateBy(this.Points, -radians);
            this.Points = ScaleTo(this.Points, SquareSize);
            this.Points = TranslateTo(this.Points, Origin);
            this.Vector = Vectorize(this.Points); // for Protractor
        }

        // Result class
        function Result(name, score) {
            this.Name = name;
            this.Score = score;
        }

        // DollarRecognizer class constants
        var NumTemplates = 16,
            NumPoints = 64,
            SquareSize = 250.0,
            Origin = NewPoint(0,0);

        // DollarRecognizer class
        function DollarRecognizer() {

            // Predefined templates for each gesture type:
            this.Templates = [];
            this.Templates.push( new Template("triangle", [NewPoint(137,139),NewPoint(135,141),NewPoint(133,144),NewPoint(132,146),NewPoint(130,149),NewPoint(128,151),NewPoint(126,155),NewPoint(123,160),NewPoint(120,166),NewPoint(116,171),NewPoint(112,177),NewPoint(107,183),NewPoint(102,188),NewPoint(100,191),NewPoint(95,195),NewPoint(90,199),NewPoint(86,203),NewPoint(82,206),NewPoint(80,209),NewPoint(75,213),NewPoint(73,213),NewPoint(70,216),NewPoint(67,219),NewPoint(64,221),NewPoint(61,223),NewPoint(60,225),NewPoint(62,226),NewPoint(65,225),NewPoint(67,226),NewPoint(74,226),NewPoint(77,227),NewPoint(85,229),NewPoint(91,230),NewPoint(99,231),NewPoint(108,232),NewPoint(116,233),NewPoint(125,233),NewPoint(134,234),NewPoint(145,233),NewPoint(153,232),NewPoint(160,233),NewPoint(170,234),NewPoint(177,235),NewPoint(179,236),NewPoint(186,237),NewPoint(193,238),NewPoint(198,239),NewPoint(200,237),NewPoint(202,239),NewPoint(204,238),NewPoint(206,234),NewPoint(205,230),NewPoint(202,222),NewPoint(197,216),NewPoint(192,207),NewPoint(186,198),NewPoint(179,189),NewPoint(174,183),NewPoint(170,178),NewPoint(164,171),NewPoint(161,168),NewPoint(154,160),NewPoint(148,155),NewPoint(143,150),NewPoint(138,148),NewPoint(136,148)]) );
            this.Templates.push( new Template("x", [NewPoint(87,142),NewPoint(89,145),NewPoint(91,148),NewPoint(93,151),NewPoint(96,155),NewPoint(98,157),NewPoint(100,160),NewPoint(102,162),NewPoint(106,167),NewPoint(108,169),NewPoint(110,171),NewPoint(115,177),NewPoint(119,183),NewPoint(123,189),NewPoint(127,193),NewPoint(129,196),NewPoint(133,200),NewPoint(137,206),NewPoint(140,209),NewPoint(143,212),NewPoint(146,215),NewPoint(151,220),NewPoint(153,222),NewPoint(155,223),NewPoint(157,225),NewPoint(158,223),NewPoint(157,218),NewPoint(155,211),NewPoint(154,208),NewPoint(152,200),NewPoint(150,189),NewPoint(148,179),NewPoint(147,170),NewPoint(147,158),NewPoint(147,148),NewPoint(147,141),NewPoint(147,136),NewPoint(144,135),NewPoint(142,137),NewPoint(140,139),NewPoint(135,145),NewPoint(131,152),NewPoint(124,163),NewPoint(116,177),NewPoint(108,191),NewPoint(100,206),NewPoint(94,217),NewPoint(91,222),NewPoint(89,225),NewPoint(87,226),NewPoint(87,224)]) );
            this.Templates.push( new Template("rectangle", [NewPoint(78,149),NewPoint(78,153),NewPoint(78,157),NewPoint(78,160),NewPoint(79,162),NewPoint(79,164),NewPoint(79,167),NewPoint(79,169),NewPoint(79,173),NewPoint(79,178),NewPoint(79,183),NewPoint(80,189),NewPoint(80,193),NewPoint(80,198),NewPoint(80,202),NewPoint(81,208),NewPoint(81,210),NewPoint(81,216),NewPoint(82,222),NewPoint(82,224),NewPoint(82,227),NewPoint(83,229),NewPoint(83,231),NewPoint(85,230),NewPoint(88,232),NewPoint(90,233),NewPoint(92,232),NewPoint(94,233),NewPoint(99,232),NewPoint(102,233),NewPoint(106,233),NewPoint(109,234),NewPoint(117,235),NewPoint(123,236),NewPoint(126,236),NewPoint(135,237),NewPoint(142,238),NewPoint(145,238),NewPoint(152,238),NewPoint(154,239),NewPoint(165,238),NewPoint(174,237),NewPoint(179,236),NewPoint(186,235),NewPoint(191,235),NewPoint(195,233),NewPoint(197,233),NewPoint(200,233),NewPoint(201,235),NewPoint(201,233),NewPoint(199,231),NewPoint(198,226),NewPoint(198,220),NewPoint(196,207),NewPoint(195,195),NewPoint(195,181),NewPoint(195,173),NewPoint(195,163),NewPoint(194,155),NewPoint(192,145),NewPoint(192,143),NewPoint(192,138),NewPoint(191,135),NewPoint(191,133),NewPoint(191,130),NewPoint(190,128),NewPoint(188,129),NewPoint(186,129),NewPoint(181,132),NewPoint(173,131),NewPoint(162,131),NewPoint(151,132),NewPoint(149,132),NewPoint(138,132),NewPoint(136,132),NewPoint(122,131),NewPoint(120,131),NewPoint(109,130),NewPoint(107,130),NewPoint(90,132),NewPoint(81,133),NewPoint(76,133)]) );
            this.Templates.push( new Template("circle", [NewPoint(127,141),NewPoint(124,140),NewPoint(120,139),NewPoint(118,139),NewPoint(116,139),NewPoint(111,140),NewPoint(109,141),NewPoint(104,144),NewPoint(100,147),NewPoint(96,152),NewPoint(93,157),NewPoint(90,163),NewPoint(87,169),NewPoint(85,175),NewPoint(83,181),NewPoint(82,190),NewPoint(82,195),NewPoint(83,200),NewPoint(84,205),NewPoint(88,213),NewPoint(91,216),NewPoint(96,219),NewPoint(103,222),NewPoint(108,224),NewPoint(111,224),NewPoint(120,224),NewPoint(133,223),NewPoint(142,222),NewPoint(152,218),NewPoint(160,214),NewPoint(167,210),NewPoint(173,204),NewPoint(178,198),NewPoint(179,196),NewPoint(182,188),NewPoint(182,177),NewPoint(178,167),NewPoint(170,150),NewPoint(163,138),NewPoint(152,130),NewPoint(143,129),NewPoint(140,131),NewPoint(129,136),NewPoint(126,139)]) );
            this.Templates.push( new Template("check", [NewPoint(91,185),NewPoint(93,185),NewPoint(95,185),NewPoint(97,185),NewPoint(100,188),NewPoint(102,189),NewPoint(104,190),NewPoint(106,193),NewPoint(108,195),NewPoint(110,198),NewPoint(112,201),NewPoint(114,204),NewPoint(115,207),NewPoint(117,210),NewPoint(118,212),NewPoint(120,214),NewPoint(121,217),NewPoint(122,219),NewPoint(123,222),NewPoint(124,224),NewPoint(126,226),NewPoint(127,229),NewPoint(129,231),NewPoint(130,233),NewPoint(129,231),NewPoint(129,228),NewPoint(129,226),NewPoint(129,224),NewPoint(129,221),NewPoint(129,218),NewPoint(129,212),NewPoint(129,208),NewPoint(130,198),NewPoint(132,189),NewPoint(134,182),NewPoint(137,173),NewPoint(143,164),NewPoint(147,157),NewPoint(151,151),NewPoint(155,144),NewPoint(161,137),NewPoint(165,131),NewPoint(171,122),NewPoint(174,118),NewPoint(176,114),NewPoint(177,112),NewPoint(177,114),NewPoint(175,116),NewPoint(173,118)]) );
            this.Templates.push( new Template("caret", [NewPoint(79,245),NewPoint(79,242),NewPoint(79,239),NewPoint(80,237),NewPoint(80,234),NewPoint(81,232),NewPoint(82,230),NewPoint(84,224),NewPoint(86,220),NewPoint(86,218),NewPoint(87,216),NewPoint(88,213),NewPoint(90,207),NewPoint(91,202),NewPoint(92,200),NewPoint(93,194),NewPoint(94,192),NewPoint(96,189),NewPoint(97,186),NewPoint(100,179),NewPoint(102,173),NewPoint(105,165),NewPoint(107,160),NewPoint(109,158),NewPoint(112,151),NewPoint(115,144),NewPoint(117,139),NewPoint(119,136),NewPoint(119,134),NewPoint(120,132),NewPoint(121,129),NewPoint(122,127),NewPoint(124,125),NewPoint(126,124),NewPoint(129,125),NewPoint(131,127),NewPoint(132,130),NewPoint(136,139),NewPoint(141,154),NewPoint(145,166),NewPoint(151,182),NewPoint(156,193),NewPoint(157,196),NewPoint(161,209),NewPoint(162,211),NewPoint(167,223),NewPoint(169,229),NewPoint(170,231),NewPoint(173,237),NewPoint(176,242),NewPoint(177,244),NewPoint(179,250),NewPoint(181,255),NewPoint(182,257)]) );
            this.Templates.push( new Template("zigzag", [NewPoint(307,216),NewPoint(333,186),NewPoint(356,215),NewPoint(375,186),NewPoint(399,216),NewPoint(418,186)]) );
            this.Templates.push( new Template("arrow", [NewPoint(68,222),NewPoint(70,220),NewPoint(73,218),NewPoint(75,217),NewPoint(77,215),NewPoint(80,213),NewPoint(82,212),NewPoint(84,210),NewPoint(87,209),NewPoint(89,208),NewPoint(92,206),NewPoint(95,204),NewPoint(101,201),NewPoint(106,198),NewPoint(112,194),NewPoint(118,191),NewPoint(124,187),NewPoint(127,186),NewPoint(132,183),NewPoint(138,181),NewPoint(141,180),NewPoint(146,178),NewPoint(154,173),NewPoint(159,171),NewPoint(161,170),NewPoint(166,167),NewPoint(168,167),NewPoint(171,166),NewPoint(174,164),NewPoint(177,162),NewPoint(180,160),NewPoint(182,158),NewPoint(183,156),NewPoint(181,154),NewPoint(178,153),NewPoint(171,153),NewPoint(164,153),NewPoint(160,153),NewPoint(150,154),NewPoint(147,155),NewPoint(141,157),NewPoint(137,158),NewPoint(135,158),NewPoint(137,158),NewPoint(140,157),NewPoint(143,156),NewPoint(151,154),NewPoint(160,152),NewPoint(170,149),NewPoint(179,147),NewPoint(185,145),NewPoint(192,144),NewPoint(196,144),NewPoint(198,144),NewPoint(200,144),NewPoint(201,147),NewPoint(199,149),NewPoint(194,157),NewPoint(191,160),NewPoint(186,167),NewPoint(180,176),NewPoint(177,179),NewPoint(171,187),NewPoint(169,189),NewPoint(165,194),NewPoint(164,196)]) );
            this.Templates.push( new Template("leftbracket", [NewPoint(140,124),NewPoint(138,123),NewPoint(135,122),NewPoint(133,123),NewPoint(130,123),NewPoint(128,124),NewPoint(125,125),NewPoint(122,124),NewPoint(120,124),NewPoint(118,124),NewPoint(116,125),NewPoint(113,125),NewPoint(111,125),NewPoint(108,124),NewPoint(106,125),NewPoint(104,125),NewPoint(102,124),NewPoint(100,123),NewPoint(98,123),NewPoint(95,124),NewPoint(93,123),NewPoint(90,124),NewPoint(88,124),NewPoint(85,125),NewPoint(83,126),NewPoint(81,127),NewPoint(81,129),NewPoint(82,131),NewPoint(82,134),NewPoint(83,138),NewPoint(84,141),NewPoint(84,144),NewPoint(85,148),NewPoint(85,151),NewPoint(86,156),NewPoint(86,160),NewPoint(86,164),NewPoint(86,168),NewPoint(87,171),NewPoint(87,175),NewPoint(87,179),NewPoint(87,182),NewPoint(87,186),NewPoint(88,188),NewPoint(88,195),NewPoint(88,198),NewPoint(88,201),NewPoint(88,207),NewPoint(89,211),NewPoint(89,213),NewPoint(89,217),NewPoint(89,222),NewPoint(88,225),NewPoint(88,229),NewPoint(88,231),NewPoint(88,233),NewPoint(88,235),NewPoint(89,237),NewPoint(89,240),NewPoint(89,242),NewPoint(91,241),NewPoint(94,241),NewPoint(96,240),NewPoint(98,239),NewPoint(105,240),NewPoint(109,240),NewPoint(113,239),NewPoint(116,240),NewPoint(121,239),NewPoint(130,240),NewPoint(136,237),NewPoint(139,237),NewPoint(144,238),NewPoint(151,237),NewPoint(157,236),NewPoint(159,237)]) );
            this.Templates.push( new Template("rightbracket", [NewPoint(112,138),NewPoint(112,136),NewPoint(115,136),NewPoint(118,137),NewPoint(120,136),NewPoint(123,136),NewPoint(125,136),NewPoint(128,136),NewPoint(131,136),NewPoint(134,135),NewPoint(137,135),NewPoint(140,134),NewPoint(143,133),NewPoint(145,132),NewPoint(147,132),NewPoint(149,132),NewPoint(152,132),NewPoint(153,134),NewPoint(154,137),NewPoint(155,141),NewPoint(156,144),NewPoint(157,152),NewPoint(158,161),NewPoint(160,170),NewPoint(162,182),NewPoint(164,192),NewPoint(166,200),NewPoint(167,209),NewPoint(168,214),NewPoint(168,216),NewPoint(169,221),NewPoint(169,223),NewPoint(169,228),NewPoint(169,231),NewPoint(166,233),NewPoint(164,234),NewPoint(161,235),NewPoint(155,236),NewPoint(147,235),NewPoint(140,233),NewPoint(131,233),NewPoint(124,233),NewPoint(117,235),NewPoint(114,238),NewPoint(112,238)]) );
            this.Templates.push( new Template("v", [NewPoint(89,164),NewPoint(90,162),NewPoint(92,162),NewPoint(94,164),NewPoint(95,166),NewPoint(96,169),NewPoint(97,171),NewPoint(99,175),NewPoint(101,178),NewPoint(103,182),NewPoint(106,189),NewPoint(108,194),NewPoint(111,199),NewPoint(114,204),NewPoint(117,209),NewPoint(119,214),NewPoint(122,218),NewPoint(124,222),NewPoint(126,225),NewPoint(128,228),NewPoint(130,229),NewPoint(133,233),NewPoint(134,236),NewPoint(136,239),NewPoint(138,240),NewPoint(139,242),NewPoint(140,244),NewPoint(142,242),NewPoint(142,240),NewPoint(142,237),NewPoint(143,235),NewPoint(143,233),NewPoint(145,229),NewPoint(146,226),NewPoint(148,217),NewPoint(149,208),NewPoint(149,205),NewPoint(151,196),NewPoint(151,193),NewPoint(153,182),NewPoint(155,172),NewPoint(157,165),NewPoint(159,160),NewPoint(162,155),NewPoint(164,150),NewPoint(165,148),NewPoint(166,146)]) );
            this.Templates.push( new Template("delete", [NewPoint(123,129),NewPoint(123,131),NewPoint(124,133),NewPoint(125,136),NewPoint(127,140),NewPoint(129,142),NewPoint(133,148),NewPoint(137,154),NewPoint(143,158),NewPoint(145,161),NewPoint(148,164),NewPoint(153,170),NewPoint(158,176),NewPoint(160,178),NewPoint(164,183),NewPoint(168,188),NewPoint(171,191),NewPoint(175,196),NewPoint(178,200),NewPoint(180,202),NewPoint(181,205),NewPoint(184,208),NewPoint(186,210),NewPoint(187,213),NewPoint(188,215),NewPoint(186,212),NewPoint(183,211),NewPoint(177,208),NewPoint(169,206),NewPoint(162,205),NewPoint(154,207),NewPoint(145,209),NewPoint(137,210),NewPoint(129,214),NewPoint(122,217),NewPoint(118,218),NewPoint(111,221),NewPoint(109,222),NewPoint(110,219),NewPoint(112,217),NewPoint(118,209),NewPoint(120,207),NewPoint(128,196),NewPoint(135,187),NewPoint(138,183),NewPoint(148,167),NewPoint(157,153),NewPoint(163,145),NewPoint(165,142),NewPoint(172,133),NewPoint(177,127),NewPoint(179,127),NewPoint(180,125)]) );
            this.Templates.push( new Template("star", [NewPoint(75,250),NewPoint(75,247),NewPoint(77,244),NewPoint(78,242),NewPoint(79,239),NewPoint(80,237),NewPoint(82,234),NewPoint(82,232),NewPoint(84,229),NewPoint(85,225),NewPoint(87,222),NewPoint(88,219),NewPoint(89,216),NewPoint(91,212),NewPoint(92,208),NewPoint(94,204),NewPoint(95,201),NewPoint(96,196),NewPoint(97,194),NewPoint(98,191),NewPoint(100,185),NewPoint(102,178),NewPoint(104,173),NewPoint(104,171),NewPoint(105,164),NewPoint(106,158),NewPoint(107,156),NewPoint(107,152),NewPoint(108,145),NewPoint(109,141),NewPoint(110,139),NewPoint(112,133),NewPoint(113,131),NewPoint(116,127),NewPoint(117,125),NewPoint(119,122),NewPoint(121,121),NewPoint(123,120),NewPoint(125,122),NewPoint(125,125),NewPoint(127,130),NewPoint(128,133),NewPoint(131,143),NewPoint(136,153),NewPoint(140,163),NewPoint(144,172),NewPoint(145,175),NewPoint(151,189),NewPoint(156,201),NewPoint(161,213),NewPoint(166,225),NewPoint(169,233),NewPoint(171,236),NewPoint(174,243),NewPoint(177,247),NewPoint(178,249),NewPoint(179,251),NewPoint(180,253),NewPoint(180,255),NewPoint(179,257),NewPoint(177,257),NewPoint(174,255),NewPoint(169,250),NewPoint(164,247),NewPoint(160,245),NewPoint(149,238),NewPoint(138,230),NewPoint(127,221),NewPoint(124,220),NewPoint(112,212),NewPoint(110,210),NewPoint(96,201),NewPoint(84,195),NewPoint(74,190),NewPoint(64,182),NewPoint(55,175),NewPoint(51,172),NewPoint(49,170),NewPoint(51,169),NewPoint(56,169),NewPoint(66,169),NewPoint(78,168),NewPoint(92,166),NewPoint(107,164),NewPoint(123,161),NewPoint(140,162),NewPoint(156,162),NewPoint(171,160),NewPoint(173,160),NewPoint(186,160),NewPoint(195,160),NewPoint(198,161),NewPoint(203,163),NewPoint(208,163),NewPoint(206,164),NewPoint(200,167),NewPoint(187,172),NewPoint(174,179),NewPoint(172,181),NewPoint(153,192),NewPoint(137,201),NewPoint(123,211),NewPoint(112,220),NewPoint(99,229),NewPoint(90,237),NewPoint(80,244),NewPoint(73,250),NewPoint(69,254),NewPoint(69,252)]) );
            this.Templates.push( new Template("pigtail", [NewPoint(81,219),NewPoint(84,218),NewPoint(86,220),NewPoint(88,220),NewPoint(90,220),NewPoint(92,219),NewPoint(95,220),NewPoint(97,219),NewPoint(99,220),NewPoint(102,218),NewPoint(105,217),NewPoint(107,216),NewPoint(110,216),NewPoint(113,214),NewPoint(116,212),NewPoint(118,210),NewPoint(121,208),NewPoint(124,205),NewPoint(126,202),NewPoint(129,199),NewPoint(132,196),NewPoint(136,191),NewPoint(139,187),NewPoint(142,182),NewPoint(144,179),NewPoint(146,174),NewPoint(148,170),NewPoint(149,168),NewPoint(151,162),NewPoint(152,160),NewPoint(152,157),NewPoint(152,155),NewPoint(152,151),NewPoint(152,149),NewPoint(152,146),NewPoint(149,142),NewPoint(148,139),NewPoint(145,137),NewPoint(141,135),NewPoint(139,135),NewPoint(134,136),NewPoint(130,140),NewPoint(128,142),NewPoint(126,145),NewPoint(122,150),NewPoint(119,158),NewPoint(117,163),NewPoint(115,170),NewPoint(114,175),NewPoint(117,184),NewPoint(120,190),NewPoint(125,199),NewPoint(129,203),NewPoint(133,208),NewPoint(138,213),NewPoint(145,215),NewPoint(155,218),NewPoint(164,219),NewPoint(166,219),NewPoint(177,219),NewPoint(182,218),NewPoint(192,216),NewPoint(196,213),NewPoint(199,212),NewPoint(201,211)]) );
            // 사용자 추가(해당 background Image와 맞는 드로잉 데이타를 넣어준다.
            this.Templates.push( new Template("pigtail1", [NewPoint(81,219),NewPoint(84,218),NewPoint(86,220),NewPoint(88,220),NewPoint(90,220),NewPoint(92,219),NewPoint(95,220),NewPoint(97,219),NewPoint(99,220),NewPoint(102,218),NewPoint(105,217),NewPoint(107,216),NewPoint(110,216),NewPoint(113,214),NewPoint(116,212),NewPoint(118,210),NewPoint(121,208),NewPoint(124,205),NewPoint(126,202),NewPoint(129,199),NewPoint(132,196),NewPoint(136,191),NewPoint(139,187),NewPoint(142,182),NewPoint(144,179),NewPoint(146,174),NewPoint(148,170),NewPoint(149,168),NewPoint(151,162),NewPoint(152,160),NewPoint(152,157),NewPoint(152,155),NewPoint(152,151),NewPoint(152,149),NewPoint(152,146),NewPoint(149,142),NewPoint(148,139),NewPoint(145,137),NewPoint(141,135),NewPoint(139,135),NewPoint(134,136),NewPoint(130,140),NewPoint(128,142),NewPoint(126,145),NewPoint(122,150),NewPoint(119,158),NewPoint(117,163),NewPoint(115,170),NewPoint(114,175),NewPoint(117,184),NewPoint(120,190),NewPoint(125,199),NewPoint(129,203),NewPoint(133,208),NewPoint(138,213),NewPoint(145,215),NewPoint(155,218),NewPoint(164,219),NewPoint(166,219),NewPoint(177,219),NewPoint(182,218),NewPoint(192,216),NewPoint(196,213),NewPoint(199,212),NewPoint(201,211)]) );

            this.Recognize = function(points) {
                var b = +Infinity,
                    t = 0,
                    radians,
                    i,
                    score,
                    vector;

                points = Resample(points, NumPoints);
                radians = IndicativeAngle(points);
                points = RotateBy(points, -radians);
                vector = Vectorize(points); // for Protractor

                for (i = 0; i < this.Templates.length; i++) {
                    var d = OptimalCosineDistance(this.Templates[i].Vector, vector);
                    if (d < b) {
                        b = d; // best (least) distance
                        t = i; // unistroke template
                    }
                }
                return new Result(this.Templates[t].Name, 1 / b);
            };

        }

        // Helper functions:
        function Resample(points, n) {
            var I = PathLength(points) / (n - 1),
                D = 0.0,
                newpoints = new Array(points[0]),
                i;
            for (i = 1; i < points.length; i++) {
                var d = Distance(points[i - 1], points[i]);
                if ((D + d) >= I) {
                    var qx = points[i - 1].X + ((I - D) / d) * (points[i].X - points[i - 1].X),
                        qy = points[i - 1].Y + ((I - D) / d) * (points[i].Y - points[i - 1].Y),
                        q = NewPoint(qx, qy);
                    newpoints[newpoints.length] = q; // append new point 'q'
                    points.splice(i, 0, q); // insert 'q' at position i in points s.t. 'q' will be the next i
                    D = 0.0;
                }
                else D += d;
            }
            // somtimes we fall a rounding-error short of adding the last point, so add it if so
            if (newpoints.length == n - 1) {
                newpoints[newpoints.length] = NewPoint(points[points.length - 1].X, points[points.length - 1].Y);
            }
            return newpoints;
        }
        function IndicativeAngle(points) {
            var c = Centroid(points);
            return Math.atan2(c.Y - points[0].Y, c.X - points[0].X);
        }
        function RotateBy(points, radians) {
            var c = Centroid(points),
                cos = Math.cos(radians),
                sin = Math.sin(radians),
                newpoints = [],
                i;
            for (i = 0; i < points.length; i++) {
                var qx = (points[i].X - c.X) * cos - (points[i].Y - c.Y) * sin + c.X,
                    qy = (points[i].X - c.X) * sin + (points[i].Y - c.Y) * cos + c.Y;
                newpoints[newpoints.length] = NewPoint(qx, qy);
            }
            return newpoints;
        }
        function ScaleTo(points, size) {
            var B = BoundingBox(points),
                newpoints = [],
                i;
            for (i = 0; i < points.length; i++) {
                var qx = points[i].X * (size / B.Width),
                    qy = points[i].Y * (size / B.Height);
                newpoints[newpoints.length] = NewPoint(qx, qy);
            }
            return newpoints;
        }
        function TranslateTo(points, pt) {
            var c = Centroid(points),
                newpoints = [],
                i;
            for (i = 0; i < points.length; i++) {
                var qx = points[i].X + pt.X - c.X,
                    qy = points[i].Y + pt.Y - c.Y;
                newpoints[newpoints.length] = NewPoint(qx, qy);
            }
            return newpoints;
        }
        function Vectorize(points) { // for Protractor
            var sum = 0.0,
                vector = [],
                i,
                magnitude;
            for ( i = 0; i < points.length; i++) {
                vector[vector.length] = points[i].X;
                vector[vector.length] = points[i].Y;
                sum += points[i].X * points[i].X + points[i].Y * points[i].Y;
            }
            magnitude = Math.sqrt(sum);
            for ( i = 0; i < vector.length; i++ )
                vector[i] /= magnitude;
            return vector;
        }
        function OptimalCosineDistance(v1, v2) { // for Protractor
            var a = 0.0,
                b = 0.0,
                i,
                angle;
            for (i = 0; i < v1.length; i += 2) {
                a += v1[i] * v2[i] + v1[i + 1] * v2[i + 1];
                        b += v1[i] * v2[i + 1] - v1[i + 1] * v2[i];
            }
            angle = Math.atan(b / a);
            return Math.acos(a * Math.cos(angle) + b * Math.sin(angle));
        }
        function Centroid(points) {
            var x = 0.0, 
                y = 0.0,
                i;
            for (i = 0; i < points.length; i++) {
                x += points[i].X;
                y += points[i].Y;
            }
            x /= points.length;
            y /= points.length;
            return NewPoint(x, y);
        }
        function BoundingBox(points) {
            var minX = +Infinity, 
                maxX = -Infinity, 
                minY = +Infinity, 
                maxY = -Infinity,
                i;
            for (i = 0; i < points.length; i++) {
                if (points[i].X < minX)
                    minX = points[i].X;
                if (points[i].X > maxX)
                    maxX = points[i].X;
                if (points[i].Y < minY)
                    minY = points[i].Y;
                if (points[i].Y > maxY)
                    maxY = points[i].Y;
            }
            return new Rectangle(minX, minY, maxX - minX, maxY - minY);
        }
        function PathLength(points) {
            var d = 0.0,
                i;
            for (i = 1; i < points.length; i++) {
                d += Distance(points[i - 1], points[i]);
            }
            return d;
        }
        function Distance(p1, p2) {
            var dx = p2.X - p1.X,
                dy = p2.Y - p1.Y;
            return Math.sqrt(dx * dx + dy * dy);
        }

    })(jQuery);
    </script>

    

    <title></title>
    <script type="text/javascript">
        $(window).load(function (e) {

            captcha = $('#mycoolform').motionCaptcha({
                // Basics:
                action: '#mc-action',        // the ID of the input containing the form action
                divId: '#mc',                // if you use an ID other than '#mc' for the placeholder, pass it in here
                cssClass: '.mc-active',      // this CSS class is applied to the 'mc' div when the plugin is active
                canvasId: '#mc-canvas',      // the ID of the MotionCAPTCHA canvas element

                // An array of shape names that you want MotionCAPTCHA to use:
                shapes: ['triangle', 'x', 'rectangle', 'circle', 'check', 'caret', 'zigzag', 'arrow', 'leftbracket', 'rightbracket', 'v', 'delete', 'star', 'pigtail', 'pigtail1'],
                // These messages are displayed inside the canvas after a user finishes drawing:
                errorMsg: '\uB2E4\uC2DC\uC2DC\uB3C4\uD558\uC138\uC694.',
                successMsg: '\uBAA8\uC158\uCEA1\uCC60\uC131\uACF5!'
            });
        });

        function formSubmit(frm) {
            
            var uid = document.getElementById('uid');
            var upass = document.getElementById('upass');

            if (!uid.value){
                alert('아이디값을 넣어주세요.');
                uid.focus();
                return false;
            }
            else if (!upass.value){
                alert('패스워드값을 넣어주세요.');
                upass.focus();
                return false;
            }
            else if (document.getElementById('mc-canvas').className.indexOf('mc-valid') < 0) {
                alert('모션 캡춰가 일치하지 않습니다.');
                upass.focus();
                return false;
            }

            frm.action = 'http://www.naver.com';
            frm.submit();

            return false;
        }

    </script>


<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('roadAddress').value = fullRoadAddr;
                document.getElementById('address').value = data.address;
                
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoaddress) {
                    var expJibunAddr = data.autoaddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

<script>

/* firebase script */
	var config = {
  	 apiKey: "AIzaSyCCPgBU1lxPq7PVclQyoN5lUX3nFgtXClQ",
   	 authDomain: "project-26bd6.firebaseapp.com",
   	 databaseURL: "https://project-26bd6.firebaseio.com",
     storageBucket: "project-26bd6.appspot.com",
     messagingSenderId: "544848311496"
};
     firebase.initializeApp(config);
     
     var idCheckResult = "F";//id 중복 체크 여부

     // Get a reference to the storage service, which is used to create references in your storage bucket
     var storage = firebase.storage();

		// Create a storage reference from our storage service
     var storageRef = storage.ref();

     function chkCaptcha() {
    	    if (typeof(grecaptcha) != 'undefined') {
    	       if (grecaptcha.getResponse() == "") {
    	           alert("스팸방지코드를 확인해 주세요.");
    	           return false;
    	       }
    	    }
    	    else {
    	         return false;
    	    }
    	}

function fileUpload(event){
   
    $('.Rlabel').css('border-style','solid');
    $('.Rlabel')[0].innerText = $("#file").val().split('/').pop().split('\\').pop();
      var files= $("#file")[0].files[0];

     //uuid 생성
       function guid() {
    	    function s4() {
    	      return ((1 + Math.random()) * 0x10000 | 0).toString(16).substring(1);
    	    }
    	    return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
    	  }// end guid
       
       var uuidFileName = guid() + "_" + files.name;
       
		$('#shoplogo').val(uuidFileName);

            var upload = storage.ref().child("shoplogo/" +uuidFileName);
            var uploadTask = upload.put(files);

            uploadTask.on('state_changed', function(snapshot){
            }, function(error) {
            }, function() {
                var downloadURL = uploadTask.snapshot.downloadURL;
            });
 }
 
 	/* register submit */
   $("#registerBtn").click(function() {
	   
	   var nullCheck = "F";
	   
		 /* null값 확인 */
		 for(var i = 0 ; i < 15 ; i++){
			 
			 if($('#register')[0][i].value == "" || $('#register')[0][i].value == null){
				 nullCheck = "F";
			 }
			 else{
					 nullCheck = "T";
				 }//end null check

			}//end for nullCheck
			
		//빈칸 여부 확인 후 id, pw, 리캡쳐 확인
		 if(nullCheck == "T"){
				 	//	id 중복 체크
				    if(idCheckResult == "T"){
						//pw 체크
				 	   if($('#adminpw').val() == $('#pwCheck').val()){
					    	   
					 		 /* 리캡쳐 여부 확인 */
					    if (document.getElementById('mc-canvas').className.indexOf('mc-valid') < 0) {
	                swal("모션 캡쳐가 일치하지 않습니다.", "", "error");
	                upass.focus();
	            }
		 				   //주소 최종 등록
		 		    	   var totalAddress = $('#postCode').val() + '\t' + $('#roadAddress').val() +'\t'+ $('.detailAddress').val();
		 		           $('.detailAddress').val(totalAddress);
		 		      	
		 			       $("#register").submit();
					
					    }else if($('#pwCheck').val() == ""){
					   	   swal("비밀번호를 확인해 주세요!", "", "error");
					    }else{
					   	   swal("비밀번호가 일치하지 않습니다!", "", "error");
					    }//end pw check
						
			    }else{
			 	   swal("아이디 중복체크를 해주세요!", "", "error");
			    }//end id check
			    

			    
		 }else{
			 swal("빈칸이 존재합니다!", "", "error");
		 }


  });//end register submit event
  
  
   
   
   $("#cancelBtn").on("click", function(event){
      event.preventDefault();
      swal({
           title: "정말로 취소하시겠습니까?",
           text: "등록을 취소하면 그동안 작성했던 데이터를 잃을 수 있습니다.",
           type: "warning",
           showCancelButton: true,
           confirmButtonClass: "btn-danger",
           cancelButtonText: "아니오",
           confirmButtonText: "예",
           closeOnConfirm: false,
           closeOnCancel: false
         },
         function(isConfirm) {
           if (isConfirm) {
             swal("회원가입을 취소합니다.", "1초 후, 메인 화면으로 돌아갑니다.", "error");
             setTimeout((isConfirm) => {
               self.location = "/member/index";
            }, 1000);
           } else {
             swal("", "회원가입  화면으로 돌아갑니다.");
           }
         });// end isConFirm function
   });
   
   
   // 아이디 중복체크
   $(".fa-check-square-o").on("click",function(){
                 
       var inputId = $("#inputId").val();
       var formData = new FormData();
        
       formData.append("adminid", inputId);
             
         $.ajax({
            url : "/idCheck",
            data : formData,
            dataType : 'text',
            type : "post",
            contentType : false,
            processData : false,
            success : function( result ) {

               if( result != ""){
                  swal("중복된 아이디 입니다 !","","error");
                  $("#inputId").val("");
               } else if ( inputId == ""){
                  swal("아이디를 입력해주세요 !");
               } else {
                  swal("사용 가능합니다 !","","success");
                  idCheckResult = "T";
               }
            }// end success
      });// end ajax
   });// end idCeheck function
</script>
</html>