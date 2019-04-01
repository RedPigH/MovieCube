<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../main/head.jspf"%>
</head>
<script type="text/javascript">
	function toModal(EVENT_NAME, EVENT_NO, EVENT_OPENDATE, EVENT_CLOSEDATE,
			EVENT_SAVNAME, EVENT_URL) {

		var no = "이벤트 이름 : " + EVENT_NO;
		$("#h_modal_event_no").text(no);

		var item = "이벤트 번호 : " + EVENT_NAME;
		$("#h_modal_event_name").text(item);

		var opendate = "이벤트 기간 : " + EVENT_OPENDATE;
		$("#h_modal_event_opendate").text(opendate);

		var closedate = "~ " + EVENT_CLOSEDATE;
		$("#h_modal_event_closedate").text(closedate);

		var img_url = "/moviecube/resources/upload/event/" + EVENT_SAVNAME;
		$("#h_modal_img_savname").attr('src', img_url);
	}
</script>

<body class="animsition">

	<header class="header-v4">

			<!-- Back to top -->
			<div class="btn-back-to-top" id="myBtn">
				<span class="symbol-btn-back-to-top"> <i
					class="zmdi zmdi-chevron-up"></i>
				</span>
			</div>

			<%@ include file="../member/loginForm.jspf"%>
			
			<%@ include file="../main/body_header.jspf"%>


	</header>

	<!-- Event List -->
	<section class="sec-product bg0 p-t-100 p-b-50">
		<div class="container">

			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist" style="margin-left: 0px">

					<li class="nav-item p-b-10"><a class="nav-link active"
						data-toggle="tab" href="#all" role="tab">전체 이벤트</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#best-seller" role="tab">무비큐브 이벤트</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#featured" role="tab">영화 이벤트</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#sale" role="tab">제휴 이벤트</a></li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-50">
					<!-- 전체 이벤트- -->
					<div class="tab-pane fade show active" id="all"
						role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								<c:choose>
									<c:when test="${fn:length(eventList) > 0 }">
										<c:forEach items="${eventList }" var="row">
											<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
												<!-- Block2 -->
												<div class="block2">
													<div class="block2-pic hov-img0" id="forEventModal">
														<img
															src="/moviecube/resources/upload/event/${row.EVENT_SAVNAME}"
															alt="이벤트" /> <a href="#" id="gahyun"
															onclick="toModal(
																	'${row.EVENT_NO }',
																	'${row.EVENT_NAME }',
																	'${row.EVENT_OPENDATE }',
																	'${row.EVENT_CLOSEDATE }',
																	'${row.EVENT_SAVNAME }',
																	'${row.EVENT_URL }'
																);"
															class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
															상세보기 </a>

													</div>

													<div class="block2-txt flex-w flex-t p-t-14">
														<div class="block2-txt-child1 flex-col-l ">
															<a href="resources/product-detail.html"
																class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
																${row.EVENT_NAME}</a> <span class="stext-105 cl3"
																id="MOVIE_GENRE"> 기간 : ${row.EVENT_OPENDATE} ~
																${row.EVENT_CLOSEDATE} </span>
														</div>

														<div class="block2-txt-child2 flex-r p-t-3"></div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div>이벤트 없음</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<!-- 무비큐브 이벤트- -->
					<div class="tab-pane fade" id="best-seller"
						role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								<c:choose>
									<c:when test="${fn:length(mceventList) > 0 }">
										<c:forEach items="${mceventList }" var="row">
											<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
												<!-- Block2 -->
												<div class="block2">
													<div class="block2-pic hov-img0" id="forEventModal">
														<img
															src="/moviecube/resources/upload/event/${row.EVENT_SAVNAME}"
															alt="이벤트" /> <a href="#" id="gahyun"
															onclick="toModal(
																	'${row.EVENT_NO }',
																	'${row.EVENT_NAME }',
																	'${row.EVENT_OPENDATE }',
																	'${row.EVENT_CLOSEDATE }',
																	'${row.EVENT_SAVNAME }',
																	'${row.EVENT_URL }'
																);"
															class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
															상세보기 </a>

													</div>

													<div class="block2-txt flex-w flex-t p-t-14">
														<div class="block2-txt-child1 flex-col-l ">
															<a href="resources/product-detail.html"
																class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
																${row.EVENT_NAME}</a> <span class="stext-105 cl3"
																id="MOVIE_GENRE"> 기간 : ${row.EVENT_OPENDATE} ~
																${row.EVENT_CLOSEDATE} </span>
														</div>

														<div class="block2-txt-child2 flex-r p-t-3"></div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div>이벤트 없음</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>

					<!-- 영화이벤트 -->
					<div class="tab-pane fade" id="featured" role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								<c:choose>
									<c:when test="${fn:length(meventList) > 0 }">
										<c:forEach items="${meventList }" var="row">
											<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
												<!-- Block2 -->
												<div class="block2">
													<div class="block2-pic hov-img0">
														<img
															src="/moviecube/resources/upload/event/${row.EVENT_SAVNAME}"
															alt="이벤트" /> <a href="#" id="gahyun"
															onclick="toModal(
																	'${row.EVENT_NO }',
																	'${row.EVENT_NAME }',
																	'${row.EVENT_OPENDATE }',
																	'${row.EVENT_CLOSEDATE }',
																	'${row.EVENT_SAVNAME }',
																	'${row.EVENT_URL }'
																);"
															class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
															상세보기 </a>

													</div>

													<div class="block2-txt flex-w flex-t p-t-14">
														<div class="block2-txt-child1 flex-col-l ">
															<a href="resources/product-detail.html"
																class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
																${row.EVENT_NAME}</a> <span class="stext-105 cl3"
																id="MOVIE_GENRE"> 기간 : ${row.EVENT_OPENDATE} ~
																${row.EVENT_CLOSEDATE} </span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div>이벤트 없음</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<!-- - 제휴 이벤트-->
					<div class="tab-pane fade" id="sale" role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								<c:choose>
									<c:when test="${fn:length(alleventList) > 0 }">
										<c:forEach items="${alleventList }" var="row">
											<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
												<!-- Block2 -->
												<div class="block2">
													<div class="block2-pic hov-img0">
														<img
															src="/moviecube/resources/upload/event/${row.EVENT_SAVNAME}"
															alt="이벤트" /> <a href="#" id="gahyun"
															onclick="toModal(
																			'${row.EVENT_NO }',
																			'${row.EVENT_NAME }',
																			'${row.EVENT_OPENDATE }',
																			'${row.EVENT_CLOSEDATE }',
																			'${row.EVENT_SAVNAME }',
																			'${row.EVENT_URL }'
																		);"
															class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
															상세보기 </a>
													</div>
													<div class="block2-txt flex-w flex-t p-t-14">
														<div class="block2-txt-child1 flex-col-l ">
															<a href="resources/product-detail.html"
																class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
																${row.EVENT_NAME}</a> <span class="stext-105 cl3"
																id="MOVIE_GENRE"> 기간 : ${row.EVENT_OPENDATE} ~
																${row.EVENT_CLOSEDATE} </span>
														</div>
														<div class="block2-txt-child2 flex-r p-t-3"></div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div>이벤트 없음</div>
									</c:otherwise>
								</c:choose>
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


