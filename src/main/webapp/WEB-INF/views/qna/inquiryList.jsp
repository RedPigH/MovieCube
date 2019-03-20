<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<h2>QNA 목록♥</h2>
	<table class="board_list">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">작성자</th>
				<th scope="col">제목</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(Qnalist) > 0}">
					<c:forEach items="${Qnalist }" var="row">
						<tr>
							<td>${row.QNA_NO }</td>
							<td>${row.QNA_ID }</td>
							<td class="QNA_SUB"><a href="#this" name="QNA_SUB">${row.QNA_SUB }</a>
								<input type="hidden" id="QNA_NO" value="${row.QNA_NO }">
							</td>
							<td>${row.QNA_REGDATE }</td>

						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>

	<a href="#this" class="btn" id="write">글쓰기</a>${pagingHtml}

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) {/* 글쓰기 버튼 */
				e.preventDefault();
				fn_openBoardWrite();
			});

			$("a[name='QNA_SUB']").on("click", function(e) { /* 제목 */
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});

		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qna/adminInquiryWriteForm.do'/>");
			comSubmit.submit();
		}

		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			
			comSubmit.setUrl("<c:url value='/qna/adminInquiryDetail.do'/>");
			comSubmit.addParam("QNA_NO", obj.parent().find("#QNA_NO").val());
			comSubmit.submit();
		}
		
	</script>
</body>
</html>