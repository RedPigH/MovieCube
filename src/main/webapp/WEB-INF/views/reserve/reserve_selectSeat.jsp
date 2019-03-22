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


	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div
					class="size-217 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<%@ include file="seat_CSS_JS.jspf"%>
					<div class="demo">
						<div id="seat-map">
							<div class="front">SCREEN
							<c:out value="${seatmap[0]}" />
							</div>
						</div>
						<div class="booking-details">
							<p>
								영화: <span> 캡틴마블</span>
							</p>
							<p>
								상영시간: <span>3월 15일, 21:00~23:00</span>
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