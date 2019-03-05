<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>테스트</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
</head>
<body>
 <h2>게시판 목록</h2>
    <table class="cinema_list">
        <colgroup>
            <col width="10%"/>
            <col width="*"/>
            <col width="50%"/>
            <col width="30%"/>
        </colgroup>
        <thead>
            <tr>
                <th scope="col">영화관 번호</th>
                <th scope="col">영화관 이름</th>
                <th scope="col">영화관 내용</th>
                <th scope="col">영화관 주소</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${fn:length(list) > 0}">
                    <c:forEach items="${list }" var="row">
                        <tr>
                            <td align = "center">${row.CINEMA_NO }</td>
                            <td align = "center">${row.CINEMA_NAME}</td>
                            <td align = "center">${row.CINEMA_CONTENT}</td>
                            <td align = "center">${row.CINEMA_ADDRESS}</td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="4">조회된 결과가 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    <br/>
</body>
</html>