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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264899"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264899"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264899"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264899"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264899"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/mypage.css?v=20170731' />
</head>
<body id="mypage" class="payment">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='//web-assets.socar.kr/template/asset/images/mypage/h2.gif' alt="[마이페이지] 내 정보와 예약내역, 쿠폰 등을 확인할 수 있습니다." /></h2>
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
						<h3 class="tit_corp">
							<img src='//web-assets.socar.kr/template/asset/images/mypage/payment_txt1.gif' alt="결제내역" />
							<a href="/mypage/export_xls/payment" target="_blank" class="btn"><img src='//web-assets.socar.kr/template/asset/images/mypage/btn_reser1.gif' alt="결제내역 다운로드" /></a>
						</h3>
						<p class="my-credit">내 크레딧 <em>0</em>원</p>
						<div class="gbx">
							<ul>
							<li>요금 결제 시 보유 크레딧이 있으면 크레딧으로 결제 후 부족 금액만 결제카드로 청구합니다.</li>
							<li>
								결제카드 변경은 내 정보 페이지에서 할 수 있습니다.
								<a href="/mypage"><img src='//web-assets.socar.kr/template/asset/images/mypage/btn_info.gif' alt="내 정보 바로가기" /></a>
							</li>
							</ul>
						</div>
						
							<table cellspacing="0" class="cols">
							<colgroup><col /><col /><col width="270" /><col /><col /><col /></colgroup>
							<thead>
							<tr>
								<th>구분</th>
								<th>결제일</th>
								<th>내역</th>
								<th>결제수단</th>
								<th>금액</th>
								<th>매출전표</th>
							</tr>
							</thead>
							<tbody>
								
									<tr>
										<td>과금</td>
										<td>2016-12-28</td>
										<td class="detail">강남역 11번출구 (2016-12-28 17:00)</td>
										<td class="method">신용카드</td>
										<td class="price">
											<!-- <a>10,230원</a> -->
											<a class="btn_payment_detail" href="#" value='uizyp'>10,230원</a>
											<em style="display:none;">uizyp</em>
										</td>
										<td class="chit">
											
												<a href="https://office.easypay.co.kr/mcht/receipt/CardReceiptAction.do?controlNo=52684216122801802744" onclick="window.open(this.href,'receipt','width=410,height=770, scrollbars=yes'); return false;">출력</a>
											
										</td>
									</tr>
								
									<tr>
										<td>과금</td>
										<td>2016-12-28</td>
										<td class="detail">강남역 11번출구 (2016-12-28 17:00)</td>
										<td class="method">신용카드</td>
										<td class="price">
											<!-- <a>15,530원</a> -->
											<a class="btn_payment_detail" href="#" value='uizyp'>15,530원</a>
											<em style="display:none;">uizyp</em>
										</td>
										<td class="chit">
											
												<a href="https://pg.nicepay.co.kr/issue/CardIssue.jsp?TID=socar0001m01161612281650352288" onclick="window.open(this.href,'receipt','width=410,height=770, scrollbars=yes'); return false;">출력</a>
											
										</td>
									</tr>
								

							<!--<tr>
								<td>차감</td>
								<td>2012.10.25</td>
								<td class="detail">요금결제</td>
								<td class="method">결제카드</td>
								<td class="price">
									<a href="popup_payment_detail.html" onclick="window.open(this.href,'payment','width=380,height=500, scrollbars=yes'); return false;">98,900원</a>
								</td>
								<td class="chit">
									<a href="#">출력</a>
								</td>
							</tr> -->
							</tbody>
							</table>
						
					</div>
					<!-- paginate -->
					<div class="paginate">
						
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


</body>
</html>