<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<script src="/moviecube/resources/js/jquery-3.2.1.min.js"></script>
 <script>
	$(document).ready(function() {
		$("#deleteTest").removeClass('QNA_FILE_NO');
	});
</script> 
<!-- <script>
	function delete_file() {
	var fso = new ActtiveXObject("Scripting.FileSystemObject");
	var fileName = ${map.QNA_FILE_NO }
	fso.DeleteFile(fileName);
	alter("혜쮸는짱이당");
	}
</script> -->
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
					<td>${map.QNA_NO }<input type="hidden" id="QNA_NO"
						name="QNA_NO" value="${map.QNA_NO }">
					</td>
				</tr>
				<tr>
					<th scope="row">작성자</th>
					<td>${map.QNA_ID }<input type="hidden" id="QNA_ID"
						name="QNA_ID" value="${map.QNA_ID }">
					</td>
				</tr>
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
					<td colspan="4" class="view_text"><textarea rows="20"
							cols="100" title="내용" id="QNA_CONTENT" name="QNA_CONTENT">${map.QNA_CONTENT }</textarea>
					</td>
				</tr>
				 <tr id="deleteTest">
					<th scope="row">첨부파일</th>
					<td><a href="javascript:delete_file();" id="deleteFile"
						class="deleteFiles">파일 삭제</a></td>
					<td colspan="3"><input type="hidden" id="QNA_FILE_NO"
						class="QNA_FILE_NO" value="${map.QNA_FILE_NO }"> <a
						href="#this" name="file">${map.QNA_ORGNAME }</a></td>
				</tr>  
							<tr>
					<td><img src="<%=cp%>/resources/upload/qna/${map.QNA_SAVNAME}" />
					</td>
				</tr> 
				<tr>
				<!-- 여기서부터 추가 -->
				<%-- 			<td colsnap="3">
					<div id="fileDiv">
						<c:forEach var="row" items="${list }" varStatus="var">
							<p>
								<input type="hidden" id="QNA_NO" name="QNA_NO_${var.index }"
									value="${row.QNA_NO }"> <a href="#this"
									id="name_${var.QNA_NO }" name="name_${var.index }">${row.QNA_ORGNAME }</a>
								<input type="file" id="file_${var.index }"
									name="file_${var.index }"> <a href="#this" class="btn"
									id="delete_${var.index }" name="delete_${var.index }"> 삭제</a>
							</p>
						</c:forEach>
					</div>
				</td> --%>
			</tbody>
		</table>
					
				
		<input type="file" name="file"> <br />
	</form>

	<!-- 		<input type="file" name="file"> <br /> <br />  이거 추가시켜야함 원래대로 돌릴라면...-->

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		var gfv_count = '${fn:length(list)+1}';
		$(document).ready(function() {
			$("#list").on("click", function(e) { /* 목록으로 버튼 */
				e.preventDefault();
				fn_openBoardList();
			});

			$("#update").on("click", function(e) { //저장하기 버튼
				e.preventDefault();
				fn_updateBoard();

			});

			$("#addFile").on("click", function(e) { //파일 추가버튼
				e.preventDefault();
				fn_addFile();
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
			comSubmit.submit();

		}

		function fn_deleteBoard() {
			var comSubmit = new ComSubmit();
			var qna_no = "${map.QNA_NO}";
			comSubmit.setUrl("<c:url value='/qna/adminInquiryDelete.do'/>");
			comSubmit.addParam("QNA_NO", qna_no);
			comSubmit.submit();
		}

		function fn_addFile() {
			var str = "<p>" + "<input type='file' id='file_" + (gfv_count)
					+ "' name='file_" + (gfv_count) + "'>"
					+ "<a href='#this' class='btn' id='delete_" + (gfv_count)
					+ "' name='delete_" + (gfv_count) + "'>삭제</a>" + "</p>";
			$("#fileDiv").append(str);
			$("#delete_" + (gfv_count++)).on("click", function(e) {/* //삭제버튼 */
				e.preventDefault();
				fn_deleteFile($(this));
			});

		}
		function fn_deleteFile(obj) {
			obj.parent().remove();
		}
	</script>
</body>
</html>