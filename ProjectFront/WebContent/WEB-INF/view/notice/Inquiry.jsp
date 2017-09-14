<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<!--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"> -->

		

		

		
		<meta name="description" content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료 " />
		<meta name="keywords" content="서울,제주,부산,경기,인천,카셰어링,카쉐어링,렌트,렌트카,렌터카" />
		<meta name="title" content="대한민국 1등 카셰어링 쏘카">

		<meta property="og:type" content="website">
		<meta property="og:title" content="대한민국 1등 카셰어링 쏘카">
		<meta property="og:description" content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료">
		<meta property="og:image" content="https://www.socar.kr/template/asset/images/pc_m_web_meta_tag.jpg">
		<meta property="og:url" content="https://www.socar.kr/">

		<!-- 유투브 랜딩 연결 -->
		<meta name="google-site-verification" content="HINSnUVovAF2J7CwA3dQ9lqhGBKgkbZ5-cNvG3qazY4" />
	    <!-- 네이버 사이트 확인 -->
	    <meta name="naver-site-verification" content="070f0a98381321c1dbe5b675366712f03d6681d1"/>

		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="icon">
		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="shortcut icon">
		<link href='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20170428' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="/template/asset/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.banner.js"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264660"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264660"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264660"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264660"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264660"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/customer.css?v=20170731' />
<style type="text/css">
.btn_submit {
	background-image: url('//web-assets.socar.kr/template/asset/images/customer/btn_confirm.gif');
	background-position:  0px 0px;
	background-repeat: no-repeat;
	border: none;
	width: 60px;
	height: 33px;
}
</style>
<script type="text/javascript">
var preset ;
function is_email(a){return /^([\w!.%+\-])+@([\w\-])+(?:\.[\w\-]+)+$/.test(a);}

$(function(){
	preset = {
		F: {
			title : '탈퇴를 요청합니다.',
			contents : "탈퇴 사유를 남겨주시기 바랍니다!\n여러분의 피드백을 통해 더욱 개선된 서비스로 찾아뵙도록 하겠습니다."
		}

	};

	$('#email_select').change(function(){
		var val = $(this).val();
		if(val == 'null'){
			val = "";
		}
		$('#email2').val(val);
		return false;
	});

	$('form').submit(function() {
			$('#contents').click();
/*
        var email = $('#email1').val() + '@' + $('#email2').val();
        $('#email').val(email);

        if(!is_email($('#email').val())){
            alert('이메일 형식이 잘못되었습니다.');
            return false;
        }
*/
		if($('#title').val() == ''){
			alert('제목을 입력해주세요.');
						$('#title').focus();
			return false;
		}
		if($('#contents').val() == ''){
			alert('내용을 입력해주세요.');
			$('#contents').focus();
			return false;
		}
		alert('문의가 접수되었습니다.');
	});

	if(location.hash) {
		c_code = location.hash.substr(1);
		$("#category").val(c_code);
		if(preset[c_code]) {
			$('#title').val(preset[c_code].title);
			$('#contents').val(preset[c_code].contents);
		}
/*
		if(c_code == 'G'){
			alert("우리집 주차장을 쏘카존으로 신청해 주세요!\n(우리집 말고 일반주차장 쏘카존신청은 '쏘카존 신청하기'에서!)");
		}
*/
	}
	$('#contents').bind('click focus',function(){
		if(!$(this).data('cleared') && $("#category").val() != "G"){
			$(this).data('cleared',true);
			$('#contents').val('');
		}
	});

	$("#category").change(function(){
		var c_code = $(this).val();
		if(preset[c_code]) {
			$('#title').val(preset[c_code].title);
			$('#contents').val(preset[c_code].contents);
		}
		else{
			$('#title').val('');
			$('#contents').val('');
		}
/*
		if(c_code == 'G'){
			alert("우리집 주차장을 쏘카존으로 신청해 주세요!\n(우리집 말고 일반주차장 쏘카존신청은 '쏘카존 신청하기'에서!)");
		}
*/
		return false;
	});
})
</script>
</head>

<body id="customer" class="inquiry">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='//web-assets.socar.kr/template/asset/images/customer/h2.gif' alt="고객센터 쏘카에 대한 궁금증 해결을 도와드립니다." /></h2>
			<p class="callCenter"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_callcenter_150225.gif' alt="1661-3315 콜센터 안내" /></p>
			<div class="box lnb">
				<!-- lnb -->
