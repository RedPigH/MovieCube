<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ include file="../main/head.jspf"%>
</head>
<body>
	<%@ include file="../main/body_header.jspf"%>
	<form class="bg0 p-t-75 p-b-85">
		<div class="container" style="margin-top: 100px">

			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="flex-w flex-m m-r-20 m-tb-5">
								<h2 class="mtext-109 cl2 p-b-30" style="padding-bottom: 0px">공지사항 목록♥</h2>
						</div>
						<table class="board_list">
							<colgroup>
								<col width="10%" />
								<col width="*" />
								<col width="15%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">글번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${fn:length(noticeList) > 0}">
										<c:forEach items="${noticeList }" var="row">
											<tr>
												<td>${row.NOTICE_NO }</td>
												<td class="NOTICE_SUB"><a href="#this"
													name="NOTICE_SUB">${row.NOTICE_SUB }</a> <input
													type="hidden" id="NOTICE_NO" value="${row.NOTICE_NO }">
												</td>
												<td>${row.NOTICE_REGDATE }</td>
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
						<a href="#this" class="btn" id="write">글쓰기</a> ${pagingHtml}
						<%@ include file="/WEB-INF/include/include-body.jspf"%>
					</div>
				</div>
			</div>
		</div>
	</form>




	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) {/* 글쓰기 버튼 */
				e.preventDefault();
				fn_openBoardWrite();
			});

			$("a[name='NOTICE_SUB']").on("click", function(e) { /* 제목 */
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});

		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit
					.setUrl("<c:url value='/notice/adminNoticeWriteForm.do'/>");
			comSubmit.submit();
		}

		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/adminNoticeDetail.do'/>");
			comSubmit.addParam("NOTICE_NO", obj.parent().find("#NOTICE_NO")
					.val());
			comSubmit.submit();
		}
	</script>


	<%@ include file="../main/body_footer.jspf"%>
	<%@ include file="../main/script.jspf"%>
</body>
</html>