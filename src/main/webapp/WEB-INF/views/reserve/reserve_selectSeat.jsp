<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 예매</title>
<%@ include file="../main/head.jspf"%>
</head>
<body class="animsition">

	<%@ include file="../main/body_header.jspf"%>
	<%@ include file="../main/favorite.jspf"%>
	<%@ include file="seat_CSS_JS.jspf"%>


	<section class="bg0 p-t-140 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div
					class="size-217 bor7 p-tb-10 w-full-md">
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
										영화: <span> 캡틴마블</span>
									</p>
									<p>
										상영시간: <span><c:set var="TextValue" value="${time.TIME_DATE}"/>
									${fn:substring(TextValue,0,10)}, 21:00~23:00</span>
									</p>
									<p>좌석:</p>
									<ul id="selected-seats"></ul>
									<p>
										좌석수: <span id="counter">0</span>
									</p>
									<p>
										금액: <b>&#8361<span id="total">0</span></b>
									</p>

									<button class="checkout-button stext-101 cl0 size-99 bg1 bor20 hov-btn2 p-lr-15 trans-04">
									결제</button>

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



	<!-- 
	<div class="demo">
		<div id="seat-map">
			<div class="front">SCREEN</div>
		</div>
		<div class="booking-details">
			<p>
				영화: <span> Gingerclown</span>
			</p>
			<p>
				상영시간: <span>November 3, 21:00</span>
			</p>
			<p>좌석:</p>
			<ul id="selected-seats"></ul>
			<p>
				좌석수: <span id="counter">0</span>
			</p>
			<p>
				금액: <b>$<span id="total">0</span></b>
			</p>

			<button class="checkout-button">확인</button>

			<div id="legend"></div>
		</div>
		<div style="clear: both"></div>
	</div> -->


	<%@ include file="../main/body_footer.jspf"%>

	<%@ include file="../main/script.jspf"%>
</body>
</html>