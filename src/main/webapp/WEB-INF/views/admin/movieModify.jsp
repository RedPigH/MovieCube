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
<script src="<%= cp %>/resources/js/admin_common.js"></script>
</head>

<body>

<div class="admin">
	<div class="logo">
	<h1><a href="<%=cp %>/admin/movieList.do">MovieCube Administrator - Movie Modify</a></h1>
	</div>
</div>

<div class="admin_grp">
	<div class="admin_list">
		<ul>
			<li class="on"><a href="<%=cp%>/admin/movieList.do">영화 정보</a></li>
			<li><a href="<%=cp%>/admin/cinemaList.do">영화관</a></li>
			<li><a href="<%=cp%>/admin/screenList.do">상영관</a></li>
			<li><a href="<%=cp%>">영화 좌석</a></li>
			<li><a href="<%=cp%>">영화시간표</a></li>
			<li><a href="<%=cp%>/admin/noticeList.do">공지사항</a></li>
			<li><a href="<%=cp%>">FAQ</a></li>
			<li><a href="<%=cp%>">Q&amp;A</a></li>
			<li><a href="<%=cp%>">회원정보</a></li>
		</ul>
	</div>
	
	<div class="admin_ct">
		<h3 class="sub_tit">영화 정보 수정</h3>
		<form id="frm">
			<div class="tbl_type_01">
				<table>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
					
						<tr>
							<th scope="row">영화제목</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_NAME" name="MOVIE_NAME" value="${map.MOVIE_NAME}"/>
								<input type="hidden" id="MOVIE_NO" name="MOVIE_NO" value="${map.MOVIE_NO}" />
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">감독</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_DIRECTOR" name="MOVIE_DIRECTOR" value="${map.MOVIE_DIRECTOR}"/>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">배우</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_ACTOR" name="MOVIE_ACTOR" value="${map.MOVIE_ACTOR}"/>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">개봉일</th>
							<td>
								<c:set var="TextValue" value="${map.MOVIE_OPENDATE}"/>
								<input type="date" class="txt w200" id="MOVIE_OPENDATE" name="MOVIE_OPENDATE" value="${fn:substring(TextValue,0,10)}" />
								<span class="ibk">예)2019-04-05</span>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">장르 및 러닝타임</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_GENRE" name="MOVIE_GENRE" value="${map.MOVIE_GENRE}" />
								<span class="ibk">예)액션 120분 </span>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">타입</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_TYPE" name="MOVIE_TYPE" value="${map.MOVIE_TYPE}"/>
								<span class="ibk">예)2D, 3D</span>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">관람등급</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_AGE" name="MOVIE_AGE" value="${map.MOVIE_AGE}"/>
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">동영상 URL</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_URL" name="MOVIE_URL" value="${map.MOVIE_URL}" />
								<font color="red"></font>
							</td>
						</tr>
						
						<tr>
							<th scope="row">별점</th>
							<td>
								<input type="text" class="txt w200" id="MOVIE_GRADE" name="MOVIE_GRADE" value="${map.MOVIE_GRADE}"/>
								<font color="red"></font>
							</td>
						</tr>
												
						<tr>
							<th scope="row">줄거리</th>
							<td>
								<div class="textarea_grp">
									<textarea name="MOVIE_CONTENT">${map.MOVIE_CONTENT}</textarea>
								</div>
								<font color="red"></font>
							</td>
						</tr>
						
						<!-- <tr>
							<th scope="row">포스터</th>
							<td>
								<input type="file" class="txt" name="poster" />
							</td>
						</tr>
						<tr>
							<th scope="row">스틸컷 1</th>
							<td><input type="file" class="txt" name="cut1" /></td>
						</tr>
						<tr>
							<th scope="row">스틸컷 2</th>
							<td><input type="file" class="txt" name="cut2" /></td>
						</tr>
						<tr>
							<th scope="row">스틸컷 2</th>
							<td><input type="file" class="txt" name="cut3" /></td>
						</tr> -->
						
					</tbody>
				</table>
			</div>
			
			<div class="btn_type_03">
				<a href="#this" class="btn btnC_04 btnP_04" id="write">
					<span>수정하기</span>
				</a>
			
				<a href="#this" class="btn btnC_04 btnP_04" id="list" style="padding-left: 10px;">
					<span>목록으로</span>
				</a>
			</div>
			
			<!-- <div class="btn_type_03">
				<span class="btn btnC_04 btnP_04"> 
					<a href="#this" class="btn" id="write">작성하기</a>
        			<a href="#this" class="btn" id="list">목록으로</a>
				</span>
			</div> -->
			
		</form>
	</div>
</div>

<form id="commonForm" name="common"></form>

<script type="text/javascript">
        var gfv_count = 1;
     
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#write").on("click", function(e){ //작성하기 버튼
                e.preventDefault();
                fn_insertBoard();
            });
             
            /* $("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
             
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            }); */
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/admin/movieList.do' />");
            comSubmit.submit();
        }
         
        function fn_insertBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/admin/movieModify.do' />");
            comSubmit.submit();
        }
         
        /* function fn_addFile(){
            var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
            $("#fileDiv").append(str);
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
         
        function fn_deleteFile(obj){
            obj.parent().remove();
        } */
        
    </script>
</body>
</html>