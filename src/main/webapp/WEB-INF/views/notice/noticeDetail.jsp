<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../main/head.jspf"%>
<link rel="stylesheet" type="text/css" href="/resources/css/admin_import.css" />
<script src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/admin_common.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/main/body_header.jspf"%>
<div class="admin_grp">
	<div class="admin_ct">
		<div class="movie_list">
			<h3 class="sub_tit">공지사항 상세보기 </h3>
			<div class="tbl_type_01" style="margin: 200px 200px 200px 200px">
				<table>
					<caption>번호,제목,글쓴이,날짜,조회를 나타내는 공지사항 표</caption>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">글번호</th>
							<td>${map.NOTICE_NO}</td>
						</tr>
						<tr>
							<th scope="row">글제목</th>
							<td>${map.NOTICE_SUB}</td>
						</tr>
						<tr>
							<th scope="row">작성일</th>
							<td><c:set var="TextValue" value="${map.NOTICE_REGDATE}"/>
								${fn:substring(TextValue,0,16)}
						</tr>
						<tr>
							<th scope="row">글내용</th>
							<td>${map.NOTICE_CONTENT}</pre></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_type_03">
			<a href="#none" class="btn btnC_04 btnP_04" onclick="location.href='<%=cp%>/noticeList.do?currentPage=${currentPage}' ">
				<span>목록</span>
			</a>
		</div>
	</div>
</div>
	