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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505263829"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505263829"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505263829"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505263829"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505263829"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/socar.css?v=20170731' />
<script type="text/javascript">
$(function(){
	var $socarManual = $('.js-socar-manaul');

	$socarManual.click(function () {
		ga('send', 'event', 'manual', 'manual', {'page' : this.href});
	});

	$('.menu a').click(function(){
		$('.menu li').removeClass('on');
		$(this).parent().addClass('on');
		$('.content').css('display','none');
		var $cont = $(this).attr('href');
		$($cont).css('display','block');
		return false;
	});
	$('.install .tab a').click(function(){
		$('.tab li').removeClass('on');
		$(this).parent().addClass('on');
		$('.inst').css('display','none');
		var $inst = $(this).attr('href');
		$($inst).css('display','block');
		return false;
	});

	if ( document.location.hash ) {
		$('.menu a[href=' + document.location.hash + ']').click();
	}

	if (document.location.pathname=='/impact')
	{
		$('.menu a[href=#socar5]').click();
	}
});
</script>
</head>

<body id="socar">
<div id="wrap">

    	<jsp:include page="/template/Header.jsp"/>


	<div id="container">
		<div id="content">
			<div class="index">
        <img src='//web-assets.socar.kr/template/asset/images/socar/top_menu_img_1.png' alt="쏘카에 대해 알아볼까요?" />
			</div>

			<div class="box">
				<div class="snb">
					<ul class="menu">
						<li class="on"><a href="#socar1" class="menu1">이용방법</a></li>
						<li><a href="#socar2" class="menu2">이용규칙</a></li>
						<li><a href="#socar3" class="menu3">모바일 이용안내</a></li>
						<li><a href="#socar4" class="menu4">쏘카 가이드</a></li>
						<li><a href="#socar5" class="menu5">쏘카 임팩트</a></li>
					</ul>

					<ul class="banner">
						<li><a href="https://www.facebook.com/socarsharing" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/socar/banner1.gif' alt="쏘카 페이스북" /></a></li>
						<li><a href="http://talk.socar.kr" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/socar/banner2_n.png' alt="쏘카 블로그" /></a></li>
						<li><a href="https://goo.gl/Aqsjr5" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/socar/banner3.gif' alt="쏘카 인재채용" /></a></li>
					</ul>
				</div>

				
				<div id="socar1" class="content">
					<h3><img src='//web-assets.socar.kr/template/asset/images/socar/txt10.gif' alt="쏘카 이용방법" /></h3>
					<p class="txt"><img src='//web-assets.socar.kr/template/asset/images/socar/txt11.gif' alt="가입에서 예약 사용까지 간편하게 이용할 수 있는 편리하고 경제적인 쏘카의 이용방법을 알려드립니다. 쏘카와 함께 스마트 카셰어링을 경험해 보세요! " /></p>
					<div class="video-wrapper">
						<iframe class="how-to-use-video" src="https://www.youtube.com/embed/pKEI0rKAQ5Y?rel=0" frameborder="0" allowfullscreen></iframe>
					</div>
					<a class="js-socar-manaul" href="https://m.socar.kr/manual">
						<img src='//web-assets.socar.kr/template/asset/images/socar/socar-manual.jpg' />
					</a>
					<ul>
						<li class="rule1">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt12.gif' alt="회원 가입" /></h4>
							<p>카셰어링은 신뢰를 기반으로 한 회원제 서비스입니다.<br />
							운전면허 및 결제카드 등록 후 SO회원이 되시면 쏘카 이용이 가능합니다.</p>
						</li>
						<li class="rule2">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt13.gif' alt="차량 예약" /></h4>
							<p>SO회원 가입 승인 후 쏘카 예약이 가능합니다. 홈페이지 및 모바일앱을 이용해 예약하실<br />수 있고 정상적으로 예약완료된 경우 휴대폰으로 확인메시지가 전송됩니다.</p>
							<p>
								<img src='//web-assets.socar.kr/template/asset/images/socar/mobile.gif' alt="안드로이드폰, 아이폰" usemap="#mobile.gif" />
								<map name="mobile.gif">
								<area shape="rect" coords="1,0,98,23" href="https://play.google.com/store/apps/details?id=socar.Socar&referrer=utm_source%3Dwww-socar%26utm_medium%3Duser-guide%26utm_content%3Duser-guide" target="_blank" alt="안드로이드폰" />
								<area shape="rect" coords="99,0,166,23" href="https://itunes.apple.com/app/apple-store/id515173864?pt=117787400&ct=pc_web_guide&mt=8" target="_blank" alt="아이폰" />
								</map>
							</p>
						</li>
						<li class="rule3">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt14.gif' alt="쏘카 이용" /></h4>
							<p>쏘카앱 스마트키 잠금해제 버튼을 누르거나, 등록한 회원카드를 차량 앞 유리에 부착된 단말기에 접촉시켜 주세요. 경적음이 울린 후 차량 문이 열립니다.<br /> 예약한 시간 동안에는 회원카드 및 모바일앱 스마트키로 차량 문을 제어할 수 있습니다.</p>
						</li>
						<li class="rule4">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt15.gif' alt="차량 반납" /></h4>
							<p>반납 시간에 맞추어 차량을 반납 장소에 주차하신 후 모바일앱 스마트키 및 회원카드로 차량 문을 <br />잠가 주세요.<br/>
							제자리에 정상 반납 처리되면 휴대폰으로 확인 메시지가 발송됩니다.</p>
						</li>
						<li class="rule5">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt16.gif' alt="요금 결제" /></h4>
							<p>차량 이용에 따른 요금은 대여료와 주행요금으로 구분되며, 가입시 등록한 결제카드로 청구됩니다.<br />
							결제가 완료되지 않으면 차량 사용에 제한이 있을 수 있으니, 미리 결제카드의 유효여부를<br />확인해주세요. </p>
						</li>
					</ul>
				</div>
				

				
				<div id="socar2" class="content">
					<h3><img src='//web-assets.socar.kr/template/asset/images/socar/txt17.gif' alt="쏘카 이용규칙" /></h3>
					<ul>
						<li class="rule1">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt18.gif' alt="이용 후 대여한 쏘카존으로 반납 필수!" /></h4>
							<p>편도 이용을 제외한 모든 차량 반납은 대여한 쏘카존으로 하셔야 합니다. <br />만약 다른 차량이 주차되어 있거나 부득이한 사정이 생기신 경우는 고객센터로 연락주세요.</p>
						</li>
						<li class="rule2">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt19.gif' alt="반납시간을 준수해주세요!" /></h4>
							<p>다음 사용자를 위해 반납시간을 꼭 지켜주세요.<br />반납이 늦어지는 경우 페널티 또는 경고조치를 받을 수 있으며, 반납연장은 모바일앱에서 가능합니다.</p>
						</li>
						<li class="rule3">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt20.gif' alt="연료가 50%이상 남아있는지 확인해주세요!" /></h4>
							<p>다음 사용자를 위해 연료가 충분히 남았는지 확인해주세요.<br />모든 주유소에서 주유가 가능하며, 결제는 차량 내부에 비치된 주유카드로 진행하시면 됩니다.</p>
						</li>
						<li class="rule4">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt21.gif' alt="쏘카에서 흡연은 꼭 참아주세요!" /></h4>
							<p>함께 사용하는 분들을 위해 쏘카를 이용하는 동안 흡연은 꼭 참아주세요!<br />이용 후에는 차량 내부에 있는 쓰레기를 정리해 주시기 바랍니다.</p>
						</li>
						<li class="rule5">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt22.gif' alt="문제가 생긴 경우 고객센터로 즉시 연락주세요!" /></h4>
							<p>예약한 차량에 사고 흔적이 있거나 이용 중 사고 및 기타 문제로 인해 긴급출동이 필요한 경우에는 신속하게<br />고객센터로 상황을 알려주시기 바랍니다.</p>
						</li>
						<li class="rule6">
							<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt23.gif' alt="애완동물은 캐리어를 이용해주세요!" /></h4>
							<p>애완동물은 캐리어를 이용해 쏘카에 동반 탑승하실 수 있습니다.<br />단, 장애인 반려견은 캐리어 없이도 탑승 가능합니다.</p>
						</li>
					</ul>

					<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt24_n.gif' alt="페널티 규정" /></h4>
					<table cellspacing="0" class="cols">
					<colgroup>
						<col width="130" />
						<col width="130" />
						<col width="" />
					</colgroup>
					<thead>
					<tr>
						<th colspan="2" class="first">운전자 준수사항 미이행 내용</th>
						<th>페널티금액</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td rowspan="2" class="first">자동차 반납의 지연</td>
						<td>10분 이상 30분 미만</td>
						<td>10,000원</td>
					</tr>
					<tr>
						<td>30분 이상</td>
						<td>기본 반납 지연 페널티금액 10,000원과 자동차 반납 예정 시각으로부터 반납 시각까지의 시간 동안의 해당 자동차 이용 기준요금의 2배</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 반납시 잔여연료의 부족</td>
						<td>20,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 내에서의 흡연</td>
						<td>300,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 키 분실</td>
						<td>80,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">헤드라이트 소등 미실시</td>
						<td>20,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">쏘카존 쓰레기 투기 및 자동차 내부 상태 불량</td>
						<td>50,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">지정되지 않은 장소로의 자동차 반입</td>
						<td>페널티금액 50,000원 및 견인, 주차비 등 지정되지 않은 장소로의 자동차 반납으로 인하여 발생한 실비 일체</td>
					</tr>
					<tr>
						<td colspan="2" class="first">차량의 파손이나 도난 발견시<br />본사로 즉시 연락하지 않은 경우</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">동승운전자 미등록 운전</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">음주 및 약물복용 운전</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">편도 핫딜 미운행 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">핸들 미션 불이행 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">전기자동차 반납 시 충전기 미연결 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">부름 차량이 목적지로 출발 후<br />예약 취소</td>
						<td>30,000원</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- //이용방법 -->

				<!-- 이용규칙 -->
				<div id="socar3" class="content">
					<h3><img src='//web-assets.socar.kr/template/asset/images/socar/txt26.gif' alt="모바일 이용안내" /></h3>
					<p class="txt"><img src='//web-assets.socar.kr/template/asset/images/socar/txt27.gif' alt="경제적이고 편리한 카셰어링을 이용하는 가장 쉽고 빠른 방법은?
