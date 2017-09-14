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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264454"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264454"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264454"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264454"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264454"></script>
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
<link rel="stylesheet" href='//web-assets.socar.kr/template/asset/css/pagination.css' />
<script type="text/javascript" src="/template/customer/../asset/js/jquery.pagination.js"></script>
<script type="text/javascript">
var $loaded = false;
jQuery.fn.center = function() {
	this.css('position', 'absolute');
	this.css('left', ((this.parent().width() - this.width()) / 2) + (this.width() / 2) + 'px');
	return this;
};
function loadContents(page_index){
	if(page_index < 0){
	return false;
	}
	if($loaded == false){
		$loaded = true;
		return false;
	}
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/cs/faq",
		crossDomain: true,
		data: {
			category_id: '0',
			limit: 10,
			has_contents: 'true',
			page: page_index
		},
		dataType: 'jsonp',
		success: function(json){
			if(json.retCode == 1){
				var result = json.result.data;
				$('.faq-list').empty();
				for(var i in result){
					$('.faq-list').append(
						'<dt name="#faq' + (i+1) + '"><span>Q</span> ' + result[i].title +'</dt>' +
						'<dd><span>A</span> ' + result[i].content + '</dd>'
					);
				}
				setTimeout(function(){
					$(".faq dt:first").addClass('active');
					$(".faq dd:first").slideDown('slow');
				},100);
				$(".faq .faq-list dt").click(function(){
					$(".faq .faq-list dt").removeClass('active');
					$(this).addClass('active');
					$(".faq .faq-list dd").not($(this).next("dd")).slideUp();
					$(this).next("dd").slideToggle();
					return false;
				});
			}
			else{
			}
		},
		error: function(){
			alert('err');
		}
	});
	return false;
}

$(function(){
	if ( document.location.hash ) {
		setTimeout(function(){
			$('.faq-list dt[name=' + document.location.hash + ']').click();
		},100);
	}
	else{
		setTimeout(function(){
			$(".faq dt:first").addClass('active');
			$(".faq dd:first").slideDown('slow');
		},100);
	}
	var opt = {
		callback: loadContents,
		next_text: '>',
		prev_text: '<',
		num_edge_entries: 0,
		num_display_entries: 10,
		items_per_page: 10
	};
	

	$('.btn_category.0').parent().addClass('on');

	$('body').keydown(function(event) {
		if (event.which == 13) {
			$('#btn_search').click();
			event.preventDefault();
		}
	});

	$('.btn_category').bind('click', function () {
		var num = $(this).attr('href');
		window.location.href = '/faq/' + num;
		return false;
	});

	$('#btn_search').bind('click', function () {
		var keyword = $(this).prev().val();

		if(keyword == ''){
			alert('검색어를 입력해주세요.');
			return false;
		}

		$.doPost('https://www.socar.kr/cs/faq_search', {
			keyword: keyword,
			page: 0
		});
		return false;
	});
});
</script>
</head>

<body id="customer" class="faq">
<div id="wrap">
	<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='//web-assets.socar.kr/template/asset/images/customer/h2.gif' alt="고객센터 쏘카에 대한 궁금증 해결을 도와드립니다." /></h2>
			<p class="callCenter"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_callcenter_150225.gif' alt="1661-3315 콜센터 안내" /></p>
			<div class="box lnb">
				<!-- lnb -->
<ul class="lnb">
<li><a href="<c:url value='/Notice/Notice.do'/>" title="공지사항" class="lnb1">공지사항</a></li>
<li><a href="<c:url value='/Notice/Faq.do'/>" title="자주묻는 질문" class="lnb2">자주묻는 질문</a></li>

	<!--<li><a href="javascript:alert('로그인이 필요합니다.');" title="1:1 문의하기" class="lnb3">1:1 문의하기</a></li>-->
	<li><a href="<c:url value='/Notice/Inquiry.do'/>" title="1:1 문의하기" class="lnb3 require_login" data-href="/inquiry">1:1 문의하기</a></li>

