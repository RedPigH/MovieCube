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
	<input type="button" value="극장 선택" onclick = "location.href = '/moviecube/reserve_step1.do'"> 

	<br>
	<br>

	<hr>
	<input type="button" value="영화 선택" onclick = "location.href = '/moviecube/reserve_step2.do'">
	


</body>
</html>