언제 어디서나 스마트폰만 있으면 예약부터 사용까지 OK!
모바일에서도 쏘카를 이용해보세요." /></p>
					<div class="install">
						<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt28.gif' alt="접속 및 설치방법" /></h4>
						<ul class="tab">
						<li class="on"><a href="#install1"><img src='//web-assets.socar.kr/template/asset/images/socar/tab1.gif' alt="모바일" /></a></li>
						<li><a href="#install2"><img src='//web-assets.socar.kr/template/asset/images/socar/tab2.gif' alt="PC" /></a></li>
						</ul>

						<div id="install1" class="inst">
							<img src='//web-assets.socar.kr/template/asset/images/socar/txt29.gif' alt="QR 코드스캔
스마트폰의 코드스캔앱으로 QR코드를 스캔하면,
모바일웹으로 이동합니다.
https://m.socar.kr" usemap="#txt29" />
							<map name="txt29">
							<area shape="rect" coords="74,55,135,68" href="https://m.socar.kr" target="_blank" alt="https://m.socar.kr" />
							</map>
						</div>

						<div id="install2" class="inst">
							<img src='//web-assets.socar.kr/template/asset/images/socar/txt30.gif' alt="PC에서 설치
각 링크를 클릭하시면, 해당 스마트폰 OS 앱스토어로 이동합니다.
안드로이드 폰
아이폰" usemap="#txt30" />
							<map name="txt30">
							<area shape="rect" coords="0,43,98,61" href="https://play.google.com/store/apps/details?id=socar.Socar&referrer=utm_source%3Dwww-socar%26utm_medium%3Duser-guide%26utm_content%3Duser-guide" target="_blank" alt="안드로이드 폰" />
							<area shape="rect" coords="0,64,61,78" href="https://itunes.apple.com/app/apple-store/id515173864?pt=117787400&ct=pc_web_guide&mt=8" target="_blank" alt="아이폰" />
							</map>
						</div>
					</div>

					<div class="function">
						<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt31.gif' alt="주요기능안내" /></h4>
						<ul>
						<li>
							<h5><img src='//web-assets.socar.kr/template/asset/images/socar/txt32.gif' alt="1. 빠르고 편리한 쏘카 예약하기" /></h5>
							<p class="txt">현 위치에서 가까운 쏘카존이나 원하는 지역을 검색하세요.<br />이용 가능한 차량을 쉽고 빠르게 예약할 수 있습니다.</p>
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/features-1.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='//web-assets.socar.kr/template/asset/images/socar/txt33.gif' alt="2. 모바일로 작동가능한 스마트키" /></h5>
							<p class="txt">회원카드 없이도 스마트키를 이용하여 예약한 차량의 문을 열고<br />닫거나, 경적을 울릴 수 있습니다.</p>
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/features-2.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='//web-assets.socar.kr/template/asset/images/socar/txt34_n.gif' alt="3. 예약내역은 마이페이지" /></h5>
							<p class="txt" style="height:76px;">내 정보와 보유한 쿠폰을 확인할 수 있으며, 예약 내역에서 <br />예약을 변경하거나 취소할 수 있습니다.</p>
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/features-3.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='//web-assets.socar.kr/template/asset/images/socar/txt35.gif' alt="4. 불편한점은 바로 고객센터" /></h5>
							<p class="txt" style="height:76px;">차량 이용 중 궁금한 점이나 불편한 점이 있으면 고객센터에서<br />도와드려요. 차량에 사고 흔적이 있으면 사진을 찍어 바로 신고도 <br />할 수 있습니다.</p>
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/features-4.png' alt="" /></p>
						</li>
						</ul>
					</div>
				</div>
				<!-- //이용규칙 -->

				<!-- 모바일 이용안내 -->
				<div id="socar4" class="content">
					<h3><img src='//web-assets.socar.kr/template/asset/images/socar/txt4.gif' alt="쏘카 가이드" /></h3>
					<p class="txt1"><img src='//web-assets.socar.kr/template/asset/images/socar/txt5.gif' alt="쏘카는 차를 소유하는 사람보다 공유하는 사람들이 훨씬 더 많아지는 날을 꿈꿉니다!" /></p>
					<p class="txt2"><img src='//web-assets.socar.kr/template/asset/images/socar/txt6.gif' alt="물론 공유는 소유보다 불편할 때도 있습니다. 타인과 무엇을 나눠 쓴다는 것이 쉽지만은 않지요. 하지만 쏘카는 이러한 불편과 거북함을 최소화시키기 위해 끊임없이 고민하려고 합니다. 개인의 재화로 인식되었던 자동차를 사회적 재화로 바꾸고, 전체적인 사회적 비용을 낮추어 지역사회에 재투자되도록 노력하겠습니다. 이용자의 편의를 최우선으로 합리적인 소비문화를 이끌어낼 수 있도록 노력하겠습니다." /></p>
					<div class="gallery">
						<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt7.gif' alt="쏘카 회원이 되시면, 쏘카가 준비하는 재미있는 일들을 함께하실 수 있습니다. " /></h4>
						<div class="list">
							<ul>
							<li><img src='//web-assets.socar.kr/template/asset/images/socar/thumb1.jpg' alt="" /></li>
							<li><img src='//web-assets.socar.kr/template/asset/images/socar/thumb2.jpg' alt="" /></li>
							<li><img src='//web-assets.socar.kr/template/asset/images/socar/thumb3.jpg' alt="" /></li>
							<li><img src='//web-assets.socar.kr/template/asset/images/socar/thumb4.jpg' alt="" /></li>
							</ul>
						</div>

						<p class="prev">
							<a href="#"><img src='//web-assets.socar.kr/template/asset/images/socar/btn_prev.gif' alt="이전" /></a>
						</p>

						<p class="next">
							<a href="#"><img src='//web-assets.socar.kr/template/asset/images/socar/btn_next.gif' alt="다음" /></a>
						</p>

						<ul class="txt">
						<li>쏘카 회원들과 함께 ‘제주올레걷기축제’ 코스튬플레이</li>
						<li>대동제와 함께하는 쏘카존 만들기 이벤트 진행</li>
						<li>Full Moon DJ Festival에 쏘카 회원 초대</li>
						<li>이마트와 함께 카셰어링 체험하기 이벤트 진행</li>
						<li>장롱면허 독립을 위한 2030 에코 드라이빙스쿨 진행</li>
						<li>GET Live(인디밴드 공연) 매월 쏘카 회원 정기 초청</li>
						<li>추석감사이벤트. 쏘카 트렁크에 숨겨둔 Thanks box 찾기</li>
						<li>이스타항공과 함께 여름 제주여행 패키지 제공</li>
						</ul>
					</div>

					<div class="qna">
						<h4><img src='//web-assets.socar.kr/template/asset/images/socar/txt8_1.gif' alt="쏘친들의 쏘카후기" /></h4>
						<p>쏘친들의 리얼 쏘카 이용 후기! 지역 곳곳에서 쏘카와 함께 한 쏘친들을 만나보세요!</p>

						<ul>
						<li class="first" style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/HyCFQs');return false;">
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/member_img1.jpg' alt="" /></p>
							<h5>박하승 회원 (20대 남)</h5>
							<p class="s_tit">쏘카와 함께 한 웨딩 촬영!</p>
							<p class="txt">"멀지 않은 거리를 이동해야 하고,<br />짐이 많았던 번거로움을 줄이기 위해<br />쏘카를 이용했어요! 완전 대 만족!"</p>
							<p class="more"><a href="http://goo.gl/HyCFQs" target="_blank">더보기</a></p>
						</li>
						<li style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/NG4K7k');return false;">
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/member_img2.png' alt="" /></p>
							<h5>김승현 회원(20대 여)</h5>
							<p class="s_tit">쏘카와 함께 한 부산 여행!</p>
							<p class="txt">"기차 타고 도착한 부산! 부산역에<br />있는 쏘카 미니와 함께 여행했어요!<br />쏘카 고마워요!"</p>
							<p class="more"><a href="http://goo.gl/NG4K7k" target="_blank">더보기</a></p>
						</li>
						<li class="first" style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/tYJn0t');return false;">
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/member_img3.jpg' alt="" /></p>
							<h5>박민욱 회원 (20대 남)</h5>
							<p class="s_tit">쏘카와 함께 떠난 농촌 지역 활성화</p>
							<p class="txt">"쏘카 타고 친구들과 함께 농촌 지역<br />활성화를 위한 봉사활동 다녀왔어요!"</p>
							<p class="more"><a href="http://goo.gl/tYJn0t" target="_blank">더보기</a></p>
						</li>
						<li style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/m0tkVi');return false;">
							<p class="thumb"><img src='//web-assets.socar.kr/template/asset/images/socar/member_img4.jpg' alt="" /></p>
							<h5>김재훈 회원 (30대 남)</h5>
							<p class="s_tit">제주여행은 공항에서부터 쏘카와!</p>
							<p class="txt">"사랑하는 가족과의 제주여행!<br />공항에서 바로 편리하게 쏘카했어요!"</p>
							<p class="more"><a href="http://goo.gl/m0tkVi" target="_blank">더보기</a></p>
						</li>
						</ul>
					</div>

				</div>
				<!-- //모바일 이용안내 -->
				<!-- 쏘카 임팩트 -->
				<div id="socar5" class="content">
					<h3><img src='//web-assets.socar.kr/template/asset/images/socar/tit_socar_5_1.gif' alt="쏘카 임팩트" /></h3>
					<p><img src='//web-assets.socar.kr/template/asset/images/socar/img_socar_5_1_20150904.png' alt="" /></p>
					<div class="blind">
						<h4>쏘카는 긍정적인 사회/환경적 영향을 고려하는 비즈니스 활동을 지향합니다. </h4>
						<p>합리적이고 대안적인 이동수단으로서 카셰어링 서비스를 제공하며, 이로 인한 다양한 사회/환경적 파급효과를 지속적으로 관찰하고 그 효과를 스스로 입증하고자 합니다.</p>
					</div>
					<p style="padding-top:20px">
						<a href="https://www.bcorporation.net/community/socar" target="_blank" title="B Corp 자세히 보기">
							<img src='//web-assets.socar.kr/template/asset/images/socar/impact_b_corp.png?v=3' role="presentation" />
						</a>
					</p>
					<div class="blind">
						<h4>쏘카는 B Corp 인증을 통해 기업의 사회/환경적 책임에 관한 글로벌 기준을 준수합니다. </h4>
						<p>쏘카는 자원의 효율적 활용을 통해서 사회/환경적 문제를 효과적으로 해결한다는 점에서 글로벌 인증을 획득하였으며, 투명한 경영, 건강한 근로 환경 구축을 통해 지역사회 안에서 지속가능하고 긍정적인 영향을 끼칠 수 있는 기업문화를 확산해가고자 합니다.</p>
						<h4>쏘카, 카셰어링 분야에서 세계 최초로 B Corp 인증 획득</h4>
						<p>글로벌 사회적기업 인증인 B Corp은 이윤창출을 넘어 사회 환경적 임팩트를 추구하는 'Benefit Corporation'을 의미합니다.</p>
					</div>
					<p  style="padding-top:20px">
						<img src='//web-assets.socar.kr/template/asset/images/socar/impact_ccm.png?v=3' role="presentation" />
					</p>
					<div class="blind">
						<h4>쏘카는 고객의 관점에서 서비스 가치를 극대화하기 위해 노력합니다.</h4>
						<p>쏘카는 회원들의 즐거운 쏘카 라이프를 위하여, 안전을 최우선으로 서비스 만족을 위해 소비자중심경영 활동을 수행하고 있습니다. 고객 목소리에 귀 귀울여 더 나은 서비스 제공을 위해 노력하고, 더욱 믿고 이용할 수 있는 카셰어링 서비스가 되고자 합니다.</p>
						<h4>쏘카, 카셰어링 분야 최초 CCM 인증 획득</h4>
						<p>소비자중심경영(CCM)은 기업이 수행하는 모든 활동을 소비자 관점에서, 소비자 중심으로 구성하고 관련 경영활동을 지속적으로 개선하고 있는지를 한국소비자원에서 평가하고, 공정거래위원회가 인증해주는 국가인증제도 입니다.</p>
					</div>
					<p style="padding-top:20px"><img src='//web-assets.socar.kr/template/asset/images/socar/impact_eco.png?v=4' role="presentation" /></p>
					<div class="blind">
						<h4>쏘카는 국내 대표 공유경제 모델로서 기업의 환경적 책임을 다합니다.</h4>
						<p>국내 대표 카셰어린 서비스인 쏘카는 자동차 공유를 통해 전체 자동차 대수를 줄이고 환경 영향을 저감시키는데 기여하고 있으며, 전체 서비스 차량 중 저공해 차량을 50% 이상 유지하고,
							에코 드라이빙 캠페인 및 대중교통 연계할인 등을 통해 온실가스 저감을 실천하고 있습니다.</p>
						<h4>쏘카, 국내 업계 최초 친환경 인증 획득</h4>
						<p>친환경 인증은 생산, 소비, 폐기 등 서비스를 제공하는 전 과정에 걸쳐 환경 부하를 줄이도록 체계화된 제품 및 서비스에 부여됩니다.
							환경마크 대상품목으로 카셰어링 부문이 지정된 이후 쏘카가 첫 번째 인증 사례가 되었습니다.</p>
					</div>
					<p style="padding-top:20px"><img src='//web-assets.socar.kr/template/asset/images/socar/img_socar_5_4_20150904.png' alt="" /></p>
					<div class="blind">
						<ul>
							<li>
								<strong>SHARE - 보다 합리적인 자동차 생활</strong>
								<em>평균 이동거리 40% 감소</em>
								카셰어링으로 차량을 이용하면 필요한 시간만큼 계획적인 자동차 생활이 가능합니다. 자차를 이용할 때보다 평균적으로 40%이상 이동거리가 줄어드는 효과가 있습니다.
							</li>
							<li>
								<strong>SAVE - 도심 대기 환경 개선</strong>
								<em>CO2 배출 저감량 957톤</em>
								계획적인 자동차 이용은 대기 중에 배출되는 CO2​량도 줄입니다. 쏘친들이 함께 줄인 CO2​배출량은 연간 소나무 20만 그루가 흡수하는 CO2​량과 같습니다.
							</li>
							<li>
								<strong>SMART - 저공해 차량 이용 권장</strong>
								<em>저공해 차량 보유율 65%</em>
								경형 및 하이브리드 등 저공해 차량​을 60%이상으로​ ​유지합니다. 저공해 차량은 일반차종에 비해 CO2​배출량이 낮아 카셰어링 서비스의 환경영향 저감​효과를 극대화할 수 있습니다.
							</li>
						</ul>
					</div>
					<p style="padding-top:20px"><img src='//web-assets.socar.kr/template/asset/images/socar/img_socar_5_4.jpg' usemap="#img_socar_5_4" alt="쏘카와 함께 하면 좋을 일들을 제안해주세요! - 지역사회를 연결하고 긍정의 에너지를 퍼트릴 수 있는 쏘친들의 다양한 아이디어를 기다립니다." /></p>
					<map name="img_socar_5_4" id="img_socar_5_4">
						
							<area shape="rect" coords="145,73,279,118" href="#login" class="require_login" data-href="/inquiry#D" alt="아이디어 제안하기"  />
						
					</map>
				</div>
				<!--// 쏘카 임팩트 -->
			</div>
		</div>


        
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>


<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505263829" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505263829" charset="utf-8"></script>


			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>