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
<div class="modal fade booking_lp booking_lp2 in" id="select_movie" tabindex="0" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">
	<div class="wrapper">
		<div class="contents" tabindex="0">
			<div class="movie_header">
				<h3 class="h3_movie_all pull-left overflow_visible active"><a class="blank movieListTabBtn" href="javascript:void(0);" data-tabtype="movie" title="��翵ȭ ����">��翵ȭ</a></h3>
				<i class="icon h3_split pull-left"></i>
				<h3 class="h3_specialcontent pull-left overflow_visible"><a class="blank movieListTabBtn" href="javascript:void(0);" data-tabtype="special" title="Ư������Ʈ ����">Ư������Ʈ</a></h3>
			</div>
			<div class="util">
				<div class="selected" id="movieSelected">
					<button class="img_btn booking sel_all mr10 ml0" id="selectAllMoovieBtn">All</button>
				<p class="selected_movie" data-moviecode="015053"><span>ĸƾ ���� </span><a href="javascript:void(0);" class="fa fa-times a_in_block"><span class="blind">ĸƾ ���� ��������</span></a></p></div>
				<ul class="sort">
					<li><a href="javascript:void(0)" class="sortBtn active" data-sorttype="rank" title="�������� �����ϱ�">��������</a></li>
					<li><a href="javascript:void(0)" class="sortBtn" data-sorttype="title" title="�����ټ� �����ϱ�">�����ټ�</a></li>
					<li class="last"><a href="javascript:void(0)" class="sortBtn" data-sorttype="releaseDate" title="�����ϼ� �����ϱ�">�����ϼ�</a></li>
				</ul>
				</div>
			<div class="movie_body movie">
				<!--  ��ȭ��� -->
				<ul id="selectMovieList" class="movie_list"><li data-moviecode="015053" class="selected"><a href="javascript:void(0);" title="ĸƾ ���� ���õ�"><span class="blind">ĸƾ ����</span></a><div class="poster"><img alt="ĸƾ ����" src="http://image2.megabox.co.kr/mop/poster/2019/FF/35FB82-03E7-4407-95A2-49C9E59B7365.medium.jpg"></div><p class="title" title="ĸƾ ����"><span class="age age_12">12��������</span><span>ĸƾ ����</span></p></li><li data-moviecode="015155"><a href="javascript:void(0);" title="�װ�:������ �̾߱� ����"><span class="blind">�װ�:������ �̾߱�</span></a><div class="poster"><img alt="�װ�:������ �̾߱�" src="http://image2.megabox.co.kr/mop/poster/2019/2F/F33188-32EC-4345-977A-8792C8E461A7.medium.jpg"></div><p class="title" title="�װ�:������ �̾߱�"><span class="age age_12">12��������</span><span>�װ�:������ �̾߱�</span></p></li><li data-moviecode="015123"><a href="javascript:void(0);" title="����� ����"><span class="blind">�����</span></a><div class="poster"><img alt="�����" src="http://image2.megabox.co.kr/mop/poster/2019/58/17AD69-B9EC-4310-80E3-55AFE01579D3.medium.jpg"></div><p class="title" title="�����"><span class="age age_15">15��������</span><span>�����</span></p></li><li data-moviecode="015075"><a href="javascript:void(0);" title="�� ���̹���: ������ ���� ����"><span class="blind">�� ���̹���: ������ ����</span></a><div class="poster"><img alt="�� ���̹���: ������ ����" src="http://image2.megabox.co.kr/mop/poster/2019/BA/8372D9-D785-4373-84B0-0D064D0F8912.medium.jpg"></div><p class="title" title="�� ���̹���: ������ ����"><span class="age age_15">15��������</span><span>�� ���̹���: ������ ����</span></p></li><li data-moviecode="015042"><a href="javascript:void(0);" title="���� ����"><span class="blind">����</span></a><div class="poster"><img alt="����" src="http://image2.megabox.co.kr/mop/poster/2019/8A/9E926D-A7BD-43B6-9FA3-373B9D9E45DA.medium.jpg"></div><p class="title" title="����"><span class="age age_12">12��������</span><span>����</span></p></li><li data-moviecode="014980"><a href="javascript:void(0);" title="�������� ����"><span class="blind">��������</span></a><div class="poster"><img alt="��������" src="http://image2.megabox.co.kr/mop/poster/2019/60/B31CE0-94B1-4624-8CE8-C62F056F457C.medium.jpg"></div><p class="title" title="��������"><span class="age age_15">15��������</span><span>��������</span></p></li><li data-moviecode="015291"><a href="javascript:void(0);" title="[������] ŷ ���� ������ -���̴� ���� ��Ÿ��- ����"><span class="blind">[������] ŷ ���� ������ -���̴� ���� ��Ÿ��-</span></a><div class="poster"><img alt="[������] ŷ ���� ������ -���̴� ���� ��Ÿ��-" src="http://image2.megabox.co.kr/mop/poster/2019/30/9373BC-C296-482C-9F74-D2591DE0C315.medium.jpg"></div><p class="title" title="[������] ŷ ���� ������ -���̴� ���� ��Ÿ��-"><span class="age age_12">12��������</span><span>[������] ŷ ���� ������ -���̴� ���� ��Ÿ��-</span></p></li><li data-moviecode="015148"><a href="javascript:void(0);" title="[NT LIVE] �����˽�Ÿ�� ����"><span class="blind">[NT LIVE] �����˽�Ÿ��</span></a><div class="poster"><img alt="[NT LIVE] �����˽�Ÿ��" src="http://image2.megabox.co.kr/mop/poster/2019/A8/BF9B40-ED2A-40CD-BCC0-7EC88C4BCCFB.medium.jpg"></div><p class="title" title="[NT LIVE] �����˽�Ÿ��"><span class="age age_15">15��������</span><span>[NT LIVE] �����˽�Ÿ��</span></p></li><li data-moviecode="014950"><a href="javascript:void(0);" title="�׸� �� ����"><span class="blind">�׸� ��</span></a><div class="poster"><img alt="�׸� ��" src="http://image2.megabox.co.kr/mop/poster/2019/0C/9ED85B-945A-4BBF-B3BB-66E69A416764.medium.jpg"></div><p class="title" title="�׸� ��"><span class="age age_12">12��������</span><span>�׸� ��</span></p></li><li data-moviecode="015275"><a href="javascript:void(0);" title="[���̺����] ���̵� ������ ���̴� �÷��� 1st LIVE FLY TO THE SHINY SKY ����"><span class="blind">[���̺����] ���̵� ������ ���̴� �÷��� 1st LIVE FLY TO THE SHINY SKY</span></a><div class="poster"><img alt="[���̺����] ���̵� ������ ���̴� �÷��� 1st LIVE FLY TO THE SHINY SKY" src="http://image2.megabox.co.kr/mop/poster/2019/F6/C7B042-743E-4E49-9339-678FC81EB22A.medium.jpg"></div><p class="title" title="[���̺����] ���̵� ������ ���̴� �÷��� 1st LIVE FLY TO THE SHINY SKY"><span class="age age_all">û�ҳ�����Ұ�</span><span>[���̺����] ���̵� ������ ���̴� �÷��� 1st LIVE FLY TO THE SHINY SKY</span></p></li><li data-moviecode="015133"><a href="javascript:void(0);" title="[�����] ���̴� @ The Met ����"><span class="blind">[�����] ���̴� @ The Met</span></a><div class="poster"><img alt="[�����] ���̴� @ The Met" src="http://image2.megabox.co.kr/mop/poster/2019/E5/93CE7E-FB40-4B7D-8FF6-0714576B23CD.medium.jpg"></div><p class="title" title="[�����] ���̴� @ The Met"><span class="age age_all">û�ҳ�����Ұ�</span><span>[�����] ���̴� @ The Met</span></p></li><li data-moviecode="015185"><a href="javascript:void(0);" title="�� ������ ����"><span class="blind">�� ������</span></a><div class="poster"><img alt="�� ������" src="http://image2.megabox.co.kr/mop/poster/2019/EA/7C8A2F-1BA9-4903-9059-35CA2F46A1A4.medium.jpg"></div><p class="title" title="�� ������"><span class="age age_15">15��������</span><span>�� ������</span></p></li><li data-moviecode="015147"><a href="javascript:void(0);" title="[NT LIVE] �ܸ� ����"><span class="blind">[NT LIVE] �ܸ�</span></a><div class="poster"><img alt="[NT LIVE] �ܸ�" src="http://image2.megabox.co.kr/mop/poster/2019/AE/1B06F6-87E1-403F-83BB-313BDD00552F.medium.jpg"></div><p class="title" title="[NT LIVE] �ܸ�"><span class="age age_15">15��������</span><span>[NT LIVE] �ܸ�</span></p></li><li data-moviecode="015214"><a href="javascript:void(0);" title="���� ���� �� �̾� ����"><span class="blind">���� ���� �� �̾�</span></a><div class="poster"><img alt="���� ���� �� �̾�" src="http://image2.megabox.co.kr/mop/poster/2019/85/504B6F-B90D-4279-B2A8-224CCEC11EE2.medium.jpg"></div><p class="title" title="���� ���� �� �̾�"><span class="age age_12">12��������</span><span>���� ���� �� �̾�</span></p></li><li data-moviecode="015098"><a href="javascript:void(0);" title="�������� ������ ����"><span class="blind">�������� ������</span></a><div class="poster"><img alt="�������� ������" src="http://image2.megabox.co.kr/mop/poster/2019/8A/66D55B-1D10-4A9E-8ED3-8356C19A4F86.medium.jpg"></div><p class="title" title="�������� ������"><span class="age age_12">12��������</span><span>�������� ������</span></p></li><li data-moviecode="015164"><a href="javascript:void(0);" title="������̺�! ������!! �� ���� ���̵� ���� ���� �� ���κ��� ����"><span class="blind">������̺�! ������!! �� ���� ���̵� ���� ���� �� ���κ���</span></a><div class="poster"><img alt="������̺�! ������!! �� ���� ���̵� ���� ���� �� ���κ���" src="http://image2.megabox.co.kr/mop/poster/2019/08/9D72B9-AA8F-475F-ADFC-DC9775ED1034.medium.jpg"></div><p class="title" title="������̺�! ������!! �� ���� ���̵� ���� ���� �� ���κ���"><span class="age age_all">û�ҳ�����Ұ�</span><span>������̺�! ������!! �� ���� ���̵� ���� ���� �� ���κ���</span></p></li><li data-moviecode="015146"><a href="javascript:void(0);" title="���߿� ����"><span class="blind">���߿�</span></a><div class="poster"><img alt="���߿�" src="http://image2.megabox.co.kr/mop/poster/2019/84/3F1773-617D-4C11-842A-C7D906849671.medium.jpg"></div><p class="title" title="���߿�"><span class="age age_15">15��������</span><span>���߿�</span></p></li><li data-moviecode="015027"><a href="javascript:void(0);" title="�������� ����"><span class="blind">��������</span></a><div class="poster"><img alt="��������" src="http://image2.megabox.co.kr/mop/poster/2019/E1/3AEA44-BAD3-4D2E-BB68-8490F6523BA7.medium.jpg"></div><p class="title" title="��������"><span class="age age_15">15��������</span><span>��������</span></p></li><li data-moviecode="015002"><a href="javascript:void(0);" title="�˸�Ÿ: ��Ʋ ���� ����"><span class="blind">�˸�Ÿ: ��Ʋ ����</span></a><div class="poster"><img alt="�˸�Ÿ: ��Ʋ ����" src="http://image2.megabox.co.kr/mop/poster/2019/B5/B1E02D-027A-4885-86B4-878301C28990.medium.jpg"></div><p class="title" title="�˸�Ÿ: ��Ʋ ����"><span class="age age_12">12��������</span><span>�˸�Ÿ: ��Ʋ ����</span></p></li><li data-moviecode="015101"><a href="javascript:void(0);" title="(����) �ŵ�����:���� ������ ��� ����"><span class="blind">(����) �ŵ�����:���� ������ ���</span></a><div class="poster"><img alt="(����) �ŵ�����:���� ������ ���" src="http://image2.megabox.co.kr/mop/poster/2019/9D/892AC0-50C5-4623-BD3D-E1270B07F143.medium.jpg"></div><p class="title" title="(����) �ŵ�����:���� ������ ���"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) �ŵ�����:���� ������ ���</span></p></li><li data-moviecode="014981"><a href="javascript:void(0);" title="�巡�� ����̱� 3 ����"><span class="blind">�巡�� ����̱� 3</span></a><div class="poster"><img alt="�巡�� ����̱� 3" src="http://image2.megabox.co.kr/mop/poster/2019/52/6C77FD-74EE-46F3-A6C8-DDDC424C4B00.medium.jpg"></div><p class="title" title="�巡�� ����̱� 3"><span class="age age_all">û�ҳ�����Ұ�</span><span>�巡�� ����̱� 3</span></p></li><li data-moviecode="015074"><a href="javascript:void(0);" title="�ݵ� �� ����"><span class="blind">�ݵ� ��</span></a><div class="poster"><img alt="�ݵ� ��" src="http://image2.megabox.co.kr/mop/poster/2019/6B/A88C19-D5FA-4738-BE9D-2792EC4700A5.medium.jpg"></div><p class="title" title="�ݵ� ��"><span class="age age_15">15��������</span><span>�ݵ� ��</span></p></li><li data-moviecode="014414"><a href="javascript:void(0);" title="����̾� ���ҵ� ����"><span class="blind">����̾� ���ҵ�</span></a><div class="poster"><img alt="����̾� ���ҵ�" src="http://image2.megabox.co.kr/mop/poster/2018/62/EA0FC1-3045-4DF4-B7B9-A78F54F9E10D.medium.jpg"></div><p class="title" title="����̾� ���ҵ�"><span class="age age_12">12��������</span><span>����̾� ���ҵ�</span></p></li><li data-moviecode="015303"><a href="javascript:void(0);" title="[GET9] ȯ���� �� ����"><span class="blind">[GET9] ȯ���� ��</span></a><div class="poster"><img alt="[GET9] ȯ���� ��" src="http://image2.megabox.co.kr/mop/poster/2019/73/965A14-F909-40B2-AB10-A79CBEAD167D.medium.jpg"></div><p class="title" title="[GET9] ȯ���� ��"><span class="age age_15">15��������</span><span>[GET9] ȯ���� ��</span></p></li><li data-moviecode="015165"><a href="javascript:void(0);" title="���θ� ���� �� ����"><span class="blind">���θ� ���� ��</span></a><div class="poster"><img alt="���θ� ���� ��" src="http://image2.megabox.co.kr/mop/poster/2019/01/306DA1-2219-440B-972C-68B81FFE6BCA.medium.jpg"></div><p class="title" title="���θ� ���� ��"><span class="age age_19">û�ҳ�����Ұ�</span><span>���θ� ���� ��</span></p></li><li data-moviecode="015306"><a href="javascript:void(0);" title="[GET9/GV] ���ۼҴ� ����"><span class="blind">[GET9/GV] ���ۼҴ�</span></a><div class="poster"><img alt="[GET9/GV] ���ۼҴ�" src="http://image2.megabox.co.kr/mop/poster/2019/A2/8489E2-319D-4F74-B57E-0CB114CE32E8.medium.jpg"></div><p class="title" title="[GET9/GV] ���ۼҴ�"><span class="age age_15">15��������</span><span>[GET9/GV] ���ۼҴ�</span></p></li><li data-moviecode="015132"><a href="javascript:void(0);" title="(����) ���۹̴� 2 ����"><span class="blind">(����) ���۹̴� 2</span></a><div class="poster"><img alt="(����) ���۹̴� 2" src="http://image2.megabox.co.kr/mop/poster/2019/70/07D460-48F5-48C7-85CE-DB8BF083CA9D.medium.jpg"></div><p class="title" title="(����) ���۹̴� 2"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) ���۹̴� 2</span></p></li><li data-moviecode="015112"><a href="javascript:void(0);" title="[�����] �����̵��� ���� ����"><span class="blind">[�����] �����̵��� ����</span></a><div class="poster"><img alt="[�����] �����̵��� ����" src="http://image2.megabox.co.kr/mop/poster/2019/20/BDC99B-533F-4797-B4D8-6D6AAF6C82F8.medium.jpg"></div><p class="title" title="[�����] �����̵��� ����"><span class="age age_15">15��������</span><span>[�����] �����̵��� ����</span></p></li><li data-moviecode="015305"><a href="javascript:void(0);" title="[GET9] ��ī�� ���丮 ����"><span class="blind">[GET9] ��ī�� ���丮</span></a><div class="poster"><img alt="[GET9] ��ī�� ���丮" src="http://image2.megabox.co.kr/mop/poster/2019/47/F3A5A1-12A8-4DC1-BCFE-739289D181DD.medium.jpg"></div><p class="title" title="[GET9] ��ī�� ���丮"><span class="age age_12">12��������</span><span>[GET9] ��ī�� ���丮</span></p></li><li data-moviecode="015052"><a href="javascript:void(0);" title="��¼��, ��ȥ ����"><span class="blind">��¼��, ��ȥ</span></a><div class="poster"><img alt="��¼��, ��ȥ" src="http://image2.megabox.co.kr/mop/poster/2019/6F/5EAE1B-5A0A-4D17-B379-D798E5B184DA.medium.jpg"></div><p class="title" title="��¼��, ��ȥ"><span class="age age_12">12��������</span><span>��¼��, ��ȥ</span></p></li><li data-moviecode="015028"><a href="javascript:void(0);" title="�޸� ���ɽ� ������ ����"><span class="blind">�޸� ���ɽ� ������</span></a><div class="poster"><img alt="�޸� ���ɽ� ������" src="http://image2.megabox.co.kr/mop/poster/2019/1A/411A11-C9CF-42C7-B341-7842682D1438.medium.jpg"></div><p class="title" title="�޸� ���ɽ� ������"><span class="age age_all">û�ҳ�����Ұ�</span><span>�޸� ���ɽ� ������</span></p></li><li data-moviecode="015304"><a href="javascript:void(0);" title="[GET9] �̹��� ����"><span class="blind">[GET9] �̹���</span></a><div class="poster"><img alt="[GET9] �̹���" src="http://image2.megabox.co.kr/mop/poster/2019/B7/F42D25-D48E-4FE1-AB97-48D7768ABB71.medium.jpg"></div><p class="title" title="[GET9] �̹���"><span class="age age_15">15��������</span><span>[GET9] �̹���</span></p></li><li data-moviecode="014669"><a href="javascript:void(0);" title="�����̴���: �� ���Ϲ��� ����"><span class="blind">�����̴���: �� ���Ϲ���</span></a><div class="poster"><img alt="�����̴���: �� ���Ϲ���" src="http://image2.megabox.co.kr/mop/poster/2018/D7/B5B0EF-BAFE-4D4F-8C20-DBBB437B55DA.medium.jpg"></div><p class="title" title="�����̴���: �� ���Ϲ���"><span class="age age_12">12��������</span><span>�����̴���: �� ���Ϲ���</span></p></li><li data-moviecode="014387"><a href="javascript:void(0);" title="��Ÿ ���� �� ����"><span class="blind">��Ÿ ���� ��</span></a><div class="poster"><img alt="��Ÿ ���� ��" src="http://image2.megabox.co.kr/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.medium.jpg"></div><p class="title" title="��Ÿ ���� ��"><span class="age age_15">15��������</span><span>��Ÿ ���� ��</span></p></li><li data-moviecode="015100"><a href="javascript:void(0);" title="�׶� �׵� ����"><span class="blind">�׶� �׵�</span></a><div class="poster"><img alt="�׶� �׵�" src="http://image2.megabox.co.kr/mop/poster/2019/07/A3DA49-5AB3-4DB5-900D-0F056FD923CB.medium.jpg"></div><p class="title" title="�׶� �׵�"><span class="age age_19">û�ҳ�����Ұ�</span><span>�׶� �׵�</span></p></li><li data-moviecode="015178"><a href="javascript:void(0);" title="���ڴ� �ʵ��л� �����! ����"><span class="blind">���ڴ� �ʵ��л� �����!</span></a><div class="poster"><img alt="���ڴ� �ʵ��л� �����!" src="http://image2.megabox.co.kr/mop/poster/2019/32/AE2995-3F00-41D2-B246-2367B6DC3ADB.medium.jpg"></div><p class="title" title="���ڴ� �ʵ��л� �����!"><span class="age age_all">û�ҳ�����Ұ�</span><span>���ڴ� �ʵ��л� �����!</span></p></li><li data-moviecode="015095"><a href="javascript:void(0);" title="���鷯 ����Ʈ ����"><span class="blind">���鷯 ����Ʈ</span></a><div class="poster"><img alt="���鷯 ����Ʈ" src="http://image2.megabox.co.kr/mop/poster/2019/6C/E60A75-74D9-41BA-9091-A7A083977351.medium.jpg"></div><p class="title" title="���鷯 ����Ʈ"><span class="age age_15">15��������</span><span>���鷯 ����Ʈ</span></p></li><li data-moviecode="015125"><a href="javascript:void(0);" title="���� �������� 2 �� ����"><span class="blind">���� �������� 2 ��</span></a><div class="poster"><img alt="���� �������� 2 ��" src="http://image2.megabox.co.kr/mop/poster/2019/B0/D6ABFA-0E7D-4AD1-813A-DD7324A75F1F.medium.jpg"></div><p class="title" title="���� �������� 2 ��"><span class="age age_15">15��������</span><span>���� �������� 2 ��</span></p></li><li data-moviecode="015085"><a href="javascript:void(0);" title="�۹̼� ����"><span class="blind">�۹̼�</span></a><div class="poster"><img alt="�۹̼�" src="http://image2.megabox.co.kr/mop/poster/2019/60/73914E-38D4-4B08-B185-6FAC467CE29E.medium.jpg"></div><p class="title" title="�۹̼�"><span class="age age_19">û�ҳ�����Ұ�</span><span>�۹̼�</span></p></li><li data-moviecode="015113"><a href="javascript:void(0);" title="������ ���ϴ��� �׻� ���� £�� ��� ����"><span class="blind">������ ���ϴ��� �׻� ���� £�� ���</span></a><div class="poster"><img alt="������ ���ϴ��� �׻� ���� £�� ���" src="http://image2.megabox.co.kr/mop/poster/2019/7C/7DEB01-3A33-457F-90FF-084BF6EB067F.medium.jpg"></div><p class="title" title="������ ���ϴ��� �׻� ���� £�� ���"><span class="age age_15">15��������</span><span>������ ���ϴ��� �׻� ���� £�� ���</span></p></li><li data-moviecode="015051"><a href="javascript:void(0);" title="�ݵ� ü�̽� ����"><span class="blind">�ݵ� ü�̽�</span></a><div class="poster"><img alt="�ݵ� ü�̽�" src="http://image2.megabox.co.kr/mop/poster/2019/9B/A450F9-FB33-4C48-905F-F5E92F563FB9.medium.jpg"></div><p class="title" title="�ݵ� ü�̽�"><span class="age age_15">15��������</span><span>�ݵ� ü�̽�</span></p></li><li data-moviecode="015157"><a href="javascript:void(0);" title="ĥ�� ���ó��� ����"><span class="blind">ĥ�� ���ó���</span></a><div class="poster"><img alt="ĥ�� ���ó���" src="http://image2.megabox.co.kr/mop/poster/2019/89/665E0B-44B2-4E19-8ECF-ECA951A48785.medium.jpg"></div><p class="title" title="ĥ�� ���ó���"><span class="age age_all">û�ҳ�����Ұ�</span><span>ĥ�� ���ó���</span></p></li><li data-moviecode="015281"><a href="javascript:void(0);" title="[�������ູ] �װ�:������ �̾߱� ����"><span class="blind">[�������ູ] �װ�:������ �̾߱�</span></a><div class="poster"><img alt="[�������ູ] �װ�:������ �̾߱�" src="http://image2.megabox.co.kr/mop/poster/2019/12/AFE6FC-C1D9-4A93-9245-3DBA70602FEA.medium.jpg"></div><p class="title" title="[�������ູ] �װ�:������ �̾߱�"><span class="age age_12">12��������</span><span>[�������ູ] �װ�:������ �̾߱�</span></p></li><li data-moviecode="015084"><a href="javascript:void(0);" title="(����) ������ ���ī��: ���ķν� ���� ��� ����"><span class="blind">(����) ������ ���ī��: ���ķν� ���� ���</span></a><div class="poster"><img alt="(����) ������ ���ī��: ���ķν� ���� ���" src="http://image2.megabox.co.kr/mop/poster/2019/0E/20BD14-953C-41DC-8FE7-2B88634E222D.medium.jpg"></div><p class="title" title="(����) ������ ���ī��: ���ķν� ���� ���"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) ������ ���ī��: ���ķν� ���� ���</span></p></li><li data-moviecode="015193"><a href="javascript:void(0);" title="���� �ٸ� ���� ���� �۴� ����"><span class="blind">���� �ٸ� ���� ���� �۴�</span></a><div class="poster"><img alt="���� �ٸ� ���� ���� �۴�" src="http://image2.megabox.co.kr/mop/poster/2019/8B/BBF8BE-367F-4DE0-9448-4A7DE950ABE6.medium.jpg"></div><p class="title" title="���� �ٸ� ���� ���� �۴�"><span class="age age_15">15��������</span><span>���� �ٸ� ���� ���� �۴�</span></p></li><li data-moviecode="014734"><a href="javascript:void(0);" title="�λ� �ĸ��� ����"><span class="blind">�λ� �ĸ���</span></a><div class="poster"><img alt="�λ� �ĸ���" src="http://image2.megabox.co.kr/mop/poster/2018/D4/ABA0A7-9432-4CF4-83A2-ED972E6661EA.medium.jpg"></div><p class="title" title="�λ� �ĸ���"><span class="age age_all">û�ҳ�����Ұ�</span><span>�λ� �ĸ���</span></p></li><li data-moviecode="015124"><a href="javascript:void(0);" title="�巡�ﺼ ����: ��θ� ����"><span class="blind">�巡�ﺼ ����: ��θ�</span></a><div class="poster"><img alt="�巡�ﺼ ����: ��θ�" src="http://image2.megabox.co.kr/mop/poster/2019/BF/F65A2C-4380-404B-8D6F-A1A752421CCC.medium.jpg"></div><p class="title" title="�巡�ﺼ ����: ��θ�"><span class="age age_all">û�ҳ�����Ұ�</span><span>�巡�ﺼ ����: ��θ�</span></p></li><li data-moviecode="015090"><a href="javascript:void(0);" title="�⹦�� ���� ����"><span class="blind">�⹦�� ����</span></a><div class="poster"><img alt="�⹦�� ����" src="http://image2.megabox.co.kr/mop/poster/2019/43/E93FCF-F564-4EBA-B197-E7AF8F3ED1E4.medium.jpg"></div><p class="title" title="�⹦�� ����"><span class="age age_12">12��������</span><span>�⹦�� ����</span></p></li><li data-moviecode="015153"><a href="javascript:void(0);" title="(����) ����� ��Ű ����"><span class="blind">(����) ����� ��Ű</span></a><div class="poster"><img alt="(����) ����� ��Ű" src="http://image2.megabox.co.kr/mop/poster/2019/F6/3630E4-6C2D-4713-BD6D-6687DC0853CD.medium.jpg"></div><p class="title" title="(����) ����� ��Ű"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) ����� ��Ű</span></p></li><li data-moviecode="015154"><a href="javascript:void(0);" title="(����) ������ ��Ư�� �ð����� ����"><span class="blind">(����) ������ ��Ư�� �ð�����</span></a><div class="poster"><img alt="(����) ������ ��Ư�� �ð�����" src="http://image2.megabox.co.kr/mop/poster/2019/59/03CF73-D6FC-476D-9CA5-2C29BEC85FC5.medium.jpg"></div><p class="title" title="(����) ������ ��Ư�� �ð�����"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) ������ ��Ư�� �ð�����</span></p></li><li data-moviecode="015279"><a href="javascript:void(0);" title="���� ����"><span class="blind">����</span></a><div class="poster"><img alt="����" src="http://image2.megabox.co.kr/mop/poster/2019/23/1F0E08-5A71-4A8B-8CF8-79CC8CA7878B.medium.jpg"></div><p class="title" title="����"><span class="age age_12">12��������</span><span>����</span></p></li><li data-moviecode="015221"><a href="javascript:void(0);" title="���� ��� ���� ����"><span class="blind">���� ��� ����</span></a><div class="poster"><img alt="���� ��� ����" src="http://image2.megabox.co.kr/mop/poster/2019/F1/AF4357-0889-4916-9467-CBA71CC17BAB.medium.jpg"></div><p class="title" title="���� ��� ����"><span class="age age_12">12��������</span><span>���� ��� ����</span></p></li><li data-moviecode="015134"><a href="javascript:void(0);" title="ũ����2 ����"><span class="blind">ũ����2</span></a><div class="poster"><img alt="ũ����2" src="http://image2.megabox.co.kr/mop/poster/2019/8C/FED030-877E-48D0-8AA1-AC7A0EB55AA3.medium.jpg"></div><p class="title" title="ũ����2"><span class="age age_12">12��������</span><span>ũ����2</span></p></li><li data-moviecode="015210"><a href="javascript:void(0);" title="(���) �ָԿ� ���� 2: ���ͳ� ������ ����"><span class="blind">(���) �ָԿ� ���� 2: ���ͳ� ������</span></a><div class="poster"><img alt="(���) �ָԿ� ���� 2: ���ͳ� ������" src="http://image2.megabox.co.kr/mop/poster/2019/64/93C712-F276-4F01-B480-CE718818455F.medium.jpg"></div><p class="title" title="(���) �ָԿ� ���� 2: ���ͳ� ������"><span class="age age_all">û�ҳ�����Ұ�</span><span>(���) �ָԿ� ���� 2: ���ͳ� ������</span></p></li><li data-moviecode="015063"><a href="javascript:void(0);" title="�󱼵� ����"><span class="blind">�󱼵�</span></a><div class="poster"><img alt="�󱼵�" src="http://image2.megabox.co.kr/mop/poster/2019/B6/5CD899-5176-4BCA-B849-CDF93720F76F.medium.jpg"></div><p class="title" title="�󱼵�"><span class="age age_12">12��������</span><span>�󱼵�</span></p></li><li data-moviecode="015166"><a href="javascript:void(0);" title="(����) ���� ����"><span class="blind">(����) ����</span></a><div class="poster"><img alt="(����) ����" src="http://image2.megabox.co.kr/mop/poster/2019/C8/F053BE-37C8-4083-8CFB-51E1CFA61626.medium.jpg"></div><p class="title" title="(����) ����"><span class="age age_all">û�ҳ�����Ұ�</span><span>(����) ����</span></p></li><li data-moviecode="015238"><a href="javascript:void(0);" title="[�������ູ] ����� ����"><span class="blind">[�������ູ] �����</span></a><div class="poster"><img alt="[�������ູ] �����" src="http://image2.megabox.co.kr/mop/poster/2019/48/525D6C-2DC7-4B14-8EBE-263872CD5A09.medium.jpg"></div><p class="title" title="[�������ູ] �����"><span class="age age_15">15��������</span><span>[�������ູ] �����</span></p></li><li data-moviecode="015272"><a href="javascript:void(0);" title="(���) �⹦�� ���� ����"><span class="blind">(���) �⹦�� ����</span></a><div class="poster"><img alt="(���) �⹦�� ����" src="http://image2.megabox.co.kr/mop/poster/2019/76/70ADCD-A8AF-406B-8D4D-E0C77F46AE83.medium.jpg"></div><p class="title" title="(���) �⹦�� ����"><span class="age age_12">12��������</span><span>(���) �⹦�� ����</span></p></li><li data-moviecode="015247"><a href="javascript:void(0);" title="ŷ ���� ������ -���̴� ���� ��Ÿ��- ����"><span class="blind">ŷ ���� ������ -���̴� ���� ��Ÿ��-</span></a><div class="poster"><img alt="ŷ ���� ������ -���̴� ���� ��Ÿ��-" src="http://image2.megabox.co.kr/mop/poster/2019/7A/C38DEE-76D7-4847-8FC8-868C00A4BDB7.medium.jpg"></div><p class="title" title="ŷ ���� ������ -���̴� ���� ��Ÿ��-"><span class="age age_12">12��������</span><span>ŷ ���� ������ -���̴� ���� ��Ÿ��-</span></p></li></ul>
			</div>
			<div class="movie_body specialContent" style="display: none;">
				<div id="selectSpecialContentList" class="movie_list"></div>
			</div>
			<div class="last_btns">
				<button id="btnMovieCancel" type="button" class="img_btn booking cancel" data-dismiss="modal">���</button>
				<button id="btnMovieConfirm" type="button" class="img_btn booking ok">Ȯ��</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
</body>
</html>