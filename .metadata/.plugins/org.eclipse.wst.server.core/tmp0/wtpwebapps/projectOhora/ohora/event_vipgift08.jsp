<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라 팀 프로젝트</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/projectOhora/resources/cdn-main/event.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
</head>
<%@include file="header.jsp" %>
<body>
<div class="wrap">
    <div class="eventDetail">
        <div class="title-block">
        </div>
       <div class="event-wrap">
            <p style="text-align: center;">
                  <img src="/projectOhora/resources/images/event_vipgift08_image/VIP-GIFT-SEASON-8-01.jpg" alt="">
                  <img src="/projectOhora/resources/images/event_vipgift08_image/VIP-GIFT-SEASON-8-02.jpg" alt="">
                  <img src="/projectOhora/resources/images/event_vipgift08_image/VIP-GIFT-SEASON-8-03.jpg" alt="">
                  <a href="https://forms.gle/qs528KaVtkiN5P749">
                  <img src="/projectOhora/resources/images/event_vipgift08_image/VIP-GIFT-SEASON-8-04.jpg" alt="">
                  </a>
                  <img src="/projectOhora/resources/images/event_vipgift08_image/VIP-GIFT-SEASON-8-05.jpg" alt="">
                  
                  <!-- go_top 버튼 -->
				   <div id="floating">
					    <div class="go_top">
					        <span class="icon"></span>
					    </div>
					</div>
                  
               <script>
	            // go_top 버튼 스크립트
	               $(document).ready(function() {
	                   // go_top 버튼 클릭 시 상단으로 부드럽게 이동
	                   $('.go_top').on('click', function() {
	                       $('html, body').animate({ scrollTop: 0 }, 400);
	                       return false;
	                   });
	                   
	                   // 스크롤 이벤트에 따라 go_top 버튼 표시
	                   $(window).scroll(function() {
	                       if ($(this).scrollTop() > 200) {
	                           $('#floating').fadeIn();
	                       } else {
	                           $('#floating').fadeOut();
	                       }
	                   });
	               });
	            </script>
            </p>
            </div>
            </div>
        </div>

</body>
<%@include file="footer.jsp" %>
</html>