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
				<col width="15%">
				<col width="*" />
			</colgroup>
			<caption>QNA 작성♥</caption>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="QNA_SUB" name="QNA_SUB"
						class="wdp_90"></td>
				</tr>
				<tr>
					<th scope="row">작성자</th>
					<td><input type="text" id="QNA_ID" name="QNA_ID"
						class="wdp_90"></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text"><textarea rows="20"
							cols="100" title="내용" id="QNA_CONTENT" name="QNA_CONTENT"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<input type="file" name="file"> <br />
		<br /> <a href="#this" class="btn" id="write">작성하기</a> <a href="#this"
			class="btn" id="list">목록으로</a>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) {
				e.preventDefault();
				fn_openBoardList();
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qna/adminInquiryList.do'/>");
			comSubmit.submit();
		}

		$(document).ready(function() {
			$("#list").on("click", function(e) {/* 목록dm로 버튼 */
				e.preventDefault();
				fn_openBoardList();
			});

			$("#write").on("click", function(e) {
				e.preventDefault();
				fn_insertBoard();
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qna/adminInquiryList.do'/>");
			comSubmit.submit();
		}

		function fn_insertBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/qna/adminInquiryWrite.do'/>");
			comSubmit.addParam("QNA_NO", $("#QNA_NO").val());
			comSubmit.submit();
		}
	</script>
</body>
</html>