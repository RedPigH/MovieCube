<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 예매</title>
<%@ include file="../main/head.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body class="animsition">

	<%@ include file="../main/body_header.jspf"%>
	<%@ include file="../main/wishList.jspf"%>
	<%@ include file="seat_CSS_JS.jspf"%>


	<section class="bg0 p-t-140 p-b-116">
		<div class="container">
			<div class="row" style="margin: 0 0;">
				<div class="bread-crumb flex-w p-l-50 p-r-15 p-b-30 p-lr-0-lg">
			<a href="main.do" class="stext-109 cl8 hov-cl1 trans-04">
				메인으로
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>
			
			<a href="#" class="stext-109 cl8 hov-cl1 trans-04" onclick="history.go(-1);">
				날짜/극장/영화/시간
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				좌석 선택
			</span>
		</div>
				
			</div>
		</div>
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-217 bor7 p-tb-10 w-full-md">
				<div class="flex-w flex-sb-m p-t-18 p-b-30 p-lr-50 p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">좌석
						선택</h4>
				</div>
					<div class="row">
						<div class="col-md-6 col-lg-7 p-tb-15">
							<div class="p-l-25 p-lr-0-lg" style="text-align: center;">
								<div id="seat-map">
									<div class="front">
										SCREEN
										<c:out value="${seatmap[0]}" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-5 p-t-15">
							<div class="p-t-25 p-lr-0-lg">
								<div class="booking-details">
									<p>
										영화: <span>${time.MOVIE_NAME}</span>
									</p>
									<p>
										상영시간: <span><c:set var="TextValue"
												value="${time.TIME_DATE}" /> ${fn:substring(TextValue,0,10)}
											/ ${time.START_TIME}~${time.END_TIME}</span>
									</p>
									<p>좌석:</p>
									<ul id="selected-seats" style="margin: 0 0 1.5em 2em;"></ul>
									<p>
										좌석수: <span id="counter">0</span>
										<span style="font-size: 12px; color:#ff0000; padding-left: 15px">*총 4매까지 예약할 수 있습니다.</span>
									</p>
									<p>
										금액: <b>&#8361<span id="total">0</span></b>
									</p>

									<button
										class="checkout-button stext-101 cl0 size-99 bg1 bor20 hov-btn2 p-lr-15 trans-04"
										onclick = "confirm()">
										결제 </button>
									<div id="legend"></div>
								</div>
								<div style="clear: both"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="../main/body_footer.jspf"%>

	<%@ include file="../main/script.jspf"%>
	
	
<script type="text/javascript">
		function confirm() {
			
			/* 선택된 좌석 정보 */
			var selectSeats = $.map($('ul li').contents(), function(elem, i) { 
			    if(elem.nodeType === 3 && $.trim(elem.nodeValue).length) 
			     return $.trim(elem.nodeValue); 
			    }); 
			
			if(selectSeats == "" || selectSeats == null){
				swal("", "좌석을 선택해 주세요", "error");
				return false;
			}
			
			/* 총 가격 정보 */
			var totalprice = $("#total").text();
				
			/* 상영 정보 */
			var time_no = ${time.TIME_NO};
			    
			    
			
			
			var allData = {
				"SELECT_SEATS" : selectSeats,
				"TOTAL_PRICE" : totalprice,
				"TIME_NO" : time_no
			};

			jQuery.ajaxSettings.traditional = true;

			$.ajax({
				type : "POST",
				url : "<c:url value='/reserve_confirm.do'/>",
				dataType : "json",
				data : allData,
				
				success : function(data) {
					
					  var imageURL = 'resources/upload/movie/poster/'+data.time.POSTER_SAVNAME;
					  var reserveNotice = '영화관: '+data.time.CINEMA_NAME+'\n'
				    	 +'상영관: '+data.time.SCREEN_NAME+'\n'
				    	 +'상영 날짜: '+data.time.TIME_DATE+'\n'
				    	 +'상영 시간: '+data.time.START_TIME+'~'+data.time.END_TIME+'\n'
				    	 +'선택 좌석: '+data.selectSeat+'\n'
				    	 +'총 가격: '+data.totalprice;
					 
					  swal({
					    title:'영화: '+data.time.MOVIE_NAME,
					    text: reserveNotice,
					    icon: imageURL,
					  });
					
					 /*  location.href = 'reserve_complete.do?TIME_NO=${time.TIME_NO}&SCREEN_NO=${time.SCREEN_NO}&selectSeats=${selectSeats}&TOTAL_PRICE=${totalprice}'; */
					
				},

				error : function(jqXHR, textStatus, errorThrown) {
					alert("오류가 발생하였습니다.");
				}
			}); 
		}
	</script>
</body>
</html>