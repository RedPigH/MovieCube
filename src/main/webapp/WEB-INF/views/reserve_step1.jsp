<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=1000,user-scalable=yes">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />


	
	<meta property="og:type" content="movie"/>
	<meta property="og:site_name" content="�ް��ڽ�"/>
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
	<script type="text/javascript" src="//cast.imp.joins.com/persona.js" async></script><!-- 20180319 �����ڵ� ���� -->
	<!-- //[netfunnel] -->
	<script type="text/javascript" src="/moviecube/resources/jsmb/netfunnel.js"></script>
	<script type="text/javascript" src="/moviecube/resources/jsmb/netfunnel_skin.js"></script>
<script type="text/javascript">
	// ���� URL ���
	var URLSearch = location.search ? location.search : "/";
	var URLTitle = document.title;
	// GA ���� �� ȣ��
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
					messageBox("�˸�", "1���� �Է��� �ʼ��Դϴ�.");
					return;
				} */

				$.ajax({
					url: '/DataProvider',
					type: 'POST',
					data: {_command: 'User.setFavoriteCinema', cinema1: selectCinema1, cinema2: selectCinema2, cinema3: selectCinema3}

				}).success(function( data ) {
					if (data.resultCode === '0000') {
						messageBox('���������� �Ϸ��Ͽ����ϴ�.', function() {
							afterLogin();
							// �� ��ȭ��� ��������
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
													.append($('<a href="javascript:void(0);" title="'+cinemaName+' ����"/>').text(cinemaName)));
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
					/* messageBox('1���� ��ȭ���� ������ �� �����ϴ�.');
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
		������ �˾� 24�ð� �����ʱ� ���� �߰�
		����ȭ�鿡���� ���
	*/
	function frontBannerShow(){

		var menuId = 'main';
		//alert("frontBannerShow: ");

		if(getCookie('fbClose24Yn') !== 'Y' && imgPath != '' && menuId == "main"){
			$('#notice_popup').show();

			// htmlYN �� Y �ΰ�� �����ϱ�
			if(htmlYN !== 'Y') {
				// ��ũ�� �ִ� ��쿣 a�±׿� ��ũ �߰�
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

	//2014.11.06 �߰����ϰڽ��ϴ�.
	//skipnav�Դϴ�.
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
	//2014.11.21 �߰��մϴ�.
	//��ܹ�� �ݾƶ�
	function header_TopBn(){
		$("body").removeClass("TopBn_ok");
	}

	// ���, ���� ��� Ŭ�� �� Ŭ�� �� ���� ����
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

		// �˾� ��ũ
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
					<h3 class="h3_theater1 pull-left overflow_visible active"><a class="blank theaterTabBtn" href="#body_theater1" data-toggle="tab">������</a></h3>
					<i class="icon h3_split pull-left"></i>
					<h3 class="h3_theater2 pull-left ml10 overflow_visible"><a class="blank theaterTabBtn" href="#body_theater2" data-toggle="tab">Ư����</a></h3>
				</div>
			</div>
			<div class="util">
				<div class="selected" id="cinemaSelected"></div>
			</div>

			<!-- ������ -->
			<div id="body_theater1" class="tab-pane movie_body body_theater1 active" style="display: block;">
				<div class="theater_list">
					<ul class="depth1">
						<li data-depthtype="myCinema" class="no_click"><a href="javascript:void(0);" title="��ȣ ��ȭ��">��ȣ ��ȭ��<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li>
					<li data-areacode="10" class="active"><a href="javascript:void(0);" title="���� ���õ�">����<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="30"><a href="javascript:void(0);" title="���">���<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="35"><a href="javascript:void(0);" title="��õ">��õ<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="45"><a href="javascript:void(0);" title="����/��û/����">����/��û/����<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="55"><a href="javascript:void(0);" title="�λ�/�뱸/���">�λ�/�뱸/���<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="65"><a href="javascript:void(0);" title="����/����">����/����<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="70"><a href="javascript:void(0);" title="����">����<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li><li data-areacode="80"><a href="javascript:void(0);" title="����">����<div class=""></div></a><span><i class="fa fa-angle-right"></i></span></li></ul>
					<ul class="depth2 area_10"><li data-cinemacode="1372" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1359" data-screencode=""><a href="javascript:void(0);" title="�������(��Ƽ) ����">�������(��Ƽ)<div class=""></div></a></li><li data-cinemacode="1341" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1431" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1003" data-screencode=""><a href="javascript:void(0);" title="���빮 ����">���빮<div class=""></div></a></li><li data-cinemacode="1572" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1581" data-screencode=""><a href="javascript:void(0);" title="�� ����">��<div class=""></div></a></li><li data-cinemacode="1311" data-screencode=""><a href="javascript:void(0);" title="��� ����">���<div class=""></div></a></li><li data-cinemacode="1211" data-screencode=""><a href="javascript:void(0);" title="��Ͽ����Ű���� ����">��Ͽ����Ű����<div class=""></div></a></li><li data-cinemacode="1371" data-screencode=""><a href="javascript:void(0);" title="��Ʈ�� ����">��Ʈ��<div class=""></div></a></li><li data-cinemacode="1381" data-screencode=""><a href="javascript:void(0);" title="������ũ�Ϻ�� ����">������ũ�Ϻ��<div class=""></div></a></li><li data-cinemacode="1202" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1221" data-screencode=""><a href="javascript:void(0);" title="���� ����">����<div class=""></div></a></li><li data-cinemacode="1561" data-screencode=""><a href="javascript:void(0);" title="�̼� ����">�̼�<div class=""></div></a></li><li data-cinemacode="1321" data-screencode=""><a href="javascript:void(0);" title="â�� ����">â��<div class=""></div></a></li><li data-cinemacode="1351" data-screencode=""><a href="javascript:void(0);" title="�ڿ��� ����">�ڿ���<div class=""></div></a></li><li data-cinemacode="1571" data-screencode=""><a href="javascript:void(0);" title="ȭ�� ����">ȭ��<div class=""></div></a></li><li data-cinemacode="1562" data-screencode="" class="no_click"><a href="javascript:void(0);" title="ARTNINE ����">ARTNINE<div class=""></div></a></li><li data-cinemacode="1002" data-screencode="" class="no_click"><a href="javascript:void(0);" title="EOE4 ����">EOE4<div class=""></div></a></li></ul>
				</div>
				<!-- ���� -->
				<div class="map map_h" style="padding:0;width:580px;background-color: #eee;border-top: 1px solid #e5e5e5;">
					<ul><li class="mapArea defult_img blind" style="display: none;"><sapn class="blind">��ȣ ��ȭ��</sapn></li><li class="mapArea" data-areacode="10" style="display: list-item;"><a href="javascript:void(0);" title="���� ����">����</a><ul class="depth2 area_10" style="top: 0; left: 0;"><li data-cinemacode="1372" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 232px; top: 275px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1359" data-screencode=""><a href="javascript:void(0);" title="�������(��Ƽ) ����" style="left: 238px; top: 273px; letter-spacing: -1px;" class="">�������(��Ƽ)<div class=""></div></a></li><li data-cinemacode="1341" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 343px; top: 229px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1431" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 290px; top: 190px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1003" data-screencode=""><a href="javascript:void(0);" title="���빮 ����" style="left: 215px; top: 180px; letter-spacing: inherit;" class="">���빮<div class=""></div></a></li><li data-cinemacode="1572" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 34px; top: 180px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1581" data-screencode=""><a href="javascript:void(0);" title="�� ����" style="left: 70px; top: 225px; letter-spacing: inherit;" class="">��<div class=""></div></a></li><li data-cinemacode="1311" data-screencode=""><a href="javascript:void(0);" title="��� ����" style="left: 289px; top: 146px; letter-spacing: inherit;" class="">���<div class=""></div></a></li><li data-cinemacode="1211" data-screencode=""><a href="javascript:void(0);" title="��Ͽ����Ű���� ����" style="left: 88px; top: 180px; letter-spacing: inherit;" class="">��Ͽ����Ű����<div class=""></div></a></li><li data-cinemacode="1371" data-screencode=""><a href="javascript:void(0);" title="��Ʈ�� ����" style="left: 211px; top: 265px; letter-spacing: inherit;" class="">��Ʈ��<div class=""></div></a></li><li data-cinemacode="1381" data-screencode=""><a href="javascript:void(0);" title="������ũ�Ϻ�� ����" style="left: 340px; top: 293px; letter-spacing: inherit;" class="">������ũ�Ϻ��<div class=""></div></a></li><li data-cinemacode="1202" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 140px; top: 185px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1221" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 120px; top: 113px; letter-spacing: inherit;" class="">����<div class=""></div></a></li><li data-cinemacode="1561" data-screencode=""><a href="javascript:void(0);" title="�̼� ����" style="left: 186px; top: 285px; letter-spacing: inherit;" class="">�̼�<div class=""></div></a></li><li data-cinemacode="1321" data-screencode=""><a href="javascript:void(0);" title="â�� ����" style="left: 242px; top: 65px; letter-spacing: inherit;">â��<div class=""></div></a></li><li data-cinemacode="1351" data-screencode=""><a href="javascript:void(0);" title="�ڿ��� ����" style="left: 269px; top: 255px; letter-spacing: inherit;">�ڿ���<div class=""></div></a></li><li data-cinemacode="1571" data-screencode=""><a href="javascript:void(0);" title="ȭ�� ����" style="left: 32px; top: 216px; letter-spacing: inherit;">ȭ��<div class=""></div></a></li><li data-cinemacode="1562" data-screencode=""><a href="javascript:void(0);" title="ARTNINE ����" style="left: 186px; top: 285px; letter-spacing: inherit;">ARTNINE<div class=""></div></a></li><li data-cinemacode="1002" data-screencode=""><a href="javascript:void(0);" title="EOE4 ����" style="left: 210px; top: 195px; letter-spacing: inherit;">EOE4<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="30" style="display: none;"><a href="javascript:void(0);" title="��� ����">���</a><ul class="depth2 area_30" style="top: 0; left: 0;"><li data-cinemacode="4121" data-screencode=""><a href="javascript:void(0);" title="��罺Ÿ�ʵ� ����" style="left: 140px; top: 150px; letter-spacing: inherit;">��罺Ÿ�ʵ�<div class=""></div></a></li><li data-cinemacode="4151" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 70px; top: 180px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4152" data-screencode=""><a href="javascript:void(0);" title="�����Ѱ��ŵ��� ����" style="left: 79px; top: 208px; letter-spacing: inherit;">�����Ѱ��ŵ���<div class=""></div></a></li><li data-cinemacode="4721" data-screencode=""><a href="javascript:void(0);" title="������ ����" style="left: 205px; top: 155px; letter-spacing: inherit;">������<div class=""></div></a></li><li data-cinemacode="4451" data-screencode=""><a href="javascript:void(0);" title="��ź ����" style="left: 149px; top: 310px; letter-spacing: inherit;">��ź<div class=""></div></a></li><li data-cinemacode="4652" data-screencode=""><a href="javascript:void(0);" title="�̻簭�� ����" style="left: 220px; top: 200px; letter-spacing: inherit;">�̻簭��<div class=""></div></a></li><li data-cinemacode="4113" data-screencode=""><a href="javascript:void(0);" title="�鼮 ����" style="left: 120px; top: 154px; letter-spacing: inherit;">�鼮<div class=""></div></a></li><li data-cinemacode="4722" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 181px; top: 156px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4631" data-screencode=""><a href="javascript:void(0);" title="�д� ����" style="left: 190px; top: 230px; letter-spacing: inherit;">�д�<div class=""></div></a></li><li data-cinemacode="4411" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 140px; top: 280px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4421" data-screencode=""><a href="javascript:void(0);" title="�������� ����" style="left: 170px; top: 250px; letter-spacing: inherit;">��������<div class=""></div></a></li><li data-cinemacode="4291" data-screencode=""><a href="javascript:void(0);" title="������ ����" style="left: 83px; top: 245px;; letter-spacing: inherit;">������<div class=""></div></a></li><li data-cinemacode="4253" data-screencode=""><a href="javascript:void(0);" title="�Ȼ��߾� ����" style="left: 110px; top: 290px; letter-spacing: inherit;">�Ȼ��߾�<div class=""></div></a></li><li data-cinemacode="4821" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 170px; top: 90px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4431" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 190px; top: 270px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4471" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 155px; top: 340px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4462" data-screencode=""><a href="javascript:void(0);" title="������ũ��븮 ����" style="left: 208px; top: 260px; letter-spacing: inherit;">������ũ��븮<div class=""></div></a></li><li data-cinemacode="4804" data-screencode=""><a href="javascript:void(0);" title="�����ιζ� ����" style="left: 175px; top: 120px; letter-spacing: inherit;">�����ιζ�<div class=""></div></a></li><li data-cinemacode="4111" data-screencode=""><a href="javascript:void(0);" title="�ϻ� ����" style="left: 115px; top: 120px; letter-spacing: inherit;">�ϻ�<div class=""></div></a></li><li data-cinemacode="4104" data-screencode=""><a href="javascript:void(0);" title="�ϻ꺧���Ÿ ����" style="left: 125px; top: 160px; letter-spacing: inherit;">�ϻ꺧���Ÿ<div class=""></div></a></li><li data-cinemacode="4112" data-screencode=""><a href="javascript:void(0);" title="Ų�ؽ� ����" style="left: 75px; top: 165px; letter-spacing: inherit;">Ų�ؽ�<div class=""></div></a></li><li data-cinemacode="4132" data-screencode=""><a href="javascript:void(0);" title="���ֱ��� ����" style="left: 90px; top: 120px; letter-spacing: inherit;">���ֱ���<div class=""></div></a></li><li data-cinemacode="4115" data-screencode=""><a href="javascript:void(0);" title="���ֿ��� ����" style="left: 95px; top: 150px; letter-spacing: inherit;">���ֿ���<div class=""></div></a></li><li data-cinemacode="4131" data-screencode=""><a href="javascript:void(0);" title="�������ǵ��� ����" style="left: 70px; top: 140px; letter-spacing: inherit;">�������ǵ���<div class=""></div></a></li><li data-cinemacode="4501" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 130px; top: 375px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4651" data-screencode=""><a href="javascript:void(0);" title="�ϳ���Ÿ�ʵ� ����" style="left: 230px; top: 210px; letter-spacing: inherit;">�ϳ���Ÿ�ʵ�<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="35" style="display: none;"><a href="javascript:void(0);" title="��õ ����">��õ</a><ul class="depth2 area_35" style="top: 0; left: 0;"><li data-cinemacode="4041" data-screencode=""><a href="javascript:void(0);" title="�˴� ����" style="left: 290px; top: 200px; letter-spacing: inherit;">�˴�<div class=""></div></a></li><li data-cinemacode="4062" data-screencode=""><a href="javascript:void(0);" title="�۵� ����" style="left: 315px; top: 345px; letter-spacing: inherit;">�۵�<div class=""></div></a></li><li data-cinemacode="4001" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 190px; top: 275px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="4051" data-screencode=""><a href="javascript:void(0);" title="��õ���� ����" style="left: 362px; top: 340px; letter-spacing: inherit;">��õ����<div class=""></div></a></li><li data-cinemacode="4042" data-screencode=""><a href="javascript:void(0);" title="û�� ����" style="left: 280px; top: 240px; letter-spacing: inherit;">û��<div class=""></div></a></li><li data-cinemacode="4043" data-screencode=""><a href="javascript:void(0);" title="û������ ����" style="left: 285px; top: 240px; letter-spacing: inherit;">û������<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="45" style="display: none;"><a href="javascript:void(0);" title="����/��û/���� ����">����/��û/����</a><ul class="depth2 area_45" style="top: 0; left: 0;"><li data-cinemacode="3141" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 135px; top: 217px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="3021" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 180px; top: 246px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="3391" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 167px; top: 185px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="3631" data-screencode=""><a href="javascript:void(0);" title="��â ����" style="left: 185px; top: 163px; letter-spacing: inherit;">��â<div class=""></div></a></li><li data-cinemacode="3901" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 335px; top: 70px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="3651" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 185px; top: 133px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="3301" data-screencode=""><a href="javascript:void(0);" title="õ�� ����" style="left: 140px; top: 142px; letter-spacing: inherit;">õ��<div class=""></div></a></li><li data-cinemacode="3611" data-screencode=""><a href="javascript:void(0);" title="û����ϴ� ����" style="left: 190px; top: 180px; letter-spacing: inherit;">û����ϴ�<div class=""></div></a></li><li data-cinemacode="3801" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 278px; top: 92px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="3501" data-screencode=""><a href="javascript:void(0);" title="ȫ������ ����" style="left: 50px; top: 172px; letter-spacing: inherit;">ȫ������<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="55" style="display: none;"><a href="javascript:void(0);" title="�λ�/�뱸/��� ����">�λ�/�뱸/���</a><ul class="depth2 area_55" style="top: 0; left: 0;"><li data-cinemacode="6701" data-screencode=""><a href="javascript:void(0);" title="��â ����" style="left: 70px; top: 220px; letter-spacing: inherit;">��â<div class=""></div></a></li><li data-cinemacode="7122" data-screencode=""><a href="javascript:void(0);" title="����Ͼ� ����" style="left: 210px; top: 160px; letter-spacing: inherit;">����Ͼ�<div class=""></div></a></li><li data-cinemacode="7801" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 275px; top: 175px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="7303" data-screencode=""><a href="javascript:void(0);" title="���̰��� ����" style="left: 145px; top: 144px; letter-spacing: inherit;">���̰���<div class=""></div></a></li><li data-cinemacode="7401" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 105px; top: 135px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="7901" data-screencode=""><a href="javascript:void(0);" title="������ ����" style="left: 298px; top: 155px; letter-spacing: inherit;">������<div class=""></div></a></li><li data-cinemacode="7022" data-screencode=""><a href="javascript:void(0);" title="�뱸(ĥ����) ����" style="left: 173px; top: 178px; letter-spacing: inherit;">�뱸(ĥ����)<div class=""></div></a></li><li data-cinemacode="7011" data-screencode=""><a href="javascript:void(0);" title="�뱸�ż���(���뱸) ����" style="left: 183px; top: 180px; letter-spacing: inherit;">�뱸�ż���(���뱸)<div class=""></div></a></li><li data-cinemacode="7012" data-screencode=""><a href="javascript:void(0);" title="�뱸�̽þ� ����" style="left: 190px; top: 172px; letter-spacing: inherit;">�뱸�̽þ�<div class=""></div></a></li><li data-cinemacode="6161" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 233px; top: 297px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="6312" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 184px; top: 303px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="7451" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 110px; top: 42px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="6001" data-screencode=""><a href="javascript:void(0);" title="�λ���� ����" style="left: 245px; top: 318px; letter-spacing: inherit;">�λ����<div class=""></div></a></li><li data-cinemacode="6906" data-screencode=""><a href="javascript:void(0);" title="�λ�� ����" style="left: 253px; top: 293px; letter-spacing: inherit;">�λ��<div class=""></div></a></li><li data-cinemacode="7021" data-screencode=""><a href="javascript:void(0);" title="�ϴ뱸(ĥ��) ����" style="left: 172px; top: 168px; letter-spacing: inherit;">�ϴ뱸(ĥ��)<div class=""></div></a></li><li data-cinemacode="6641" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 110px; top: 332px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="6642" data-screencode=""><a href="javascript:void(0);" title="��õ�� ����" style="left: 102px; top: 360px; letter-spacing: inherit;">��õ��<div class=""></div></a></li><li data-cinemacode="7601" data-screencode=""><a href="javascript:void(0);" title="�ȵ� ����" style="left: 190px; top: 45px; letter-spacing: inherit;">�ȵ�<div class=""></div></a></li><li data-cinemacode="6261" data-screencode=""><a href="javascript:void(0);" title="��� ����" style="left: 235px; top: 285px; letter-spacing: inherit;">���<div class=""></div></a></li><li data-cinemacode="6811" data-screencode=""><a href="javascript:void(0);" title="��� ����" style="left: 285px; top: 233px; letter-spacing: inherit;">���<div class=""></div></a></li><li data-cinemacode="6191" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 268px; top: 278px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="6421" data-screencode=""><a href="javascript:void(0);" title="â�� ����" style="left: 200px; top: 302px; letter-spacing: inherit;">â��<div class=""></div></a></li><li data-cinemacode="6121" data-screencode=""><a href="javascript:void(0);" title="�ؿ��(���) ����" style="left: 267px; top: 302px; letter-spacing: inherit;">�ؿ��(���)<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="65" style="display: none;"><a href="javascript:void(0);" title="����/���� ����">����/����</a><ul class="depth2 area_65" style="top: 0; left: 0;"><li data-cinemacode="5021" data-screencode=""><a href="javascript:void(0);" title="���ֻ� ����" style="left: 175px; top: 211px; letter-spacing: inherit;">���ֻ�<div class=""></div></a></li><li data-cinemacode="5061" data-screencode=""><a href="javascript:void(0);" title="�����ϳ� ����" style="left: 165px; top: 208px; letter-spacing: inherit;">�����ϳ�<div class=""></div></a></li><li data-cinemacode="5901" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 285px; top: 130x; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="5301" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 70px; top: 308px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="5302" data-screencode=""><a href="javascript:void(0);" title="�����ϴ�(������) ����" style="left: 82px; top: 304px; letter-spacing: inherit;">�����ϴ�(������)<div class=""></div></a></li><li data-cinemacode="5612" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 215px; top: 10px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="5401" data-screencode=""><a href="javascript:void(0);" title="��õ ����" style="left: 318px; top: 270px; letter-spacing: inherit;">��õ<div class=""></div></a></li><li data-cinemacode="5551" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 355px; top: 315px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="5552" data-screencode=""><a href="javascript:void(0);" title="������õ ����" style="left: 363px; top: 322px; letter-spacing: inherit;">������õ<div class=""></div></a></li><li data-cinemacode="5001" data-screencode=""><a href="javascript:void(0);" title="����(����) ����" style="left: 185px; top: 206px; letter-spacing: inherit;">����(����)<div class=""></div></a></li><li data-cinemacode="5063" data-screencode=""><a href="javascript:void(0);" title="����(����) ����" style="left: 225px; top: 20px; letter-spacing: inherit;">����(����)<div class=""></div></a></li><li data-cinemacode="5064" data-screencode=""><a href="javascript:void(0);" title="÷�� ����" style="left: 175px; top: 191px; letter-spacing: inherit;">÷��<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="70" style="display: none;"><a href="javascript:void(0);" title="���� ����">����</a><ul class="depth2 area_70" style="top: 0; left: 0;"><li data-cinemacode="2001" data-screencode=""><a href="javascript:void(0);" title="����õ ����" style="left: 85px; top: 181px; letter-spacing: inherit;">����õ<div class=""></div></a></li><li data-cinemacode="2171" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 225px; top: 105px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="2201" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 120px; top: 280px; letter-spacing: inherit;">����<div class=""></div></a></li><li data-cinemacode="2202" data-screencode=""><a href="javascript:void(0);" title="���ּ�Ʈ�� ����" style="left: 130px; top: 290px; letter-spacing: inherit;">���ּ�Ʈ��<div class=""></div></a></li></ul></li><li class="mapArea" data-areacode="80" style="display: none;"><a href="javascript:void(0);" title="���� ����">����</a><ul class="depth2 area_80" style="top: 0; left: 0;"><li data-cinemacode="6901" data-screencode=""><a href="javascript:void(0);" title="���� ����" style="left: 205px; top: 125px; letter-spacing: inherit;">����<div class=""></div></a></li></ul></li></ul>
				</div>
				<!-- //���� -->
			</div>
			<!-- Ư���� -->
			<div id="body_theater2" class="tab-pane movie_body body_theater2" style="display: none;">
				<div class="theater_list">
					<ul class="depth1"></ul>
					<ul class="depth2" tabindex="0"></ul>
					<div class="detail_wrap"></div>
				</div>
			</div>
			<div class="last_btns">
				<button id="btnCinemaCancel" type="button" class="img_btn booking cancel" data-dismiss="modal">���</button>
				<button id="btnCinemaConfirm" type="button" class="img_btn booking ok">Ȯ��</button>
			</div>
			<button type="button" class="custom_close" data-dismiss="modal" aria-hidden="true"><span class="blind">â�ݱ�</span></button>
		</div><!-- /.modal-content -->
	</div>
</body>
</html>