<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<% String cp = request.getContextPath(); %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>MovieCube 관리자</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="<%= cp %>/resources/css/admin_import.css" />
<script src="<%= cp %>/resources/js/jquery-1.10.2.min.js"></script>
<%-- <script src="<%= cp %>/resources/js/common.js"></script> --%>
<script src="<%= cp %>/resources/js/admin_common.js"></script>
</head>

<div class="admin">
	<div class="logo">
	<h1><a href="<%=cp %>/admin/cinemaList.do">MovieCube Administrator - Screen List</a></h1>
	</div>
</div>

<div class="admin_grp">
	<div class="admin_list">
		<ul>
			<li><a href="<%=cp%>/admin/movieList.do">영화 정보</a></li>
			<li><a href="<%=cp%>/admin/cinemaList.do">영화관</a></li>
			<li class="on"><a href="<%=cp%>/admin/screenList.do">상영관</a></li>
			<li><a href="<%=cp%>">영화 좌석</a></li>
			<li><a href="<%=cp%>">영화시간표</a></li>
			<li><a href="<%=cp%>/admin/noticeList.do">공지사항</a></li>
			<li><a href="<%=cp%>">FAQ</a></li>
			<li><a href="<%=cp%>">Q&amp;A</a></li>
			<li><a href="<%=cp%>">회원정보</a></li>
		</ul>
	</div>
	
	<div class="admin_ct">
		<h3 class="sub_tit">스크린 </h3>
		<div class="tbl_type_02">
			<table>
				<caption>스크린 리스트</caption>
				<colgroup>
					<col style="width:10%;" />
					<col style="width:20%;" />
					<col style="width:40%;" />
					<col style="width:10%;" />
					<col style="width:20%;" />	
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상영관 번호</th>
						<th scope="col">상영관 이름</th>
						<th>
						<th scope="col">상영관 타입</th>
						<th scope="col">영화관 번호(이름)</th>
						<th> </th>
						
					</tr>
				</thead>
				<tbody>
					
				<c:choose>
					<c:when test="${fn:length(screenList) > 0}">
            			<c:forEach items="${screenList}" var="row">
						<tr>
							<td>${row.SCREEN_NO}<td>
							<td class="subject" align="left"><a href="#this" name="SCREEN_NAME">${row.SCREEN_NAME}
							<input type="hidden" id="SCREEN_NO" value="${row.SCREEN_NO}"/></a></td>
							<td>${row.SCREEN_TYPE}</td>
							<td>${map.CINEMA_NAME}</td>
						</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
					등록된 게시물이 없습니다
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
		<div class="btn_type_03">
			<a href="#this" class="btn btnC_01 btnP_04" id="write">
				<span>글쓰기</span>
			</a>
		</div>
		
		<div class="paging">${pagingHtml}</div>
	</div>
</div>

<form id="commonForm" name="common"></form>

<script type="text/javascript">
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openBoardWrite();
            }); 
             
            $("a[name='SCREEN_NAME']").on("click", function(e){ // 영화관 이름 클릭
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
        });
         
        function fn_openBoardWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='screenWriteForm.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='screenDetail.do' />");
            comSubmit.addParam("SCREEN_NO", obj.parent().find("#SCREEN_NO").val());
            comSubmit.submit();
        }
    </script> 
</body>
</html>