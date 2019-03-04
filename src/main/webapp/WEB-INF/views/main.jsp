<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>MOVIECUBE</title>
<meta >
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/bootstrap4/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/plugins/OwlCarousel2-2.2.1/animate.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/main_styles.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/responsive.css "/>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/jquery.bxslider.css "/>

<script src="/moviecube/resources/js/jquery-3.2.1.min.js"  ></script>
<script src="/moviecube/resources/css/bootstrap4/popper.js "  ></script>
<script src="/moviecube/resources/css/bootstrap4/bootstrap.min.js "  ></script>
<script src="/moviecube/resources/plugins/Isotope/isotope.pkgd.min.js "  ></script>
<script src="/moviecube/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js "  ></script>
<script src="/moviecube/resources/plugins/easing/easing.js "  ></script>
<script src="/moviecube/resources/plugins/jquery.fitvids.js "  ></script>
<script src="/moviecube/resources/js/custom.js " ></script>
<script src="/moviecube/resources/js/jquery.bxslider.min.js "  ></script>
<script>
  $(document).ready(function(){
    $('.slider').bxSlider({
    	auto: true, 
    	speed: 500, 
    	pause: 3500, 
    	mode:'fade', 
    	pager:true,
    	/* video: true, */
    });
  });
</script>
<script>
  $(document).ready(function(){
    // Target your .container, .wrapper, .post, etc.
    $("#thing-with-videos").fitVids();
  });