<li><a href="<c:url value='/Notice/Voc.do'/>" title="고객의견 반영절차" class="lnb4">고객의견 반영절차</a></li>
</ul>
<!-- //lnb -->
				<div class="section">
					<h3><img src='//web-assets.socar.kr/template/asset/images/customer/h3_faq.gif' alt="자주묻는 질문" /></h3>
					<!-- search -->
					<div class="search-box">
						<form name="search" method="post" action="">
							<fieldset>
								<select>
									<option selected="selected">전체</option>
								</select>
								<input type="text" class="input" />
								<input id="btn_search" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/customer/btn_faq_search.gif' alt="검색" />
							</fieldset>
						</form>
					</div>
					<!-- //search -->
					<form name="faq" method="post" action="">
						<fieldset>
							<!-- tab -->
							<div class="tab">
							<ul>
								
									<li><a href="0" class="btn_category tab1 0">자주묻는 질문</a></li>
								
									<li><a href="1" class="btn_category tab2 1">예약/결제문의</a></li>
								
									<li><a href="2" class="btn_category tab3 2">가입문의</a></li>
								
									<li><a href="3" class="btn_category tab4 3">차량이용/사고</a></li>
								
									<li><a href="4" class="btn_category tab5 4">프로모션/쿠폰</a></li>
								
									<li><a href="5" class="btn_category tab6 5">법인/단체</a></li>
								
									<li><a href="6" class="btn_category tab7 6">탈퇴</a></li>
								
									<li><a href="7" class="btn_category tab8 7">기타</a></li>
								
 							<!-- <li class="on"><a href="#" class="tab1">자주묻는 질문</a></li> -->
							</ul>
							</div>
							<!-- //tab -->
							<!-- list -->
 							<p class="count">총게시물 <strong></strong>개</p>
							<dl class="faq-list">
								
									<dt name="#faq1"><span>Q</span> 주유는 어떻게 해야 하나요? 비용은 누가 내나요?</dt>
									<dd><span>A</span> 차량 이용 중 주유가 필요할 때에는 가까운 주유소에 들러 주유해주세요.<p>유류비는 차량 내부에 비치된 '주유전용카드'로 결제해주세요.</p><p>결제하신 유류비는 쏘친님에게 부담되지 않으며, 반납 완료 후에 주행거리를 기준으로 주행요금이 산정되어 등록하신 결제카드로 결제됩니다.<br /><br />
※ 개인카드 및 현금으로 주유비를 결제하시면 환불이 불가합니다.</p><p>※ 주행요금은 유가변동에 따라 탄력적으로 운영됩니다.</p></dd>
								
									<dt name="#faq2"><span>Q</span> 내가 예약한 동안 차량은 다른 사람이 운전해도 되나요?</dt>
									<dd><span>A</span> 이용 시작 전 등록한 동승운전자에 한해 운전이 가능합니다. 동승운전자 등록 방법은 다음과 같습니다.<p>☞쏘카 앱▷마이페이지▷예약내역▷예약된 쏘카 선택▷동승운전자 등록</p><p>※ 제 3자 및 예약자 없이 동승운전자 단독 운행시 페널티가 발생하며 사고발생시 보험 적용이 불가합니다.</p></dd>
								
									<dt name="#faq3"><span>Q</span> 반납장소에 다른 차가 세워져 있으면 어떻게 하나요?</dt>
									<dd><span>A</span> 지정 반납 쏘카존에 다른 차량이 세워져있을 경우 고객센터(1661-3315)로 연락주시면 가까운 다른 주차장소를 안내해 드리겠습니다.</dd>
								
									<dt name="#faq4"><span>Q</span> 바로반납 혜택을 제공하는 기준은 어떻게 되나요?</dt>
									<dd><span>A</span> 반납 시 잔여대여시간의 50%가 크레딧으로 지급됩니다.<p>단, 받을 크레딧이 0원이면 1,000원 쿠폰이 지급됩니다.</p><p>쏘친님의 반납시점에 따라 혜택이 달라질 수 있으니, 반납 후 직접 확인해주세요.</p><p>바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.</p><p><a href="http://www.socar.kr/notice/586#windowopen" style="color:blue;">☞ 바로반납 크레딧 안내 자세히 보기 (PC)</a></p></dd>
								
									<dt name="#faq5"><span>Q</span> [부름서비스] 이용을 마친 후 차량 반납은 어떻게 하나요?</dt>
									<dd><span>A</span> 부름 이용 후 차량 반납은 예약 시 요청하셨던 곳에 주차해주세요.<div>그 다음 쏘카 APP에서 바로반납을 해주시면 쏘카가 차량을 찾아갑니다.&nbsp;<p>처음 출발한 곳에 주차가 원할하지 못한 경우 인근지역에 주차 후 반납위치를 남겨주시고, 반납이 원할하지 않는 경우엔 고객센터(1661-3315)로 연락주세요.</p></div></dd>
								
									<dt name="#faq6"><span>Q</span> [부름서비스] 부름 예약은 무엇인가요?</dt>
									<dd><span>A</span> 부름 서비스는 쏘친님이 요청한 장소에서 쏘카를 이용할 수 있는 서비스입니다. 원하는 시간에 원하는 장소로 원하는 차량을 부르면 쏘카가 쏘친님께로 달려갑니다.<div><br /></div><div>쏘카 App &gt; 예약하기 &gt; 부름예약을 통해 예약해보세요.</div></dd>
								
									<dt name="#faq7"><span>Q</span> 결제카드를 더 등록할 수 있나요?</dt>
									<dd><span>A</span> 결제카드는 최대 3장까지 등록이 가능합니다.<p>☞쏘카 앱▷마이페이지▷면허/결제카드/크레딧▷결제정보</p><p>☞쏘카 홈페이지▷마이페이지▷내 정보▷결제카드▷결제카드 추가</p></dd>
								
									<dt name="#faq8"><span>Q</span> 재발급 받은 면허라서 승인이 안돼요</dt>
									<dd><span>A</span> 면허를 취득하고 1년이 지났지만 재발급 등의 이유로 면허증에 기재된 면허취득 일자가 1년 미만일 경우에는 최초 면허 취득일 확인이 필요합니다.<p>민원24(www.minwon.go.kr)에서 운전 경력증명서를 발급 받으시고 해당 증명서를 사진으로 찍어 1:1문의에 첨부해주세요.</p><p>바로 확인하고 승인해드리겠습니다.<br /><br />
