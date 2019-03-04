<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="/WEB-INF/views/main/head.jspf" %>
</head>
<body>
<!-- 
[목록] 
1. Header
  1) Top Navigation
  2) Main Navigation

2. hamburger_menu

3. Slider

4. Box Office

-->
<div class="super_container">

<%@ include file="/WEB-INF/views/main/body_header.jspf" %>


		<!-- 바디 1단 -->
		<!-- slider -->
<%@ include file="/WEB-INF/views/main/body_SLIDER.jspf" %>


		<!-- 바디 2단 -->
		<!-- BOX OFFICE -->
<%@ include file="/WEB-INF/views/main/body_BOXOFFICE.jspf" %>


		<!-- 바디 3단 -->
		<!-- EVENT -->
<%-- <%@ include file="/WEB-INF/views/main/body_EVENT.jspf" %> --%>


		<!-- 바디 4단 -->
		<!-- MOVIECUBE -->
<%@ include file="/WEB-INF/views/main/body_MOVIECUBE.jspf" %>	


		<!-- 바디 5단  -->
		<!-- Benefit & newsletter -->
<%@ include file="/WEB-INF/views/main/benefit_newsletter.jspf" %>



	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav">
							<li><a href="#">Blog</a></li>
							<li><a href="#">FAQs</a></li>
							<li><a href="contact.html">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container">
						<div class="cr">©2018 All Rights Reserverd. Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a> &amp; distributed by <a href="https://themewagon.com">ThemeWagon</a></div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

</body>

</html>
