<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<link href="/moviecube/css/login.css" rel="stylesheet" type="text/css"/>

<body>
<form action="action_page.php">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>아이디</b></label>
    <input type="text" placeholder="아이디 입력" name="uname" required>

    <label for="psw"><b>비밀번호</b></label>
    <input type="password" placeholder="비밀번호 입력" name="psw" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> 자동저장
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">취소</button>
    <span class="psw">
    <a href="/moviecube/member/joinForm.do">회원가입</a>
    <a href="#">아이디/비밀번호 찾기</a></span>
  </div>
</form>
</body>
</html>