<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=1000,user-scalable=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />


	
	<meta property="og:type" content="movie"/>
	<meta property="og:site_name" content="메가박스"/>
	<meta property="fb:app_id" content="356285641381572"/>
	
	<title>라이프시어터, 메가박스</title>
	
	<meta property="og:image" content="http://image2.megabox.co.kr/mop/home/appbunpage/URLVIEW.jpg" />

	
	<title>라이프시어터, 메가박스</title>
	
	<!-- Bootstrap core CSS -->
	<link href="/moviecube/resources/css/megabox.css" rel="stylesheet">
	<link href="/moviecube/resources/css/normalize.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="/moviecube/resources/css/font-awesome.css" rel="stylesheet">
	<link href="/moviecube/resources/css/theme.css" rel="stylesheet">
	<link href="/moviecube/resources/css/theme2.css" rel="stylesheet">
	<link href="/moviecube/resources/css/forms.css" rel="stylesheet">
	<link href="/moviecube/resources/css/etc.css" rel="stylesheet">

	<!-- javascript// -->
	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/59C14B23-8FBE-3B4A-A0ED-BA008DDFBB16/main.js" charset="UTF-8"></script><script type="text/javascript" src="/moviecube/resources/jsmb/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.form.min.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/init-controls.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/megabox.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/common.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/ajax.js"></script>
	<script type="text/javascript" src="http://image2.megabox.co.kr/mop/home/appbunpage/js/megaBranch.js"></script>
	<script type="text/javascript" src="/moviecube/resources/pages/booking/booking.js"></script>

	<script type="text/javascript" src="/moviecube/resources/jsmb/common/facebook-sdk.js"></script>

	<script type="text/javascript" src="/moviecube/resources/jsmb/common/aes.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/sha256.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/common/DateUtils.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/bootstrapformega.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/holder.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/application.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/bootstrap-datepicker.js"></script><!-- datepicker -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.pjax.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/flip/jquery.easing.1.3.js"></script><!-- flip -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.raty.js"></script><!-- star -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/icheck.js"></script><!-- custom input -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.stellar.js"></script><!-- custom input -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.customSelect.js"></script><!-- custom select -->
	<!--[if lt IE 9]>
	<script  src="/moviecube/resources/jsmb/respond.js"></script>
	<script src="/moviecube/resources/jsmb/html5shiv.js"></script>
	<![endif]-->
	<script type="text/javascript" src="/moviecube/resources/jsmb/bootstrap-select.js"></script><!-- custom select -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.mousewheel.js"></script><!-- custom scrollbar -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/perfect-scrollbar.js"></script><!-- custom scrollbar -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.slides.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.smint.js"></script><!-- sticky scroll -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.bxslider.min.js"></script><!-- sticky scroll -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/jquery.lazyload.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/placeholders.min.js"></script><!-- html5 placeholders ie8,9 -->
	<script type="text/javascript" src="//cast.imp.joins.com/persona.js" async></script><!-- 20180319 광고코드 변경 -->
	<!-- //[netfunnel] -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/netfunnel.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/netfunnel_skin.js"></script>
