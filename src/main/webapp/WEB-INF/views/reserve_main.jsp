<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>테스트</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	예매 메인화면 테스트 페이지
	<br>
	<br>
	<br>

	<hr>
	영화관 선택
	<select>
		<c:forEach items="${cinemaList }" var="row">
			<%-- <option value="${row.CINEMA_NO}">${row.CINEMA_NAME}> </option> --%>
			<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
		</c:forEach>
	</select>
	<br>
	<br>

	<hr>
	영화 선택
	<select>
		<c:forEach items="${cinemaList }" var="row">
			<%-- <option value="${row.CINEMA_NO}">${row.CINEMA_NAME}> </option> --%>
			<option value="${row.CINEMA_NO}">${row.CINEMA_NAME}</option>
		</c:forEach>
	</select>


</body>
</html>