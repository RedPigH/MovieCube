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
<div class="wrapper">
		<div class="contents" tabindex="0">

			<div class="movie_header">
				<div class="pull-left clearfix" id="h3_wrap">
					<h3 class="h3_theater1 pull-left overflow_visible active"><a class="blank theaterTabBtn" href="#body_theater1" data-toggle="tab">지역별</a></h3>
					<i class="icon h3_split pull-left"></i>
					<h3 class="h3_theater2 pull-left ml10 overflow_visible"><a class="blank theaterTabBtn" href="#body_theater2" data-toggle="tab">특별관</a></h3>
				</div>
			</div>
			<div class="util">
				<div class="selected" id="cinemaSelected"></div>
			</div>

			<!-- 지역별 -->
			<div id="body_theater1" class="tab-pane movie_body body_theater1 active" style="display: block;">
				<div class="theater_list">
					<ul class="depth1">
						<li data-depthtype="myCinema" class="no_click"><a href="javascript:void(0);" title="선호 영화관">선호 영화관<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li>
					<li data-areacode="10" class="active"><a href="javascript:void(0);" title="서울 선택됨">서울<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="30"><a href="javascript:void(0);" title="경기">경기<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="35"><a href="javascript:void(0);" title="인천">인천<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="45"><a href="javascript:void(0);" title="대전/충청/세종">대전/충청/세종<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="55"><a href="javascript:void(0);" title="부산/대구/경상">부산/대구/경상<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="65"><a href="javascript:void(0);" title="광주/전라">광주/전라<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="70"><a href="javascript:void(0);" title="강원">강원<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="80"><a href="javascript:void(0);" title="제주">제주<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li></ul>
					<ul class="depth2 area_10"><li data-cinemacode="1372" data-screencode=""><a href="javascript:void(0);" title="강남 선택">강남<div class=""></div></a></li><li data-cinemacode="1359" data-screencode=""><a href="javascript:void(0);" title="강남대로(씨티) 선택">강남대로(씨티)<div class=""></div></a></li><li data-cinemacode="1341" data-screencode=""><a href="javascript:void(0);" title="강동 선택">강동<div class=""></div></a></li><li data-cinemacode="1431" data-screencode=""><a href="javascript:void(0);" title="군자 선택">군자<div class=""></div></a></li><li data-cinemacode="1003" data-screencode=""><a href="javascript:void(0);" title="동대문 선택">동대문<div class=""></div></a></li><li data-cinemacode="1572" data-screencode=""><a href="javascript:void(0);" title="마곡 선택">마곡<div class=""></div></a></li><li data-cinemacode="1581" data-screencode=""><a href="javascript:void(0);" title="목동 선택">목동<div class=""></div></a></li><li data-cinemacode="1311" data-screencode=""><a href="javascript:void(0);" title="상봉 선택">상봉<div class=""></div></a></li><li data-cinemacode="1211" data-screencode=""><a href="javascript:void(0);" title="상암월드컵경기장 선택">상암월드컵경기장<div class=""></div></a></li><li data-cinemacode="1371" data-screencode=""><a href="javascript:void(0);" title="센트럴 선택">센트럴<div class=""></div></a></li><li data-cinemacode="1381" data-screencode=""><a href="javascript:void(0);" title="송파파크하비오 선택">송파파크하비오<div class=""></div></a></li><li data-cinemacode="1202" data-screencode=""><a href="javascript:void(0);" title="신촌 선택">신촌<div class=""></div></a></li><li data-cinemacode="1221" data-screencode=""><a href="javascript:void(0);" title="은평 선택">은평<div class=""></div></a></li><li data-cinemacode="1561" data-screencode=""><a href="javascript:void(0);" title="이수 선택">이수<div class=""></div></a></li><li data-cinemacode="1321" data-screencode=""><a href="javascript:void(0);" title="창동 선택">창동<div class=""></div></a></li><li data-cinemacode="1351" data-screencode=""><a href="javascript:void(0);" title="코엑스 선택">코엑스<div class=""></div></a></li><li data-cinemacode="1571" data-screencode=""><a href="javascript:void(0);" title="화곡 선택">화곡<div class=""></div></a></li><li data-cinemacode="1562" data-screencode="" class="no_click"><a href="javascript:void(0);" title="ARTNINE 선택">ARTNINE<div class=""></div></a></li><li data-cinemacode="1002" data-screencode="" class="no_click"><a href="javascript:void(0);" title="EOE4 선택">EOE4<div class=""></div></a></li></ul>
				</div>
				<!-- 지도 -->
				<div class="map map_h" style="padding:0;width:580px;background-color: #eee;border-top: 1px solid #e5e5e5;">
					<ul><li class="mapArea defult_img blind" style="display: none;"><sapn class="blind">선호 영화관</sapn></li><li class="mapArea" data-areacode="10" style="display: list-item;"><a href="javascript:void(0);" title="서울 선택">서울</a><ul class="depth2 area_10" style="top: 0; left: 0;"><li data-cinemacode="1372" data-screencode=""><a href="javascript:void(0);" title="강남 선택" style="left: 232px; top: 275px; letter-spacing: inherit;" class="">강남<div class=""></div></a></li><li data-cinemacode="1359" data-screencode=""><a href="javascript:void(0);" title="강남대로(씨티) 선택" style="left: 238px; top: 273px; letter-spacing: -1px;" class="">강남대로(씨티)<div class=""></div></a></li><li data-cinemacode="1341" data-screencode=""><a href="javascript:void(0);" title="강동 선택" style="left: 343px; top: 229px; letter-spacing: inherit;" class="">강동<div class=""></div></a></li><li data-cinemacode="1431" data-screencode=""><a href="javascript:void(0);" title="군자 선택" style="left: 290px; top: 190px; letter-spacing: inherit;" class="">군자<div class=""></div></a></li><li data-cinemacode="1003" data-screencode=""><a href="javascript:void(0);" title="동대문 선택" style="left: 215px; top: 180px; letter-spacing: inherit;" class="">동대문<div class=""></div></a></li><li data-cinemacode="1572" data-screencode=""><a href="javascript:void(0);" title="마곡 선택" style="left: 34px; top: 180px; letter-spacing: inherit;" class="">마곡<div class=""></div></a></li><li data-cinemacode="1581" data-screencode=""><a href="javascript:void(0);" title="목동 선택" style="left: 70px; top: 225px; letter-spacing: inherit;" class="">목동<div class=""></div></a></li><li data-cinemacode="1311" data-screencode=""><a href="javascript:void(0);" title="상봉 선택" style="left: 289px; top: 146px; letter-spacing: inherit;" class="">상봉<div class=""></div></a></li><li data-cinemacode="1211" data-screencode=""><a href="javascript:void(0);" title="상암월드컵경기장 선택" style="left: 88px; top: 180px; letter-spacing: inherit;" class="">상암월드컵경기장<div class=""></div></a></li><li data-cinemacode="1371" data-screencode=""><a href="javascript:void(0);" title="센트럴 선택" style="left: 211px; top: 265px; letter-spacing: inherit;" class="">센트럴<div class=""></div></a></li><li data-cinemacode="1381" data-screencode=""><a href="javascript:void(0);" title="송파파크하비오 선택" style="left: 340px; top: 293px; letter-spacing: inherit;" class="">송파파크하비오<div class=""></div></a></li><li data-cinemacode="1202" data-screencode=""><a href="javascript:void(0);" title="신촌 선택" style="left: 140px; top: 185px; letter-spacing: inherit;" class="">신촌<div class=""></div></a></li><li data-cinemacode="1221" data-screencode=""><a href="javascript:void(0);" title="은평 선택" style="left: 120px; top: 113px; letter-spacing: inherit;" class="">은평<div class=""></div></a></li><li data-cinemacode="1561" data-screencode=""><a href="javascript:void(0);" title="이수 선택" style="left: 186px; top: 285px; letter-spacing: inherit;" class="">이수<div class=""></div></a></li><li data-cinemacode="1321" data-screencode=""><a href="javascript:void(0);" title="창동 선택" style="left: 242px; top: 65px; letter-spacing: inherit;">창동<div class=""></div></a></li><li data-cinemacode="1351" data-screencode=""><a href="javascript:void(0);" title="코엑스 선택" style="left: 269px; top: 255px; letter-spacing: inherit;">코엑스<div class=""></div></a></li><li data-cinemacode="1571" data-screencode=""><a href="javascript:void(0);" title="화곡 선택" style="left: 32px; top: 216px; letter-spacing: inherit;">화곡<div class=""></div></a></li><li data-cinemacode="1562" data-screencode=""><a href="javascript:void(0);" title="ARTNINE 선택" style="left: 186px; top: 285px; letter-spacing: inherit;">ARTNINE<div class=""></div></a></li><li data-cinemacode="1002" data-screencode=""><a href="javascript:void(0);" title="EOE4 선택" style="left: 210px; top: 195px; letter-spacing: inherit;">EOE4<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="30" style="display: none;"><a href="javascript:void(0);" title="경기 선택">경기</a><ul class="depth2 area_30" style="top: 0; left: 0;"><li data-cinemacode="4121" data-screencode=""><a href="javascript:void(0);" title="고양스타필드 선택" style="left: 140px; top: 150px; letter-spacing: inherit;">고양스타필드<div class=""></div></a></li><li data-cinemacode="4151" data-screencode=""><a href="javascript:void(0);" title="김포 선택" style="left: 70px; top: 180px; letter-spacing: inherit;">김포<div class=""></div></a></li><li data-cinemacode="4152" data-screencode=""><a href="javascript:void(0);" title="김포한강신도시 선택" style="left: 79px; top: 208px; letter-spacing: inherit;">김포한강신도시<div class=""></div></a></li><li data-cinemacode="4721" data-screencode=""><a href="javascript:void(0);" title="남양주 선택" style="left: 205px; top: 155px; letter-spacing: inherit;">남양주<div class=""></div></a></li><li data-cinemacode="4451" data-screencode=""><a href="javascript:void(0);" title="동탄 선택" style="left: 149px; top: 310px; letter-spacing: inherit;">동탄<div class=""></div></a></li><li data-cinemacode="4652" data-screencode=""><a href="javascript:void(0);" title="미사강변 선택" style="left: 220px; top: 200px; letter-spacing: inherit;">미사강변<div class=""></div></a></li><li data-cinemacode="4113" data-screencode=""><a href="javascript:void(0);" title="백석 선택" style="left: 120px; top: 154px; letter-spacing: inherit;">백석<div class=""></div></a></li><li data-cinemacode="4722" data-screencode=""><a href="javascript:void(0);" title="별내 선택" style="left: 181px; top: 156px; letter-spacing: inherit;">별내<div class=""></div></a></li><li data-cinemacode="4631" data-screencode=""><a href="javascript:void(0);" title="분당 선택" style="left: 190px; top: 230px; letter-spacing: inherit;">분당<div class=""></div></a></li><li data-cinemacode="4411" data-screencode=""><a href="javascript:void(0);" title="수원 선택" style="left: 140px; top: 280px; letter-spacing: inherit;">수원<div class=""></div></a></li><li data-cinemacode="4421" data-screencode=""><a href="javascript:void(0);" title="수원남문 선택" style="left: 170px; top: 250px; letter-spacing: inherit;">수원남문<div class=""></div></a></li><li data-cinemacode="4291" data-screencode=""><a href="javascript:void(0);" title="시흥배곧 선택" style="left: 83px; top: 245px;; letter-spacing: inherit;">시흥배곧<div class=""></div></a></li><li data-cinemacode="4253" data-screencode=""><a href="javascript:void(0);" title="안산중앙 선택" style="left: 110px; top: 290px; letter-spacing: inherit;">안산중앙<div class=""></div></a></li><li data-cinemacode="4821" data-screencode=""><a href="javascript:void(0);" title="양주 선택" style="left: 170px; top: 90px; letter-spacing: inherit;">양주<div class=""></div></a></li><li data-cinemacode="4431" data-screencode=""><a href="javascript:void(0);" title="영통 선택" style="left: 190px; top: 270px; letter-spacing: inherit;">영통<div class=""></div></a></li><li data-cinemacode="4471" data-screencode=""><a href="javascript:void(0);" title="오산 선택" style="left: 155px; top: 340px; letter-spacing: inherit;">오산<div class=""></div></a></li><li data-cinemacode="4462" data-screencode=""><a href="javascript:void(0);" title="용인테크노밸리 선택" style="left: 208px; top: 260px; letter-spacing: inherit;">용인테크노밸리<div class=""></div></a></li><li data-cinemacode="4804" data-screencode=""><a href="javascript:void(0);" title="의정부민락 선택" style="left: 175px; top: 120px; letter-spacing: inherit;">의정부민락<div class=""></div></a></li><li data-cinemacode="4111" data-screencode=""><a href="javascript:void(0);" title="일산 선택" style="left: 115px; top: 120px; letter-spacing: inherit;">일산<div class=""></div></a></li><li data-cinemacode="4104" data-screencode=""><a href="javascript:void(0);" title="일산벨라시타 선택" style="left: 125px; top: 160px; letter-spacing: inherit;">일산벨라시타<div class=""></div></a></li><li data-cinemacode="4112" data-screencode=""><a href="javascript:void(0);" title="킨텍스 선택" style="left: 75px; top: 165px; letter-spacing: inherit;">킨텍스<div class=""></div></a></li><li data-cinemacode="4132" data-screencode=""><a href="javascript:void(0);" title="파주금촌 선택" style="left: 90px; top: 120px; letter-spacing: inherit;">파주금촌<div class=""></div></a></li><li data-cinemacode="4115" data-screencode=""><a href="javascript:void(0);" title="파주운정 선택" style="left: 95px; top: 150px; letter-spacing: inherit;">파주운정<div class=""></div></a></li><li data-cinemacode="4131" data-screencode=""><a href="javascript:void(0);" title="파주출판도시 선택" style="left: 70px; top: 140px; letter-spacing: inherit;">파주출판도시<div class=""></div></a></li><li data-cinemacode="4501" data-screencode=""><a href="javascript:void(0);" title="평택 선택" style="left: 130px; top: 375px; letter-spacing: inherit;">평택<div class=""></div></a></li><li data-cinemacode="4651" data-screencode=""><a href="javascript:void(0);" title="하남스타필드 선택" style="left: 230px; top: 210px; letter-spacing: inherit;">하남스타필드<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="35" style="display: none;"><a href="javascript:void(0);" title="인천 선택">인천</a><ul class="depth2 area_35" style="top: 0; left: 0;"><li data-cinemacode="4041" data-screencode=""><a href="javascript:void(0);" title="검단 선택" style="left: 290px; top: 200px; letter-spacing: inherit;">검단<div class=""></div></a></li><li data-cinemacode="4062" data-screencode=""><a href="javascript:void(0);" title="송도 선택" style="left: 315px; top: 345px; letter-spacing: inherit;">송도<div class=""></div></a></li><li data-cinemacode="4001" data-screencode=""><a href="javascript:void(0);" title="영종 선택" style="left: 190px; top: 275px; letter-spacing: inherit;">영종<div class=""></div></a></li><li data-cinemacode="4051" data-screencode=""><a href="javascript:void(0);" title="인천논현 선택" style="left: 362px; top: 340px; letter-spacing: inherit;">인천논현<div class=""></div></a></li><li data-cinemacode="4042" data-screencode=""><a href="javascript:void(0);" title="청라 선택" style="left: 280px; top: 240px; letter-spacing: inherit;">청라<div class=""></div></a></li><li data-cinemacode="4043" data-screencode=""><a href="javascript:void(0);" title="청라지젤 선택" style="left: 285px; top: 240px; letter-spacing: inherit;">청라지젤<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="45" style="display: none;"><a href="javascript:void(0);" title="대전/충청/세종 선택">대전/충청/세종</a><ul class="depth2 area_45" style="top: 0; left: 0;"><li data-cinemacode="3141" data-screencode=""><a href="javascript:void(0);" title="공주 선택" style="left: 135px; top: 217px; letter-spacing: inherit;">공주<div class=""></div></a></li><li data-cinemacode="3021" data-screencode=""><a href="javascript:void(0);" title="대전 선택" style="left: 180px; top: 246px; letter-spacing: inherit;">대전<div class=""></div></a></li><li data-cinemacode="3391" data-screencode=""><a href="javascript:void(0);" title="세종 선택" style="left: 167px; top: 185px; letter-spacing: inherit;">세종<div class=""></div></a></li><li data-cinemacode="3631" data-screencode=""><a href="javascript:void(0);" title="오창 선택" style="left: 185px; top: 163px; letter-spacing: inherit;">오창<div class=""></div></a></li><li data-cinemacode="3901" data-screencode=""><a href="javascript:void(0);" title="제천 선택" style="left: 335px; top: 70px; letter-spacing: inherit;">제천<div class=""></div></a></li><li data-cinemacode="3651" data-screencode=""><a href="javascript:void(0);" title="진천 선택" style="left: 185px; top: 133px; letter-spacing: inherit;">진천<div class=""></div></a></li><li data-cinemacode="3301" data-screencode=""><a href="javascript:void(0);" title="천안 선택" style="left: 140px; top: 142px; letter-spacing: inherit;">천안<div class=""></div></a></li><li data-cinemacode="3611" data-screencode=""><a href="javascript:void(0);" title="청주충북대 선택" style="left: 190px; top: 180px; letter-spacing: inherit;">청주충북대<div class=""></div></a></li><li data-cinemacode="3801" data-screencode=""><a href="javascript:void(0);" title="충주 선택" style="left: 278px; top: 92px; letter-spacing: inherit;">충주<div class=""></div></a></li><li data-cinemacode="3501" data-screencode=""><a href="javascript:void(0);" title="홍성내포 선택" style="left: 50px; top: 172px; letter-spacing: inherit;">홍성내포<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="55" style="display: none;"><a href="javascript:void(0);" title="부산/대구/경상 선택">부산/대구/경상</a><ul class="depth2 area_55" style="top: 0; left: 0;"><li data-cinemacode="6701" data-screencode=""><a href="javascript:void(0);" title="거창 선택" style="left: 70px; top: 220px; letter-spacing: inherit;">거창<div class=""></div></a></li><li data-cinemacode="7122" data-screencode=""><a href="javascript:void(0);" title="경산하양 선택" style="left: 210px; top: 160px; letter-spacing: inherit;">경산하양<div class=""></div></a></li><li data-cinemacode="7801" data-screencode=""><a href="javascript:void(0);" title="경주 선택" style="left: 275px; top: 175px; letter-spacing: inherit;">경주<div class=""></div></a></li><li data-cinemacode="7303" data-screencode=""><a href="javascript:void(0);" title="구미강동 선택" style="left: 145px; top: 144px; letter-spacing: inherit;">구미강동<div class=""></div></a></li><li data-cinemacode="7401" data-screencode=""><a href="javascript:void(0);" title="김천 선택" style="left: 105px; top: 135px; letter-spacing: inherit;">김천<div class=""></div></a></li><li data-cinemacode="7901" data-screencode=""><a href="javascript:void(0);" title="남포항 선택" style="left: 298px; top: 155px; letter-spacing: inherit;">남포항<div class=""></div></a></li><li data-cinemacode="7022" data-screencode=""><a href="javascript:void(0);" title="대구(칠성로) 선택" style="left: 173px; top: 178px; letter-spacing: inherit;">대구(칠성로)<div class=""></div></a></li><li data-cinemacode="7011" data-screencode=""><a href="javascript:void(0);" title="대구신세계(동대구) 선택" style="left: 183px; top: 180px; letter-spacing: inherit;">대구신세계(동대구)<div class=""></div></a></li><li data-cinemacode="7012" data-screencode=""><a href="javascript:void(0);" title="대구이시아 선택" style="left: 190px; top: 172px; letter-spacing: inherit;">대구이시아<div class=""></div></a></li><li data-cinemacode="6161" data-screencode=""><a href="javascript:void(0);" title="덕천 선택" style="left: 233px; top: 297px; letter-spacing: inherit;">덕천<div class=""></div></a></li><li data-cinemacode="6312" data-screencode=""><a href="javascript:void(0);" title="마산 선택" style="left: 184px; top: 303px; letter-spacing: inherit;">마산<div class=""></div></a></li><li data-cinemacode="7451" data-screencode=""><a href="javascript:void(0);" title="문경 선택" style="left: 110px; top: 42px; letter-spacing: inherit;">문경<div class=""></div></a></li><li data-cinemacode="6001" data-screencode=""><a href="javascript:void(0);" title="부산극장 선택" style="left: 245px; top: 318px; letter-spacing: inherit;">부산극장<div class=""></div></a></li><li data-cinemacode="6906" data-screencode=""><a href="javascript:void(0);" title="부산대 선택" style="left: 253px; top: 293px; letter-spacing: inherit;">부산대<div class=""></div></a></li><li data-cinemacode="7021" data-screencode=""><a href="javascript:void(0);" title="북대구(칠곡) 선택" style="left: 172px; top: 168px; letter-spacing: inherit;">북대구(칠곡)<div class=""></div></a></li><li data-cinemacode="6641" data-screencode=""><a href="javascript:void(0);" title="사천 선택" style="left: 110px; top: 332px; letter-spacing: inherit;">사천<div class=""></div></a></li><li data-cinemacode="6642" data-screencode=""><a href="javascript:void(0);" title="삼천포 선택" style="left: 102px; top: 360px; letter-spacing: inherit;">삼천포<div class=""></div></a></li><li data-cinemacode="7601" data-screencode=""><a href="javascript:void(0);" title="안동 선택" style="left: 190px; top: 45px; letter-spacing: inherit;">안동<div class=""></div></a></li><li data-cinemacode="6261" data-screencode=""><a href="javascript:void(0);" title="양산 선택" style="left: 235px; top: 285px; letter-spacing: inherit;">양산<div class=""></div></a></li><li data-cinemacode="6811" data-screencode=""><a href="javascript:void(0);" title="울산 선택" style="left: 285px; top: 233px; letter-spacing: inherit;">울산<div class=""></div></a></li><li data-cinemacode="6191" data-screencode=""><a href="javascript:void(0);" title="정관 선택" style="left: 268px; top: 278px; letter-spacing: inherit;">정관<div class=""></div></a></li><li data-cinemacode="6421" data-screencode=""><a href="javascript:void(0);" title="창원 선택" style="left: 200px; top: 302px; letter-spacing: inherit;">창원<div class=""></div></a></li><li data-cinemacode="6121" data-screencode=""><a href="javascript:void(0);" title="해운대(장산) 선택" style="left: 267px; top: 302px; letter-spacing: inherit;">해운대(장산)<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="65" style="display: none;"><a href="javascript:void(0);" title="광주/전라 선택">광주/전라</a><ul class="depth2 area_65" style="top: 0; left: 0;"><li data-cinemacode="5021" data-screencode=""><a href="javascript:void(0);" title="광주상무 선택" style="left: 175px; top: 211px; letter-spacing: inherit;">광주상무<div class=""></div></a></li><li data-cinemacode="5061" data-screencode=""><a href="javascript:void(0);" title="광주하남 선택" style="left: 165px; top: 208px; letter-spacing: inherit;">광주하남<div class=""></div></a></li><li data-cinemacode="5901" data-screencode=""><a href="javascript:void(0);" title="남원 선택" style="left: 285px; top: 130x; letter-spacing: inherit;">남원<div class=""></div></a></li><li data-cinemacode="5301" data-screencode=""><a href="javascript:void(0);" title="목포 선택" style="left: 70px; top: 308px; letter-spacing: inherit;">목포<div class=""></div></a></li><li data-cinemacode="5302" data-screencode=""><a href="javascript:void(0);" title="목포하당(포르모) 선택" style="left: 82px; top: 304px; letter-spacing: inherit;">목포하당(포르모)<div class=""></div></a></li><li data-cinemacode="5612" data-screencode=""><a href="javascript:void(0);" title="송천 선택" style="left: 215px; top: 10px; letter-spacing: inherit;">송천<div class=""></div></a></li><li data-cinemacode="5401" data-screencode=""><a href="javascript:void(0);" title="순천 선택" style="left: 318px; top: 270px; letter-spacing: inherit;">순천<div class=""></div></a></li><li data-cinemacode="5551" data-screencode=""><a href="javascript:void(0);" title="여수 선택" style="left: 355px; top: 315px; letter-spacing: inherit;">여수<div class=""></div></a></li><li data-cinemacode="5552" data-screencode=""><a href="javascript:void(0);" title="여수웅천 선택" style="left: 363px; top: 322px; letter-spacing: inherit;">여수웅천<div class=""></div></a></li><li data-cinemacode="5001" data-screencode=""><a href="javascript:void(0);" title="전대(광주) 선택" style="left: 185px; top: 206px; letter-spacing: inherit;">전대(광주)<div class=""></div></a></li><li data-cinemacode="5063" data-screencode=""><a href="javascript:void(0);" title="전주(객사) 선택" style="left: 225px; top: 20px; letter-spacing: inherit;">전주(객사)<div class=""></div></a></li><li data-cinemacode="5064" data-screencode=""><a href="javascript:void(0);" title="첨단 선택" style="left: 175px; top: 191px; letter-spacing: inherit;">첨단<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="70" style="display: none;"><a href="javascript:void(0);" title="강원 선택">강원</a><ul class="depth2 area_70" style="top: 0; left: 0;"><li data-cinemacode="2001" data-screencode=""><a href="javascript:void(0);" title="남춘천 선택" style="left: 85px; top: 181px; letter-spacing: inherit;">남춘천<div class=""></div></a></li><li data-cinemacode="2171" data-screencode=""><a href="javascript:void(0);" title="속초 선택" style="left: 225px; top: 105px; letter-spacing: inherit;">속초<div class=""></div></a></li><li data-cinemacode="2201" data-screencode=""><a href="javascript:void(0);" title="원주 선택" style="left: 120px; top: 280px; letter-spacing: inherit;">원주<div class=""></div></a></li><li data-cinemacode="2202" data-screencode=""><a href="javascript:void(0);" title="원주센트럴 선택" style="left: 130px; top: 290px; letter-spacing: inherit;">원주센트럴<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="80" style="display: none;"><a href="javascript:void(0);" title="제주 선택">제주</a><ul class="depth2 area_80" style="top: 0; left: 0;"><li data-cinemacode="6901" data-screencode=""><a href="javascript:void(0);" title="제주 선택" style="left: 205px; top: 125px; letter-spacing: inherit;">제주<div class=""></div></a></li></ul></li></ul>
				</div>
				<!-- //지도 -->
			</div>
			<!-- 특별관 -->
			<div id="body_theater2" class="tab-pane movie_body body_theater2" style="display: none;">
				<div class="theater_list">
					<ul class="depth1"></ul>
					<ul class="depth2" tabindex="0"></ul>
					<div class="detail_wrap"></div>
				</div>
			</div>
			<div class="last_btns">
				<button id="btnCinemaCancel" type="button" class="img_btn booking cancel" data-dismiss="modal">취소</button>
				<button id="btnCinemaConfirm" type="button" class="img_btn booking ok">확인</button>
			</div>
			<button type="button" class="custom_close" data-dismiss="modal" aria-hidden="true"><span class="blind">창닫기</span></button>
		</div><!-- /.modal-content -->
	</div>
</body>
</html>