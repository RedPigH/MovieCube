<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=1000,user-scalable=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />


	
	<meta property="og:type" content="movie"/>
	<meta property="og:site_name" content="메가박스"/>
	<meta property="fb:app_id" content="356285641381572"/>
	
	<title>MOVIECUBE</title>
	
	<meta property="og:image" content="http://image2.megabox.co.kr/mop/home/appbunpage/URLVIEW.jpg" />

	
	<title>MOVIECUBE</title>
	
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
	<script src="/js/respond.js"></script>
	<script src="/js/html5shiv.js"></script>
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
<div class="modal fade booking_lp booking_lp2 in" id="select_movie" tabindex="0" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">
	<div class="wrapper">
		<div class="contents" tabindex="0">
			<div class="movie_header">
				<h3 class="h3_movie_all pull-left overflow_visible active"><a class="blank movieListTabBtn" href="javascript:void(0);" data-tabtype="movie" title="모든영화 보기">모든영화</a></h3>
				<i class="icon h3_split pull-left"></i>
				<h3 class="h3_specialcontent pull-left overflow_visible"><a class="blank movieListTabBtn" href="javascript:void(0);" data-tabtype="special" title="특별컨텐트 보기">특별컨텐트</a></h3>
			</div>
			<div class="util">
				<div class="selected" id="movieSelected">
					<button class="img_btn booking sel_all mr10 ml0" id="selectAllMoovieBtn">All</button>
				<p class="selected_movie" data-moviecode="015053"><span>캡틴 마블 </span><a href="javascript:void(0);" class="fa fa-times a_in_block"><span class="blind">캡틴 마블 선택해제</span></a></p></div>
				<ul class="sort">
					<li><a href="javascript:void(0)" class="sortBtn active" data-sorttype="rank" title="예매율순 정렬하기">예매율순</a></li>
					<li><a href="javascript:void(0)" class="sortBtn" data-sorttype="title" title="가나다순 정렬하기">가나다순</a></li>
					<li class="last"><a href="javascript:void(0)" class="sortBtn" data-sorttype="releaseDate" title="개봉일순 정렬하기">개봉일순</a></li>
				</ul>
				</div>
			<div class="movie_body movie">
				<!--  영화목록 -->
				<ul id="selectMovieList" class="movie_list"><li data-moviecode="015053" class="selected"><a href="javascript:void(0);" title="캡틴 마블 선택됨"><span class="blind">캡틴 마블</span></a><div class="poster"><img alt="캡틴 마블" src="http://image2.megabox.co.kr/mop/poster/2019/FF/35FB82-03E7-4407-95A2-49C9E59B7365.medium.jpg"></div><p class="title" title="캡틴 마블"><span class="age age_12">12세관람가</span><span>캡틴 마블</span></p></li><li data-moviecode="015155"><a href="javascript:void(0);" title="항거:유관순 이야기 선택"><span class="blind">항거:유관순 이야기</span></a><div class="poster"><img alt="항거:유관순 이야기" src="http://image2.megabox.co.kr/mop/poster/2019/2F/F33188-32EC-4345-977A-8792C8E461A7.medium.jpg"></div><p class="title" title="항거:유관순 이야기"><span class="age age_12">12세관람가</span><span>항거:유관순 이야기</span></p></li><li data-moviecode="015123"><a href="javascript:void(0);" title="사바하 선택"><span class="blind">사바하</span></a><div class="poster"><img alt="사바하" src="http://image2.megabox.co.kr/mop/poster/2019/58/17AD69-B9EC-4310-80E3-55AFE01579D3.medium.jpg"></div><p class="title" title="사바하"><span class="age age_15">15세관람가</span><span>사바하</span></p></li><li data-moviecode="015075"><a href="javascript:void(0);" title="더 페이버릿: 여왕의 여자 선택"><span class="blind">더 페이버릿: 여왕의 여자</span></a><div class="poster"><img alt="더 페이버릿: 여왕의 여자" src="http://image2.megabox.co.kr/mop/poster/2019/BA/8372D9-D785-4373-84B0-0D064D0F8912.medium.jpg"></div><p class="title" title="더 페이버릿: 여왕의 여자"><span class="age age_15">15세관람가</span><span>더 페이버릿: 여왕의 여자</span></p></li><li data-moviecode="015042"><a href="javascript:void(0);" title="증인 선택"><span class="blind">증인</span></a><div class="poster"><img alt="증인" src="http://image2.megabox.co.kr/mop/poster/2019/8A/9E926D-A7BD-43B6-9FA3-373B9D9E45DA.medium.jpg"></div><p class="title" title="증인"><span class="age age_12">12세관람가</span><span>증인</span></p></li><li data-moviecode="014980"><a href="javascript:void(0);" title="극한직업 선택"><span class="blind">극한직업</span></a><div class="poster"><img alt="극한직업" src="http://image2.megabox.co.kr/mop/poster/2019/60/B31CE0-94B1-4624-8CE8-C62F056F457C.medium.jpg"></div><p class="title" title="극한직업"><span class="age age_15">15세관람가</span><span>극한직업</span></p></li><li data-moviecode="015291"><a href="javascript:void(0);" title="[응원상영] 킹 오브 프리즘 -샤이니 세븐 스타즈- 선택"><span class="blind">[응원상영] 킹 오브 프리즘 -샤이니 세븐 스타즈-</span></a><div class="poster"><img alt="[응원상영] 킹 오브 프리즘 -샤이니 세븐 스타즈-" src="http://image2.megabox.co.kr/mop/poster/2019/30/9373BC-C296-482C-9F74-D2591DE0C315.medium.jpg"></div><p class="title" title="[응원상영] 킹 오브 프리즘 -샤이니 세븐 스타즈-"><span class="age age_12">12세관람가</span><span>[응원상영] 킹 오브 프리즘 -샤이니 세븐 스타즈-</span></p></li><li data-moviecode="015148"><a href="javascript:void(0);" title="[NT LIVE] 프랑켄슈타인 선택"><span class="blind">[NT LIVE] 프랑켄슈타인</span></a><div class="poster"><img alt="[NT LIVE] 프랑켄슈타인" src="http://image2.megabox.co.kr/mop/poster/2019/A8/BF9B40-ED2A-40CD-BCC0-7EC88C4BCCFB.medium.jpg"></div><p class="title" title="[NT LIVE] 프랑켄슈타인"><span class="age age_15">15세관람가</span><span>[NT LIVE] 프랑켄슈타인</span></p></li><li data-moviecode="014950"><a href="javascript:void(0);" title="그린 북 선택"><span class="blind">그린 북</span></a><div class="poster"><img alt="그린 북" src="http://image2.megabox.co.kr/mop/poster/2019/0C/9ED85B-945A-4BBF-B3BB-66E69A416764.medium.jpg"></div><p class="title" title="그린 북"><span class="age age_12">12세관람가</span><span>그린 북</span></p></li><li data-moviecode="015275"><a href="javascript:void(0);" title="[라이브뷰잉] 아이돌 마스터 샤이니 컬러즈 1st LIVE FLY TO THE SHINY SKY 선택"><span class="blind">[라이브뷰잉] 아이돌 마스터 샤이니 컬러즈 1st LIVE FLY TO THE SHINY SKY</span></a><div class="poster"><img alt="[라이브뷰잉] 아이돌 마스터 샤이니 컬러즈 1st LIVE FLY TO THE SHINY SKY" src="http://image2.megabox.co.kr/mop/poster/2019/F6/C7B042-743E-4E49-9339-678FC81EB22A.medium.jpg"></div><p class="title" title="[라이브뷰잉] 아이돌 마스터 샤이니 컬러즈 1st LIVE FLY TO THE SHINY SKY"><span class="age age_all">청소년관람불가</span><span>[라이브뷰잉] 아이돌 마스터 샤이니 컬러즈 1st LIVE FLY TO THE SHINY SKY</span></p></li><li data-moviecode="015133"><a href="javascript:void(0);" title="[오페라] 아이다 @ The Met 선택"><span class="blind">[오페라] 아이다 @ The Met</span></a><div class="poster"><img alt="[오페라] 아이다 @ The Met" src="http://image2.megabox.co.kr/mop/poster/2019/E5/93CE7E-FB40-4B7D-8FF6-0714576B23CD.medium.jpg"></div><p class="title" title="[오페라] 아이다 @ The Met"><span class="age age_all">청소년관람불가</span><span>[오페라] 아이다 @ The Met</span></p></li><li data-moviecode="015185"><a href="javascript:void(0);" title="더 와이프 선택"><span class="blind">더 와이프</span></a><div class="poster"><img alt="더 와이프" src="http://image2.megabox.co.kr/mop/poster/2019/EA/7C8A2F-1BA9-4903-9059-35CA2F46A1A4.medium.jpg"></div><p class="title" title="더 와이프"><span class="age age_15">15세관람가</span><span>더 와이프</span></p></li><li data-moviecode="015147"><a href="javascript:void(0);" title="[NT LIVE] 햄릿 선택"><span class="blind">[NT LIVE] 햄릿</span></a><div class="poster"><img alt="[NT LIVE] 햄릿" src="http://image2.megabox.co.kr/mop/poster/2019/AE/1B06F6-87E1-403F-83BB-313BDD00552F.medium.jpg"></div><p class="title" title="[NT LIVE] 햄릿"><span class="age age_15">15세관람가</span><span>[NT LIVE] 햄릿</span></p></li><li data-moviecode="015214"><a href="javascript:void(0);" title="브라더 오브 더 이어 선택"><span class="blind">브라더 오브 더 이어</span></a><div class="poster"><img alt="브라더 오브 더 이어" src="http://image2.megabox.co.kr/mop/poster/2019/85/504B6F-B90D-4279-B2A8-224CCEC11EE2.medium.jpg"></div><p class="title" title="브라더 오브 더 이어"><span class="age age_12">12세관람가</span><span>브라더 오브 더 이어</span></p></li><li data-moviecode="015098"><a href="javascript:void(0);" title="자전차왕 엄복동 선택"><span class="blind">자전차왕 엄복동</span></a><div class="poster"><img alt="자전차왕 엄복동" src="http://image2.megabox.co.kr/mop/poster/2019/8A/66D55B-1D10-4A9E-8ED3-8356C19A4F86.medium.jpg"></div><p class="title" title="자전차왕 엄복동"><span class="age age_12">12세관람가</span><span>자전차왕 엄복동</span></p></li><li data-moviecode="015164"><a href="javascript:void(0);" title="러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우 선택"><span class="blind">러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우</span></a><div class="poster"><img alt="러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우" src="http://image2.megabox.co.kr/mop/poster/2019/08/9D72B9-AA8F-475F-ADFC-DC9775ED1034.medium.jpg"></div><p class="title" title="러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우"><span class="age age_all">청소년관람불가</span><span>러브라이브! 선샤인!! 더 스쿨 아이돌 무비 오버 더 레인보우</span></p></li><li data-moviecode="015146"><a href="javascript:void(0);" title="빠삐용 선택"><span class="blind">빠삐용</span></a><div class="poster"><img alt="빠삐용" src="http://image2.megabox.co.kr/mop/poster/2019/84/3F1773-617D-4C11-842A-C7D906849671.medium.jpg"></div><p class="title" title="빠삐용"><span class="age age_15">15세관람가</span><span>빠삐용</span></p></li><li data-moviecode="015027"><a href="javascript:void(0);" title="가버나움 선택"><span class="blind">가버나움</span></a><div class="poster"><img alt="가버나움" src="http://image2.megabox.co.kr/mop/poster/2019/E1/3AEA44-BAD3-4D2E-BB68-8490F6523BA7.medium.jpg"></div><p class="title" title="가버나움"><span class="age age_15">15세관람가</span><span>가버나움</span></p></li><li data-moviecode="015002"><a href="javascript:void(0);" title="알리타: 배틀 엔젤 선택"><span class="blind">알리타: 배틀 엔젤</span></a><div class="poster"><img alt="알리타: 배틀 엔젤" src="http://image2.megabox.co.kr/mop/poster/2019/B5/B1E02D-027A-4885-86B4-878301C28990.medium.jpg"></div><p class="title" title="알리타: 배틀 엔젤"><span class="age age_12">12세관람가</span><span>알리타: 배틀 엔젤</span></p></li><li data-moviecode="015101"><a href="javascript:void(0);" title="(더빙) 신데렐라:마법 반지의 비밀 선택"><span class="blind">(더빙) 신데렐라:마법 반지의 비밀</span></a><div class="poster"><img alt="(더빙) 신데렐라:마법 반지의 비밀" src="http://image2.megabox.co.kr/mop/poster/2019/9D/892AC0-50C5-4623-BD3D-E1270B07F143.medium.jpg"></div><p class="title" title="(더빙) 신데렐라:마법 반지의 비밀"><span class="age age_all">청소년관람불가</span><span>(더빙) 신데렐라:마법 반지의 비밀</span></p></li><li data-moviecode="014981"><a href="javascript:void(0);" title="드래곤 길들이기 3 선택"><span class="blind">드래곤 길들이기 3</span></a><div class="poster"><img alt="드래곤 길들이기 3" src="http://image2.megabox.co.kr/mop/poster/2019/52/6C77FD-74EE-46F3-A6C8-DDDC424C4B00.medium.jpg"></div><p class="title" title="드래곤 길들이기 3"><span class="age age_all">청소년관람불가</span><span>드래곤 길들이기 3</span></p></li><li data-moviecode="015074"><a href="javascript:void(0);" title="콜드 워 선택"><span class="blind">콜드 워</span></a><div class="poster"><img alt="콜드 워" src="http://image2.megabox.co.kr/mop/poster/2019/6B/A88C19-D5FA-4738-BE9D-2792EC4700A5.medium.jpg"></div><p class="title" title="콜드 워"><span class="age age_15">15세관람가</span><span>콜드 워</span></p></li><li data-moviecode="014414"><a href="javascript:void(0);" title="보헤미안 랩소디 선택"><span class="blind">보헤미안 랩소디</span></a><div class="poster"><img alt="보헤미안 랩소디" src="http://image2.megabox.co.kr/mop/poster/2018/62/EA0FC1-3045-4DF4-B7B9-A78F54F9E10D.medium.jpg"></div><p class="title" title="보헤미안 랩소디"><span class="age age_12">12세관람가</span><span>보헤미안 랩소디</span></p></li><li data-moviecode="015303"><a href="javascript:void(0);" title="[GET9] 환상의 빛 선택"><span class="blind">[GET9] 환상의 빛</span></a><div class="poster"><img alt="[GET9] 환상의 빛" src="http://image2.megabox.co.kr/mop/poster/2019/73/965A14-F909-40B2-AB10-A79CBEAD167D.medium.jpg"></div><p class="title" title="[GET9] 환상의 빛"><span class="age age_15">15세관람가</span><span>[GET9] 환상의 빛</span></p></li><li data-moviecode="015165"><a href="javascript:void(0);" title="살인마 잭의 집 선택"><span class="blind">살인마 잭의 집</span></a><div class="poster"><img alt="살인마 잭의 집" src="http://image2.megabox.co.kr/mop/poster/2019/01/306DA1-2219-440B-972C-68B81FFE6BCA.medium.jpg"></div><p class="title" title="살인마 잭의 집"><span class="age age_19">청소년관람불가</span><span>살인마 잭의 집</span></p></li><li data-moviecode="015306"><a href="javascript:void(0);" title="[GET9/GV] 슈퍼소닉 선택"><span class="blind">[GET9/GV] 슈퍼소닉</span></a><div class="poster"><img alt="[GET9/GV] 슈퍼소닉" src="http://image2.megabox.co.kr/mop/poster/2019/A2/8489E2-319D-4F74-B57E-0CB114CE32E8.medium.jpg"></div><p class="title" title="[GET9/GV] 슈퍼소닉"><span class="age age_15">15세관람가</span><span>[GET9/GV] 슈퍼소닉</span></p></li><li data-moviecode="015132"><a href="javascript:void(0);" title="(더빙) 슈퍼미니 2 선택"><span class="blind">(더빙) 슈퍼미니 2</span></a><div class="poster"><img alt="(더빙) 슈퍼미니 2" src="http://image2.megabox.co.kr/mop/poster/2019/70/07D460-48F5-48C7-85CE-DB8BF083CA9D.medium.jpg"></div><p class="title" title="(더빙) 슈퍼미니 2"><span class="age age_all">청소년관람불가</span><span>(더빙) 슈퍼미니 2</span></p></li><li data-moviecode="015112"><a href="javascript:void(0);" title="[오페라] 스페이드의 여왕 선택"><span class="blind">[오페라] 스페이드의 여왕</span></a><div class="poster"><img alt="[오페라] 스페이드의 여왕" src="http://image2.megabox.co.kr/mop/poster/2019/20/BDC99B-533F-4797-B4D8-6D6AAF6C82F8.medium.jpg"></div><p class="title" title="[오페라] 스페이드의 여왕"><span class="age age_15">15세관람가</span><span>[오페라] 스페이드의 여왕</span></p></li><li data-moviecode="015305"><a href="javascript:void(0);" title="[GET9] 마카담 스토리 선택"><span class="blind">[GET9] 마카담 스토리</span></a><div class="poster"><img alt="[GET9] 마카담 스토리" src="http://image2.megabox.co.kr/mop/poster/2019/47/F3A5A1-12A8-4DC1-BCFE-739289D181DD.medium.jpg"></div><p class="title" title="[GET9] 마카담 스토리"><span class="age age_12">12세관람가</span><span>[GET9] 마카담 스토리</span></p></li><li data-moviecode="015052"><a href="javascript:void(0);" title="어쩌다, 결혼 선택"><span class="blind">어쩌다, 결혼</span></a><div class="poster"><img alt="어쩌다, 결혼" src="http://image2.megabox.co.kr/mop/poster/2019/6F/5EAE1B-5A0A-4D17-B379-D798E5B184DA.medium.jpg"></div><p class="title" title="어쩌다, 결혼"><span class="age age_12">12세관람가</span><span>어쩌다, 결혼</span></p></li><li data-moviecode="015028"><a href="javascript:void(0);" title="메리 포핀스 리턴즈 선택"><span class="blind">메리 포핀스 리턴즈</span></a><div class="poster"><img alt="메리 포핀스 리턴즈" src="http://image2.megabox.co.kr/mop/poster/2019/1A/411A11-C9CF-42C7-B341-7842682D1438.medium.jpg"></div><p class="title" title="메리 포핀스 리턴즈"><span class="age age_all">청소년관람불가</span><span>메리 포핀스 리턴즈</span></p></li><li data-moviecode="015304"><a href="javascript:void(0);" title="[GET9] 이민자 선택"><span class="blind">[GET9] 이민자</span></a><div class="poster"><img alt="[GET9] 이민자" src="http://image2.megabox.co.kr/mop/poster/2019/B7/F42D25-D48E-4FE1-AB97-48D7768ABB71.medium.jpg"></div><p class="title" title="[GET9] 이민자"><span class="age age_15">15세관람가</span><span>[GET9] 이민자</span></p></li><li data-moviecode="014669"><a href="javascript:void(0);" title="스파이더맨: 뉴 유니버스 선택"><span class="blind">스파이더맨: 뉴 유니버스</span></a><div class="poster"><img alt="스파이더맨: 뉴 유니버스" src="http://image2.megabox.co.kr/mop/poster/2018/D7/B5B0EF-BAFE-4D4F-8C20-DBBB437B55DA.medium.jpg"></div><p class="title" title="스파이더맨: 뉴 유니버스"><span class="age age_12">12세관람가</span><span>스파이더맨: 뉴 유니버스</span></p></li><li data-moviecode="014387"><a href="javascript:void(0);" title="스타 이즈 본 선택"><span class="blind">스타 이즈 본</span></a><div class="poster"><img alt="스타 이즈 본" src="http://image2.megabox.co.kr/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.medium.jpg"></div><p class="title" title="스타 이즈 본"><span class="age age_15">15세관람가</span><span>스타 이즈 본</span></p></li><li data-moviecode="015100"><a href="javascript:void(0);" title="그때 그들 선택"><span class="blind">그때 그들</span></a><div class="poster"><img alt="그때 그들" src="http://image2.megabox.co.kr/mop/poster/2019/07/A3DA49-5AB3-4DB5-900D-0F056FD923CB.medium.jpg"></div><p class="title" title="그때 그들"><span class="age age_19">청소년관람불가</span><span>그때 그들</span></p></li><li data-moviecode="015178"><a href="javascript:void(0);" title="옷코는 초등학생 사장님! 선택"><span class="blind">옷코는 초등학생 사장님!</span></a><div class="poster"><img alt="옷코는 초등학생 사장님!" src="http://image2.megabox.co.kr/mop/poster/2019/32/AE2995-3F00-41D2-B246-2367B6DC3ADB.medium.jpg"></div><p class="title" title="옷코는 초등학생 사장님!"><span class="age age_all">청소년관람불가</span><span>옷코는 초등학생 사장님!</span></p></li><li data-moviecode="015095"><a href="javascript:void(0);" title="쉰들러 리스트 선택"><span class="blind">쉰들러 리스트</span></a><div class="poster"><img alt="쉰들러 리스트" src="http://image2.megabox.co.kr/mop/poster/2019/6C/E60A75-74D9-41BA-9091-A7A083977351.medium.jpg"></div><p class="title" title="쉰들러 리스트"><span class="age age_15">15세관람가</span><span>쉰들러 리스트</span></p></li><li data-moviecode="015125"><a href="javascript:void(0);" title="해피 데스데이 2 유 선택"><span class="blind">해피 데스데이 2 유</span></a><div class="poster"><img alt="해피 데스데이 2 유" src="http://image2.megabox.co.kr/mop/poster/2019/B0/D6ABFA-0E7D-4AD1-813A-DD7324A75F1F.medium.jpg"></div><p class="title" title="해피 데스데이 2 유"><span class="age age_15">15세관람가</span><span>해피 데스데이 2 유</span></p></li><li data-moviecode="015085"><a href="javascript:void(0);" title="퍼미션 선택"><span class="blind">퍼미션</span></a><div class="poster"><img alt="퍼미션" src="http://image2.megabox.co.kr/mop/poster/2019/60/73914E-38D4-4B08-B185-6FAC467CE29E.medium.jpg"></div><p class="title" title="퍼미션"><span class="age age_19">청소년관람불가</span><span>퍼미션</span></p></li><li data-moviecode="015113"><a href="javascript:void(0);" title="도쿄의 밤하늘은 항상 가장 짙은 블루 선택"><span class="blind">도쿄의 밤하늘은 항상 가장 짙은 블루</span></a><div class="poster"><img alt="도쿄의 밤하늘은 항상 가장 짙은 블루" src="http://image2.megabox.co.kr/mop/poster/2019/7C/7DEB01-3A33-457F-90FF-084BF6EB067F.medium.jpg"></div><p class="title" title="도쿄의 밤하늘은 항상 가장 짙은 블루"><span class="age age_15">15세관람가</span><span>도쿄의 밤하늘은 항상 가장 짙은 블루</span></p></li><li data-moviecode="015051"><a href="javascript:void(0);" title="콜드 체이싱 선택"><span class="blind">콜드 체이싱</span></a><div class="poster"><img alt="콜드 체이싱" src="http://image2.megabox.co.kr/mop/poster/2019/9B/A450F9-FB33-4C48-905F-F5E92F563FB9.medium.jpg"></div><p class="title" title="콜드 체이싱"><span class="age age_15">15세관람가</span><span>콜드 체이싱</span></p></li><li data-moviecode="015157"><a href="javascript:void(0);" title="칠곡 가시나들 선택"><span class="blind">칠곡 가시나들</span></a><div class="poster"><img alt="칠곡 가시나들" src="http://image2.megabox.co.kr/mop/poster/2019/89/665E0B-44B2-4E19-8ECF-ECA951A48785.medium.jpg"></div><p class="title" title="칠곡 가시나들"><span class="age age_all">청소년관람불가</span><span>칠곡 가시나들</span></p></li><li data-moviecode="015281"><a href="javascript:void(0);" title="[만원의행복] 항거:유관순 이야기 선택"><span class="blind">[만원의행복] 항거:유관순 이야기</span></a><div class="poster"><img alt="[만원의행복] 항거:유관순 이야기" src="http://image2.megabox.co.kr/mop/poster/2019/12/AFE6FC-C1D9-4A93-9245-3DBA70602FEA.medium.jpg"></div><p class="title" title="[만원의행복] 항거:유관순 이야기"><span class="age age_12">12세관람가</span><span>[만원의행복] 항거:유관순 이야기</span></p></li><li data-moviecode="015084"><a href="javascript:void(0);" title="(더빙) 극장판 헬로카봇: 옴파로스 섬의 비밀 선택"><span class="blind">(더빙) 극장판 헬로카봇: 옴파로스 섬의 비밀</span></a><div class="poster"><img alt="(더빙) 극장판 헬로카봇: 옴파로스 섬의 비밀" src="http://image2.megabox.co.kr/mop/poster/2019/0E/20BD14-953C-41DC-8FE7-2B88634E222D.medium.jpg"></div><p class="title" title="(더빙) 극장판 헬로카봇: 옴파로스 섬의 비밀"><span class="age age_all">청소년관람불가</span><span>(더빙) 극장판 헬로카봇: 옴파로스 섬의 비밀</span></p></li><li data-moviecode="015193"><a href="javascript:void(0);" title="나는 다른 언어로 꿈을 꾼다 선택"><span class="blind">나는 다른 언어로 꿈을 꾼다</span></a><div class="poster"><img alt="나는 다른 언어로 꿈을 꾼다" src="http://image2.megabox.co.kr/mop/poster/2019/8B/BBF8BE-367F-4DE0-9448-4A7DE950ABE6.medium.jpg"></div><p class="title" title="나는 다른 언어로 꿈을 꾼다"><span class="age age_15">15세관람가</span><span>나는 다른 언어로 꿈을 꾼다</span></p></li><li data-moviecode="014734"><a href="javascript:void(0);" title="인생 후르츠 선택"><span class="blind">인생 후르츠</span></a><div class="poster"><img alt="인생 후르츠" src="http://image2.megabox.co.kr/mop/poster/2018/D4/ABA0A7-9432-4CF4-83A2-ED972E6661EA.medium.jpg"></div><p class="title" title="인생 후르츠"><span class="age age_all">청소년관람불가</span><span>인생 후르츠</span></p></li><li data-moviecode="015124"><a href="javascript:void(0);" title="드래곤볼 슈퍼: 브로리 선택"><span class="blind">드래곤볼 슈퍼: 브로리</span></a><div class="poster"><img alt="드래곤볼 슈퍼: 브로리" src="http://image2.megabox.co.kr/mop/poster/2019/BF/F65A2C-4380-404B-8D6F-A1A752421CCC.medium.jpg"></div><p class="title" title="드래곤볼 슈퍼: 브로리"><span class="age age_all">청소년관람불가</span><span>드래곤볼 슈퍼: 브로리</span></p></li><li data-moviecode="015090"><a href="javascript:void(0);" title="기묘한 가족 선택"><span class="blind">기묘한 가족</span></a><div class="poster"><img alt="기묘한 가족" src="http://image2.megabox.co.kr/mop/poster/2019/43/E93FCF-F564-4EBA-B197-E7AF8F3ED1E4.medium.jpg"></div><p class="title" title="기묘한 가족"><span class="age age_12">12세관람가</span><span>기묘한 가족</span></p></li><li data-moviecode="015153"><a href="javascript:void(0);" title="(더빙) 모험왕 블링키 선택"><span class="blind">(더빙) 모험왕 블링키</span></a><div class="poster"><img alt="(더빙) 모험왕 블링키" src="http://image2.megabox.co.kr/mop/poster/2019/F6/3630E4-6C2D-4713-BD6D-6687DC0853CD.medium.jpg"></div><p class="title" title="(더빙) 모험왕 블링키"><span class="age age_all">청소년관람불가</span><span>(더빙) 모험왕 블링키</span></p></li><li data-moviecode="015154"><a href="javascript:void(0);" title="(더빙) 래미의 초특급 시간여행 선택"><span class="blind">(더빙) 래미의 초특급 시간여행</span></a><div class="poster"><img alt="(더빙) 래미의 초특급 시간여행" src="http://image2.megabox.co.kr/mop/poster/2019/59/03CF73-D6FC-476D-9CA5-2C29BEC85FC5.medium.jpg"></div><p class="title" title="(더빙) 래미의 초특급 시간여행"><span class="age age_all">청소년관람불가</span><span>(더빙) 래미의 초특급 시간여행</span></p></li><li data-moviecode="015279"><a href="javascript:void(0);" title="포항 선택"><span class="blind">포항</span></a><div class="poster"><img alt="포항" src="http://image2.megabox.co.kr/mop/poster/2019/23/1F0E08-5A71-4A8B-8CF8-79CC8CA7878B.medium.jpg"></div><p class="title" title="포항"><span class="age age_12">12세관람가</span><span>포항</span></p></li><li data-moviecode="015221"><a href="javascript:void(0);" title="내가 사는 세상 선택"><span class="blind">내가 사는 세상</span></a><div class="poster"><img alt="내가 사는 세상" src="http://image2.megabox.co.kr/mop/poster/2019/F1/AF4357-0889-4916-9467-CBA71CC17BAB.medium.jpg"></div><p class="title" title="내가 사는 세상"><span class="age age_12">12세관람가</span><span>내가 사는 세상</span></p></li><li data-moviecode="015134"><a href="javascript:void(0);" title="크리드2 선택"><span class="blind">크리드2</span></a><div class="poster"><img alt="크리드2" src="http://image2.megabox.co.kr/mop/poster/2019/8C/FED030-877E-48D0-8AA1-AC7A0EB55AA3.medium.jpg"></div><p class="title" title="크리드2"><span class="age age_12">12세관람가</span><span>크리드2</span></p></li><li data-moviecode="015210"><a href="javascript:void(0);" title="(대관) 주먹왕 랄프 2: 인터넷 속으로 선택"><span class="blind">(대관) 주먹왕 랄프 2: 인터넷 속으로</span></a><div class="poster"><img alt="(대관) 주먹왕 랄프 2: 인터넷 속으로" src="http://image2.megabox.co.kr/mop/poster/2019/64/93C712-F276-4F01-B480-CE718818455F.medium.jpg"></div><p class="title" title="(대관) 주먹왕 랄프 2: 인터넷 속으로"><span class="age age_all">청소년관람불가</span><span>(대관) 주먹왕 랄프 2: 인터넷 속으로</span></p></li><li data-moviecode="015063"><a href="javascript:void(0);" title="얼굴들 선택"><span class="blind">얼굴들</span></a><div class="poster"><img alt="얼굴들" src="http://image2.megabox.co.kr/mop/poster/2019/B6/5CD899-5176-4BCA-B849-CDF93720F76F.medium.jpg"></div><p class="title" title="얼굴들"><span class="age age_12">12세관람가</span><span>얼굴들</span></p></li><li data-moviecode="015166"><a href="javascript:void(0);" title="(더빙) 리노 선택"><span class="blind">(더빙) 리노</span></a><div class="poster"><img alt="(더빙) 리노" src="http://image2.megabox.co.kr/mop/poster/2019/C8/F053BE-37C8-4083-8CFB-51E1CFA61626.medium.jpg"></div><p class="title" title="(더빙) 리노"><span class="age age_all">청소년관람불가</span><span>(더빙) 리노</span></p></li><li data-moviecode="015238"><a href="javascript:void(0);" title="[만원의행복] 사바하 선택"><span class="blind">[만원의행복] 사바하</span></a><div class="poster"><img alt="[만원의행복] 사바하" src="http://image2.megabox.co.kr/mop/poster/2019/48/525D6C-2DC7-4B14-8EBE-263872CD5A09.medium.jpg"></div><p class="title" title="[만원의행복] 사바하"><span class="age age_15">15세관람가</span><span>[만원의행복] 사바하</span></p></li><li data-moviecode="015272"><a href="javascript:void(0);" title="(대관) 기묘한 가족 선택"><span class="blind">(대관) 기묘한 가족</span></a><div class="poster"><img alt="(대관) 기묘한 가족" src="http://image2.megabox.co.kr/mop/poster/2019/76/70ADCD-A8AF-406B-8D4D-E0C77F46AE83.medium.jpg"></div><p class="title" title="(대관) 기묘한 가족"><span class="age age_12">12세관람가</span><span>(대관) 기묘한 가족</span></p></li><li data-moviecode="015247"><a href="javascript:void(0);" title="킹 오브 프리즘 -샤이니 세븐 스타즈- 선택"><span class="blind">킹 오브 프리즘 -샤이니 세븐 스타즈-</span></a><div class="poster"><img alt="킹 오브 프리즘 -샤이니 세븐 스타즈-" src="http://image2.megabox.co.kr/mop/poster/2019/7A/C38DEE-76D7-4847-8FC8-868C00A4BDB7.medium.jpg"></div><p class="title" title="킹 오브 프리즘 -샤이니 세븐 스타즈-"><span class="age age_12">12세관람가</span><span>킹 오브 프리즘 -샤이니 세븐 스타즈-</span></p></li></ul>
			</div>
			<div class="movie_body specialContent" style="display: none;">
				<div id="selectSpecialContentList" class="movie_list"></div>
			</div>
			<div class="last_btns">
				<button id="btnMovieCancel" type="button" class="img_btn booking cancel" data-dismiss="modal">취소</button>
				<button id="btnMovieConfirm" type="button" class="img_btn booking ok">확인</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
</body>
</html>