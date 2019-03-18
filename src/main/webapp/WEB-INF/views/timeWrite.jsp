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
				<select id="selectMovie" name="selectMovie">
			<option>선택</option>
			<c:forEach items="${movieList}" var="row">
				<option value="${row.MOVIE_NO}">${row.MOVIE_NAME}</option>
			</c:forEach> 
		</select>
		<select id="selectCinema" name="selectCinema">
			<option>선택</option>
			<c:forEach items="${cinemaList }" var="row">
				<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
			</c:forEach> 
		</select>
		<select id="selectScreen" name="selectScreen">
			<option>선택</option>
			<c:forEach items="${screenList }" var="row">
				<option value="${row.SCREEN_NO}">${row.SCREEN_NAME}</option>
			</c:forEach> 
		</select>
	<!-- 	<tr>
			<th scope="row">상영일</th>
			<td><input type="text" id="TIME_DATE" name="TIME_DATE"
				class="wdp_90"></td>
		</tr> -->
		<tr>
			<th scope="row">시작 시간</th>
			<td><input type="text" id="START_TIME" name="START_TIME"
				class="wdp_90"></td>
		</tr>
		
		<tr>
			<th scope="row">끝나는 시간</th>
			<td><input type="text" id="END_TIME" name="END_TIME"
				class="wdp_90"></td>
		</tr>
			</tbody>
		</table>
		<br /> <a href="#this" class="btn" id="write">작성하기</a> <a href="#this"
			class="btn" id="list">목록으로</a>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">

		$(document).ready(function() {
			$("#write").on("click", function(e) {
				e.preventDefault();
				fn_insertBoard();
			});
		});
		function fn_insertBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/timeWrite.do'/>");
			comSubmit.submit();
		}
	</script>
</body>
</html>