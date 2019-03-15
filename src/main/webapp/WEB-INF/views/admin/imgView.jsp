<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% String cp = request.getContextPath(); %>
<script type="text/javascript">
	function close() {
		//window.open("about:blank", "_self").close();
		this.close();
	}
</script>

<%
	String img = request.getParameter("img");
%>


<a href="javascript:close()">
	<img src="<%=cp%>/resources/upload/movie/poster/${map.POSTER_SAVNAME}" alt="영화포스터"/>
</a>