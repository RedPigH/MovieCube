<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<link href="/moviecube/css/login.css" rel="stylesheet" type="text/css"/>
<script src="//code.jquery.com/jquery.js"></script>
<head>

</head>
<body>
<div class="container"><!-- 좌우측의 공간 확보 -->

	<form id="lgfm" method="post" action="/moviecube/member/login.do">
 	 <div class="imgcontainer">
 	   <img src="img_avatar2.png" alt="Avatar" class="avatar">
	  </div>

	  <div class="container">
 	   <label for="uname"><b>아이디</b></label>
    	<input type="text" placeholder="아이디 입력" name="MEMBER_ID">

  	  <label for="psw"><b>비밀번호</b></label>
  	  <input type="password" placeholder="비밀번호 입력" name="MEMBER_PASSWD1">

 	  <button id="lg">Login</button>
  	  <label>
  	    <input type="checkbox" checked="checked" name="remember"> 자동저장
  	  </label>
 	 </div>

	  <div class="container" style="background-color:#f1f1f1">
    	<button type="button" class="cancelbtn">취소</button>
    	<span class="psw">
   		 <input type="submit" class="cancelbtn" value="회원가입">
   		 <a href="#">아이디/비밀번호 찾기</a></span>
  	  </div>
	</form>
	
	<script>
$(function(){
	$( "#lg" ).click(function(){
		if($('#member_id').val()==""){
			alert("아이디를 입력해주세요.");
			return false;
		}
		
		if($('#member_pw').val()==""){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		return login();
	});
});
	function login(){
		method = post;
		var lgfm=document.getElementById("lgfm");
		lgfm.action = "/moviecube/member/login.do"
		lgfm.submit();
	}
</script>
</div>
</body>
</html>