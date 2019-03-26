<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>MovieCube 관리자</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/resources/css/admin_import.css" />
<script src="<%=cp%>/resources/js/jquery-1.10.2.min.js"></script>
<script src="<%=cp%>/resources/js/admin_common.js"></script>
</head>

<body>

	<div class="admin">
		<div class="logo">
			<h1>
				<a href="<%=cp%>/admin/movieList.do">MovieCube Administrator -
					Event Modify</a>
			</h1>
		</div>
	</div>

	<div class="admin_grp">
		<div class="admin_list">
			<ul>
				<li class="on"><a href="<%=cp%>/admin/movieList.do">영화 정보</a></li>
				<li><a href="<%=cp%>/admin/cinemaList.do">영화관</a></li>
				<li><a href="<%=cp%>/admin/screenList.do">상영관</a></li>
				<li><a href="<%=cp%>/admin/insertSeatForm.do">상영관 좌석</a></li>
				<li><a href="<%=cp%>/admin/timeList.do">영화시간표</a></li>
				<li><a href="<%=cp%>/admin/noticeList.do">공지사항</a></li>
				<li><a href="<%=cp%>/admin/faqList.do">FAQ</a></li>
				<li><a href="<%=cp%>/admin/qnaList.do">Q&amp;A</a></li>
				<li><a href="<%=cp%>/admin/memberList.do">회원정보</a></li>
			</ul>
		</div>

		<div class="admin_ct">
			<h3 class="sub_tit">이벤트 정보 수정</h3>
			<form id="frm" name="frm" enctype="multipart/form-data">
				<div class="tbl_type_01">
					<table>
						<colgroup>
							<col style="width: 120px;" />
							<col />
						</colgroup>
						<tbody>

							<tr>
								<th scope="row">이벤트 제목</th>
								<td><input type="text" class="txt w200" id="EVENT_NAME"
									name="EVENT_NAME" value="${map.EVENT_NAME}" /> <input
									type="hidden" id="EVENT_NO" name="EVENT_NO"
									value="${map.EVENT_NO}" /> <font color="blue"><span
										class="ibk">예) (캡틴마블) MX관 특별 포스터 증정 이벤트 </span></font></td>
							</tr>

							<tr>
								<th scope="row">이벤트 타입</th>
								<td><select name="EVENT_TYPE" class="slct w200"
									value="${map.EVENT_TYPE}">
										<option value="무비큐브 이벤트"
											<c:if test="${map.EVENT_TYPE == '무비큐브 이벤트'}"> selected</c:if>>2D</option>
										<option value="영화 이벤트"
											<c:if test="${map.EVENT_TYPE == '영화 이벤트'}"> selected</c:if>>3D</option>
										<option value="영화관 이벤트"
											<c:if test="${map.EVENT_TYPE == '영화관 이벤트'}"> selected</c:if>>4D</option>
										<option value="제휴 이벤트"
											<c:if test="${map.EVENT_TYPE == '제휴 이벤트'}"> selected</c:if>>IMAX</option>
								</select></td>
							</tr>

							<tr>
								<th scope="row">이벤트 시작일</th>
								<td><c:set var="TextValue" value="${map.EVENT_OPENDATE}" />
									<input type="date" class="txt w200" id="EVENT_OPENDATE"
									name="EVENT_OPENDATE" value="${fn:substring(TextValue,0,10)}" />
									<font color="red"></font></td>
							</tr>

							<tr>
								<th scope="row">이벤트 종료일</th>
								<td><c:set var="TextValue" value="${map.EVENT_CLOSEDATE}" />
									<input type="date" class="txt w200" id="EVENT_CLOSEDATE"
									name="EVENT_CLOSEDATE" value="${fn:substring(TextValue,0,10)}" />
									<font color="red"></font></td>
							</tr>


							<tr>
								<th scope="row">동영상 URL</th>
								<td><input type="text" class="txt w200" id="EVENT_URL"
									name="EVENT_URL" value="${map.EVENT_URL}" /> <font color="red"></font>
								</td>
							</tr>


						</tbody>
					</table>

				</div>

				<div class="btn_type_03">
					<a href="#this" class="btn btnC_04 btnP_04" id="write"> <span>수정하기</span>
					</a> <a href="#this" class="btn btnC_04 btnP_04" id="list"
						style="padding-left: 10px;"> <span>목록으로</span>
					</a>
				</div>
			</form>
		</div>
	</div>

	<form id="commonForm" name="common"></form>

	<script type="text/javascript">
		var gfv_count = 1;

		$(document).ready(function() {
			$("#list").on("click", function(e) { // 목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});

			$("#write").on("click", function(e) { // 수정하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});

			$("#addFile").on("click", function(e) { //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});

			$("a[name='delete']").on("click", function(e) { //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='eventList.do' />");
			comSubmit.submit();
		}

		function fn_insertBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='eventModify.do' />");
			comSubmit.submit();
		}

		function fn_addFile() {
			var str = "<p><input type='file' name='EVENT_ORGNAME_"
					+ (gfv_count++)
					+ "'><a href='#this' class='btn btnC_04 btnP_02' name='delete'><span>삭제</span></a></p>";
			$("#fileDiv").append(str);
			$("a[name='delete']").on("click", function(e) { //삭제 버튼
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