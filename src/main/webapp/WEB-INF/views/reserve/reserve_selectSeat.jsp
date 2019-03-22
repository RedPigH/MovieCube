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
					class="size-217 bor7 p-lr-10 p-t-10 p-b-10 p-lr-10-lg w-full-md">
					<div class="row">
						<div class="col-md-6 col-lg-7 p-b-30">
							<div class="p-l-25 p-r-30 p-lr-0-lg">
								<div id="seat-map">
									<div class="front">
										SCREEN
										<c:out value="${seatmap[0]}" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-5 p-b-30">
							<div class="p-t-5 p-lr-0-lg">
								<div class="booking-details">
									<p>
										영화: <span>${time.MOVIE_NAME }</span>
									</p>
									<p>
										상영시간: <span>${time.TIME_DATE}, ${time.START_TIME} ~ ${time.END_TIME}</span>
									</p>
									<p>좌석:</p>
									<ul id="selected-seats"></ul>
									<p>
										좌석수: <span id="counter">0</span>
									</p>
									<p>
										금액: <b><span id="total">0</span>원</b>
									</p>

									<button class="checkout-button">확인</button>

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