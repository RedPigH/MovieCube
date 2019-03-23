<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<div id="" class="">
<div class="user_wrap">
		<h2 class="mb12">아이디 / 비밀번호 찾기</h2>
</div>
<div class="find_id_notice">
		<p>아이핀을 이용하여 회원에 가입하신 경우에는 회사가 회원님의 주민등록번호를 보유하고 있지 않은 관계로, 아이핀 등록기관의 실명확인 및 본인인증 서비스와 연계하여 아이디 및 패스워드 찾기 서비스가 제공되오니 참고하여 주시기 바랍니다. (실명확인 및 본인인증서비스 제공 기관 : 나이스신용평가정보㈜)<br>본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집 하며, 인증 이외의 용도로 이용 또는 저장하지 않습니다.</p>
		<p>* 이용안내 <span>고객센터 &gt; 1:1</span>문의 또는 <span>ARS 1544-0070</span> (09:00~21:00)</p>
</div>
<div class="find_id_input_wrap">
		<div class="find_id tab_wrap">
			<h3>아이디 찾기</h3>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#find_id_easy" data-toggle="tab" title="간편 아이디 찾기">간편찾기</a></li>
				<li class=""><a href="#find_id_hard" data-toggle="tab" title="본인인증으로 아이디 찾기">본인인증으로 찾기</a></li>
			</ul>

			<div class="tab-content">
				<!-- 아이디 간편찾기// -->
				<div class="tab-pane active" id="find_id_easy">
					<ul class="easy_input_wrap">
						<li>
							<label for="userfind-id-name">이름</label>
							<div class="inputs">
								<input type="text" title="이름" id="userfind-id-name" name="memberName" style="width: 199px;" maxlength="30" fieldname="이름" allowtype="hangul number alphabet" required="">
							</div>
						</li>

						<li>
							<label for="">법정생년월일</label>
							<div class="inputs birthday">
								<input type="text" title="생년월일 년도 입력" name="bYear" style="width: 67px;" maxlength="4" fieldname="법정생년월일" allowtype="number" validate="number" required="">
								<span>년</span>
								<input type="text" title="생년월일 월 입력" name="bMonth" style="width: 44px;" maxlength="2" fieldname="법정생년월일" allowtype="number" validate="number" required="">
								<span>월</span>
								<input type="text" title="생년월일 일 입력" name="bDate" style="width: 44px;" maxlength="2" fieldname="법정생년월일" allowtype="number" validate="number" required="">
								<span>일</span>
							</div>
						</li>

						<li>
							<label for="">휴대폰</label>
							<div class="inputs">
								<input type="text" title="휴대폰 앞자리 입력" name="mobile1" style="width: 67px;" maxlength="3" fieldname="휴대폰" allowtype="number" validate="number" required="">
								<span>-</span>
								<input type="text" title="휴대폰 중간자리 입력" name="mobile2" style="width: 67px;" maxlength="4" fieldname="휴대폰" allowtype="number" validate="number" required="">
								<span>-</span>
								<input type="text" title="휴대폰 뒷자리 입력" name="mobile3" style="width: 67px;" maxlength="4" fieldname="휴대폰" allowtype="number" validate="number" required="">
							</div>
						</li>
					</ul>
					<div class="submit_wrap">
						<button type="button" class="img_btn user" onclick="UserFind.searchId()"><span class="blind">확인</span></button> 
					</div>
				</div>
				<!-- //아이디 간편찾기 -->

				<!-- 아이디 본인인증으로 찾기// -->
				<div class="tab-pane" id="find_id_hard">
					<div class="find_hard_wrap">
						<h4 class="pt50">아이핀(i-PIN)으로 찾기</h4>
						<button type="button" title="새 창 열림" class="img_btn user mt13 mb40" onclick="fnPopupIPIN('FINDID')">인증기관을 통해 인증 후 확인</button>
						<h4>휴대폰으로 찾기</h4>
						<button type="button" title="새 창 열림" class="img_btn user mt13" onclick="fnPopupCheckPlus('FINDID')">인증기관을 통해 인증 후 확인</button>
					</div>
				</div>
				<!-- //아이디 본인인증으로 찾기 -->
			</div>
		</div>

		<div class="find_pw tab_wrap">
			<h3>비밀번호 찾기</h3>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#find_pw_easy" data-toggle="tab" title="간편 비밀번호 찾기">간편찾기</a></li>
				<li class=""><a href="#find_pw_hard" data-toggle="tab" title="본인인증으로 비밀번호 찾기">본인인증으로 찾기</a></li>
			</ul>

			<div class="tab-content">
				<!-- 비번 간편찾기// -->
				<div class="tab-pane active" id="find_pw_easy">
					<div class="radio_wrap">
						<span class="iradio_minimal checked" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="radio" title="휴대폰 선택" id="pw_mobile1" name="find_pw_easy_radio" value="1" class="icheck" checked="checked" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span>
						<label for="pw_mobile1">휴대폰</label>
