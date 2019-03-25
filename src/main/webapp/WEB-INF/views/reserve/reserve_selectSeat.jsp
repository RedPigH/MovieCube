<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 예매</title>
<%@ include file="../main/head.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	function confirm() {
		$(function() { 	//선택 좌석 행,열 값 가져오기
		    var selectSeats = $.map($('ul li').contents(), function(elem, i) { 
		    if(elem.nodeType === 3 && $.trim(elem.nodeValue).length) 
		     return $.trim(elem.nodeValue); 
		    }); 
		
			var totalprice = $("#total").text();
		
		    location.href = 'reserve_confirm.do?time_no=${time.TIME_NO}&selectSeats=' +selectSeats +'&totalprice=' + totalprice;
		}); 
	}
</script>
</head>
<body class="animsition">

	<%@ include file="../main/body_header.jspf"%>
	<%@ include file="../main/favorite.jspf"%>
	<%@ include file="seat_CSS_JS.jspf"%>


	<section class="bg0 p-t-140 p-b-116">
		<div class="container">
			<div class="row" style="margin: 0 0;">
				<div class="flex-w flex-sb-m p-t-18 p-b-30 p-lr-50 p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">좌석
						선택</h4>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-217 bor7 p-tb-10 w-full-md">
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
									<ul id="selected-seats"></ul>
									<p>
										좌석수: <span id="counter">0</span>
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
</body>
</html>