<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>
<script type="text/javascript" src="/moviecube/resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/moviecube/resources/js/jquery.seat-charts.min.js"></script>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/vendor/reserveSeat/reserveSeat.css">
<script>
	var price = 8000; //price
	var seatlength = ${fn:length(seatmap)}; 
	var seats = '${seats}';
	var seatmap = seats.split(",");
	
	alert(seatmap);
	
	$(document)
			.ready(
					function() {
						var $cart = $('#selected-seats'), //Sitting Area
						$counter = $('#counter'), //Votes
						$total = $('#total'); //Total money

						var sc = $('#seat-map').seatCharts(
										{
											map : seatmap,
											naming : {
												top : false,
												getLabel : function(character,
														row, column) {
													return column;
												}
											},
											legend : { //Definition legend
												node : $('#legend'),
												items : [
														[ 'a', 'available',
																'Option' ],
														[ 'a', 'unavailable',
																'Sold' ] ]
											},
											click : function() { //Click event
												if (this.status() == 'available') { //optional seat
													$(
															'<li>'
																	+ (this.settings.row + 1)
																	+ '-'
																	+ this.settings.label
																	+ '</li>')
															.attr(
																	'id',
																	'cart-item-'
																			+ this.settings.id)
															.data(
																	'seatId',
																	this.settings.id)
															.appendTo($cart);

													$counter
															.text(sc
																	.find('selected').length + 1);
													$total
															.text(recalculateTotal(sc)
																	+ price);

													return 'selected';
												} else if (this.status() == 'selected') { //Checked
													//Update Number
													$counter
															.text(sc
																	.find('selected').length - 1);
													//update totalnum
													$total
															.text(recalculateTotal(sc)
																	- price);

													//Delete reservation
													$(
															'#cart-item-'
																	+ this.settings.id)
															.remove();
													//optional
													return 'available';
												} else if (this.status() == 'unavailable') { //sold
													return 'unavailable';
												} else {
													return this.style();
												}
											}
										});
						//sold seat
						sc.get(
								[ '1_2' ])
								.status('unavailable');

					});
	//sum total money
	function recalculateTotal(sc) {
		var total = 0;
		sc.find('selected').each(function() {
			total += price;
		});

		return total;
	}
</script>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/style.css">
<style>
.front {
	width: 300px;
	margin: 5px 32px 45px 32px;
	background-color: #f0f0f0;
	color: #666;
	text-align: center;
	padding: 3px;
	border-radius: 5px;
}

.booking-details {
	float: right;
	position: relative;
	width: 200px;
	height: 450px;
}

.booking-details h3 {
	margin: 5px 5px 0 0;
	font-size: 16px;
}

.booking-details p {
	line-height: 26px;
	font-size: 16px;
	color: #999
}

.booking-details p span {
	color: #666
}

div.seatCharts-cell {
	color: #182C4E;
	height: 25px;
	width: 25px;
	line-height: 25px;
	margin: 3px;
	float: left;
	text-align: center;
	outline: none;
	font-size: 13px;
}

div.seatCharts-seat {
	color: #fff;
	cursor: pointer;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

div.seatCharts-row {
	height: 35px;
}

div.seatCharts-seat.available {
	background-color: #B9DEA0;
}

div.seatCharts-seat.focused {
	background-color: #76B474;
	border: none;
}

div.seatCharts-seat.selected {
	background-color: #ff5959;
}

div.seatCharts-seat.unavailable {
	background-color: #472B34;
	cursor: not-allowed;
}

div.seatCharts-container {
	border-right: 1px dotted #adadad;
	width: 400px;
	padding: 20px;
	float: left;
}

div.seatCharts-legend {
	padding-left: 0px;
	position: absolute;
	bottom: 16px;
}

ul.seatCharts-legendList {
	padding-left: 0px;
}

.seatCharts-legendItem {
	float: left;
	width: 90px;
	margin-top: 10px;
	line-height: 2;
}

span.seatCharts-legendDescription {
	margin-left: 5px;
	line-height: 30px;
}

.checkout-button {
	display: block;
	width: 80px;
	height: 24px;
	line-height: 20px;
	margin: 10px auto;
	border: 1px solid #999;
	font-size: 14px;
	cursor: pointer
}

#selected-seats {
	max-height: 150px;
	overflow-y: auto;
	overflow-x: none;
	width: 200px;
}

#selected-seats li {
	float: left;
	width: 72px;
	height: 26px;
	line-height: 26px;
	border: 1px solid #d3d3d3;
	background: #f7f7f7;
	margin: 6px;
	font-size: 14px;
	font-weight: bold;
	text-align: center
}
</style>
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
					<%-- <%@ include file="seat_CSS_JS.jspf"%> --%>
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