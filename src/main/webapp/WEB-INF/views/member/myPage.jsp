<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="/WEB-INF/views/main/head.jspf"%>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/myPage.css"/>
<script type="text/javascript" src="/moviecube/resources/js/init.controls.js"></script>
</head>

<%@ include file="/WEB-INF/views/main/body_header.jspf"%>
-
<body>
<div id="container">
	<div class="width-fixed" style="position: relative">
		<div class="row1">

		</div>
		<div class="row3">
		
			<div class="cols col1">
			  <!-- 개인정보 -->
			  <div id="myPageMainUser" class="mypage_myInfo">
				<div class="h3_wrap mb35">
					<h3><img src="http://image2.megabox.co.kr/mop/home/mypage/main_title3.png" alt="개인정보"></h3>
					<button title="수정하기" onclick="showMenu('mypage-myinfo')" class="flex-c-m stext-107 cl13 size-301 bor21 p-lr-15 hov-tag2 trans-04">정보수정</button>
				</div>

				<ul>
					<li>
						<strong>이름</strong>
							<span>${sessionScope.userLoginInfo.MEMBER_NAME}님</span>
					</li>
					<li>
						<strong>휴대폰</strong>
						<span>${sessionScope.userLoginInfo.MEMBER_PHONE}</span>
					</li>
					<li>
						<strong>선호 영화관</strong>
						<span></span>
					</li>
<!-- 			 2014.09.19  페이스북 가입 및 연동 걷어내기 -->
			<!-- 	<li> -->
			<!-- 		<strong>페이스북 상태</strong> -->
			<!-- 		<span> -->
			<!-- 			<strong class="c_purple mr10">연동중</strong> -->
			<!-- 			<button onclick="MyPageMain.disconnectFacebook()"></button> -->

<!-- 			 2014.09.19  페이스북 가입 및 연동 걷어내기 -->
			<!-- 			<button onclick="MyPageMain.connectFacebook()"></button> -->
			<!-- 		</span> -->
			<!-- 	</li> -->
					<li>
						<strong>SMS수신여부</strong>
						<span class="btn_sms">
							<button class="no active" title="거부 선택됨" onclick="MyPageMain.setSmsReceiveYn('N')" value="거부">거부</button>
						<!--			-->
							<button class="yes" title="수신 " onclick="MyPageMain.setSmsReceiveYn('Y')" value="수신">수신</button>

						</span>
					</li>
				</ul>
				
				
			  <script type="text/javascript">
				  $('span.btn_sms').children('button').click(function() {
					  $('span.btn_sms').children('button').removeClass('active');
					  $('span.btn_sms').children('button').each(function(){
					  	$(this).attr("title",$(this).val());
					  });
					  $(this).addClass('active');
					  $(this).attr('title',$(this).val()+' 선택됨');
				  });
			  </script>
			  <script>initControls($('div#myPageMainUser'));</script>
			  </div>


		  <!-- 나의 무비스토리 -->
			  <div id="myPageMainMovieStory" class="mypage_main_box" style="height: 242px;">
				<div class="h3_wrap p-l-20 p-r-20 m10">
					<h3 style="height:23px;"><img src="http://image2.megabox.co.kr/mop/home/mypage/main_title7.png" alt="나의 무비스토리"></h3>
				</div>

				<ul class="mypage_main_moviestory m-t-30">
					<li>
						<a href="javascript:void(0)" onclick="showMenu('mypage-moviestory', 'interesting')" title="보고싶어 보기">
							<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon1.png" alt=""></span>
							<strong class="ml10">보고싶어</strong>
							<strong class="c_red pull-right">0</strong>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="showMenu('mypage-moviestory', 'seen')" title="본영화 보기">
							<span><img src="http://image2.megabox.co.kr/mop/home/mypage/main_icon2.png" alt=""></span>
							<strong class="ml10">본영화</strong>
							<strong class="c_red pull-right">0</strong>
						</a>
					</li>
				</ul>
			  <script>initControls($('div#myPageMainMovieStory'));</script>
			  </div>
			</div>
			
			
			
		  <!-- 나의 예매내역 -->
			<div id="myPageMyBooking" class="cols col2">
				<div class="mypage_main_box" style="height: 505px;">
					<div class="h3_wrap mb38">
						<h3><img src="http://image2.megabox.co.kr/mop/home/mypage/main_title4.png" alt="최근 예매 내역"></h3>
						<button title="더보기" onclick="showMenu('mypage-booking')"><img src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기"></button>
				  	</div>
	
				<ul class="booking_list">
					<li class="no_data text-center pa30">조회된 내역이 없습니다</li>
				</ul>
				</div>
			<script>initControls($('div#myPageMyBooking'));</script>
			</div>



			<div class="cols col3">
				<div id="myPageMyQuestion" class="mypage_main_box" style="height: 505px;">
				  <div class="positionR">
					<div class="h3_wrap mb38">
						<h3 style="height:23px;"><img src="http://image2.megabox.co.kr/mop/home/mypage/main_title8.png" alt="나의문의내역"></h3>
					</div>

					<ul class="type1">
						<li class="no_data text-center pa30">조회된 내역이 없습니다</li>
					</ul>
					
					<div class="positionA" style="top:0; right:0;">
						<button title="더보기" onclick="showMenu('mypage-question')">
						  <img src="http://image2.megabox.co.kr/mop/home/mypage/main_btn2.jpg" alt="더보기">
						</button>
					</div>
				  </div>

				<script>initControls($('div#myPageMyQuestion'));</script>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/main/script.jspf" %>
</body>
</html>