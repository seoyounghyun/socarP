<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264849"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264849"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264849"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264849"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264849"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>


<link rel="stylesheet" type="text/css" href="/template/mypage/../asset/css/mypage.css?v=20170731" />
<style type="text/css">
#mypage .gbx li.tip em {display:inline-block;width:76px;}
#mypage .cols td {padding:17px 0 21px;line-height:20px;vertical-align:top !important}
#mypage.coupon .cols .info * {padding-left:12px;}
#mypage.coupon .cols .info .coupon_usage {font-weight:bold;font-size:12px;line-height:20px;color:#333;}
#mypage.coupon .cols .info .desc {padding-top:3px;font-size:12px;line-height:20px;color:#999;}
#mypage.coupon .cols .info .list_info {padding-left:14px;padding-top:11px;font-size:12px;line-height:20px;color:#666;}
#mypage.coupon .cols .info .list_info li {padding-left:0;}
</style>
<script type="text/javascript">
$(function(){
	$('.coupon_usage').click(function () {
		alert('쿠폰은 쏘카 예약시 예약확인 단계에서 사용 가능합니다.');
	});

	$('#coupon_active').bind('click', function () {
		$.ajax({
			url : "https://www.socar.kr/mypage/coupon_add",
			type : "POST",
			data : {
				code: $('#coupon_code').val()
			},
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					alert('쿠폰 등록이 완료되었습니다.');
					$('#mwCont .close').click();
					window.location.href = '/mypage/coupon';
				}
				else{
					alert(data.retMsg + ' 코드 : ' + data.retCode);
				}
			},
			error : function(){
				alert('err');
			}
		});

		return false;
	});
})
</script>
</head>

<body id="mypage" class="coupon">
<div id="wrap">

		<jsp:include page="/template/Header.jsp"/>


	<div id="container">
		<div id="content">
			<h2><img src="/template/mypage/../asset/images/mypage/h2.gif" alt="마이페이지 - 내 정보와 예약내역, 쿠폰 등을 확인할 수 있습니다." /></h2>

			<div class="box lnb">

				                <!-- lnb -->
                <ul class="lnb">
                <li><a href="/mypage" title="내 정보" class="lnb1">내 정보</a></li>
                <li><a href="/mypage/reserve" title="예약내역" class="lnb3">예약내역 <span>0</span></a></li>
                <li><a href="/mypage/coupon" title="내 쿠폰" class="lnb4">내 쿠폰 <span>0</span></a></li>
                <li><a href="/mypage/payment" title="결제내역" class="lnb5">결제내역</a></li>
                </ul>
                <!-- //lnb -->

				<div class="section">
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/coupon_txt1.gif" alt="내 쿠폰" /> <span>0</span> <img src="/template/mypage/../asset/images/mypage/coupon_txt2.gif" alt="개" /></h3>

						<p class="coupon-add"><a href="#" class="couponAddB"><img src="/template/mypage/../asset/images/mypage/btn_coupon.gif" alt="쿠폰 등록하기" /></a></p>

						<div class="gbx">
							<ul>
							<li>쿠폰은 <em>최초 대여요금에만 적용</em>됩니다. (보험료/주행요금/연장 대여요금에 적용 불가)</li>
							<li>쿠폰은 예약당 1개만 사용가능합니다. (중복적용 불가)</li>
							<li>주중전용 쿠폰은 주말 및 공휴일 사용이 불가능합니다.</li>
							<li>편도 예약시 편도 전용 쿠폰만 사용 가능하며, 편도요금에만 할인이 제공됩니다. (대여료 할인 불가)</li>
							<li>예약 취소시, 쿠폰은 유효기간 내에만 재발급됩니다.</li>
							<li>제주공항/제주공항교차로존은 전용쿠폰을 제외한 모든 쿠폰적용이 불가합니다.</li>
							<li class='tip'><em>[주말 기준]</em> 금요일 19:00 ~ 일요일 19:00</li>
							<li class='tip'><em>[공휴일 기준]</em> 해당일 00:00 ~ 24:00</li>
							</ul>
						</div>
						
							<div class="result_none">
								<p>발급된 쿠폰이 없습니다.</p>
							</div>
						

					</div>

					<!-- paginate -->
<!-- 					<div class="paginate">
						<a href="#" class="direction prev"><img src="/template/mypage/../asset/images/common/btn_board_prev.gif" alt="첫 페이지" /></a>
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#">6</a>
						<a href="#">7</a>
						<a href="#">8</a>
						<a href="#">9</a>
						<a href="#">10</a>
						<a href="#" class="direction next"><img src="/template/mypage/../asset/images/common/btn_board_next.gif" alt="끝 페이지" /></a>
					</div> -->
					<!-- //paginate -->
					<div style="padding-top:30px;">
						<a href="https://www.socar.kr/couponbook"><img src="/template/mypage/../asset/images/mypage/coupon_couponbook.gif" alt="쏘카의 다양한 쿠폰혜택 살펴보세요! 쏘카 쿠폰북 바로가기" /></a>
					</div>
				</div>
			</div>
		</div>


		
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>



			<!-- 쿠폰등록 -->
			<div class="couponAdd mypage mwCont">
				<form name="couponAdd" method="post" action="">
					<fieldset>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_coupon_title.gif" alt="쿠폰등록" /></h3>
						<div class="bx">
							<input id="coupon_code" type="text" class="input" />
						</div>
						<p class="txt">
							<em>쿠폰은 유효기간 동안만 등록, 사용가능합니다.</em><br /><!--쿠폰북 레이어 기본 height:246px 원복할때 참고-->
							쿠폰은 분할 사용할 수 없으며 종류에 따라 사용 조건이<br />있을 수 있습니다.
							<!--<span style="color:red;display:block;padding-top:7px;">티웨이 항공권 구매자는 SMS로 수신한 예약번호를 입력해주세요.</span>-->
						</p>

						<p class="centerBtn">
							<input id="coupon_active" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //쿠폰등록 -->

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>