<script type="text/javascript">
	// 현재 URL 담기
	var URLSearch = location.search ? location.search : "/";
	var URLTitle = document.title;
	// GA 셋팅 및 호출
	megaboxLog.init('pageview','','');

		var hostname = 'www.megabox.co.kr';

		var MyFavoriteCinema = {
			showPage: function() {
				var requestMyFavoriteCinema = null;
				try {
					requestMyFavoriteCinema = new JSPRequest('/pages/mypage/MyPage_FavoriteCinema.jsp', 'div#my_theater', 'div#my_theater');
					requestMyFavoriteCinema.request();
					customMessageBox('my_theater');
				} catch(e) {
					messageBox(e);
				}
			},

			setFavoriteCinema: function(selectTheater1,selectTheater2,selectTheater3) {

				var selectCinema1 = $('#my_theater select[name=selectTheater1]').val();
				var selectCinema2 = $('#my_theater select[name=selectTheater2]').val();
				var selectCinema3 = $('#my_theater select[name=selectTheater3]').val();
				
				if (selectTheater1 != ""){
					selectCinema1 = selectTheater1;
				}
				if (selectTheater2 != ""){
					selectCinema2 = selectTheater2;
				}
				if (selectTheater3 != ""){
					selectCinema3 = selectTheater3;
				}

				/* if(selectGroup1 == "" || selectCinema1 == "") {
					messageBox("알림", "1순위 입력은 필수입니다.");
					return;
				} */

				$.ajax({
					url: '/DataProvider',
					type: 'POST',
					data: {_command: 'User.setFavoriteCinema', cinema1: selectCinema1, cinema2: selectCinema2, cinema3: selectCinema3}

				}).success(function( data ) {
					if (data.resultCode === '0000') {
						messageBox('정상적으로 완료하였습니다.', function() {
							afterLogin();
							// 내 영화목록 가져오기
							$.ajax({
								url: '/DataProvider',
								type: 'POST',
								data: {_command: 'User.getFavoriteCinema'}
							}).success(function( data ) {
								
								if (data.resultCode === '0000') {
									MovieCinemaDatas.myCinemaDatas = data.cinemas;
									
									var $cinemaUl = $('.depth2', '#body_theater1 .theater_list').empty();
									
									for(var i = 1; i <= 3; i++){
										var cinemaCode = MovieCinemaDatas.myCinemaDatas['cinemaCode'+i];
										var cinemaName = MovieCinemaDatas.myCinemaDatas['cinemaName'+i];
										if(cinemaCode && cinemaName){
											$cinemaUl
											.append($('<li/>').attr('data-cinemaCode', cinemaCode).attr('data-screenCode', '').attr('data-screenName', '')
													.append($('<a href="javascript:void(0);" title="'+cinemaName+' 선택"/>').text(cinemaName)));
										}
									}									
																		
								}else{
									messageBox( data.resultMessage);
								}	
							});														
							
						});
						$(".btn_ca_close").click(function(){
							$(".tmpfocus").focus().removeClass("tmpfocus");
						});

					} else {
						messageBox( data.resultMessage);
					}
					$(".ok").click(function(){
						$(".tmpfocus").focus().removeClass("tmpfocus");
					});
				});
			},

			removeFavoriteCinema: function(index) {
				if (index == 1) {
					/* messageBox('1순위 영화관은 삭제할 수 없습니다.');
					return; */
					$('#my_theater select[name=selectGroup1]').val('');
					$('#my_theater select[name=selectTheater1]').val('');
				} else if (index == 2) {
					$('#my_theater select[name=selectGroup2]').val('');
					$('#my_theater select[name=selectTheater2]').val('');
				} else if (index == 3) {
					$('#my_theater select[name=selectGroup3]').val('');
					$('#my_theater select[name=selectTheater3]').val('');
				}

				$('#my_theater select').selectpicker('refresh');
				this.setFavoriteCinema('','','');
			}
		};

	

	var imgPath = '';
	var linkType = '';
	var link = '';
	var htmlYN = '';

	/*
		2015.03.13
		전면배너 팝업 24시간 보지않기 관련 추가
		메인화면에서만 출력
	*/
	function frontBannerShow(){

		var menuId = 'main';
		//alert("frontBannerShow: ");

		if(getCookie('fbClose24Yn') !== 'Y' && imgPath != '' && menuId == "main"){
			$('#notice_popup').show();

			// htmlYN 이 Y 인경우 무시하기
			if(htmlYN !== 'Y') {
				// 링크가 있는 경우엔 a태그에 링크 추가
				if(linkType !== '' && link !== ''){
					$('#notice_img a').attr('href', 'javascript:adHasClickHeader(\'\', \'\', 0, \'front\')');
				}
			}
		}
	}

	</script>

	<script>
		var domain_host = location.host.toLowerCase();
		var currentAddress = location.href;
		if (domain_host.indexOf("www")== -1 && domain_host.indexOf("local")== -1 && domain_host.indexOf("megacity")== -1  && domain_host.indexOf("megact")== -1 && domain_host.indexOf("webstay")== -1)
		{
			//currentAddress = currentAddress.replace("//","//www.");
			//location.href = currentAddress;
		}

		var lowBrowserVer=false;
		if( navigator.appName.indexOf("Microsoft") > -1 )
		{
			if(navigator.appVersion.indexOf("MSIE 8") > -1)
				lowBrowserVer=true;
			else if(navigator.appVersion.indexOf("MSIE 9") > -1)
				lowBrowserVer=true;
			else if(navigator.appVersion.indexOf("MSIE 7") > -1)
				lowBrowserVer=true;
			else
				lowBrowserVer=false;
		}
	    var browser = navigator.userAgent.toLowerCase();
		if(browser.indexOf('firefox') > -1)
		{
			lowBrowserVer=false;
		}

		if(browser.indexOf('opera') > -1)
		{
			lowBrowserVer=false;
		}

	//2014.11.06 추가좀하겠습니다.
	//skipnav입니다.
	function f_skipnavi(){
		$("#main").find("a,button,*[tabindex='0'],input,select").each(function(){
			if($(this).attr("type") != "hidden"){
				if($(this).css("display") != "none"){
					if($(this).attr("name") != "searchCard"){
						$(this).focus(); return false;
					}
				}
			}
		});
		if($("#main").find("a,button,*[tabindex='0'],input,select").size() == 0){
			$("#footer_list").focus();
		}
	}
	//2014.11.21 추가합니다.
	//상단배너 닫아라
	function header_TopBn(){
		$("body").removeClass("TopBn_ok");
	}

	// 상단, 전면 배너 클릭 시 클릭 수 인자 전달
	function adHasClickHeader(val_1, val_2, adClick, type) {
		if(adClick > 0) {
			$.ajax({
				url	  : '/DataProvider',
				type  : 'POST',
				async : true,
				data  : {
					_command : 'System.adHasClicked',
					adClick	 : adClick,
					siteCode : '36'
				}
			}).success(function( data ) {
			});
		}

		// 팝업 링크
		if(type == 'top') {
			window.open(val_1, val_2);
		} else {
			var linkType = val_1;
			var link = val_2;
			location.href = getBannerPopupUrl(linkType, link);
		}

	}
	</script>

