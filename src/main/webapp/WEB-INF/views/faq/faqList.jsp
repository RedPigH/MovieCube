<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Faq</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
</head>
<body>
	<h2>Faq 목록♥</h2>
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
				<th scope="col">분류</th>
				<th scope="col">질문</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(faqList) > 0 }">
					<c:forEach items="${faqList }" var="row">
						<tr>
							<td>${row.FAQ_NO }</td>
							<td>${row.FAQ_TYPE }</td>
							<td class="FAQ_SUB"><a href="#this" name="FAQ_SUB">${row.FAQ_SUB }</a>
								<input type="hidden" id="FAQ_NO" value="${row.FAQ_NO }">
							</td>
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
	<br />
	<a href="#this" class="btn" id="write">글쓰기</a>${pagingHtml}

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
 	$(document).ready(function() { 
			$("#write").on("click", function(e) {/* 글쓰기 버튼 */
				e.preventDefault();
				fn_openBoardWrite();
			});

			$("a[name='FAQ_SUB']").on("click", function(e) { /* 제목 */
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});

 	function fn_openBoardWrite() {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/faq/adminFaqWriteForm.do'/>");
		comSubmit.submit();
		}
		
 	function fn_openBoardDetail(obj) {
 		var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/adminFaqDetail.do'/>");
			comSubmit.addParam("FAQ_NO", obj.parent().find("#FAQ_NO").val());
			comSubmit.submit();
 	}
	</script>
</body>
</html>