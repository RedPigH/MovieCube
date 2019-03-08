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
	<form action="/moviecube/reserve_step1.do">
	<input type="hidden" name="movieNo" value="${movieNo }">
	<input type="submit" value="극장 선택">
	<c:choose>
		<c:when test="${fn:length(cinemaMap) > 0 }">
		<br>선택한 영화관 : ${cinemaMap.CINEMA_NAME }
		<br>영화관 주소 : ${cinemaMap.CINEMA_ADDRESS }
		
		
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="4">영화관을 선택해주세요</td>
			</tr>
		</c:otherwise>
	</c:choose>
</form>
	<br>
	<br>

	<hr>
	<form action="/moviecube/reserve_step2.do">
	<input type="hidden" name="cinemaNo" value="${cinemaNo }">
	<input type="submit" value="영화 선택">
	<c:choose>
		<c:when test="${fn:length(movieMap) > 0 }">
		<br>선택한 영화 : ${movieMap.MOVIE_NAME }
		<br>영화 장르 : ${movieMap.MOVIE_GENRE }
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="4">영화를 선택해주세요</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</form>
	
	
	<form action="/moviecube/reserve_step3.do">
		<select id="selectDate" name="selectDate">
			<option value="2019-03-04">2019-03-04</option>
			<option value="2019-03-05">2019-03-05</option>
			<option value="time3">2019-03-10</option>
			<option value="time4">2019-03-11</option>
		</select>
		<input type="hidden" name="movieNo" value="${movieNo }">
		<input type="hidden" name="cinemaNo" value="${cinemaNo }">
		<input type="submit" value="검색" >
	</form>
	
	


</body>
</html>