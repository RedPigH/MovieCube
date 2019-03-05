<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="/WEB-INF/views/main/head.jspf" %>
</head>
<body>

<div class="super_container">

	<%@ include file="/WEB-INF/views/main/body_header.jspf" %>


			<!-- 바디 1단 -->
			<!-- slider -->
	<%@ include file="/WEB-INF/views/main/body_SLIDER.jspf" %>


			<!-- 바디 2단 -->
			<!-- BOX OFFICE -->
	<%@ include file="/WEB-INF/views/main/body_BOXOFFICE.jspf" %>
	
	
			<!-- 바디 3단 -->
			<!-- EVENT -->
	<%-- <%@ include file="/WEB-INF/views/main/body_EVENT.jspf" %> --%>
	
	
			<!-- 바디 4단 -->
			<!-- MOVIECUBE -->
	<%@ include file="/WEB-INF/views/main/body_MOVIECUBE.jspf" %>	
	
	
			<!-- Benefit & footer -->
	<%@ include file="/WEB-INF/views/main/benefit_footer.jspf" %>

</div>
</body>
</html>
