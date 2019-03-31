<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../main/head.jspf"%>
</head>
<script type="text/javascript">
	function toModal(EVENT_NAME, EVENT_NO, EVENT_OPENDATE, EVENT_CLOSEDATE,
			EVENT_SAVNAME, EVENT_URL) {

		var no = "이벤트 이름 : " + EVENT_NO;
		$("#h_modal_event_no").text(no);

		var item = "이벤트 번호 : " + EVENT_NAME;
		$("#h_modal_event_name").text(item);

		var opendate = "이벤트 기간 : " + EVENT_OPENDATE;
		$("#h_modal_event_opendate").text(opendate);

		var closedate = "~ " + EVENT_CLOSEDATE;
		$("#h_modal_event_closedate").text(closedate);

		var img_url = "/moviecube/resources/upload/event/" + EVENT_SAVNAME;
		$("#h_modal_img_savname").attr('src', img_url);
	}
</script>

<%@ include file="../main/body_header.jspf"%>
<body class="animsition">

<%-- 
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<%@ include file="../member/loginForm.jspf"%>

	<%@ include file="../main/body_ProductModal.jspf"%>

	<%@ include file="../main/script.jspf"%> --%>


	<%@ include file="body_eventList.jspf"%>

	<%@ include file="../main/body_footer.jspf"%>

	<%@ include file="../member/loginForm.jspf"%>

	<%@ include file="../event/event_ProductModal.jspf"%>

	<%@ include file="../main/script.jspf"%>
</body>
</html>


