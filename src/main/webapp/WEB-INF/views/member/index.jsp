<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Shopping mall</title>
</head>
<!--/head-->
<link href='http://fonts.googleapis.com/css?family=Cedarville+Cursive' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="/resources/member/css/index.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>	

<link href="http://t4t5.github.io/sweetalert/dist/sweetalert.css" rel="stylesheet">
<script src="http://t4t5.github.io/sweetalert/dist/sweetalert.min.js"></script>
<!-- 구글 비젼에 데이터 요청 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<body>
<div id="background">
	<div id="gallery" style="margin-left:20%;">
		<figure class="pic1"> 
			<a href="thema1/index"> 
				<img src="/resources/indexImg/index1.png" />
			</a> 
			<figcaption>Haerin's shop</figcaption> 
		</figure>
		
		<figure class="pic7"> 
			<a href="thema2/index"> 
				<img src="/resources/indexImg/index2.png" />
			</a> 
			<figcaption>Jinsu's shop</figcaption> 
		</figure>
		
		<figure class="pic3"> 
			<a href="thema3/index"> 
				<img src="/resources/indexImg/index3.png" />
			</a> 
			<figcaption>Jungmin's shop</figcaption>
		</figure>
		
		<figure class="pic4"> 
			<a href="thema4/index"> 
				<img src="/resources/indexImg/index4.png" />
			</a> 
		<figcaption>Youngmin's shop</figcaption> 
		</figure>
		
		<figure class="pic5"> 
			<a href="#"> 
				<img src="/resources/indexImg/index5.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
		
		<figure class="pic10 camera" style="width: 320px; height: 178px"> 
			<a href='#' id="myBtn" class='btn-example'> 
				<i class="fa fa-camera-retro" style="font-size: 150px;"></i>
			</a> 
			<figcaption>Search Camera</figcaption> 
		</figure>
		
		<figure class="pic7">
			<a href="#"> 
				<img src="/resources/indexImg/index6.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
		
		<figure class="pic8"> 
			<a href="#"> 
				<img src="/resources/indexImg/index7.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
		
		<figure class="pic9"> 
			<a href="#"> 
				<img src="/resources/indexImg/index3.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
		
		<figure class="pic10"> 
			<a href="#"> 
				<img src="/resources/indexImg/index2.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
		
		<figure class="pic11"> 
			<a href="#"> 
				<img src="/resources/indexImg/index1.png" />
			</a> 
			<figcaption>Shopping mall</figcaption> 
		</figure>
	</div>

</div>

<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content" style="width:40%; height:80%;">
    <div class="modal-header">
      <span class="close" id="webCamClose">&times;</span>
      <h2>Please put the card on the camera.</h2>
    </div>
    
    <div class="modal-body">
     <video id="video" width="100%" height="80%" autoplay></video>
  	 <canvas id="canvas"></canvas>
   	 <br/>
  	 <div id="ViewTimer"></div>
    </div>
    <div class="modal-footer">
      <h3>won - piece</h3>
    </div>
  </div>
</div>
</body>

<script>
		
		var modal = document.getElementById('myModal');	
		var btn = document.getElementById("myBtn");
		var span = document.getElementsByClassName("close")[0];
		var video = document.getElementById('video');
		var canvas = document.getElementById('canvas');
		var context = canvas.getContext('2d');
		var video = document.getElementById('video');
		var videoJQ = $("#video");
		var canvasJQ = $("#canvas");
		var cameraBtn = $("#myBtn");
		var cameraDiv = $(".camera");
		
		btn.onclick = function() {
		    modal.style.display = "block";
		}
		
		span.onclick = function() {
			modal.style.display = "none";
			canvasJQ.attr("heigth","0");
			canvasJQ.attr("width","0");
		    cameraDiv.show();
		}
		
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}

		
		// 웹캠을 클릭시 활성화
		cameraBtn.on("click",function(){
			canvasJQ.hide();
			if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
				navigator.mediaDevices.getUserMedia({
					video : true
				}).then(function(stream) {
				    video.src = window.URL.createObjectURL(stream);
				    videoJQ.show();
				    video.play();
				    cameraDiv.hide();
				});
			}
		});
		 

			
		 
		
		 document.getElementById("video").addEventListener("click", function() {
		 	var videoHeight = videoJQ[0].offsetHeight;
		 	var videoWidth = videoJQ[0].offsetWidth;
		 	
		 	canvasJQ.show(); 
		 	canvas.height = videoHeight;
		 	canvas.width = videoWidth;
	        videoJQ.hide();
	        
	        context.drawImage(video, 0, 0,videoWidth,videoHeight);
	        var base64 = canvas.toDataURL("image/jpeg");
	        sendFileToCloudVision(base64.replace('data:image/jpeg;base64,', ''));      
	  });
	    
	    
	    function sendFileToCloudVision (content) {
	     	  var type = "TEXT_DETECTION";

	     	  // Strip out the file prefix when you convert to json.
	     	  var request = {
	     	    requests: [{
	     	      image: {
	     	        content: content
	     	      },
	     	      features: [{
	     	        type: type,
	     	        maxResults: 200
	     	      }]
	     	    }]
	     	  };

	     	  $.post({
	     	    url:'https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDZVLNTpGmVooQatMslQnPYKyNAMKhOuOo',
	     	    data: JSON.stringify(request),
	     	    contentType: 'application/json',
	     	  }).fail(function (jqXHR, textStatus, errorThrown){
	     	  }).done(displayJSON);
	     	}

	     	/**
	     	 * Displays the results.
	     	 */
	     	function displayJSON (data) {
	     	  if(data.responses[0].textAnnotations==null || data.responses[0].textAnnotations[0].description.split("#")[1]==null){
	     		swal({
	     			  title: "인식에 실패 하였습니다.",
	     			  text: "다시 시도해주세요.",
	     			  type: "error",
	     			  timer: 1000,
	     			  showConfirmButton: false
	     			});
	     		cameraBtn.trigger("click");	
	     	  }
     		  var contents = JSON.stringify(data.responses[0].textAnnotations[0].description.split("#")[1].split(" ")[0]);
     		  var pno = parseInt(contents.split('"')[1]);
	     	  
	         $.ajax({
	             url:'/themaGet',
	             type:'get',
	             datatype: 'json',
	             data:"pno="+pno,
	             success:function(data){
	            	 console.log("====="+data.shoplogo);
	            	 console.log("====="+data.thema);
	            	 if(data.thema!="fail"){
	        	     	 swal({
	        		            title: "해당 상품으로 이동합니다.",
	        		            text:  "",
	        		            imageUrl: data.shoplogo,
	        		            closeOnConfirm: false,
	        		            showConfirmButton: false,
	        		            showLoaderOnConfirm: true,
	        		          });
		                  setTimeout(() => {
			  	                self.location = data.thema;               
			  	              }, 2000);  
	            	 }else{
		     	     	swal({
			  	     			title: "해당 상품이 존재 하지 않습니다.",
			  	     	 		text: "다시 시도해주세요.",
			  	     			type: "error",
			  	     			timer: 1500,
			  	     			showConfirmButton: false
			  	     		});
			  	     	cameraBtn.trigger("click");	
	            	 }
	            	 

	             }
	         });
	    }
</script>
</html>
