<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/main/head.jspf" %>
<link href="/moviecube/css/login.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function login()
{
        var form = document.lgfm;

        //아이디에서 입력 필수 조건문
        if (form.MEMBER_ID.value == "")
        {
           alert("아이디를 입력해야 합니다!");
           form.MEMBER_ID.focus();//포커스를 id박스로 이동.
           return;
        }
     
       	if (form.MEMBER_PASSWD1.value == "")
        {
          alert("패스워드를 입력 해야 합니다!");
          form.MEMBER_PASSWD1.focus();//포커스를 Password박스로 이동.
          return;
       }
	
    form.action="/moviecube/member/login.do"
	form.submit();

}
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/main/body_header.jspf" %>
<div class="container"><!-- 좌우측의 공간 확보 -->

	<form name="lgfm" id="lgfm" method="post" style="margin-top: 200px; position:absolute; left:38%; width:30%">
 	 
	  <div class="container" >
 	   <label for="uname"><b>아이디</b></label>
    	<input type="text" placeholder="아이디 입력" name="MEMBER_ID">

  	  <label for="psw"><b>비밀번호</b></label>
  	  <input type="password" placeholder="비밀번호 입력" name="MEMBER_PASSWD1">

 	  <button id="lg" class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn1 p-lr-15 trans-04" onclick="login();">Login</button>
  	  <label>
  	    <input type="checkbox" checked="checked" name="remember" style="float: left;">자동저장
  	  </label>
 	 </div>

	  <div class="container" style="background-color:#f1f1f1">
    	<button type="button" class="cancelbtn" onclick="history.go(-1);">취소</button>
    	<span class="float-r flex-w flex-t p-t-5 p-b-10">
    	<ul>
   		 <li><a href="/moviecube/term.do" class="stext-107 cl7 hov-cl1 trans-04">회원가입</a></li>
   		 <li><a href="/moviecube/member/findForm.do" class="stext-107 cl7 hov-cl1 trans-04">아이디/비밀번호 찾기</a></li>
   		</ul>
   		 </span>
  	  </div>
	</form>

</div>

<%@ include file="/WEB-INF/views/main/script.jspf" %>

</body>
</html>