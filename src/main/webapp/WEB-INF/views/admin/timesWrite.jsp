<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<% String cp = request.getContextPath(); %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>MovieCube 관리자</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="<%= cp %>/resources/css/admin_import.css" />
<script src="<%= cp %>/resources/js/jquery-1.10.2.min.js"></script>
<script src="<%= cp %>/resources/js/admin_common.js"></script>

</head>

<div class="admin">
	<div class="logo">
	<h1><a href="<%=cp %>/admin/noticeList.do">MovieCube Administrator - Cinema Regist</a></h1>
	</div>
</div>

<div class="admin_grp">
	<div class="admin_list">
		<ul>
			<li><a href="<%=cp%>/admin/movieList.do">영화 정보</a></li>
			<li><a href="<%=cp%>/admin/cinemaList.do">영화관</a></li>
			<li><a href="<%=cp%>/admin/screenList.do">상영관</a></li>
			<li><a href="<%=cp%>/admin/seatList.do">상영관 좌석</a></li>
			<li class="on"><a href="<%=cp%>/admin/timeList.do">영화시간표</a></li>
			<li><a href="<%=cp%>/admin/noticeList.do">공지사항</a></li>
			<li><a href="<%=cp%>">FAQ</a></li>
			<li><a href="<%=cp%>">Q&amp;A</a></li>
			<li><a href="<%=cp%>">회원정보</a></li>
		</ul>
	</div>	
	
	<div class="admin_ct">
		<h3 class="sub_tit">영화 시간 등록</h3>
		<form id="frm" name="frm" enctype="multipart/form-data">
			<div class="tbl_type_01">
				<table>
					<caption>영화 시간표 등록 </caption>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
					
						<tr>
							<th scope="row">영화제목</th>
							<td>
								<select class="slct w300" name="selectMovie">
									<c:forEach var="movie" items="${movieList}">
									<option value="${movie.MOVIE_NO}">${movie.MOVIE_NAME}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						
						<tr>
							<th scope="row">영화관</th>
							<td>
								<select class="slct w300" name="selectCinema">
									<c:forEach var="cinema" items="${cinemaList}">
									<option value="${cinema.CINEMA_NO}">${cinema.CINEMA_NAME}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						
						<tr>
							<th scope="row">상영관</th>
							<td>
								<select class="slct w300" name="selectScreen">
									<c:forEach var="screen" items="${screenList}">
									<option value="${screen.SCREEN_NO}">${screen.SCREEN_NAME}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						
						</tbody>
						</table>
						</div>
						</form>
						</div>
						
</div>

