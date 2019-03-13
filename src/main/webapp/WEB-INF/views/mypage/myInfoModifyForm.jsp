<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>테스트</title>
<%-- 	<%@ include file="/WEB-INF/views/main/head.jspf" %> --%>

</head>
<body>
개인정보 수정페이지 (테스트)
<hr>
	<form action="/moviecube/modifyMyInfo.do">
		아이디 : <input type="text" name="member_id" value="${memberMap.MEMBER_ID }"> <br>
		이름 : <input type="text" name="member_name" value="${memberMap.MEMBER_NAME }"> <br> 
		연락처 : <input type="text" name="member_phone" value="${memberMap.MEMBER_PHONE }"> <br> 
		 
		<input type="submit" value="변경하기">
	</form>

	<%-- <c:choose>
		<c:when test="${fn:length(memberMap) > 0 }">
		<br>이름 : ${memberMap.MEMBER_NAME }
		<br>연락처 : ${memberMap.MEMBER_PHONE }
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="4">개인정보를 불러올 수 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose> --%>
</body>
</html>