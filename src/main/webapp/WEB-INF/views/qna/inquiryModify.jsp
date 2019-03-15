<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
		<table class="board_view">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<caption>QNA 상세♥</caption>
			<tbody>
				<tr>
					<th scope="row">글 번호</th>
					<td>${map.QNA_NO }
					<input type="hidden" id="QNA_NO"
						name="QNA_NO" value="${map.QNA_NO }">
					</td>
				<tr>
					<th scope="row">작성시간</th>
					<td>${map.QNA_REGDATE }</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3"><input type="text" id="QNA_SUB" name="QNA_SUB"
						class="wdp_90" value="${map.QNA_SUB }" /></td>
				</tr>
				<tr>
					<th scope="row">작성자</th>
					<td>${map.QNA_ID }<input type="hidden" id="QNA_ID"
						name="QNA_ID" value="${map.QNA_ID }">
					</td>
				</tr>
				<tr>
					<td colspan="4" class="view_text"><textarea rows="20"
							cols="100" title="내용" id="QNA_CONTENT" name="QNA_CONTENT">${map.QNA_CONTENT }</textarea>
					</td>
				</tr>

			</tbody>
		</table>
		<input type="file" name="file"> <br /> <br />
	</form>

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { /* 목록으로 버튼 */
				e.preventDefault();
				fn_openBoardList();
			});

			$("#update").on("click", function(e) { //저장하기 버튼
				e.preventDefault();
				fn_updateBoard();
			});

			$("#delete").on("click", function(e) { //삭제하기 버튼
				e.preventDefault();
				fn_deleteBoard();
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qna/adminInquiryList.do'/>");
			comSubmit.submit();
		}

		function fn_updateBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/qna/adminInquiryModify.do'/>");
			//comSubmit.addParam("QNA_NO", $("#QNA_NO").val());

			comSubmit.submit();
		}

		function fn_deleteBoard() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qna/adminInquiryDelete.do'/>");
			comSubmit.addParam("QNA_NO", $("#QNA_NO").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>