</head>

<body>
<div class="wrapper">
		<div class="contents clearfix ReservationBn_ok" tabindex="0">

			<!-- 언어버튼 -->
<!-- 			<button type="button" class="img_btn booking lang_ko">한국어</button> -->
			<!-- <button type="button" class="img_btn booking lang_en" onclick="alert('준비중')">English</button> -->

			<!-- 콘텐츠// -->
			<div class="left_wrap">
				<!-- 날짜// -->
				<div class="date">
					<div class="title clearfix">
						<h2 class="h2_date">날짜</h2>
						<div class="util" id="datepicker_wrap">
							<button type="button" class="img_btn booking btn_util cal" data-date="2019-03-04" data-date-format="yyyy-mm-dd">날짜선택</button>
						<div class="datepicker dropdown-menu" tabindex="0"><div class="datepicker-days" style="display: block;"><table class=" table-condensed" cellpadding="0" cellspacing="0"><caption class="blind2">날짜선택 달력:각 날짜별로 상영 시간표를 확인하실 수 있습니다.</caption><thead><tr><th scope="col" class="prev"><a href="javascript:void(0);" class="fa fa-chevron-left a_block" title="이전달 보기"><span class="blind">이전달</span></a></th><th scope="col" colspan="5">3월 2019</th><th scope="col" class="next"><a href="javascript:void(0);" class="fa fa-chevron-right a_block" title="다음달 보기"><span class="blind">다음달</span></a></th></tr><tr><th scope="col" class="dow">일</th><th scope="col" class="dow">월</th><th scope="col" class="dow">화</th><th scope="col" class="dow">수</th><th scope="col" class="dow">목</th><th scope="col" class="dow">금</th><th scope="col" class="dow">토</th></tr></thead><tbody><tr><td class="day  old"><a href="javascript:void(0);" title="">24</a></td><td class="day  old"><a href="javascript:void(0);" title="">25</a></td><td class="day  old"><a href="javascript:void(0);" title="">26</a></td><td class="day  old"><a href="javascript:void(0);" title="">27</a></td><td class="day  old"><a href="javascript:void(0);" title="">28</a></td><td class="day "><a href="javascript:void(0);" title="">1</a></td><td class="day "><a href="javascript:void(0);" title="">2</a></td></tr><tr><td class="day "><a href="javascript:void(0);" title="">3</a></td><td class="day  active"><a href="javascript:void(0);" title="선택됨">4</a></td><td class="day "><a href="javascript:void(0);" title="">5</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">6</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">7</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">8</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">9</a></td></tr><tr><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">10</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">11</a></td><td class="day  c_mint"><a href="javascript:void(0);" title="선택 가능일">12</a></td><td class="day "><a href="javascript:void(0);" title="">13</a></td><td class="day "><a href="javascript:void(0);" title="">14</a></td><td class="day "><a href="javascript:void(0);" title="">15</a></td><td class="day "><a href="javascript:void(0);" title="">16</a></td></tr><tr><td class="day "><a href="javascript:void(0);" title="">17</a></td><td class="day "><a href="javascript:void(0);" title="">18</a></td><td class="day "><a href="javascript:void(0);" title="">19</a></td><td class="day "><a href="javascript:void(0);" title="">20</a></td><td class="day "><a href="javascript:void(0);" title="">21</a></td><td class="day "><a href="javascript:void(0);" title="">22</a></td><td class="day "><a href="javascript:void(0);" title="">23</a></td></tr><tr><td class="day "><a href="javascript:void(0);" title="">24</a></td><td class="day "><a href="javascript:void(0);" title="">25</a></td><td class="day "><a href="javascript:void(0);" title="">26</a></td><td class="day "><a href="javascript:void(0);" title="">27</a></td><td class="day "><a href="javascript:void(0);" title="">28</a></td><td class="day "><a href="javascript:void(0);" title="">29</a></td><td class="day "><a href="javascript:void(0);" title="">30</a></td></tr><tr><td class="day "><a href="javascript:void(0);" title="">31</a></td><td class="day  new"><a href="javascript:void(0);" title="">1</a></td><td class="day  new"><a href="javascript:void(0);" title="">2</a></td><td class="day  new"><a href="javascript:void(0);" title="">3</a></td><td class="day  new"><a href="javascript:void(0);" title="">4</a></td><td class="day  new"><a href="javascript:void(0);" title="">5</a></td><td class="day  new"><a href="javascript:void(0);" title="">6</a></td></tr></tbody></table><div class="date_info"><p class="blind2">날짜를 선택하면,</p><p class="selected_date ml5 displ_in_b fl ml20">선택한 날짜</p><p class="blind2">,</p> <p class="possible_date ml30 displ_in_b fl">선택 가능일</p><p class="blind2 clearB">을 확인할 수 있습니다.</p></div></div></div></div>
					</div>

					<div class="slidebar" id="sel_date">
						<ul class="slidebar_control">
							<li><i class="fa fa-caret-left prev"><span class="blind">이전날짜보기</span></i></li>
							<li><i class="fa fa-caret-right next"><span class="blind">다음날짜보기</span></i></li>
						</ul>
						<div class="slidebar_item" tabindex="0">
							<ol style="width: 2040px;">


								<li data-item="2019-03-04">
								<a href="#" class="active no_click" onclick="return false;" title="선택됨">
								오늘
								</a>
								</li>

								<li data-item="2019-03-05">
								<a href="#" class="no_click" onclick="return false;" title="">
								05(화)
								</a>
								</li>

								<li data-item="2019-03-06">
								<a href="#" class="" onclick="return false;" title="">
								06(수)
								</a>
								</li>

								<li data-item="2019-03-07">
								<a href="#" class="" onclick="return false;" title="">
								07(목)
								</a>
								</li>

								<li data-item="2019-03-08">
								<a href="#" class="" onclick="return false;" title="">
								08(금)
								</a>
								</li>

								<li data-item="2019-03-09">
								<a href="#" class="" onclick="return false;" title="">
								09(토)
								</a>
								</li>

								<li data-item="2019-03-10">
								<a href="#" class="" onclick="return false;" title="">
								10(일)
								</a>
								</li>

								<li data-item="2019-03-11">
								<a href="#" class="" onclick="return false;" title="">
								11(월)
								</a>
								</li>

								<li data-item="2019-03-12">
								<a href="#" class="" onclick="return false;" title="">
								12(화)
								</a>
								</li>

								<li data-item="2019-03-13">
								<a href="#" class="no_click" onclick="return false;" title="">
								13(수)
								</a>
								</li>

								<li data-item="2019-03-14">
								<a href="#" class="no_click" onclick="return false;" title="">
								14(목)
								</a>
								</li>

								<li data-item="2019-03-15">
								<a href="#" class="no_click" onclick="return false;" title="">
								15(금)
								</a>
								</li>

								<li data-item="2019-03-16">
								<a href="#" class="no_click" onclick="return false;" title="">
								16(토)
								</a>
								</li>

								<li data-item="2019-03-17">
								<a href="#" class="no_click" onclick="return false;" title="">
								17(일)
								</a>
								</li>

								<li data-item="2019-03-18">
								<a href="#" class="no_click" onclick="return false;" title="">
								18(월)
								</a>
								</li>

								<li data-item="2019-03-19">
								<a href="#" class="no_click" onclick="return false;" title="">
								19(화)
								</a>
								</li>

								<li data-item="2019-03-20">
								<a href="#" class="no_click" onclick="return false;" title="">
								20(수)
								</a>
								</li>

								<li data-item="2019-03-21">
								<a href="#" class="no_click" onclick="return false;" title="">
								21(목)
								</a>
								</li>

								<li data-item="2019-03-22">
								<a href="#" class="no_click" onclick="return false;" title="">
								22(금)
								</a>
								</li>

								<li data-item="2019-03-23">
								<a href="#" class="no_click" onclick="return false;" title="">
								23(토)
								</a>
								</li>

								<li data-item="2019-03-24">
								<a href="#" class="no_click" onclick="return false;" title="">
								24(일)
								</a>
								</li>

								<li data-item="2019-03-25">
								<a href="#" class="no_click" onclick="return false;" title="">
								25(월)
								</a>
								</li>

								<li data-item="2019-03-26">
								<a href="#" class="no_click" onclick="return false;" title="">
								26(화)
								</a>
								</li>

								<li data-item="2019-03-27">
								<a href="#" class="no_click" onclick="return false;" title="">
								27(수)
								</a>
								</li>

								<li data-item="2019-03-28">
								<a href="#" class="no_click" onclick="return false;" title="">
								28(목)
								</a>
								</li>

								<li data-item="2019-03-29">
								<a href="#" class="no_click" onclick="return false;" title="">
								29(금)
								</a>
								</li>

								<li data-item="2019-03-30">
								<a href="#" class="no_click" onclick="return false;" title="">
								30(토)
								</a>
								</li>

								<li data-item="2019-03-31">
								<a href="#" class="no_click" onclick="return false;" title="">
								31(일)
								</a>
								</li>

								<li data-item="2019-04-01">
								<a href="#" class="no_click" onclick="return false;" title="">
								04/01(월)
								</a>
								</li>

								<li data-item="2019-04-02">
								<a href="#" class="no_click" onclick="return false;" title="">
								04/02(화)
								</a>
								</li>

							</ol>
						</div>
					</div>
				</div>
				<!-- //날짜 -->

				<!-- 극장// -->
				<div class="theater">
					<div class="title clearfix">
						<h2 class="h2_theater">극장</h2>
						<div class="util">
							<button type="button" class="img_btn booking btn_util fav pull-left mr4 active" id="getMyCinemaBtn" style="display: none;">선호영화관</button>
							<button type="button" class="img_btn booking btn_util refresh" id="refreshCinemaBtn">전부제거</button>
						</div>
					</div>
					<!-- 극장선택// -->
					<div id="cinemaList" class="list">
						<ul>
							<li class="none_select mr13 mb10">
								<button title="극장선택 빈프레임" type="button" class="btn_add" onclick="location.href='reserve_step1.do' "></button>
							</li>
							<li class="none_select mb10">
								<button title="극장선택 빈프레임" type="button" class="btn_add"></button>
							</li>
							<li class="none_select mr13">
								<button title="극장선택 빈프레임" type="button" class="btn_add"></button>
							</li>
							<li class="none_select ">
								<button title="극장선택 빈프레임" type="button" class="btn_add"></button>
							</li>
						</ul>
					</div>
					<!-- //극장선택 -->
				</div>
					<!-- //극장선택 -->
				</div>
				<!-- //극장 -->

				<!-- 영화선택// -->
				<div class="movie">
					<div class="title clearfix">
						<h2 class="h2_movie">영화</h2>
						<div class="util">
							<button type="button" class="img_btn booking btn_util btn_select_all pull-left mr4" id="getAllMovieBtn">All</button>
							<button type="button" class="img_btn booking btn_util refresh" id="refreshMovieBtn">전부제거</button>
						</div>
					</div>

					<!-- 전체선택// -->
					<div class="select_all" id="selectedAllMovie" style="display: none;">
						<div class="glass">
							<p>모든영화</p>
						</div>
						<div class="btn_wrap">
							<button class="img_btn select_movie" type="button" id="showMovieListBtn">영화선택</button>
						</div>
					</div>
					<!-- //전체선택 -->

					<!-- 개별선택// -->
					<div class="list selected" id="selectedMovieList" style="">
						<ul><li class="poster" data-moviecode="015053"><div class="poster"><button type="button" class="close_small" title="캡틴 마블 선택해제"></button><img alt="캡틴 마블" src="http://image2.megabox.co.kr/mop/poster/2019/FF/35FB82-03E7-4407-95A2-49C9E59B7365.medium.jpg"></div></li><li><div class="poster"><button type="button" class="btn_add" title="극장선택 빈프레임"></button></div></li><li><div class="poster"><button type="button" class="btn_add" title="극장선택 빈프레임"></button></div></li><li><div class="poster"><button type="button" class="btn_add" title="극장선택 빈프레임"></button></div></li></ul>
						<div class="check" aria-checked="true">
							<span class="icheckbox_minimal checked" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYnAll" name="movieTypeYnAll" value="all" title="전체" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label for="movieTypeYnAll">전체</label>
							<span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYn2D" name="movieTypeYn2D" value="2D" title="2D" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label for="movieTypeYn2D">2D</label>
							<span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYn3D" name="movieTypeYn3D" value="3D" title="3D" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label for="movieTypeYn3D">3D</label>
							<span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYnDubbing" name="movieTypeYnDubbing" value="dubbing" title="더빙" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label for="movieTypeYnDubbing">더빙</label>
							<span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYnCaption" name="movieTypeYnCaption" value="caption" title="자막" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label for="movieTypeYnCaption">자막</label>
							<span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" class="icheck movieType" id="movieTypeYnAtmos" name="movieTypeYnAtmos" value="atmos" title="ATMOS" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span> <label class="hover_pop" for="movieTypeYnAtmos">ATMOS <i class="fa fa-info-circle" tabindex="0"><span class="blind">ATMOS 설명보기</span></i></label>
						</div>
					</div>
					<!-- //개별선택 -->
					<div class="pop_atmos" id="popAtmos">
						<strong>｜ 청각을 만족시킬 단 하나의 기술 ATMOS ｜</strong>
						<span><i>-</i> 소리를 내는 개체의 위치와 이동에 기반하여<br>사운드와 함께 이동하는 영화관</span>
						<span><i>-</i> 최대 64개의 스피커가 각각 다른 사운드를 <br>재생하는 혁신적인 시스템</span>
						<span class="last"><i>-</i> 오버헤드 스피커를 추가하여 청중을<br>몰입시키는 자연스럽고 실감나는 사운드</span>
					</div>
				</div>
				<!-- //영화선택 -->
			</div>
			<div class="right_wrap">
				<!-- 시간// -->
				<div class="time">
					<div class="title clearfix">
						<h2 class="h2_time">시간</h2>
					</div>

					<div class="slidebar" id="sel_time">
						<ul class="slidebar_control">
							<li><i class="fa fa-caret-left prev"><span class="blind">1시간 이전 영화목록 보기</span></i></li>
							<li><i class="fa fa-caret-right next"><span class="blind">1시간 이후 영화목록 보기</span></i></li>
						</ul>
						<div class="slidebar_item" tabindex="0">
							<ol id="slidebarItems" style="width: 1364px; left: -176px;">
				
								<li data-select="00"><a href="javascript:void(0)" title="" class="">0</a><span class="arrow"></span></li>
				
								<li data-select="01"><a href="javascript:void(0)" title="" class="">1</a><span class="arrow"></span></li>
				
								<li data-select="02"><a href="javascript:void(0)" title="" class="">2</a><span class="arrow"></span></li>
				
								<li data-select="03"><a href="javascript:void(0)" title="" class="">3</a><span class="arrow"></span></li>
				
								<li data-select="04"><a href="javascript:void(0)" title="" class="">4</a><span class="arrow"></span></li>
				
								<li data-select="05"><a href="javascript:void(0)" title="" class="">5</a><span class="arrow"></span></li>
				
								<li data-select="06"><a href="javascript:void(0)" title="" class="">6</a><span class="arrow"></span></li>
				
								<li data-select="07"><a href="javascript:void(0)" title="" class="">7</a><span class="arrow"></span></li>
				
								<li data-select="08"><a href="javascript:void(0)" title="" class="">8</a><span class="arrow"></span></li>
				
								<li data-select="09"><a href="javascript:void(0)" title="선택됨" class="active">9</a><span class="arrow"></span></li>
				
								<li data-select="10"><a href="javascript:void(0)" title="" class="">10</a><span class="arrow"></span></li>
				
								<li data-select="11"><a href="javascript:void(0)" title="" class="">11</a><span class="arrow"></span></li>
				
								<li data-select="12"><a href="javascript:void(0)" title="" class="">12</a><span class="arrow"></span></li>
				
								<li data-select="13"><a href="javascript:void(0)" title="" class="">13</a><span class="arrow"></span></li>
				
								<li data-select="14"><a href="javascript:void(0)" title="" class="">14</a><span class="arrow"></span></li>
				
								<li data-select="15"><a href="javascript:void(0)" title="" class="">15</a><span class="arrow"></span></li>
				
								<li data-select="16"><a href="javascript:void(0)" title="" class="">16</a><span class="arrow"></span></li>
				
								<li data-select="17"><a href="javascript:void(0)" title="" class="">17</a><span class="arrow"></span></li>
				
								<li data-select="18"><a href="javascript:void(0)" title="" class="">18</a><span class="arrow"></span></li>
				
								<li data-select="19"><a href="javascript:void(0)" title="" class="">19</a><span class="arrow"></span></li>
				
								<li data-select="20"><a href="javascript:void(0)" title="" class="">20</a><span class="arrow"></span></li>
				
								<li data-select="21"><a href="javascript:void(0)" title="" class="">21</a><span class="arrow"></span></li>
				
								<li data-select="22"><a href="javascript:void(0)" title="" class="">22</a><span class="arrow"></span></li>
				
								<li data-select="23"><a href="javascript:void(0)" title="" class="">23</a><span class="arrow"></span></li>
				
								<li data-select="24"><a href="javascript:void(0)" title="" class="">24</a><span class="arrow"></span></li>
				
								<li data-select="25"><a href="javascript:void(0)" title="" class="">25</a><span class="arrow"></span></li>
				
								<li data-select="26"><a href="javascript:void(0)" title="" class="">26</a><span class="arrow"></span></li>
				
								<li data-select="27"><a href="javascript:void(0)" title="" class="">27</a><span class="arrow"></span></li>
				
								<li data-select="28"><a href="javascript:void(0)" title="" class="">28</a><span class="arrow"></span></li>
				
								<li data-select="29"><a href="javascript:void(0)" title="" class="">29</a><span class="arrow"></span></li>
				
								<li data-select="30"><a href="javascript:void(0)" title="" class="">30</a><span class="arrow"></span></li>
				
							</ol>
						</div>
					</div>
				</div>
				<!-- //시간 -->
				<!-- 영화목록// -->
				<div id="time-movie-list" class="movie_list">
					<ul id="movieTimeList"><li class="no_movie_list"><span class="blind">조회된 상영목록이 없습니다</span></li></ul>
				</div>

			</div>
			
					<!-- 광고영역추가 -->
					<div class="ad_wrapper clearfix">
					<div id="_f-0e_WORq-2M-GWki7O4Q_AD"><script type="text/javascript" src="//cast.imp.joins.com/persona.js" data-id="_f-0e_WORq-2M-GWki7O4Q" name="megabox_p/main/main@main_ticketing_bottom_970x80?mlink=71"></script><script src="//cast.imp.joins.com/body/_f-0e_WORq-2M-GWki7O4Q/ucIIumPLJ451DSkx9LfAajXojn3MVNqgcU8wrECmhdyEAM4qWzAZAbZCWHhtS0VSX1NyQ3FPR29MUE5VcUhBAstB1xrqKDMhhQPLQdca6igzIYU.js"></script><div id="_f-0e_WORq-2M-GWki7O4Q"><iframe src="//ad.imp.joins.com/html/megabox_p/main/main@main_ticketing_bottom_970x80?_cid=_f-0e_WORq-2M-GWki7O4Q&amp;_uid=ucIIumPLJ451DSkx9LfAajXojn3MVNqgcU8wrECmhdyEAM4qWzAZAbZCWHhtS0VSX1NyQ3FPR29MUE5VcUhBAstB1xrqKDMhhQPLQdca6igzIYU&amp;_ref=http://www.megabox.co.kr/" height="80px" width="966px" name="mliframe" scrolling="no" frameborder="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"></iframe></div></div>
<script type="text/javascript">
var _IMP_CONTAINER_ID = "_f-0e_WORq-2M-GWki7O4Q";
var _IMP_INVENTORY = "megabox_p/main/main@main_ticketing_bottom_970x80?mlink=71";
var script = document.createElement("script");
script.type= "text/javascript";
script.src = "//cast.imp.joins.com/persona.js";
script.setAttribute("data-id", _IMP_CONTAINER_ID);
script.setAttribute("name", _IMP_INVENTORY);
var obj = document.getElementById("_f-0e_WORq-2M-GWki7O4Q_AD");
obj.appendChild(script);
</script>
					</div>
					<!-- 광고영역추가// -->
					<script type="text/javascript">
					$(function(){
						$(".contents", "#reservation.booking_lp").addClass("ReservationBn_ok");
					});
					</script>
			

			<!-- //콘텐츠 -->
			<button type="button" class="custom_close focus_modal_close" data-dismiss="modal" aria-hidden="true" onclick="Booking.close()"><span class="blind">창닫기</span></button>
		</div>
	</div>
</body>
</html>
