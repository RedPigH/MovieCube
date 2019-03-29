<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<% String cp = request.getContextPath(); %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>FAQ Detail</title>
<%@ include file="/WEB-INF/views/main/head.jspf"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="<%= cp %>/resources/css/admin_import.css" />
<script src="<%= cp %>/resources/js/jquery-1.10.2.min.js"></script>
<script src="<%= cp %>/resources/js/admin_common.js"></script>
</head>

<body class="animsition">
<%@ include file="/WEB-INF/views/main/body_header.jspf"%>
<div>
</div>
<div class="admin_grp" style="margin: 100px 200px 5px">
	<div class="admin_list">
		<ul>
			<li class="on"><a href="<%=cp%>/faqList.do">전체 FAQ</a></li>
			<li><a href="<%=cp%>/faqList1.do">영화예매 FAQ</a></li>
			<li><a href="<%=cp%>/faqList2.do">영화관 FAQ</a></li>
			<li><a href="<%=cp%>/faqList3.do">상영관 FAQ</a></li>
			<li><a href="<%=cp%>/faqList4.do">멤버쉽 FAQ</a></li>
			<li><a href="<%=cp%>/faqList5.do">기타 FAQ</a></li>
		</ul>
	</div>
	
	<div class="admin_ct">
		<div class="movie_list">
			<h3 class="sub_tit">FAQ 상세보기 </h3>
			<div class="tbl_type_01">
				<table>
					<caption>FAQ 상세보기</caption>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">글번호</th>
							<td>${map.FAQ_NO}</td>
						</tr>
						<tr>
							<th scope="row">타입</th>
							<td>${map.FAQ_TYPE}</td>
						</tr>
						<tr>
							<th scope="row">자주묻는질문</th>
							<td>${map.FAQ_SUB }</td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td>${map.FAQ_CONTENT}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_type_03">

			<a href="#none" style="padding-left: 10px;" class="btn btnC_04 btnP_04" onclick="location.href='<%=cp%>/faqList.do?currentPage=${currentPage}' ">
				<span>목록</span>
			</a>
		</div>
	</div>
</div>