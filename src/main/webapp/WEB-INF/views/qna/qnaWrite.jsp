<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../main/head.jspf"%>
<link rel="stylesheet" type="text/css" href="<%= cp %>/resources/css/admin_import.css" />
<script src="<%= cp %>/resources/js/jquery-1.10.2.min.js"></script>
<script src="<%= cp %>/resources/js/admin_common.js"></script>
<style>

	div.button{
   margin: auto;
   width: 50%;
	}

	div.button input{
	padding: 5px;
	width: 100%;
	font-size: 18px;

}
</style>
</head>
<body>
	<%@ include file="../main/body_header.jspf"%>
	
	<div class="bor19 size-218 m-b-50">
		<input name="nothing" class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" placeholder="nothing *">
	</div>
	
	<div class="p-t-40" style="margin: 0px 300px 5px">
	<h5 class="mtext-113 cl2 p-b-12" >
		1 : 1 문의하기
	</h5>

	<p class="stext-107 cl6 p-b-40" >
		문의 사항이 있으면 글을 남겨주세요. 답변 내용은 마이페이지에서 확인 할 수 있습니다.
	</p>	
			
	</div>			
					<form id="frm" name="frm" enctype="multipart/form-data" >

	<div class="bor19 m-b-20"  style="margin: 0px 300px 5px">
		<input name="QNA_ID" class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" placeholder="이름  *">
	</div>
	
	<div class="bor19 m-b-20"  style="margin: 0px 300px 5px">
		<input name="QNA_SUB" class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" placeholder="제목 *">
	</div>
	
	<div class="bor19 m-b-20"  style="margin: 0px 300px 5px">
		<textarea name="QNA_CONTENT" class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15" placeholder="문의내용을 입력하세요..."></textarea>
	</div>
	
	<div class="bor19 size-218 m-b-50"  style="margin: 0px 300px 5px">
		<input type="file" name="file" class="stext-104 cl2 plh3 size-116 p-lr-18" type="text" placeholder="이름  *">
	</div>
	
	<a href="#this" class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04" id="write" style="margin: 0px 800px 5px" >
		1:1 문의하기
	</a>
	</form>


<form id="commonForm" name="common"></form>

<script type="text/javascript">

	$(document).ready(function() {
		$("#write").on("click", function(e) {
			e.preventDefault();
			fn_insertBoard();
		});
	});

	function fn_insertBoard() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/qnaWrite.do'/>");
		comSubmit.addParam("QNA_NO", $("#QNA_NO").val());
		comSubmit.submit();
	}
</script>
   
</body>
</html>