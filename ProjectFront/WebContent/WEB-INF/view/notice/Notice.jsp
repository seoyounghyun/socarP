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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264325"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264325"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264325"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264325"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264325"></script>
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
<script type="text/javascript">
$(function(){
	$('#btn_search').bind('click', function () {
		var keyword = $(this).prev().val();
		if(keyword == ''){
			alert('검색어를 입력해주세요.');
			return false;
		}

		$.doGet('https://www.socar.kr/cs/notice_search', {
			keyword: keyword,
			page: 0
		});
		return false;
	});
})
</script>
</head>

<body id="customer" class="notice">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='//web-assets.socar.kr/template/asset/images/customer/h2.gif' alt="고객센터 쏘카에 대한 궁금증 해결을 도와드립니다." /></h2>
			<p class="callCenter"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_callcenter_150225.gif' alt="콜센터 안내" /></p>
			<div class="box lnb">
				<!-- lnb -->
<ul class="lnb">
<li><a href="/notice" title="공지사항" class="lnb1">공지사항</a></li>
<li><a href="/faq" title="자주묻는 질문" class="lnb2">자주묻는 질문</a></li>

	<!--<li><a href="javascript:alert('로그인이 필요합니다.');" title="1:1 문의하기" class="lnb3">1:1 문의하기</a></li>-->
	<li><a href="#" title="1:1 문의하기" class="lnb3 require_login" data-href="/inquiry">1:1 문의하기</a></li>

<li><a href="/voc" title="고객의견 반영절차" class="lnb4">고객의견 반영절차</a></li>
</ul>
<!-- //lnb -->
				<div class="section">
					<h3><img src='//web-assets.socar.kr/template/asset/images/customer/h3_notice.gif' alt="공지사항" /></h3>
					<!-- TO-DO  2013.02.17
						검색 기능 연동
					-->
					<!-- search -->
					<div class="notice-search">
						<form name="search" method="post" action="">
							<fieldset>
								<input type="text" class="input" />
								<input id="btn_search" type="image" src='//web-assets.socar.kr/template/asset/images/customer/btn_notice_search.gif' alt="검색" />
							</fieldset>
						</form>
					</div>
					<!-- //search -->
					
					<!-- list -->
					<table cellspacing="0" summary="공지사항" class="cols">
						<colgroup><col width="65" /><col /><col width="105" /></colgroup>
						<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
						</thead>
						<tbody>
							
								<tr>
									<td>873</td>
									<td class="subj"><a href="/notice/873">[매너평가] GOOD & BAD 매너 쏘친 9월 1주차 현황 공개</a></td>
									<td>2017.09.12</td>
								</tr>
							
								<tr>
									<td>872</td>
									<td class="subj"><a href="/notice/872">[이벤트] 매너쏘카를 부탁해 런칭 기념, #매너쏘카 서약 이벤트(~9/26)</a></td>
									<td>2017.09.11</td>
								</tr>
							
								<tr>
									<td>871</td>
									<td class="subj"><a href="/notice/871">[공지] 세상편한 쏘카부름을 '공짜' 로 이용하는 방법 (9/11~)</a></td>
									<td>2017.09.11</td>
								</tr>
							
								<tr>
									<td>869</td>
									<td class="subj"><a href="/notice/869">[이벤트] 금요일 칼퇴 후 떠나는 여행! 쏘카가 쏜다!(~9/17)</a></td>
									<td>2017.09.06</td>
								</tr>
							
								<tr>
									<td>868</td>
									<td class="subj"><a href="/notice/868">[서비스안내] 쏘카부름 수원, 성남, 고양 지역 오픈</a></td>
									<td>2017.09.06</td>
								</tr>
							
								<tr>
									<td>867</td>
									<td class="subj"><a href="/notice/867">[매너평가] GOOD & BAD 매너 쏘친 8월 5주차 현황 공개</a></td>
									<td>2017.09.05</td>
								</tr>
							
								<tr>
									<td>866</td>
									<td class="subj"><a href="/notice/866">[공지] 부산 편도허브존 안내(롯데백화점 센텀점)</a></td>
									<td>2017.09.01</td>
								</tr>
							
								<tr>
									<td>865</td>
									<td class="subj"><a href="/notice/865">[이벤트] 평일 친구와 아울렛 가면 혜택이 더블!(~9/29)</a></td>
									<td>2017.08.31</td>
								</tr>
							
								<tr>
									<td>864</td>
									<td class="subj"><a href="/notice/864">[이벤트] 8월 쏘스타 선물 <맥북프로 2017> 당첨자 발표!</a></td>
									<td>2017.08.30</td>
								</tr>
							
								<tr>
									<td>863</td>
									<td class="subj"><a href="/notice/863">[이벤트] 9월 쏘스타 선물 <스팅어 80% 할인쿠폰></a></td>
									<td>2017.08.30</td>
								</tr>
							
						</tbody>
						</table>
					
					<!-- //list -->
					<!-- paginate -->
					<div class="paginate">
						&nbsp;<strong>1</strong>&nbsp;<a href="https://www.socar.kr/notice/p/2">2</a>&nbsp;<a href="https://www.socar.kr/notice/p/3">3</a>&nbsp;<a href="https://www.socar.kr/notice/p/4">4</a>&nbsp;<a href="https://www.socar.kr/notice/p/5">5</a>&nbsp;<a href="https://www.socar.kr/notice/p/6">6</a>&nbsp;<a href="https://www.socar.kr/notice/p/7">7</a>&nbsp;<a href="https://www.socar.kr/notice/p/8">8</a>&nbsp;<a href="https://www.socar.kr/notice/p/9">9</a>&nbsp;<a href="https://www.socar.kr/notice/p/10">10</a>&nbsp;<a href="https://www.socar.kr/notice/p/11">11</a>&nbsp;<a href="https://www.socar.kr/notice/p/82">&gt;</a>
					</div>
					<!-- //paginate -->
					<!-- banner -->
<!-- 					<ul class="banner">
					<li class="first"><a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/banner1.gif' alt="" /></a></li>
					<li><a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/banner2.gif' alt="" /></a></li>
					<li><a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/banner1.gif' alt="" /></a></li>
					<li><a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/banner2.gif' alt="" /></a></li>
					</ul> -->
					<!-- //banner -->
				</div>
			</div>
		</div>

<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>

<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505264325" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505264325" charset="utf-8"></script>

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>