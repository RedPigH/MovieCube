<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<% String cp = request.getContextPath(); %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>MovieCube FAQ</title>
<%@ include file="../main/head.jspf"%>
<%@ include file="../main/body_header.jspf"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="stylesheet" type="text/css" href="<%= cp %>/resources/css/admin_import.css" />
<script src="<%= cp %>/resources/js/jquery-1.10.2.min.js"></script>
<script src="<%= cp %>/resources/js/admin_common.js"></script>
</head>

<body>
<div>
</div>
<div class="admin_grp" style="margin: 100px 200px 5px">
	<div class="admin_list">
		<ul>
			<li><a href="<%=cp%>/faqList.do">전체 FAQ</a></li>
			<li><a href="<%=cp%>/faqList1.do">영화예매 FAQ</a></li>
			<li><a href="<%=cp%>/faqList2.do">영화관 FAQ</a></li>
			<li><a href="<%=cp%>/faqList3.do">상영관 FAQ</a></li>
			<li><a href="<%=cp%>/faqList4.do">멤버쉽 FAQ</a></li>
			<li class="on"><a href="<%=cp%>/faqList5.do">기타 FAQ</a></li>
		</ul>
	</div>
	
	<div class="admin_ct">
		<h3 class="sub_tit">FAQ 안내</h3>
		<div class="tbl_type_02">
			<table>
				<caption>번호,제목,글쓴이,날짜,조회를 나타내는 공지사항 표</caption>
				<colgroup>
					<col style="width:10%;"/>
					<col style="width:80%;"/>
					<col style="width:10%;"/>
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">자주묻는질문</th>
						<th scope="col">분류</th>
					</tr>
				</thead>
				<tbody>
					
				<c:choose>
					<c:when test="${fn:length(faqList) > 0}">
            			<c:forEach items="${faqList}" var="row">
						<tr>
							<td>${row.FAQ_NO}</td>
							<td class="subject"><a href="#this" name="FAQ_SUB">${row.FAQ_SUB}
							<input type="hidden" id="FAQ_NO" value="${row.FAQ_NO}"/></a></td>
							<td>${row.FAQ_TYPE}</td>				
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
				
		<div class="search_form">
			<form>
				<div class="inner">
					<select class="slct w100" name="searchNum">
						<option value="0">제목</option>
						<option value="1">내용</option>
					</select>
					<input class="txt w100" type="text" name="isSearch" />
					<span class="btn btnC_04 btnP_04">
						<input type="submit" value="검색" />
					</span>
				</div>
			</form>	
		</div>
		
		<div class="paging">${pagingHtml}</div>
	</div>
</div>

<form id="commonForm" name="common"></form>

<script type="text/javascript">
        $(document).ready(function(){    
            $("a[name='FAQ_SUB']").on("click", function(e){ // 
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
        });
         
        function fn_openBoardDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='faqDetail.do'/>");
            comSubmit.addParam("FAQ_NO", obj.parent().find("#FAQ_NO").val());
            comSubmit.addParam("currentPage", "${currentPage}");
            comSubmit.submit();
        }
    </script> 
</body>
</html>		
