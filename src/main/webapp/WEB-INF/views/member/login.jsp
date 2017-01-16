<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="UTF-8">
<title>Calm breeze login screen</title>
<link rel="stylesheet" href="/resources/member/css/loginStyle.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<style>
#video { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
/*      max-width: 100%;  */
/*      max-height: 100%;  */
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}

</style>

</head>
<body>
<div class="wrapper">
    <div class="container">
        <h2>Welcome</h2>

        <form class="form">
            <input type="text" placeholder="Username">
            <input type="password" placeholder="Password">
            <button type="submit" id="login-button">Login</button>
        </form>
    </div>
</div>
<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="/resources/member/video/sample.mp4">

</video>



</body>
<script src="/resources/member/js/loginJs.js"></script>
</html>