<ul class="lnb">
<li><a href="/notice" title="공지사항" class="lnb1">공지사항</a></li>
<li><a href="/faq" title="자주묻는 질문" class="lnb2">자주묻는 질문</a></li>

	<li><a href="/inquiry" title="1:1 문의하기" class="lnb3">1:1 문의하기</a></li>

<li><a href="/voc" title="고객의견 반영절차" class="lnb4">고객의견 반영절차</a></li>
</ul>
<!-- //lnb -->
				<div class="section">
					<h3><img src='//web-assets.socar.kr/template/asset/images/customer/h3_inquiry.gif' alt="1:1 문의하기" /></h3>
					<form name="inquiry" method="post" action="https://api.socar.kr/cs/counsel" accept-charset="utf-8" enctype="multipart/form-data">
						<fieldset>
						<input type="hidden" name="auth_token" value="8253898f5c54f177f2157eb70e488c3ac425c8eamipkc" />
						<input type="hidden" name="return_url" value="https://www.socar.kr/inquiry" />
						<input type="hidden" name="channel" value="www" />
							<table cellspacing="0" class="rows">
<!--
							<tr>
								<th><img src='//web-assets.socar.kr/template/asset/images/customer/inquiry_txt1.gif' alt="이메일" /></th>
								<td>
                                    <input id="email1" type="text" class="input" value="" style="width:118px" /> @
                                    <input id="email2" type="text" class="input" value="" style="width:118px" />
                                    <input id="email" type="hidden" name="email" value="" />
                                    <input type="hidden" name="category" value="일반" />

                                    <select id="email_select">
                                        <option selected="selected" value="null">직접입력</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="empas.com">empas.com</option>
                                        <option value="lycos.co.kr">lycos.co.kr</option>
                                        <option value="netsgo.com">netsgo.com</option>
                                        <option value="chol.com">chol.com</option>
                                        <option value="dreamwiz.com">dreamwiz.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanafos.com">hanafos.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="hanmir.com">hanmir.com</option>
                                        <option value="hitel.net">hitel.net</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option value="korea.com">korea.com</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="netian.com">netian.com</option>
                                        <option value="paran.com">paran.com</option>
                                    </select>
								</td>
							</tr>
-->
							<tr>
								<th><img src='//web-assets.socar.kr/template/asset/images/customer/inquiry_txt2.gif' alt="문의분류" /></th>
								<td>
									<select style="width:165px" name='category' id='category'>
										<option value='A'>예약/결제문의</option>
										<option value='B'>가입문의</option>
										<option value='C'>차량이용/사고</option>
										<option value='D'>불편접수/건의</option>
										<option value='E'>프로모션/쿠폰</option>
										<option value='H'>법인/단체</option>
										<option value='F'>탈퇴</option>
										<option value='I'>쏘파라치</option>
										<option value='Q'>핸들주차비 환급요청</option>
										<option value='G'>기타</option>
										
									</select>
								</td>
							</tr>
							<tr>
								<th><img src='//web-assets.socar.kr/template/asset/images/customer/inquiry_txt3.gif' alt="제목 / 내용" /></th>
								<td>
									<input id="title" type="text" name="title" class="input" value="" style="width:400px" />
									<textarea id="contents" cols="" name="contents" rows="15" class="textarea" style="width:585px"></textarea>
								</td>
							</tr>
							<tr>
								<th><img src='//web-assets.socar.kr/template/asset/images/customer/inquiry_txt4.gif' alt="파일첨부" /></th>
								<td>
									<input type="file" class="input" name="userfile" value="" />
									<span class="tip ml10">이미지 파일은 jpg, png, gif 만 첨부가능합니다.</span>
								</td>
							</tr>
							</table>
							<p class="centerBtn">
								<!-- <input type="image" name="submit" value="submit" src='//web-assets.socar.kr/template/asset/images/customer/btn_confirm.gif' alt="확인" /> -->
								<input type="submit" value="" class="btn_submit" />
								<!-- <a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_cancel.gif' alt="취소" /></a> -->
							</p>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>


<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505264660" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505264660" charset="utf-8"></script>

			<a href="#" class="close">닫기</a>
		</div>
	</div>

</body>
</html>