</script>
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

	<!-- Header -->
	<header class="header trans_300">
		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">since 2019.02.25 / the masterpiece will go on</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<li class="notice"><a href="#">공지사항</a></li>
								<li class="FAQ"><a href="#">FAQ</a></li>
								<li class="QnA"><a href="#">1:1문의</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="#">MOVIE<span>CUBE</span></a>
						</div>
						<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="#">스토어</a></li>
									<li><a href="#">이벤트</a></li>
									<li><a href="#">빠른예매</a></li>
									<li><a href="#">로그인</a></li>
								</ul>
								<div class="hamburger_container">
									<i class="fa fa-bars" aria-hidden="true"></i>
								</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="fs_menu_overlay"></div>
	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content text-right">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a href="#">
						고객센터
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection">
						<li><a href="#">공지사항</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">1:1문의</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="#">스토어</a></li>
				<li class="menu_item"><a href="#">이벤트</a></li>
				<li class="menu_item"><a href="#">빠른예매</a></li>
				<li class="menu_item has-children">
					<a href="#">
						로그인
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection">
						<li><a href="#">예매확인/취소</a></li>
						<li><a href="#">찜목록</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>


		<!-- slider -->
		<div class="slider">
			<div>
			<div class="main_slider"
				style="background-image: url(images/lovelive.jpg)">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="row">
							<div class="main_slider_content">
								<h5 id="s1">LOVE LIVE SUNSHINE THE SCHOOL IDOL MOVIE:OVER
									THE RAINBOW</h5>
								<h2 id="s1">러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우</h2>
								<br>
								<h4 id="s1">아홉 소녀들의 청춘 드라마 드디어 국내 개봉!!!</h4>
								<div class="red_button shop_now_button">
									<a href="#">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			
			<div>
			<div class="main_slider"
				style="background-image: url(images/wall-E.jpg)">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="row">
							<div class="main_slider_content">
								<h5 id="s1">WALT DISNEY</h5>
								<h2 id="s1">월-E(WALL-E)</h2>
								<br>
								<h4 id="s1">예측불허! 차세대 영웅, 그가 지구 구하기에 나섰다!</h4>
								<div class="red_button shop_now_button">
									<a href="#">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			
			<div>
			<div class="main_slider"
				style="background-image: url(images/Interstella.jpg)">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="row">
							<div class="main_slider_content">
								<h5 id="s1">Interstella</h5>
								<h2 id="s1">인터스텔라</h2>
								<br>
								<h4 id="s1">"우린 답을 찾을 거야, 늘 그랬듯이"</h4>
								<div class="red_button shop_now_button">
									<a href="#">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			
			<div>
			<div class="main_slider"
				style="background-image: url(images/starwars.jpg)">
				<div class="container fill_height">
					<div class="row align-items-center fill_height">
						<div class="row">
							<div class="main_slider_content">
								<h5 id="s1">Star Wars: Episode II - Attack Of The Clones</h5>
								<h2 id="s1">스타워즈 에피소드2 - 클론의 습격</h2>
								<br>
								<h4 id="s1">아주 먼 옛날 은하계 저편에...</h4>
								<div class="red_button shop_now_button">
									<a href="#">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		 </div>


		<!-- BOX OFFICE -->
	<div class="new_arrivals">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>BOX OFFICE</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col text-center">
					<div class="new_arrivals_sorting">
						<ul class="arrivals_grid_sorting clearfix button-group filters-button-group">
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">HOT</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".women">최신개봉작</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".accessories">상영예정작</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

						<!-- Product 1 -->

						<div class="product-item men">
							<div class="product discount product_filter">
								<div class="product_image">
									<img src="images/product_1.png" alt="">
								</div>
								<div class="favorite favorite_left"></div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
									<div class="product_price">$520.00<span>$590.00</span></div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 2 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_2.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
									<div class="product_price">$610.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 3 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_3.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
									<div class="product_price">$120.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 4 -->

						<div class="product-item accessories">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_4.png" alt="">
								</div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
								<div class="favorite favorite_left"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
									<div class="product_price">$410.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 5 -->

						<div class="product-item women men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_5.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
									<div class="product_price">$180.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 6 -->

						<div class="product-item accessories">
							<div class="product discount product_filter">
								<div class="product_image">
									<img src="images/product_6.png" alt="">
								</div>
								<div class="favorite favorite_left"></div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="#single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
									<div class="product_price">$520.00<span>$590.00</span></div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 7 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_7.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
									<div class="product_price">$610.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 8 -->

						<div class="product-item accessories">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_8.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
									<div class="product_price">$120.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 9 -->

						<div class="product-item men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_9.png" alt="">
								</div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
								<div class="favorite favorite_left"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
									<div class="product_price">$410.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>

						<!-- Product 10 -->

						<div class="product-item men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="images/product_10.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
									<div class="product_price">$180.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">예매하기</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Deal of the week -->
	<div class="deal_ofthe_week">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="deal_ofthe_week_img">
						<img src="resources/images/deal_of_the_week.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6 text-right deal_ofthe_week_col">
					<div class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
						<div class="section_title">
							<h2>MOVIECUBE 팝콘 콤보<br> 4,000원 이벤트!!</h2>
						</div>
						<ul class="timer">
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="day" class="timer_num">03</div>
								<div class="timer_unit">Day</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="hour" class="timer_num">15</div>
								<div class="timer_unit">Hours</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="minute" class="timer_num">45</div>
								<div class="timer_unit">Mins</div>
							</li>
							<li class="d-inline-flex flex-column justify-content-center align-items-center">
								<div id="second" class="timer_num">23</div>
								<div class="timer_unit">Sec</div>
							</li>
						</ul>
						<div class="red_button deal_ofthe_week_button"><a href="#">구매하기</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Best Sellers -->
	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>MOVIECUBE</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container">
						<div class="owl-carousel owl-theme product_slider">

							<!-- Slide 1 -->

							<div class="owl-item product_slider_item">
								<div class="product-item">
									<div class="product discount">
										<div class="product_image">
											<img src="images/product_1.png" alt="">
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
											<div class="product_price">$520.00<span>$590.00</span></div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 2 -->

							<div class="owl-item product_slider_item">
								<div class="product-item women">
									<div class="product">
										<div class="product_image">
											<img src="images/product_2.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
											<div class="product_price">$610.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 3 -->

							<div class="owl-item product_slider_item">
								<div class="product-item women">
									<div class="product">
										<div class="product_image">
											<img src="images/product_3.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
											<div class="product_price">$120.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 4 -->

							<div class="owl-item product_slider_item">
								<div class="product-item accessories">
									<div class="product">
										<div class="product_image">
											<img src="images/product_4.png" alt="">
										</div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
										<div class="favorite favorite_left"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
											<div class="product_price">$410.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 5 -->

							<div class="owl-item product_slider_item">
								<div class="product-item women men">
									<div class="product">
										<div class="product_image">
											<img src="images/product_5.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
											<div class="product_price">$180.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 6 -->

							<div class="owl-item product_slider_item">
								<div class="product-item accessories">
									<div class="product discount">
										<div class="product_image">
											<img src="images/product_6.png" alt="">
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
											<div class="product_price">$520.00<span>$590.00</span></div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 7 -->

							<div class="owl-item product_slider_item">
								<div class="product-item women">
									<div class="product">
										<div class="product_image">
											<img src="images/product_7.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
											<div class="product_price">$610.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 8 -->

							<div class="owl-item product_slider_item">
								<div class="product-item accessories">
									<div class="product">
										<div class="product_image">
											<img src="images/product_8.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
											<div class="product_price">$120.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 9 -->

							<div class="owl-item product_slider_item">
								<div class="product-item men">
									<div class="product">
										<div class="product_image">
											<img src="images/product_9.png" alt="">
										</div>
										<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
										<div class="favorite favorite_left"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
											<div class="product_price">$410.00</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slide 10 -->

							<div class="owl-item product_slider_item">
								<div class="product-item men">
									<div class="product">
										<div class="product_image">
											<img src="images/product_10.png" alt="">
										</div>
										<div class="favorite"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
											<div class="product_price">$180.00</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Slider Navigation -->

						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
						</div>
						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Benefit -->
	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>free shipping</h6>
							<p>Suffered Alteration in Some Form</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>cach on delivery</h6>
							<p>The Internet Tend To Repeat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>45 days return</h6>
							<p>Making it Look Like Readable</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>opening all week</h6>
							<p>8AM - 09PM</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>Newsletter</h4>
						<p>Subscribe to our newsletter and get 20% off your first purchase</p>
					</div>
				</div>
				<div class="col-lg-6">
					<form action="post">
						<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
							<input id="newsletter_email" type="email" placeholder="Your email" required="required" data-error="Valid email is required.">
							<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

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
