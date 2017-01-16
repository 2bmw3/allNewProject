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
<body>
<div id="background">
	<div id="gallery">
		<figure class="pic1"> 
			<a href="thema1/index"> 
			<img src="/resources/indexImg/index1.png" />
			</a> 
			<figcaption>Haerin's shop</figcaption> 
		</figure>
		
		<figure class="pic2"> 
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
		
		<figure class="pic6" style="width: 320px; height: 178px"> 
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
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>webcam</h2>
    </div>
    <div class="modal-body">
    
     <video id="video" width="100%" height="100%" autoplay></video>
  	 <canvas id="canvas"></canvas>
   	 <br/>
  	 <div id="ViewTimer"></div>
   	 <br/>
            
    </div>
    <div class="modal-footer">
      <h3>won-piece</h3>
    </div>
  </div>

</div>
</body>

<script>

	var modal = document.getElementById('myModal');
	
	var btn = document.getElementById("myBtn");
	
	var span = document.getElementsByClassName("close")[0];
	
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}

	var video = document.getElementById('video');
	
	if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
	   navigator.mediaDevices.getUserMedia({
	      video : true
	   }).then(function(stream) {
	      video.src = window.URL.createObjectURL(stream);
	      video.play();
	   });
	}
	 
	 var canvas = document.getElementById('canvas');
	 var context = canvas.getContext('2d');
	 var video = document.getElementById('video');
		
	 $("#canvas").hide();
	
	 document.getElementById("video").addEventListener("click", function() {
	 	
	 	var videoHeight = $("#video")[0].offsetHeight;
	 	var videoWidth = $("#video")[0].offsetWidth;
	 	
	 	$("#canvas").show();
	 	canvas.height = videoHeight;
	 	canvas.width = videoWidth;
	  	$('#video').hide();
	    context.drawImage(video, 0, 0,videoWidth,videoHeight);
	 });

</script>
</html>