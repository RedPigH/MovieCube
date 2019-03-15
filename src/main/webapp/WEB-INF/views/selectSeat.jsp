<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<style class="cp-pen-styles">
@import url("https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300");
body {
  font-family: 'Open Sans Condensed', sans-serif;
  max-width: 1500px;
  margin: 0 auto;
  padding: 5px;
}

.seat, label {
  width: 75px;
  height: 75px;
  margin: 3px;
  float: left;
  overflow: hidden;
  font: 21pt "Open Sans Condensed", "Helvetica Neue Light", "Helvetica Neue", Helvetica, sans-serif;
  font-weight: 100;
  text-align: center;
}

.seat p, label p {
  height: 75px;
  background-color: #E1DCCC;
  transition: all 0.3s ease;
}
.seat p:first-child, label p:first-child {
  padding-top: 18px;
  margin: 0;
}
.seat p:nth-child(2), label p:nth-child(2) {
  background-color: #cec6ac;
}
.seat:hover p, label:hover p {
  margin-top: -28px;
  cursor: pointer;
}

.seat {
  display: none;
}

.seat:checked + label p:first-child {
  background-color: #B7D9E3;
}
.seat:checked + label p:nth-child(2) {
  background-color: #92c6d5;
}

.seat:disabled + label p:first-child {
  background-color: #E8B2A9;
}
.seat:disabled + label p:nth-child(2) {
  background-color: #dd8e81;
}
</style>
<script type="text/javascript">
	function selectChkBox(frm) {
		var target1 = document.getElementById("NOMAL");
		var target2 = document.getElementById("YOUTH");
		var target3 = document.getElementById("CHILD");
		var target4 = document.getElementById("PREFERENCE");

		var limit = parseInt(target1.options[target1.selectedIndex].value) +
		parseInt(target2.options[target2.selectedIndex].value) +
		parseInt(target3.options[target3.selectedIndex].value) +
		parseInt(target4.options[target4.selectedIndex].value);

		var sum = 0;
		var count = frm.checkbox.length;
		for (var i = 0; i < count; i++) {
			if (frm.checkbox[i].checked == true) {
				sum += 1;
			}
		}
		if (sum < limit) {
			alert(limit + "개 선택해라");
			return false;
		}
		alert("선택되어진 체크박스의 갯수는 " + sum + "개입니다.");
	}
</script>

</head>
<body>
<h3>SCREEN</h3>
<form><!-- action = "/moviecube/reserve_selectSeat.do" -->>
	<select id="NOMAL" name="NOMAL">
			<option value = 0>성인 인원 선택</option>
 			<option value = 1>1</option>
 			<option value = 2>2</option>
	</select>
	<select id="YOUTH" name="YOUTH">
			<option value = 0>청소년 인원 선택</option>
			<option value = 1>1</option>
 			<option value = 2>2</option>
	</select>
	<select id="CHILD" name="CHILD">
			<option value = 0>어린이 인원 선택</option>
 			<option value = 1>1</option>
 			<option value = 2>2</option>
	</select>
	<select id="PREFERENCE" name="PREFERENCE">
			<option value = 0>우대 인원 선택</option>
			<option value = 1>1</option>
 			<option value = 2>2</option>
	</select>
	 <c:choose>
			<c:when test="${fn:length(seatList) > 0}">
					<c:forEach items="${seatList}" var="row">
						<input type="checkbox" class="seat" name = "checkbox" id="seat${row.SEAT_ROW}${row.SEAT_COL}">
  							<label for="seat${row.SEAT_ROW}${row.SEAT_COL}">
    							<p>${row.SEAT_ROW}-${row.SEAT_COL}</p>
   								<p>${row.STATUS}</p>
  							</label>
						</input>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
	</c:choose> 
	 <input type="button" name="button" value="확인" onClick="selectChkBox(this.form)">
</form>
</body>
</html>