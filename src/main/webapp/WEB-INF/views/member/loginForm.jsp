<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="../main/head.jspf" %>
<link href="/moviecube/css/login.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function login()
{
        var form = document.lgfm;

        //아이디에서 입력 필수 조건문
        if (form.MEMBER_ID.value == "")
        {
           alert("아이디를 입력해야 합니다!");
           form.MEMBER_ID.focus();//포커스를 id박스로 이동.
           return;
        }
     
       	if (form.MEMBER_PASSWD1.value == "")
        {
          alert("패스워드를 입력 해야 합니다!");
          form.MEMBER_PASSWD1.focus();//포커스를 Password박스로 이동.
          return;
       }
	
    form.action="/moviecube/member/login.do"
	form.submit();

}
</script>
</head>
<body>
<div class="container"><!-- 좌우측의 공간 확보 -->

	<header>
	<%@include file="../main/body_header.jspf" %>
	</header>

	<form name="lgfm" id="lgfm" method="post">
 	 <div class="imgcontainer">
 	   <img src="img_avatar2.png" alt="Avatar" class="avatar">
	  </div>

	  <div class="container">
 	   <label for="uname"><b>아이디</b></label>
    	<input type="text" placeholder="아이디 입력" name="MEMBER_ID">

  	  <label for="psw"><b>비밀번호</b></label>
  	  <input type="password" placeholder="비밀번호 입력" name="MEMBER_PASSWD1">

 	  <button id="lg" onclick="login();">Login</button>
  	  <label>
  	    <input type="checkbox" checked="checked" name="remember"> 자동저장
  	  </label>
 	 </div>

	  <div class="container" style="background-color:#f1f1f1">
    	<button type="button" class="cancelbtn" onclick="history.go(-1);">취소</button>
    	<span class="psw">
   		 <a href="/moviecube/member/joinForm.do"><input type="button" class="button" value="회원가입"></a>
   		 <a href="#">아이디/비밀번호 찾기</a></span>
  	  </div>
	</form>

</div>

	<!--===============================================================================================-->
		<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/bootstrap/js/popper.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/select2/select2.min.js"></script>
		<script>
			$(".js-select2").each(function() {
				$(this).select2({
					minimumResultsForSearch : 20,
					dropdownParent : $(this).next('.dropDownSelect2')
				});
			})
		</script>
		<!--===============================================================================================-->
		<script src="resources/vendor/daterangepicker/moment.min.js"></script>
		<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/slick/slick.min.js"></script>
		<script src="resources/js/slick-custom.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/parallax100/parallax100.js"></script>
		<script>
			$('.parallax100').parallax100();
		</script>
		<!--===============================================================================================-->
		<script
			src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
		<script>
			$('.gallery-lb').each(function() { // the containers for all your galleries
				$(this).magnificPopup({
					delegate : 'a', // the selector for gallery item
					type : 'image',
					gallery : {
						enabled : true
					},
					mainClass : 'mfp-fade'
				});
			});
		</script>
		<!--===============================================================================================-->
		<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
		<!--===============================================================================================-->
		<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
		<script>
			$('.js-addwish-b2').on('click', function(e) {
				e.preventDefault();
			});

			$('.js-addwish-b2').each(
					function() {
						var nameProduct = $(this).parent().parent().find(
								'.js-name-b2').html();
						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-b2');
									$(this).off('click');
								});
					});

			$('.js-addwish-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.find('.js-name-detail').html();

						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-detail');
									$(this).off('click');
								});
					});

			/*---------------------------------------------*/

			$('.js-addcart-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.parent().find('.js-name-detail').html();
						$(this).on('click', function() {
							swal(nameProduct, "is added to cart !", "success");
						});
					});
		</script>
		<!--===============================================================================================-->
		<script
			src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script>
			$('.js-pscroll').each(function() {
				$(this).css('position', 'relative');
				$(this).css('overflow', 'hidden');
				var ps = new PerfectScrollbar(this, {
					wheelSpeed : 1,
					scrollingThreshold : 1000,
					wheelPropagation : false,
				});

				$(window).on('resize', function() {
					ps.update();
				})
			});
		</script>
		<!--===============================================================================================-->
		<script src="resources/js/main.js"></script>
</body>
</html>