※ 운전경력증명서 발급 기관 (PC 전용)</p><p> - 민원24 : http://www.minwon.go.kr</p><p> - 이파인 : https://www.efine.go.kr</p><p> - 경찰청 : http://www.police.go.kr</p></dd>
								
									<dt name="#faq9"><span>Q</span> 차량 운행 중 편도에서 왕복으로, 왕복에서 편도로 변경 가능한가요?</dt>
									<dd><span>A</span> 운행 중 변경은 불가능합니다. 운행 시작 전 예약취소 후 재예약을 통해 변경해주셔야 합니다.</dd>
								
									<dt name="#faq10"><span>Q</span> 예약 시 쿠폰은 어떻게 적용하나요?</dt>
									<dd><span>A</span> 쿠폰은 예약 시 선택이 가능합니다.<p>대여 조건에 따라 적용 가능한 쿠폰이 활성화되어 선택하실 수 있습니다.</p></dd>
								
							</dl>
							<!-- //list -->
						</fieldset>
					</form>
					<!-- paginate -->
					<div id="pagination" class="pagination" style="margin-top: 15px;">
					</div>
					<!-- //paginate -->
				</div>
			</div>
		</div>

<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>


<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505264454" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505264454" charset="utf-8"></script>

						<!-- callCenter -->
			<div class="call mwCont">
				<div><img src='//web-assets.socar.kr/template/asset/images/customer/callcenter_img_20160516.gif' alt="콜센터 - 문의사항이 있거나 차량 운행 중 도움이 필요한 때 쏘카 전문 상담원이 빠르고 친절하게 도와드립니다. 예약및 이용중 차량안내 - 일반상담 1661-3315, 긴급상담 1661-4977 이고 일반상담의 경우 차량 고장 및 이용관련 문의, 예약관련 문의를 받고 긴급상담의 경우 사고접수 및 처리사항 확인 하실 수 있습니다. 기타 궁굼한점은 1:1문의나 카카오톡 상담을 이용해주세요." /></div>
        <a href="https://m.socar.kr/chat" class="click-btn"></a>
				<p class="centerBtn">
					<a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" /></a>
				</p>
			</div>
			<!-- //callCenter -->

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>