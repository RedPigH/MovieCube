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

<body>

<div class="admin">
	<div class="logo">
	<h1><a href="<%=cp %>/admin/movieList.do">MovieCube Administrator - Movie List</a></h1>
	</div>
</div>

<div class="admin_grp">
	<div class="admin_list">
		<ul>
			<li class="on"><a href="<%=cp%>/admin/movieList.do">영화정보</a></li>
			<li><a href="<%=cp%>">영화시간표</a></li>
			<li><a href="<%=cp%>">영화관</a></li>
			<li><a href="<%=cp%>">영화 좌석</a></li>
			<li><a href="<%=cp%>">공지사항</a></li>
			<li><a href="<%=cp%>">FAQ</a></li>
			<li><a href="<%=cp%>">Q&amp;A</a></li>
			<li><a href="<%=cp%>">회원정보</a></li>
		</ul>
	</div>
	<div class="admin_ct">
		<div class="movie_list">
			<h3 class="sub_tit">상영작</h3>
			<ul>
			<c:choose>
			<c:when test="${fn:length(movieList) > 0}">
            	<c:forEach items="${movieList}" var="row">
					
				<li><a href="#this" name="poster" class="list"> 
				<img src="<%=cp%>/resources/upload/movie/marble.jpeg" alt="영화포스터" /> 
				<input type="hidden" id="MOVIE_NO" value="${row.MOVIE_NO}">
				<span class="detail">상세보기</span>
						<div class="explan">
							<p>
								<strong>감독</strong> : ${row.MOVIE_DIRECTOR}
							</p>
							<p>
								<strong>개봉</strong> :  <c:set var="TextValue" value="${row.MOVIE_OPENDATE}"/>
									${fn:substring(TextValue,0,10)}
							</p>
						</div>
				</a> 
				</li>
				</c:forEach>
				</c:when>
				<c:otherwise>
					조회된 결과가 없습니다.
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
		<%-- <c:if test="${session_member_grade == 1}"> --%>
			<div class="btn_type_03">
				<a href="#this" class="btn btnC_03 btnP_04" id="write">
					<span>글쓰기</span>
				</a>
			</div>
		<%-- </c:if> --%>
		
		<div class="paging">
			${pagingHtml}
		</div>
	</div>
</div>

<form id="commonForm" name="common"></form>

<script type="text/javascript">
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openBoardWrite();
            }); 
             
            $("a[name='poster']").on("click", function(e){ // 영화제목, 영화포스터 클릭
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
        });
         
        function fn_openBoardWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='movieWriteForm.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='movieDetail.do' />");
            comSubmit.addParam("MOVIE_NO", obj.parent().find("#MOVIE_NO").val());
            comSubmit.submit();
        }
    </script> 
</body>
</html>