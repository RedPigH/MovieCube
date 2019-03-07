<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>영화관 선택화면</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
	function selectCinema() {
		var target = document.getElementById("selectCinema");
		var cinema_no = target.options[target.selectedIndex].value;
		window.location.href = '/moviecube/reserve.do?cinema_no=' + cinema_no;
		alert('ㅇㄹㄴㄹ: ' + cinema_no);
		//alert('선택된 옵션 text 값=' + target.options[target.selectedIndex].text);     // 옵션 text 값
		//alert('선택된 옵션 value 값=' + target.options[target.selectedIndex].value);     // 옵션 value 값

	}
</script>
</head>
<body>
	극장선택
	<form action="/moviecube/reserve.do">
		<select id="selectCinema" name="selectCinema">
			<option>선택</option>
			<c:forEach items="${cinemaList }" var="row">
				<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
			</c:forEach>
		</select> <br>.
		<br> 
		<input type="hidden" name="selectMovie" value="${selectMovie }">
		<input type="submit" value="선택"> 
		<input type="button" value="뒤로" onclick="location.href = '/moviecube/reserve.do'">
	</form>
	
</body>
</html>