<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>FAQs</title>
<%@ include file="/WEB-INF/views/main/head.jspf"%>
<%@ include file="/WEB-INF/views/main/body_header.jspf"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/admin_import.css" />
<script src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/admin_common.js"></script>
</head>

<body>
<div>
</div>
<div class="admin_grp" style="margin: 100px 200px 5px">
	<div class="admin_list">
		<ul>
			<li class="on"><a href="/moviecube/faqList.do">전체 FAQ</a></li>
			<li><a href="/moviecube/faqList1.do">영화예매 FAQ</a></li>
			<li><a href="/moviecube/faqList2.do">영화관 FAQ</a></li>
			<li><a href="/moviecube/faqList3.do">상영관 FAQ</a></li>
			<li><a href="/moviecube/faqList4.do">멤버쉽 FAQ</a></li>
			<li><a href="/moviecube/faqList5.do">기타 FAQ</a></li>
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

			<a href="/moviecube#none" style="padding-left: 10px;" class="btn btnC_04 btnP_04" onclick="location.href='/faqList.do?currentPage=${currentPage}' ">
				<span>목록</span>
			</a>
		</div>
	</div>
</div>
	
	
















<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<table class="board_view">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />
		</colgroup>
		<caption>게시글 상세</caption>
		<tbody>
			<tr>
				<th scope="row">글 번호</th>
				<td>${map.FAQ_NO }</td>
			</tr>
			<tr>
				<th scope="row">타입</th>
				<td>${map.FAQ_TYPE }</td>
			</tr>
			<tr>
				<th scope="row">질문</th>
				<td colspan="3">${map.FAQ_SUB }</td>
			</tr>
			<tr>
				<td colspan="4">${map.FAQ_CONTENT }</td>
			</tr>
		</tbody>
	</table>

	<a href="/moviecube#this" class="btn" id="list">목록으로</a>
	<a href="/moviecube#this" class="btn" id="update">수정하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { /* 목록으로 */
				e.preventDefault();
				fn_openBoardList();
			});

			$("#update").on("click", function(e) { /* 저장하기  */
				e.preventDefault();
				fn_openBoardUpdate();
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/adminFaqList.do'/>");
			comSubmit.submit();
		}
		function fn_openBoardUpdate() {
			var FAQ_NO = "${map.FAQ_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/adminFaqModifyForm.do'/>");
			comSubmit.addParam("FAQ_NO", FAQ_NO);
			comSubmit.submit();
		}
	</script>
</body>
</html> --%>