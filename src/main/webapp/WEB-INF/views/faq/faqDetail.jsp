<%@ page language="java" contentType="text/html; charset=UTF-8"
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

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>

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
</html>