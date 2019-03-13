<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="main/head.jspf"%>
</head>
<body class="animsition">

	<%@ include file="main/body_header.jspf"%>
	<%@ include file="main/favorite.jspf"%>


	<!-- 영화 예매 -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container" style="margin-top: 50px">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						
						
						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm"
							style="border-top: 1px solid #e6e6e6;">

							<div class="flex-w flex-m m-r-20 m-tb-5">
								<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">날짜</h4>

							</div>
							
								<input type="text"
										name="daterange" value="03/13/2019 - 03/14/2019" />

						</div>
						
						
						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm" style="border-bottom: unset;">

							<div class="flex-w flex-m m-r-20 m-tb-5">
								<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">극장</h4>

							</div>
						</div>
						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm">
							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								지역1</div>

							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								상영관1</div>
								
							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								지역2</div>

							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								상영관2</div>
								
							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								지역3</div>

							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								상영관3</div>
								
							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								지역4</div>

							<div
								class="flex-c-m stext-101 cl2 size-126 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								상영관4</div>
						</div>



					<div style="border-bottom: 1px solid #e6e6e6;">
						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm" style="border-bottom: unset;">
							<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">영화</h4>
							<h6 onclick="add_item()" style="font-family: NanumGothicBold">추가</h6>
						</div>
						
						<div>	
							<div id="movieAdd" style="display: none;">
									<div class="wrap-table-shopping-cart table-shopping-cart table_row tr    
													flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm">
										<div class="column-1">
											<div class="how-itemcart1">
											<img src="resources/images/mayakwang.jpg" alt="IMG">
											</div>
										</div>
										<div class="column-2">마약왕(2019)</div>
										<div class="column-3"><h6 onclick="remove_item(document.getElementById('movieCancel'))" style="font-family: NanumGothicBold">삭제</h6></div>
									</div>
									<h6 onclick="remove_item(this)" style="font-family: NanumGothicBold">삭제</h6>
							</div>
							<div id="field"></div>
						</div>
					</div>
					</div>
				</div>






				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">시간</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2"> Subtotal: </span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2"> $79.65 </span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2"> Shipping: </span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">There are no shipping methods
									available. Please double check your address, or contact us if
									you need any help.</p>

								<div class="p-t-15">
									<span class="stext-112 cl8"> Calculate Shipping </span>

									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select class="js-select2" name="time">
											<option>Select a country...</option>
											<option>USA</option>
											<option>UK</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
											name="state" placeholder="State /  country">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
											name="postcode" placeholder="Postcode / Zip">
									</div>

									<div class="flex-w">
										<div
											class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											Update Totals</div>
									</div>

								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2"> Total: </span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2"> $79.65 </span>
							</div>
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout</button>
					</div>
				</div>
			</div>
		</div>
	</form>




	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Categories</h4>

					<ul>
						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Women </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Men </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Shoes </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Watches </a></li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Help</h4>

					<ul>
						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Track Order </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Returns </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> Shipping </a></li>

						<li class="p-b-10"><a href="resources/#"
							class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a></li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">GET IN TOUCH</h4>

					<p class="stext-107 cl7 size-201">Any questions? Let us know in
						store at 8th floor, 379 Hudson St, New York, NY 10018 or call us
						on (+1) 96 716 6879</p>

					<div class="p-t-27">
						<a href="resources/#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a> <a href="resources/#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a> <a href="resources/#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">Newsletter</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text"
								name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button
								class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="resources/#" class="m-all-1"> <img
						src="resources/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a> <a href="resources/#" class="m-all-1"> <img
						src="resources/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a> <a href="resources/#" class="m-all-1"> <img
						src="resources/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a> <a href="resources/#" class="m-all-1"> <img
						src="resources/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a> <a href="resources/#" class="m-all-1"> <img
						src="resources/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | Made with <i class="fa fa-heart-o"
						aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a> &amp; distributed by <a
						href="https://themewagon.com" target="_blank">ThemeWagon</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<%@ include file="main/script.jspf"%>


</body>
</html>