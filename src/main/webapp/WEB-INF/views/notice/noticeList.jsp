<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ include file="../main/head.jspf"%>
<link rel="stylesheet" type="text/css" href="/resources/css/admin_import.css" />
<script src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/admin_common.js"></script>


<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}
</style>

<script>

    $(document).ready(function(){
        // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            // 현재 클릭한 태그가 a 이기 때문에
            // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
            $(this).next("ul").toggleClass("hide");
            var value = $('#')
        });
    });
</script>

</head>
<body>
	<%@ include file="/WEB-INF/views/main/body_header.jspf"%>

<div class="admin_grp" style="margin: 100px 100px 50px 100px">
	<div class="admin_ct">
		<h3 class="sub_tit">공지사항</h3>
		<div class="tbl_type_02">
			<table>
				<caption>번호,제목,글쓴이,날짜,조회를 나타내는 공지사항 표</caption>
				<colgroup>
					<col style="width:15%;" />
					<col style="width:70%;" />
					<col style="width:15%;" />
				
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
					</tr>
				</thead>
				<tbody>
					
				<c:choose>
					<c:when test="${fn:length(noticeList) > 0}">
            			<c:forEach items="${noticeList}" var="row">
						<tr>
							<td>${row.NOTICE_NO}</td>
							<%--<td><a href="javascript:doDisplay();">${row.NOTICE_SUB}</a><br/><br/>
								<div id="myDIV">나나나</div> --%>
							<td class="subject"><a href="#this" name="NOTICE_SUB">${row.NOTICE_SUB}
							<input type="hidden" id="NOTICE_NO" value="${row.NOTICE_NO}"/></a></td>
							<%-- <td class="menu">
									<a>${row.NOTICE_SUB}<input type="hidden" id="NOTICE_CONTENT" value="${row.NOTICE_CONTENT}"/></a>			 
           						 	<ul class="hide">${row.NOTICE_CONTENT}</ul>
							 </td> --%>
							<td><c:set var="TextValue" value="${row.NOTICE_REGDATE}"/> ${fn:substring(TextValue,0,16)}</td>
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
		
		<div class="paging">${pagingHtml}</div>
	</div>
</div>

<form id="commonForm" name="common"></form>

<script type="text/javascript">
        $(document).ready(function(){
    
            $("a[name='NOTICE_SUB']").on("click", function(e){ // 영화제목, 영화포스터 클릭
                e.preventDefault();
                fn_openBoardDetail($(this));
            });
        });
         
        function fn_openBoardDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='noticeDetail.do' />");
            comSubmit.addParam("NOTICE_NO", obj.parent().find("#NOTICE_NO").val());
            comSubmit.addParam("currentPage", "${currentPage}");
            comSubmit.submit();
        }
    </script> 
</body>
</html>