<!-- 						<input type="radio" title="이메일 선택" id="pw_mail" name="find_pw_easy_radio" value="2" class="icheck" /> -->
<!-- 						<label for="pw_mail">이메일</label>						 -->
					</div>
					<!-- 휴대폰// -->
					<ul id="find_pw_easy_mobile" class="easy_input_wrap">
						<li>
							<label for="find_pw_id2">아이디</label>
							<div class="inputs">
								<input type="text" title="아이디입력" id="find_pw_id2" name="webID" maxlenth="16" style="width: 199px;" fieldname="아이디" allowtype="number hangul alphabet special" required="">
							</div>
						</li>

						<li>
							<label for="find_pw_name2">이름</label>
							<div class="inputs">
								<input type="text" title="이름입력" id="find_pw_name2" name="memberName" maxlength="30" style="width: 199px;" fieldname="이름" allowtype="hangul number alphabet" required="">
							</div>
						</li>

						<li>
							<label for="">휴대폰</label>
							<div class="inputs">
								<input type="text" title="휴대폰 앞자리 입력" name="mobile1" maxlength="3" style="width: 67px;" fieldname="휴대폰" allowtype="number" validate="number" required="">
								<span>-</span>
								<input type="text" title="휴대폰 중간자리 입력" name="mobile2" maxlength="4" style="width: 67px;" fieldname="휴대폰" allowtype="number" validate="number" required="">
								<span>-</span>
								<input type="text" title="휴대폰 뒷자리 입력" name="mobile3" maxlength="4" style="width: 67px;" fieldname="휴대폰" allowtype="number" validate="number" required="">
							</div>
						</li>
					</ul>
					<!-- 휴대폰// -->

					<!-- 이메일// -->
					<ul id="find_pw_easy_email" class="easy_input_wrap" style="display: none;margin-bottom:4px;">
						<li>
							<label for="find_pw_id1">아이디</label>
							<div class="inputs">
								<input type="text" title="아이디입력" id="find_pw_id1" name="webID" maxlength="16" style="width: 199px;" allowtype="alphabet number hangul special" fieldname="아이디" required="">
							</div>
						</li>

						<li>
							<label for="find_pw_name1">이름</label>
							<div class="inputs">
								<input type="text" title="이름입력" id="find_pw_name1" name="memberName" maxlength="30" style="width: 199px;" allowtype="hangul number alphabet" fieldname="이름" required="">
							</div>
						</li>

						<li>
							<label for="find_pw_mail">이메일</label>
							<div class="inputs">
								<input type="text" title="이메일입력" id="find_pw_mail" name="emailAddr" maxlength="30" style="width: 199px;" validate="email" fieldname="이메일" required="">
							</div>
							<p class="ex_tx">* 회원 정보에 등록된 이메일 주소</p>
						</li>
					</ul>
					<!-- 이메일// -->
					<div class="submit_wrap">
						<button type="button" class="img_btn user" onclick="UserFind.searchPw()"><span class="blind">확인</span></button>
					</div>
				</div>
				<!-- //비번 간편찾기 -->

				<!-- 비번 본인인증으로 찾기// -->
				<div class="tab-pane" id="find_pw_hard">
					<div class="find_hard_wrap">
						<div class="radio_wrap pt45">
							<span class="iradio_minimal checked" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="radio" title="비밀번호 본인인증 아이핀 선택" id="user_radio1" name="find_pw_radio" value="IPIN" class="icheck" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span>
							<label for="user_radio1" class="mr9">아이핀(i-PIN)</label>
							<span class="iradio_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="radio" title="비밀번호 본인인증 휴대폰 선택" id="user_radio2" name="find_pw_radio" value="PHONE" class="icheck" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span>
							<label for="user_radio2">휴대폰</label>
						</div>
						<p>인증기관을 통해 인증이 확인 되면 비밀번호를<br>초기화 하고 새로운 비밀번호를 등록 할 수 있습니다.</p>
						<div class="find_pw_hard_input">
							<label for="find_pw_ipin" class="mr8">아이디</label>
							<div class="inputs">
								<input type="text" title="아이디 입력" id="find_pw_ipin" name="web_Id" maxlength="16" style="width: 199px;" allowtype="alphabet number">
							</div>
						</div>
						<button type="button" class="img_btn user mt13" title="새 창 열림" onclick="findPasswordByAuth()">인증기관을 통해 인증 후 확인</button>
					</div>
				</div>
				<!-- //비번 본인인증으로 찾기 -->
			</div>
		</div>
	</div>
</div>
</html>