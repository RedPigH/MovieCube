<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<<<<<<< .merge_file_a06792

=======
<% String cp = request.getContextPath(); %>
>>>>>>> .merge_file_a09408
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
<<<<<<< .merge_file_a06792
	<img src="/project/upload/movie/<%=img%>" />
=======
	<img src="<%=cp%>/resources/upload/movie/poster/${map.POSTER_SAVNAME}" alt="영화포스터"/>
>>>>>>> .merge_file_a09408
</a>