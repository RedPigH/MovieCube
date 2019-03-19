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

<script type="text/javascript">
	function movieDelete() {
		if (confirm("정말 삭제하시겠습니까??") == true) { //확인
			location.href = 'movieDelete.do?MOVIE_NO=${map.MOVIE_NO}';
		} else { //취소
			return;
		}
	}
</script>

<script type="text/javascript">

	function img_view(imgname) {
		window.open("imgView.do?img="+imgname, "크게보기");
	}
	
</script>

</head>

<body>

<div class="admin">
	<div class="logo">
	<h1><a href="<%=cp %>/admin/movieList.do">MovieCube Administrator - Movie Detail </a></h1>
	</div>
</div>

<div class="admin_grp">
	<div class="admin_list">
		<ul>
			<li class="on"><a href="<%=cp%>/admin/movieList.do">영화 정보</a></li>
			<li><a href="<%=cp%>/admin/cinemaList.do">영화관</a></li>
			<li><a href="<%=cp%>/admin/screenList.do">상영관</a></li>
			<li><a href="<%=cp%>/admin/insertSeatForm.do">상영관 좌석</a></li>
			<li><a href="<%=cp%>/admin/timeList.do">영화시간표</a></li>
			<li><a href="<%=cp%>/admin/noticeList.do">공지사항</a></li>
			<li><a href="<%=cp%>">FAQ</a></li>
			<li><a href="<%=cp%>">Q&amp;A</a></li>
			<li><a href="<%=cp%>">회원정보</a></li>
		</ul>
	</div>
	
	<div class="admin_ct">
		<div class="movie_grp">
			<div class="movie_pic">
				<a href="#none" onclick="img_view('${map.POSTER_SAVNAME}')">
					<span class="detail">크게보기</span>
					<img src="<%=cp%>/resources/upload/movie/poster/${map.POSTER_SAVNAME}" alt="영화포스터"/>
				</a>
			</div>
			<div class="movie_txt">
				<p class="tit">${map.MOVIE_NAME}</p>
				<dl>
					<dt>장르</dt>
					<dd>${map.MOVIE_GENRE}</dd>
					<dt>감독</dt>
					<dd>${map.MOVIE_DIRECTOR}</dd>
					<dt>출현</dt>
					<dd>${map.MOVIE_ACTOR}</dd>
					<dt>개봉</dt>
					<dd>
						<c:set var="TextValue" value="${map.MOVIE_OPENDATE}"/>
						${fn:substring(TextValue,0,10)}
					</dd>
					<dt>평점</dt>
					<dd><strong class="iblock pt_red mr10 fz18">${map.MOVIE_GRADE}</strong></dd>
				</dl>
				<div class="movie_btn">
					<span class="btn btnC_02 btnF_01 mr10"></span> 
					<span></span>
					<a href="<%=cp%>/admin/movieModifyForm.do?MOVIE_NO=${map.MOVIE_NO}" 
						class="btn btnC_01 btnF_04"> <span>수정</span></a>
					<a onClick="movieDelete()" class="btn btnC_01 btnF_04" style="padding-left: 10px;">
						<span>삭제</span></a>
					<a href="<%=cp%>/admin/movieList.do?currentPage=${currentPage}"
						class="btn btnC_01 btnF_04" style="padding-left: 10px;"> <span>목록</span> </a>
				</div>
			</div>
		</div>
		<h3 class="sub_tit">줄거리</h3>
		<p class="summary">${map.MOVIE_CONTENT}</p>
		
		<h3 class="sub_tit">스틸컷</h3>
		<div class="movie_steel">
			<div class="inner">
				<ul>
					<c:forEach var="row" items="${movieDetail}">
					<li>
						<img src="<%=cp%>/resources/upload/movie/stillcut/${row.STILLCUT_SAVNAME}" alt="" /> 
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>