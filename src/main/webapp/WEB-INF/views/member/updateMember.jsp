<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/main/head.jspf"%>
<link rel="stylesheet" type="text/css" href="/moviecube/resources/css/member.css"/>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function aaaa(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extra").value = extraAddr;
            
            } else {
                document.getElementById("extra").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("address1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("address2").focus();
        }
    }).open();
}
</script>
</head>

<body>

<%@ include file="/WEB-INF/views/main/body_header.jspf"%>
<%@ include file="/WEB-INF/views/main/wishList.jspf" %>
<%@ include file="/WEB-INF/views/member/loginForm.jspf" %>

<div id="container" class="container">

	<div class="width-fixed mypage_membership_wrap" style="position: relative;" id="mypageMembershipWrap">

		<div class="h2_mypage">
			<h3 class="sub_title">개인정보 수정</h3> <span> 회원님의 정보를 정확히 입력해주세요. </span>
		</div>

		<div class="personal_info_last">
			<button type="button" class="img_btn psw_change mr6 flex-c-m stext-111 cl0 bg1 bor2 hov-btn4 trans-04" onclick="">비밀번호 변경</button>
			<button type="button" class="img_btn personal_quit mr6 flex-c-m stext-111 cl0 bg1 bor2 hov-btn4 trans-04" onclick="">회원탈퇴</button>
		</div>

		<div class="user_wrap">
			<div id="userJoinContainer" class="form-style">

				<div class="clearfix">
					<span class="text-sub mb10">*표시 항목은 필수입력 항목입니다.</span>
				</div>

				<!-- 프로필과 아이디 -->
				<div class="clearfix myInfoArea1">
					<img name="photo" id="profilePhotoImg" style="width: 100px; height: 100px;" src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="프로필" class="img-circle pull-left" data-original="" data-image="">
					<div class="pull-left textArea">
						<span class="profile_btn_wrap">
							<strong>${sessionScope.userLoginInfo.MEMBER_ID}</strong>
							<div>
							<button id="imgUploadBtn" class="img_btn flex-c-m stext-111 cl13 bor21 hov-tag2 trans-04">찾아보기</button>
							<button id="imgDeleteBtn" class="img_btn flex-c-m stext-111 cl13 bor21 hov-tag2 trans-04" onclick="profileDel()">삭제</button>
							</div>
						</span>
					</div>
				</div>

				<h4>기본정보 (필수입력)</h4>
				<table class="form-table">
					<caption class="blind2">개인정보(필수입력)수정:비밀번호 입력,이름,생년월일,휴대폰,이메일 수정</caption>
					<colgroup>
						<col width="181">
						<col width="">
					</colgroup>
						<tbody><tr><th scope="row" id="th_myInfo_password"><label for="inputtext2">*비밀번호</label></th>
						<td headers="th_myInfo_password">
							<input type="password" id="inputtext2" name="password" fieldname="비밀번호" required="">
						</td>
					</tr>
					<tr>
						<th scope="row" id="th_myInfo_name"><label for="inputtext4">*이름</label></th>
						<td headers="th_myInfo_name">
							<input type="text" id="memberName" name="memberName" value="${sessionScope.userLoginInfo.MEMBER_NAME}" fieldname="이름" required="">
						</td>
					</tr>

					<tr>
						<th scope="row" id="th_myInfo_birthday"><label id="modUserInfo_birthday" for="inputtext5">*생년월일</label></th>
						<td headers="th_myInfo_birthday">
							<input type="text" id="memberAge" name="memberAge" value="${sessionScope.userLoginInfo.MEMBER_AGE}" fieldname="생일" required="" maxlength="10">
						</td>
					</tr>

					<tr>
						<th scope="row" id="th_myInfo_mobile"><label id="modUserInfo_phone" for="inputtext8">*휴대폰</label></th>
						<td headers="th_myInfo_mobile">
							<input type="text" id="memberPhone" name="memberPhone" value="${sessionScope.userLoginInfo.MEMBER_PHONE}" fieldname="생일" required="" maxlenght="11">
						</td>
					</tr>
					<tr>
						<th scope="row" id="th_myInfo_email"><label id="modUserInfo_email" for="inputtext9">*이메일</label></th>
						<td headers="th_myInfo_email">
							<input type="text" name="emailaddr" value="${sessionScope.userLoginInfo.MEMBER_EMAIL}" fieldname="이메일" validate="email" required="">
						</td>
					</tr>
				</tbody></table>

				<h4>부가정보 (선택입력)</h4>
				<table class="form-table">
					<caption class="blind2">개인정보 부가정보 (선택입력)수정:주소,선호영화관 수정</caption>
					<colgroup>
						<col width="181">
						<col width="">
					</colgroup>
					<tbody><tr>
						<th scope="row" id="th_myInfo_address"><label for="inputtext6">주소</label></th>
						<td headers="th_myInfo_address">
						<div class="how-pos4-parent">
							<input type="text" style="margin-bottom: 5px; display: inline-block;" id="zipcode" name="MEMBER_ZIPCODE" data-rule-required="true" placeholder="우편번호" maxlength="6">
							<input type="button" onclick="aaaa()"  value="우편번호 찾기" style="display: inline-block; width: 150px; height: 22px;" class="flex-c-m stext-111 cl0 bg1 bor2 hov-btn4 trans-04">
							<input type="text" id="address1" name="MEMBER_ADDRESS1" data-rule-required="true" placeholder="주소" maxlength="40">
							<input type="text" style="margin-top:3px;" id="address2" name="MEMBER_ADDRESS2" data-rule-required="true" placeholder="상세주소" maxlength="40">
						</div>
						
						</td>
					</tr>
					

					<tr>
						<th scope="row" id="th_myInfo_favorite">선호영화관</th>
						<td headers="th_myInfo_favorite">
							<div class="mt8 mb9">
								<span class="text-sub">선호 영화관은 최대3개까지 등록 가능합니다.</span>
							</div>
							<div class="mb10">
								<label for="select1" class="mr20"><span class="asterisk"></span>1순위</label>
								<select id="selectGroup1" data-width="154px" class="mr8" style="display: none;">
									<option value="">지역선택</option>

								<option value="10">서울</option>

								<option value="30">경기</option>

								<option value="35">인천</option>

								<option value="45">대전/충청/세종</option>

								<option value="55">부산/대구/경상</option>

								<option value="65">광주/전라</option>

								<option value="70">강원</option>

								<option value="80">제주</option>

								</select><div class="btn-group bootstrap-select mr8" style="width: 154px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectGroup1" title="지역선택"><span class="filter-option pull-left">지역선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">지역선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="1"><a tabindex="0" class="" style=""><span class="text">서울</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="2"><a tabindex="0" class="" style=""><span class="text">경기</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="3"><a tabindex="0" class="" style=""><span class="text">인천</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="4"><a tabindex="0" class="" style=""><span class="text">대전/충청/세종</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="5"><a tabindex="0" class="" style=""><span class="text">부산/대구/경상</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="6"><a tabindex="0" class="" style=""><span class="text">광주/전라</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="7"><a tabindex="0" class="" style=""><span class="text">강원</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="8"><a tabindex="0" class="" style=""><span class="text">제주</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
								<select id="selectCinema1" name="cinemaCode" data-width="119px" style="display: none;">
									<option value="">영화관선택</option>
								</select><div class="btn-group bootstrap-select" style="width: 119px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectCinema1" title="영화관선택"><span class="filter-option pull-left">영화관선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">영화관선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
							</div>
							<div class="mb10">
								<label for="select2" class="mr20"><span class="asterisk"></span>2순위</label>
								<select id="selectGroup2" data-width="154px" class="mr8" style="display: none;">
									<option value="">지역선택</option>

								<option value="10">서울</option>

								<option value="30">경기</option>

								<option value="35">인천</option>

								<option value="45">대전/충청/세종</option>

								<option value="55">부산/대구/경상</option>

								<option value="65">광주/전라</option>

								<option value="70">강원</option>

								<option value="80">제주</option>

								</select><div class="btn-group bootstrap-select mr8" style="width: 154px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectGroup2" title="지역선택"><span class="filter-option pull-left">지역선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">지역선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="1"><a tabindex="0" class="" style=""><span class="text">서울</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="2"><a tabindex="0" class="" style=""><span class="text">경기</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="3"><a tabindex="0" class="" style=""><span class="text">인천</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="4"><a tabindex="0" class="" style=""><span class="text">대전/충청/세종</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="5"><a tabindex="0" class="" style=""><span class="text">부산/대구/경상</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="6"><a tabindex="0" class="" style=""><span class="text">광주/전라</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="7"><a tabindex="0" class="" style=""><span class="text">강원</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="8"><a tabindex="0" class="" style=""><span class="text">제주</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
								<select id="selectCinema2" name="cinemaCode2" data-width="119px" style="display: none;">
									<option value="">영화관선택</option>
								</select><div class="btn-group bootstrap-select" style="width: 119px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectCinema2" title="영화관선택"><span class="filter-option pull-left">영화관선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">영화관선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
							</div>
							<div>
								<label for="select3" class="mr20"><span class="asterisk"></span>3순위</label>
								<select id="selectGroup3" data-width="154px" class="mr8" style="display: none;">
									<option value="">지역선택</option>

								<option value="10">서울</option>

								<option value="30">경기</option>

								<option value="35">인천</option>

								<option value="45">대전/충청/세종</option>

								<option value="55">부산/대구/경상</option>

								<option value="65">광주/전라</option>

								<option value="70">강원</option>

								<option value="80">제주</option>

								</select><div class="btn-group bootstrap-select mr8" style="width: 154px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectGroup3" title="지역선택"><span class="filter-option pull-left">지역선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">지역선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="1"><a tabindex="0" class="" style=""><span class="text">서울</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="2"><a tabindex="0" class="" style=""><span class="text">경기</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="3"><a tabindex="0" class="" style=""><span class="text">인천</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="4"><a tabindex="0" class="" style=""><span class="text">대전/충청/세종</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="5"><a tabindex="0" class="" style=""><span class="text">부산/대구/경상</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="6"><a tabindex="0" class="" style=""><span class="text">광주/전라</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="7"><a tabindex="0" class="" style=""><span class="text">강원</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li><li rel="8"><a tabindex="0" class="" style=""><span class="text">제주</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
								<select id="selectCinema3" name="cinemaCode3" data-width="119px" style="display: none;">
									<option value="">영화관선택</option>
								</select><div class="btn-group bootstrap-select" style="width: 119px;"><button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="selectCinema3" title="영화관선택"><span class="filter-option pull-left">영화관선택</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner selectpicker" role="menu"><li rel="0" class="selected"><a tabindex="0" class="" style=""><span class="text">영화관선택</span><i class="glyphicon glyphicon-ok icon-ok check-mark"></i></a></li></ul></div></div>
							</div>
						</td>
					</tr>
				</tbody></table>

				
		<!-- 마케팅 활용을 위한 개인정보 수집 이용 안내 -->
		
		<div class="personal_information_wrap">
			<div id="" class="form-style">
				<h4>마케팅 활용을 위한 개인정보 수집 이용 안내</h4>
				<table class="form-table">
					<caption class="blind2">개인정보 수집 및 마케팅 활용을 위한 개인정보 수집 목적, 수집 항목, 보유 및 이용 기간, 동유여부</caption>
					<colgroup>
						<col width="30%">
						<col width="25%">
						<col width="30%">
						<col width="">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" id="th_myInfo_purpose">수집 목적</th>
							<th scope="col" id="th_myInfo_item">수집 항목</th>
							<th scope="col" id="th_myInfo_term">보유 및 이용 기간</th>
							<th scope="col" id="th_myInfo_agree">동의여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td headers="th_myInfo_purpose" class="pl20">
									고객 맞춤형 상품 및 서비스 추천.<br>
									당사 신규 상품/서비스 안내 및 권유.<br>
									사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유
							</td>
							<td headers="th_myInfo_item">
									이메일, 휴대폰번호, 주소, 생년월일, 선호영화관, 문자/이메일/앱푸쉬 정보 수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그
							</td>
							<td headers="th_myInfo_term">
									회원 탈퇴 시 혹은 이용 목적 달성 시까지
							</td>
							<td headers="th_myInfo_agree" class="ml20">
								<label for="marketingRuleAgreeY"><span class="iradio_minimal checked" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="radio" id="marketingRuleAgreeY" name="marketingRuleAgreeYN" value="Y" class="icheck" checked="checked" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span><strong>동의</strong></label>
								<label for="marketingRuleAgreeN"><span class="iradio_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="radio" id="marketingRuleAgreeN" name="marketingRuleAgreeYN" value="N" class="icheck" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span><strong>동의 안함</strong></label>
							</td>
						</tr>
					</tbody>
				</table>

				<h2 class="h2_mypage marktingAgree">
					<span class="sub_title mypage st14">마케팅정보 수신동의</span>
				</h2>
				<div class="agree_area">
					<p class="txt">이벤트, 신규 서비스, 할인 혜택 등의 소식을 전해드립니다. (소멸포인트 및 공지성 안내 또는 거래정보와 관련된 내용은 수신동의 여부와 상관없이 발송됩니다.)</p>
					<label for="smsReceiveYN"><span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" id="smsReceiveYn" name="smsReceiveYn" value="Y" class="icheck" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span><span>휴대폰 번호</span></label>
					<label for="mailingReceiveYn" class="ml100"><span class="icheckbox_minimal" style="vertical-align: middle; display: inline-block; width: 18px; height: 18px; position: relative;" aria-checked="false" aria-disabled="false"><input type="checkbox" id="mailingReceiveYn" name="mailingReceiveYn" value="Y" class="icheck" style="position: absolute; top: 0px; left: 0px; display: block; width: 16px; height: 16px; padding: 0px; margin: 0px; background: rgb(255, 255, 255); z-index: 0; border: 0px; opacity: 1;"><ins class="iCheck-helper" style="position:absolute; width:16px; height:16px; top:0px; left:0px; background-color:#fff; z-index:0"></ins></span><span>이메일</span></label>
				</div>
			</div>
		</div>
		<!-- //마케팅 활용을 위한 개인정보 수집 이용 안내 -->
		
			<div class="btn_wrap text-center mt50">
				<button type="button" class="img_btn user cancel mr7" id="myInfoModifycancel">취소</button>
				<button type="button" class="img_btn user modify ml7" onclick="MyPageMyInfoInput.save('')">수정</button>
			</div>
		</div> <!-- user_wrap -->
	</div>

</div>

<%@ include file="/WEB-INF/views/main/script.jspf" %>

</body>
</html>