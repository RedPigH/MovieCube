<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../main/head.jspf"%>
</head>
<body class="animsition">

	<%@ include file="../main/body_header.jspf"%>
	<%@ include file="../main/favorite.jspf"%>


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

							<input type="text" name="daterange"
								value="2019-03-14 ~ 2019-03-15" />
						</div>


						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm"
							style="border-bottom: unset;">

							<div class="flex-w flex-m m-r-20 m-tb-5">
								<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">극장</h4>

							</div>
						</div>
						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm">

							<div class="size-199 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>선택</option>
										<c:forEach items="${cinemaList }" var="row">
											<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
										</c:forEach> 
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>

							<div class="size-199 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>선택</option>
										<c:forEach items="${cinemaList }" var="row">
											<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
										</c:forEach> 
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>

							<div class="size-199 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>선택</option>
										<c:forEach items="${cinemaList }" var="row">
											<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
										</c:forEach> 
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>

							<div class="size-199 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>선택</option>
										<c:forEach items="${cinemaList }" var="row">
											<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
										</c:forEach> 
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>


						</div>



						<div style="border-bottom: 1px solid #e6e6e6;">
							<div
								class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm"
								style="border-bottom: unset;">
								<h4 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">영화</h4>
								<a href="#" onclick="add_item()"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"
									style="position: unset;"> 영화 추가 </a>
							</div>

							<div>
								<div id="movieAdd" style="display: none;">
									<div
										class="wrap-table-shopping-cart table-shopping-cart table_row tr flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-50 p-lr-15-sm">
										<div class="column-1">
											<div class="AddedMoviePoster">
												<img src="resources/images/mayakwang.jpg" alt="IMG">
											</div>
										</div>
										<div class="column-2"
											style="font-family: NanumGothicExtraBold; font-size: 20px">마약왕(2019)</div>
										<div class="column-3">
											<button
												onclick="remove_item(document.getElementById('AddedMovieList'))"
												style="font-family: NanumGothicBold">삭제</button>
										</div>
									</div>
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
						
						<c:choose>
							<c:when test="${fn:length(alltimeList) > 0}">
								<c:forEach items="${alltimeList}" var="row">
									<div class="flex-w flex-t bor12 p-t-15 p-b-15" onclick="">
										<div class="size-200">
											<span class="mtext-110 cl2">${row.CINEMA_NAME }</span>
										</div>

										<div class="size-200">
											<span class="mtext-110 cl2"> ${row.MOVIE_TYPE } </span>
										</div>

										<div class="size-199">
											<span class="mtext-110 cl2"> ${row.START_TIME } ~ ${row.END_TIME } </span>
										</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="flex-w flex-t bor12 p-t-15 p-b-15" onclick="">
									<div class="size-200">
											<span class="mtext-110 cl2">조회결과없음</span>
									</div>
							</c:otherwise>
						</c:choose> 
					</div>
				</div>
			</div>
		</div>
	</form>


	<%@ include file="../main/body_footer.jspf"%>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>



	<%@ include file="movieList_modal.jspf" %>
	
	<%@ include file="../main/script.jspf"%>


</body>
</html>