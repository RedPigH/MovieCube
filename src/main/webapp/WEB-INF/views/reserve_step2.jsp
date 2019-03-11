<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>영화선택화면</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>
	영화선택
	<form action="/moviecube/reserve.do">
		<select name = "selectMovie">
			<option>선택</option>
			<c:forEach items="${movieList }" var="row">
				<option value="${row.MOVIE_NO}"> 영화 이름 : ${row.MOVIE_NAME} / 감독 : ${row.MOVIE_DIRECTOR }</option>
			</c:forEach>
		</select> 
		<input type="hidden" name= "selectCinema" value="${selectCinema }">
		<input type="submit" value="선택"> 
		<input type="button" value="뒤로" onclick="location.href = '/moviecube/reserve.do'">
	</form>
</body>
</html>