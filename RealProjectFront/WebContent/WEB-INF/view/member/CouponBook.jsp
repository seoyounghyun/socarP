<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
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
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.banner.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/ssun.js?1503639793"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/json3.min.js?1503639793"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/common.js?1503639793"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/day-picker.js?1503639793"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.block.ui.min.js?1503639793"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/couponbook.css?v=20170731' />
<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/jquery.mCustomScrollbar.css' />
<script type="text/javascript" src="//web-assets.socar.kr/template/couponbook/../asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="//web-assets.socar.kr/template/couponbook/../asset/js/jquery.plugin.min.js?v=20150630"></script>
<script type="text/javascript" src="//web-assets.socar.kr/template/couponbook/../asset/js/jquery.countdown.min.js?v=20150630"></script>
<script type="text/javascript">


var eDate = new Date("7/7/2015 11:00:00");
var nDate = new Date();

$(document).ready(function() {

	$('span.timer').each(function() {
		var until_timestamp = $(this).data('open-timestamp');
		if (!until_timestamp) {
			return false;
		}
		var until = new Date(until_timestamp);
		var _this = this;
		$(this).countdown({until : until, layout:'오픈까지 <b>{dn}일 {hnn}시간{mnn}분</b> 남음', compact:true, onExpiry:function(){
			//console.log($(_this).parents('div.flag3').remove());
			document.location.reload();
		}});
	});
});


$(function() {
	$(".btn_moreview").click(function(){
		var moreLayer = $(this).parent().next().find(".more_layer");
		moreLayer.show()
		var $couponInfo = moreLayer.children('.coupon-info');
		if(!$couponInfo.data('bind-scroll'))
		{
			$couponInfo.mCustomScrollbar({
				scrollButtons:{
					enable: true
				}
			});
			$couponInfo.data('bind-scroll', true);
		}
		return false;
	});

	$(".more_layer .close").click(function(){
		$(this).parent().hide();
		return false;
	});
	$("#mycoupon").click(function() {
	
		var url = 'https://www.socar.kr/mypage/coupon';
	
	
		showLoginLayer(true, url);
	
		return false;
	});

	$(".downbtn").click(function() {
	
		showLoginLayer(true, 'https://www.socar.kr/couponbook');
	
		return false;
	});

});
</script>
<style>
.mwLayer .buycoupon {margin:-100px 0 0 -148px;}
.mwLayer .buy_coupon {width:296px;padding-top:41px;}
.mwLayer .buy_coupon .tit {text-align:center;}
.mwLayer .buy_coupon .txt {padding:17px 0 14px;font-size:12px;line-height:18px;color:#666;text-align:center;}
.mwLayer .buy_coupon .link {padding:0 0 24px;font-size:12px;line-height:18px;color:#666;text-align:center;}
.mwLayer .buy_coupon .link a {color:#00b7ff;text-decoration:underline;}
.mwLayer .buy_coupon .centerBtn {border-top:1px solid #ededed;background-color:#fafafa;}
.mwLayer .buy_coupon .centerBtn .close {position:relative;top:0;right:0;width:auto;height:auto;padding:9px 0 12px;background:none;text-indent:0;}
.no-content {margin: 22px 0; line-height: 80px; font-size: 18px; text-align: center; border: 1px solid #dfdfdf; background: #f4f5f6; color: #a9adb1;}
.list_couponbook .close .box_bottom .btn a {color: #fff}
.thumb img { height: 104px; width: 104px; }
</style>
</head>
<body id="couponbook">
<div id="wrap">


		<!-- 타일즈로 변경할 부분 -->
	<jsp:include page="/template/Header.jsp" />


	<div id="container">
		<div id="content">
			
			<div class="couponbook">
				<h2><img src='//web-assets.socar.kr/template/asset/images/couponbook/title_couponbook.png' alt="쏘카 쿠폰북" style="width: 330px; margin-bottom: 33px" /></h2>
				<div class="couponbook_cont">
					
					<a href="http://goo.gl/pXeXHY"><img src='//web-assets.socar.kr/template/asset/images/couponbook/signup.jpg' style="width:100%" /></a>
					
					<!-- 컨텐츠가 있을시 -->
				
				<ul class="list_couponbook">
				
					
					<li>
						<div class="thumb">
							
								<img src='https://d353obgi8xzt9w.cloudfront.net/coupon/2f49317d215cb62690b5dc51503438f9.png' />
							
						</div>
						<div class="cont">
							<div class="tit_cont">
								<p class="tit">1박2일 36,000원~</p>
							</div>
							<img src='//web-assets.socar.kr/template/asset/images/couponbook/dash.png' width='280'/>
							<div class="box_listcont">
								<dl class="list_cont">
									<dt>오픈기간</dt>
									<dd class="period">2017.08.25 18시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">만 26세 이상/10회 이상 전용<br>
30시간 전용, 대여요금 15% 할인 </dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>3,814</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>이용 대상</dt>
	<dd>'만 26세 이상' 또는 '10회 탑승 뱃지' 보유 회원</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>차량 이용 가능 시간</dt>
	<dd>2017년 8월 27일 24시까지</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd>
최소 30시간~최대 47시간 예약 시 사용 가능
</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>존 제한</dt>
	<dd>제주공항 쏘카존 제외</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>차종제한</dt>
	<dd>모닝/스파크/레이/엑센트/프라이드/아반떼/K3/K5/LF쏘나타/SM5/말리부/그랜저/올란도/투싼/티볼리/트랙스/스포티지 전용</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>기타</dt>
	<dd>쿠폰 사용 시 최초 대여요금에서 최대 15% 할인 혜택이 제공됩니다.<br><br>

36,000원은 최저가 기준에서의 쿠폰 할인 후 대여요금이며, 실제 예약 시 지역/시간대/차종 별 할인율에 따라 다를 수 있습니다.<br><br>

이 쿠폰은 예고없이 종료될 수 있습니다</dd>
</dl>

												
											</div>
											<a href="javascript:return false;" class="close">닫기</a>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="box_bottom">
							
							
								
									
								
							
							<div class="btn downbtn on" policy_id="3127"  active_limit="999">
							
								
									<a href="#">쿠폰받기</a>
								
							
							</div>
						</div>
					</li>
				
					
					<li>
						<div class="thumb">
							
								<img src='https://d353obgi8xzt9w.cloudfront.net/coupon/d477e65f8e594204aa668ab30361ca5d.png' />
							
						</div>
						<div class="cont">
							<div class="tit_cont">
								<p class="tit">2박3일 63,000원~</p>
							</div>
							<img src='//web-assets.socar.kr/template/asset/images/couponbook/dash.png' width='280'/>
							<div class="box_listcont">
								<dl class="list_cont">
									<dt>오픈기간</dt>
									<dd class="period">2017.08.25 18시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">만 26세 이상/10회 이상 전용<br>
54시간 전용, 대여요금 13% 할인</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>3,268</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>이용 대상</dt>
	<dd>'만 26세 이상' 또는 '10회 탑승 뱃지' 보유 회원</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>차량 이용 가능 시간</dt>
	<dd>2017년 8월 27일 24시까지</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd>
최소 54시간~최대 71시간 예약 시 사용 가능
</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>존 제한</dt>
	<dd>제주공항 쏘카존 제외</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>차종제한</dt>
	<dd>모닝/스파크/레이/엑센트/프라이드/아반떼/K3/K5/LF쏘나타/SM5/말리부/그랜저/올란도/투싼/티볼리/트랙스/스포티지 전용</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>기타</dt>
	<dd>쿠폰 사용 시 최초 대여요금에서 최대 13% 할인 혜택이 제공됩니다. <br><br>

63,000원은 최저가 기준에서의 쿠폰 할인 후 대여요금이며, 실제 예약 시 지역/시간대/차종 별 할인율에 따라 다를 수 있습니다.<br><br>


이 쿠폰은 예고없이 종료될 수 있습니다</dd>
</dl>

												
											</div>
											<a href="javascript:return false;" class="close">닫기</a>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="box_bottom">
							
							
								
									
								
							
							<div class="btn downbtn on" policy_id="3128"  active_limit="999">
							
								
									<a href="#">쿠폰받기</a>
								
							
							</div>
						</div>
					</li>
				
					
					<li>
						<div class="thumb">
							
								<img src='https://d353obgi8xzt9w.cloudfront.net/coupon/ca9fcd73eabd7c17b28dba593def2a82.png' />
							
						</div>
						<div class="cont">
							<div class="tit_cont">
								<p class="tit">5천원 할인</p>
							</div>
							<img src='//web-assets.socar.kr/template/asset/images/couponbook/dash.png' width='280'/>
							<div class="box_listcont">
								<dl class="list_cont">
									<dt>오픈기간</dt>
									<dd class="period">2017.09.29 19시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">최소 2시간 예약 전용<br>
신규존 전용</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>1,542</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd>최소 2시간 예약 시 사용 가능<br>
주중 전용 (일 19:00~금 19:00)
</dd>
</dl>

<dl style="margin-bottom: 5px;">
	<dt>존 제한</dt>
<dd>신규존(N) 예약 시 사용 가능<br>
제주공항 쏘카존 제외</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>기타</dt>
	<dd>이 쿠폰은 예고없이 종료될 수 있습니다</dd>
</dl>


												
											</div>
											<a href="javascript:return false;" class="close">닫기</a>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="box_bottom">
							
							
								
									
								
							
							<div class="btn downbtn on" policy_id="2744"  active_limit="999">
							
								
									<a href="#">쿠폰받기</a>
								
							
							</div>
						</div>
					</li>
				
					
					<li>
						<div class="thumb">
							
								<img src='//web-assets.socar.kr/template/asset/images/couponbook/coupon_close.png' />
							
						</div>
						<div class="cont">
							<div class="tit_cont">
								<p class="tit">5시간 9,900원</p>
							</div>
							<img src='//web-assets.socar.kr/template/asset/images/couponbook/dash.png' width='280'/>
							<div class="box_listcont">
								<dl class="list_cont">
									<dt>오픈기간</dt>
									<dd class="period">2017.09.29 12시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">탑승 당일 예약 전용<br>
5시간 예약 전용</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>0</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>차량 이용 가능 시간</dt>
	<dd>주중 8:00~당일 17:00</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd>주중 전용 (월 8:00~금 17:00)<br>
탑승 당일만 예약 가능<br>
5시간 예약 시 사용 가능
</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>존 제한</dt>
	<dd>제주공항 쏘카존 제외</dd>
</dl>




<dl style="margin-bottom: 5px;">
	<dt>차종제한</dt>
	<dd>모닝/스파크/레이/프라이드/엑센트/아반떼/K3/K5/LF쏘나타/SM5/말리부/올란도/티볼리/트랙스/스포티지/QM3/투싼 전용</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>기타</dt>
	<dd>이 쿠폰은 예고없이 종료될 수 있습니다</dd>
</dl>

												
											</div>
											<a href="javascript:return false;" class="close">닫기</a>
										</div>
									</dd>
								</dl>
							</div>
						</div>
						<div class="box_bottom">
							
							
								
									
								
							
							<div class="btn downbtn off soldout" policy_id="2785"  active_limit="999">
							
								
									<a href="#" class="close">00시-12시 주중 오픈</a>
								
							
							</div>
						</div>
					</li>
				
					
						<li class="wait">쿠폰을 기다려주세요</li>
					
					
						<li class="wait">쿠폰을 기다려주세요</li>
					
				</ul>
				
					<img src='//web-assets.socar.kr/template/asset/images/couponbook/freecoupon.jpg' style="width: 100%; cursor: pointer; margin-bottom: 64px;" onclick="quick_invite();"/>
				</div>
				<img src='//web-assets.socar.kr/template/asset/images/couponbook/title_coupon_app.png' style="width: 263px" alt="앱에서 쿠폰사용하기" />
				<div class="descript_wrapper">
					<div class="img_wrapper mobile">
						<img src='//web-assets.socar.kr/template/asset/images/couponbook/coupon_mobile1.png' style="width: 100%" />
					</div>
					<div class="img_wrapper mobile">
						<img src='//web-assets.socar.kr/template/asset/images/couponbook/coupon_mobile2.png' style="width: 100%" />
					</div>
				</div>
				<img src='//web-assets.socar.kr/template/asset/images/couponbook/title_coupon_web.png' style="width: 350px" alt="홈페이지에서 쿠폰사용하기" /><br/>
				<div class="descript_wrapper">
					<div class="img_wrapper web">
						<img src='//web-assets.socar.kr/template/asset/images/couponbook/coupon_web1.png' style="width: 100%" />
						<a href="#" id="mycoupon" class="btn_01">내 쿠폰 확인하기</a>
					</div>
					<div class="img_wrapper web">
						<img src='//web-assets.socar.kr/template/asset/images/couponbook/coupon_web2.png' style="width: 100%;" />
						<a href="https://www.socar.kr/reserve" class="btn_02">쏘카 예약 바로가기</a>
					</div>
				</div>
				<img src='//web-assets.socar.kr/template/asset/images/couponbook/title_use_notice.png' style="width: 274px" alt="쿠폰 사용시 유의사항"/>
				<div class="descript_wrapper">
					<ul class="notice">
						<li>• 쿠폰은 <em>최초 대여요금에만 적용</em>됩니다. (보험료/주행요금/연장 대여요금에 적용 불가)</li>
						<li>• 쿠폰은 예약 1건당 1개만 사용할 수 있으며 분할 적용 및 중복 적용은 불가합니다.</li>
						<li>• 편도 예약시 편도 전용 쿠폰만 사용 가능하며, 편도요금에 대해서 할인이 제공됩니다.</li>
						<li>• 편도 예약시 대여료는 할인이 불가합니다.</li>
						<li>• 예약 완료 건에 대한 쿠폰 적용은 불가합니다.</li>
						<li>• 예약 취소 시, 쿠폰은 유효기간이 남아있는 경우에만 재발급 됩니다.</li>
						<li>• 주중전용 쿠폰은 주말 및 공휴일 사용이 불가합니다.</li>
						<li>• [주말 기준] 금요일 19:00 ~ 일요일 19:00     [공휴일 기준] 해당일 00:00 ~ 24:00</li>
						<li>• 쿠폰 유효기간은 쿠폰 적용 가능한 기간입니다. (예 : 유효기간이 10월1일~10월31일인 경우: 10월 28일에 11월 10일 운행 건에 대해 예약 가능)</li>
						<li>• 쿠폰은 대여료 할인 혜택만을 제공하며, 주행요금/하이패스 비용/취소 수수료는 별도로 과금됩니다.</li>
					</ul>
				</div>
			</div>
		</div>
		
<style type="text/css">

/* aside */
div.aside{position:fixed; top:111px; right:0; width:51px; height:150px; border-bottom:1px solid #dadada; z-index:10000;} /*height:225px*/
div.aside ul a{display:block; width:51px; height:73px; overflow:hidden; text-indent:-9999em; background:url('//web-assets.socar.kr/template/asset/images/common/quick_side_menu_141111.gif') no-repeat;border-bottom:1px dotted #BBB;border-left:1px solid #BBB; }
div.aside a.quick1{background-position:-1px -76px;}
div.aside a.quick2{background-position:-1px -151px;}
div.aside a.quick3{background-position:-1px -226px;} 
div.aside a.quick4{background-position:-1px -1px;} 
div.aside a.quick5{background-position:-1px -301px;} 
div.aside a.quick6{background-position:-1px -301px;} 

div.aside a.quick1:hover{background-position:-60px -76px;}
div.aside a.quick2:hover{background-position:-60px -151px;}
div.aside a.quick3:hover{background-position:-60px -226px;} 
div.aside a.quick4:hover{background-position:-60px -1px;} 
div.aside a.quick5:hover{background-position:-60px -301px;}
div.aside a.quick6:hover{background-position:-60px -301px;}

div.aside ul :first-child a{border-top:1px solid #BBB;}  
div.aside ul :last-child a{border-bottom:1px solid #BBB;}  
</style>

	<!-- 타일즈로 변경할 부분 -->
	<jsp:include page="/template/Quick.jsp" />
	
	</div>
		<!-- 타일즈로 변경할 부분 -->
	<jsp:include page="/template/Footer.jsp" />


	<div class="mwLayer">
		<div class="bg"></div>
		<div id="mwCont">
			<!-- login -->
<div class="login mwCont">
	<form name="login" method="post" action="https://www.socar.kr/user/login">
		<input id="redirect" name="redirect" type="hidden" value=""/>
		<input id="redirect_data" name="redirect_data" type="hidden" value=""/>
		<fieldset>
			<dl>
				<dt><img alt="아이디" src='//web-assets.socar.kr/template/asset/images/common/new/id.png' /></dt>
				<dd><input type="text" class="input" name="email" /></dd>
				<dt><img alt="비밀번호" src='//web-assets.socar.kr/template/asset/images/common/new/pw.png' /></dt>
				<dd><input type="password" class="input" name="password" /></dd>
			</dl>
			<input type="image" src='//web-assets.socar.kr/template/asset/images/common/new/btn_login.png' class="submit" id="login_btn" />

		</fieldset>
	</form>

	<ul>
		<li><a title="회원가입" class="lg1" href="https://www.socar.kr/join"><img src='//web-assets.socar.kr/template/asset/images/common/new/join.png' alt="회원가입" /></a></li>
		<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img src='//web-assets.socar.kr/template/asset/images/common/new/idpw.png' alt="아이디·비밀번호 찾기" /></a></li>
	</ul>

	<!-- SNS 로그인 -->
	<div class="box_sns">
		<a href="#" id="fb_login" class="left"><img src='//web-assets.socar.kr/template/asset/images/common/new/fb3_n.png' alt="페이스북" /></a>
		<a href="#" id="naver_login" class="center"><img src='//web-assets.socar.kr/template/asset/images/common/new/nv3_n.png' alt="네이버" /></a>
		<a href="#" id="kakao_login" class="right"><img src='//web-assets.socar.kr/template/asset/images/common/new/cco3.png' alt="카카오톡" /></a>
	</div>
</div>
<!-- //login -->

<!-- finding id -->
<div class="findingId finding mwCont">
	<ul>
		<li><a href="#" class="lg1" title="아이디 찾기">아이디 찾기</a></li>
		<li><a href="#" class="lg2" title="비밀번호 찾기">비밀번호 찾기</a></li>
	</ul>

	<form name="findingId" method="post" action="">
		<fieldset>
			<dl>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_email_name" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif' alt="휴대폰" /></dt>
				<dd>
					<select id="find_email_num1" style="width:51px;">
						<option selected="selected">010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select> -
					<input id="find_email_num2" type="text" class="input" style="padding:0; width:41px; text-align:center;" /> -
					<input id="find_email_num3" type="text" class="input" style="padding:0; width:41px; text-align:center;" />
				</dd>
			</dl>
			<input id="btn_find_email" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
		</fieldset>
	</form>
</div>
<!-- //finding id -->

<!-- finding pw -->
<div class="findingPw finding mwCont">
	<ul>
		<li><a href="#" class="lg1" title="아이디 찾기">아이디 찾기</a></li>
		<li><a href="#" class="lg2" title="비밀번호 찾기">비밀번호 찾기</a></li>
	</ul>

	<form name="findingPw" method="post" action="">
		<fieldset>
			<dl>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt2.gif' alt="아이디 (이메일)" /></dt>
				<dd><input id="find_pw_email" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_pw_name" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif' alt="휴대폰" /></dt>
				<dd>
					<select id="find_pw_num1" style="width:51px;">
					<option selected="selected">010</option>
					<option>011</option>
					<option>016</option>
					<option>017</option>
					<option>018</option>
					<option>019</option>
					</select> -
					<input id="find_pw_num2" type="text" class="input" style="padding:0; width:41px; text-align:center;" /> -
					<input id="find_pw_num3" type="text" class="input" style="padding:0; width:41px; text-align:center;" />
				</dd>
			</dl>
			<input id="btn_find_pw" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
		</fieldset>
	</form>
</div>
<!-- //finding pw -->

            <!-- 주행요금 계산기 -->
            <div class="oilL mwCont">
                <h4><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt1_n.gif' alt="주행요금 계산기" /></h4>
                <form name="oil" method="post" action="">
                    <fieldset>
                        <div class="oilForm">
                            <dl>
                            <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt2.gif' alt="차종" /></dt>
                            <dd>
                            	<select id="oil_carlist" class='oilSelect' style="width:165px;height:28px;font-size: 12px;border-color: #c6cace;">
                            	<option selected='selected' value="">차종 선택</option>
								</select>
                            </dd>
                            <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt3.gif' alt="거리" /></dt>
                            <dd>
                                <input type="text" id="oilDistance" class="input" />
                            </dd>
                            </dl>
                            <input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_calculate.gif' class="submit" alt="계산" />
                        </div>
                        <p class="oilTxt">
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt4.gif' alt="차종과 거리를 선택해주세요" />
                        </p>
                        <p class="oilResult">
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt15_n.gif' alt="예상 주행요금은" />
                            <span>14,500</span>
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt16.gif' alt="원 입니다." />
                        </p>
                    </fieldset>
                </form>

                <p class="txt">
                    <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt6_n.gif' alt="주행요금은 차량 이용 후 실제 이동거리에 따라 부과되므로, 예상 주행요금과 차이가 있을 수 있습니다." />
                </p>

                <div class="noti">
                    <h5><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt7.gif' alt="계산기이용하기" /></h5>
                    <ol>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt8.gif' alt="1. 지도서비스에서 출발, 도착지를 설정후 자동차 길찾기를 하세요." /></li>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt9.gif' alt="2. 길찾기 결과의 총거리를 확인하세요." /></li>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt10_n.gif' alt="3. 차종과 총거리를 입력하고 주행요금을 미리 예상해보세요." /></li>
                    </ol>

                    <dl>
                    <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt11.gif' alt="지도서비스" /></dt>
                    <dd><a href="http://map.daum.net/?target=car" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt12.gif' alt="다음" /></a></dd>
                    <dd><a href="http://map.naver.com/index.nhn?menu=route" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt13.gif' alt="네이버" /></a></dd>
                    </dl>
                </div>
            </div>
            <!-- //주행요금 계산기 -->
			

			<div id="askzone_div" class="requestL mwCont">
				<h4 style="height:29px;margin-left:0;"><img src='//web-assets.socar.kr/template/asset/images/common/request_txt3.gif' alt="우리동네 쏘카존 신청하기!!" /></h4>
				<p class="txt" style="height:50px;margin-left:0;">
					<img src='//web-assets.socar.kr/template/asset/images/common/request_txt2.gif' alt="여러분의 의견을 듣고 함께하는 쏘카! 신청서를 작성해주시면 쏘카존을 만들때 참고하겠습니다." />
					<span style="padding-left:33px;">
					
					</span>
				</p>

				<form name="request" method="post" action="">
					<fieldset>
						<div class="requestForm" style="padding-bottom:15px;">
							
							<input type="text" id="search_ask_address" name="search_ask_address" data-in="false" class="input" style="width:420px;height:30px;padding-left:10px;color:#999;" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" onclick="alert('로그인 후 작성이 가능합니다.');return false;" />
							<input type="hidden" id="search_lat" value="0" />
							<input type="hidden" id="search_lng" value="0" />
							
							<div class="wrap_loSoting" style="display:none;" id="addr_layer">
								<ul class="result"></ul>
							</div>
							<div class="wrap_loSoting" style="display:none;" id="search_none_addr_layer">
								<ul>
									<li><a href="#">검색된 결과가 없습니다.</a></li>
								</ul>
							</div>
							<textarea id="layer_askzone_text" cols="" rows="" class="textarea" data-in="false" style="width:420px;height:64px;margin-top:10px;color:#999;" onclick="alert('로그인 후 작성이 가능합니다.');return false;">자세한 내용을 적어주세요. (선택사항)</textarea>
							<div style="width:432px;padding-top:9px;margin-top:12px;border-top:1px solid #eaeaea;text-align:center;">
								<input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_socarzone_submit.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" alt="신청하기">
							</div>
							
						</div>
					</fieldset>
				</form>
				<div class="box_titsoting">
					<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/common/txt_socarzone.gif' alt="쏘카존 신청현황" /></div>
					<div class="soting">
						
						<a href="#" id="search_all">전체</a>
						<span class="txt_bar">|</span>
						<a href="#" id="search_region">지역별 찾기 <span style="font-size:11px;font-family:arial" id="search_arrow">▼</span></a>
					</div>
					<div class="lay_location" id="search_region_layer" style="display:none;">
						<span class="lay_tit">다른지역 찾기</span>
						<input type="text" id="search_address" name="search_address" data-in="false" class="input" style="width:263px;height:26px;padding-left:10px;border-right:0 none;color:#999" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" />
						<a href="#" id="search_askzone_submit"><img src='//web-assets.socar.kr/template/asset/images/common/btn_search.gif' /></a>
					</div>
					<div class="wrap_loSoting" id="addr_search_layer" style="display:none;">
						<ul class="result"></ul>
					</div>
					<div class="wrap_loSoting" style="display:none;" id="search_none_addr_search_layer">
						<ul>
							<li><a href="#">검색된 결과가 없습니다.</a></li>
						</ul>
					</div>
				</div>
				<div id="requestList_wrap" style="margin-top:14px; width:466px; height:295px; border:1px solid #d3d3d3; overflow-y:scroll;overflow-x:hidden;">
					<div id="requestList">
						<div id="askzone_wrap" class="wrap">
						</div>
					</div>
					<input type="hidden" name="last_id" id="last_id" value="" />
				</div>
				<p id="btn_askzone_close" class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" title="닫기"></a></p>
			</div>
			<!-- 친구추천 -->
			<div class="inviteL mwCont">
				<div class="inbox">
					<h4><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt1.gif' alt="친구야! 쏘카같이타자!" /></h4>
					<p class="txt">
						<img src='//web-assets.socar.kr/template/asset/images/common/invite_txt2_20151015.png' alt="친구, 지인들에게 카셰어링 쏘카를 추천하시고, 추천 받은 분이 쏘카에 가입하면, 초대한 사람에게 1만원+1만원 무료 쿠폰을 드립니다." />
					</p>
					<ol>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt3_20151015.png' alt="Step1 함께 하는 마음 담아 쏘카 초대 메일 발송" /></li>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt4.gif' alt="Step2 친구가 받은 메일의 링크를 통해 회원가입하기" /></li>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt5_20151015.png' alt="Step3 친구가 SO회원 가입 완료하면 1만원+1만원 쿠폰 자동 발급" /></li>
					</ol>
					<form name="invite" method="post" action="">
						<fieldset>
							<div class="inviteForm">
								<dl>
								<dt><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt6.gif' alt="받는 사람" /></dt>
								<dd>
									<label for="inviteMail" class="i_label">여러명인 경우 쉼표(,)로 구분해주세요.</label>
									<input type="text" id="inviteMail" class="input i_text" />
								</dd>
								</dl>
								<p class="tip1">최대 5개의 메일주소 입력이 가능</p>
								<dl>
								<dt><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt7.gif' alt="초대 메세지" /></dt>
								<dd>
									<label for="inviteCont" class="i_label">메세지를 입력해주세요.</label>
									<textarea id="inviteCont" class="textarea i_text" cols="" rows=""></textarea>
								</dd>
								</dl>
								<!-- <p class="tip2"><em>1</em> / 100</p> -->
							</div>
							<p class="centerBtn">
								<input id="inviteSubmit" type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_send.gif' alt="발송하기" />
							</p>
						</fieldset>
					</form>
				</div>
				<div class="info">
					<h5><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt8.gif' alt="알려드립니다." /></h5>
					<ul>
						<li>초대받은 친구가 결제카드 등록 및 면허승인을 완료하면, 두분 모두에게 친구초대 쿠폰을 드려요.</li>
					</ul>
				</div>
			</div>
			<!-- //친구추천 -->


		<div id="askcar_div" class="car_requestL mwCont" style="display: block;">
			<h4 style="height:57px;padding-bottom:40px"><img src='//web-assets.socar.kr/template/asset/images/garage/pop_tit.jpg' alt="쏘카로 원하는 차종 신청하기 !!" title="쏘카로 원하는 차종 신청하기 !!"></h4>
			<form name="request" method="post" action="">
				<fieldset>
					<div class="requestForm">
						
						<textarea id="layer_askcar_text" cols="" rows="" class="textarea" onclick="alert('로그인 후 작성이 가능합니다.');return false;"></textarea>
						<input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_request.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" class="submit" alt="신청">
						
					</div>
				</fieldset>
			</form>
			<p id="btn_askcar_close" class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" title="닫기"></a></p>
		</div>


			<div class="socarcardLayer mwCont">
				<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/mypage/socarcardLayer_tit.gif' alt="쏘카카드 발급 신청하기" /></div>
				<p class="txt">쏘카카드 발급 신청과 동시에 1,500원이 결제됩니다.</p>
				<p class="more">※ 기본정보에서 우편 수취가 가능한 주소인지 확인해주세요.</p>
				<div class="centerBtn">
					<a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_confirm.gif' id="socarcard_request" alt="확인" /></a>
					<a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_cancel.gif' id="socarcard_request_cancel" alt="취소" /></a>
				</div>
				<div id="member_card_regist_indicator" style="display:none;
					background:url('//web-assets.socar.kr/template/asset/images/common/loading.gif') no-repeat 50% 50%;
					background-size:auto 32px;
					position:absolute;
					top:0;bottom:0;left:0;right:0;
					margin-top:auto;
					margin-bottom:auto;
					margin-left:auto;
					margin-right:auto;
					width:100%;
					height:100%;
					background-color:#fff;
					opacity:.7;
					-moz-opacity:.7;
					filter:alpha(opacity=70);
					z-index: 100000;">
				</div>
			</div>
<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>

<script type="text/javascript">


var $base_url = 'https://www.socar.kr/';


var sns_proc = null;

$(function(){
	$('.lg1').click(function() {
		var cookie = get_cookie('approach_from_nanumcar');
		if (cookie === 'true') {
			set_cookie('approach_from_nanumcar', null);
			location.href = "http://www.seoulnanumcar.com/member/registForm";
			return false;
		}

		location.assign('/join');
	});

	switch(window.location.hash) {
	case '#quick1':
		$(".aside .quick1").click();
		break;
	case '#quick2':
		$(".aside .quick2").click();
		break;
	case '#quick3':
		$(".aside .quick3").click();
		break;
	case '#quick4':
		$(".aside .quick4").click();
		break;
	case '#quick6':
		$(".aside .quick6").click();
		break;
	default:
		break;
	}



	//SNS 로그인 by tary 2014-02-05
	var options = {
		auth_token : '',
		currentURL : (document.URL.split('?')[0]).split('#')[0],
		fb_init : true,
		naver_init : true,
		kakao_init : true,
		sns_logout_url	: "https://api.socar.kr/user/sns_connect_close",
		fb_request_uri	: "https://api.socar.kr/facebook/get_oauth_uri",
		fb_oauth_uri	: "https://api.socar.kr/facebook/get_access_token",
		naver_request_uri: "https://api.socar.kr/naver/get_request_token",
		naver_oauth_uri	: "https://api.socar.kr/naver/get_access_token",
		kakao_request_uri	: "https://api.socar.kr/kakao/get_request_token",
		kakao_oauth_uri	: "https://api.socar.kr/kakao/get_access_token",
	
		conType : 'login',
		handler : {
			fb_login_hdlr : SNSlogInHdlr,
			fb_logout_hdlr : SNSlogOutHdlr,
			naver_login_hdlr : SNSlogInHdlr,
			naver_logout_hdlr : SNSlogOutHdlr,
			kakao_login_hdlr : SNSlogInHdlr,
			kakao_logout_hdlr : SNSlogOutHdlr
		}
	
	};

	sns_proc = $().snsInterlock(options);

	$("#fb_login").unbind("click");
	$("#naver_login").unbind("click");
	$("#kakao_login").unbind("click");

	$("#fb_login, #naver_login, #kakao_login").bind("click", function() {
		var id = $(this).attr("id");
		var redirect = $('#redirect').val();
		var redirect_data	= $('#redirect_data').val();

		set_cookie('tmp_login_redirect', redirect);
		set_cookie('tmp_login_redirect_data', redirect_data);

		if(id == 'fb_login') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_login'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}

		return false;
	});

	$("#fb_close").unbind("click");
	$("#naver_close").unbind("click");
	$("#kakao_close").unbind("click");

	$("#fb_close").bind("click", sns_proc.fb_logout);
	$("#naver_close").bind("click",sns_proc.naver_logout);
	$("#kakao_close").bind("click",sns_proc.kakao_logout);

	$("#fb_join").unbind("click");
	$("#naver_join").unbind("click");
	$("#kakao_join").unbind("click");

	$("#fb_join, #naver_join, #kakao_join").bind("click", function() {
		set_cookie('tmp_ref_type','join');

		var id = $(this).attr("id");

		if(id == 'fb_join') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_join'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}
		return false;
	});

	$("#email_join").unbind("click");
	$("#email_join").bind("click", function() {
		var email = $("#join_input_email").val();

		if($.trim(email) == '') {
			alert('가입하실 이메일을 입력해주세요');
			return false;
		}

		if(!is_email(email)){
			alert('이메일 형식이 잘못되었습니다. 다시 입력해주세요.');
			return false;
		}

		var invite = '';
	//친구추천 URL
	

		//제휴코드를 직접 입력했을 경우
		var tmp_invite = $.cookie('tmp_invite');
		if(tmp_invite != null && tmp_invite != '') {
			set_cookie('tmp_invite', null);
			invite = tmp_invite;
		}

		$("#invite").val(invite);
		showJoinLayer(true, email);
		return false;
	});

	bindSNSInterlock();


	var $askTimeSet = false;
	var $askTimerId = null;
	$('#search_ask_address').bind('keyup', function (e) {
		if($askTimeSet == true){
			clearInterval($askTimerId);
		}
		$askTimerId = setInterval(function(){
			$askTimeSet = false;
			clearInterval($askTimerId);
			var input = $('#search_ask_address').val();
			if(input == '' || input.length == 0){
				$("#addr_layer").hide();
				return;
			}

			getAddr('addr_layer','search_ask_address', $askTimeSet, $askTimerId);
		},200 );
		$askTimeSet = true;
	});

	var $sTimeSet = false;
	var $sTimerId = null;
	$('#search_address').bind('keyup', function (e) {
		if($sTimeSet == true){
			clearInterval($sTimerId);
		}
		$sTimerId = setInterval(function(){
			$sTimeSet = false;
			clearInterval($sTimerId);
			var input = $('#search_address').val();
			if(input == '' || input.length == 0){
				$("#addr_search_layer").hide();
				return;
			}

			getAddr('addr_search_layer','search_address', $sTimeSet, $sTimerId);
		},200 );
		$sTimeSet = true;
	});

	var searchStr = '주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교';
	$('#search_ask_address').focusin(function(){
		$(this).css('border-color','#8c8c8c');

		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(searchStr).css("color","#999");
		}

		return false;
	});

	var comment = '자세한 내용을 적어주세요. (선택사항)';
	$('#layer_askzone_text').focusin(function(){
		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(comment).css("color","#999");
		}

		return false;
	});

	var searchListStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동';
	$('#search_address').focusin(function(){
		$(this).css('border-color','#8c8c8c');

		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(searchListStr).css("color","#999");
		}

		return false;
	});

	$('#layer_askzone_submit').bind('click', function(){
		if($('#askzone_div').data('disabled')){
			return false;
		}

		var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
			commendStr = '자세한 내용을 적어주세요. (선택사항)';

		var address = $('#search_ask_address').attr('data-in'),
			contents = $('#layer_askzone_text').attr('data-in');

		if(address == 'false' || $.trim($('#search_ask_address').val()) == addrStr){
			alert('쏘카존으로 신청하실 주소를 입력해주세요.');
			return false;
		}
		else{
			address = $.trim($('#search_ask_address').val());
		}

		var lat = $('#search_lat').val(),
			lng = $('#search_lng').val();

		if(contents == 'false'){
			contents = '';
		}
		else{
			contents = $('#layer_askzone_text').val();
		}

		var writer = null, password=null;


		writer = $.trim($('#layer_askzone_email').val());
		password = $.trim($('#layer_askzone_password').val());

		if(writer == '' || writer == null){
			alert('이메일을 입력해 주세요.');
			return false;
		}

		if(!is_email(writer)){
			alert('이메일 형식이 잘못되었습니다. 다시 입력해주세요.');
			return false;
		}

		if(password == '' || password == null){
			alert('비밀번호를 입력해 주세요. 글 삭제시 필요합니다.');
			return false;
		}

		$.ajax({
			type: 'POST',
			url: "https://api.socar.kr/zone/candidate_ex/create",
			data: {
				auth_token: '',
				address : address,
				lat : lat,
				lng : lng,
				contents: contents,
				writer : writer,
				password : password,
				channel: 'www',
				user_agent : navigator.userAgent
			},
			dataType: 'json',
			beforeSend: function(){
				$('#askzone_div').data('disabled',true);
			},
			success : function(res){
				$('#search_ask_address').val('').focusout();
				$('#layer_askzone_text').val('').focusout();


				$('#layer_askzone_email').val('');
				$('#layer_askzone_password').val('');

				$('#search_region_layer').hide();
				$("#addr_search_layer").hide();
				$('#search_arrow').text('▼');
				$('#search_none_addr_search_layer').hide();
				$('#search_address').val('').focusout();

				alert("쏘카존 신청이 잘 접수되었습니다. 동네에 쏘카존이 열리면 가장 먼저 알려드릴게요!");

				build_list(true);
			},
			error : function(xhr){
				$('#askzone_div').data('disabled',false);
				alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요. [code: ' + xhr.status + ']');
			},
			complete: function(){
				$('#askzone_div').data('disabled',false);
			}
		});

		return false;
	});

	$('#search_askzone_submit').bind('click', function(){
		var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
			address = $('#search_address').attr('data-in');

		if(address == 'false' || $.trim($('#search_address').val()) == addrStr){
			alert('검색하실 주소를 입력해주세요.');
			return false;
		}

		$(document).data('my_request', 0);

		build_list(true);

		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();

		return false;
	});

	$("#search_all").bind('click',function(){
		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();
		$('#search_address').val('').focusout();
		$(document).data('my_request', 0);

		build_list(true);

		return false;
	});

	$('#my_requests').click(function(){
		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();
		$('#search_address').val('').focusout();
		$(document).data('my_request', 1);

		build_list(true);

		return false;
	});

	$('#search_region').bind('click',function(){
		var $search_layer = $('#search_region_layer'),
			$search_arrow = $('#search_arrow'),
			$search_layer_list = $("#addr_search_layer");

		if($search_layer.css('display') == 'none'){
			$search_layer.show();
			$search_arrow.text('▲');
			$('#search_address').val('').focusout();
		}
		else{
			$search_layer.hide();
			$search_layer_list.hide();
			$search_arrow.text('▼');
			$('#search_none_addr_search_layer').hide();
		}

		return false;
	});

	$('body').on('click.agree', 'a[class^=agree_count]', function(e){
		if($(document).data("disabled")) {
			alert('추천 처리중입니다.');
			return false;
		}

		var id = $(e.currentTarget).data("id");

		if($(e.currentTarget).hasClass('hit')){
			alert('이미 추천하셨습니다.');
			return false;
		}

		vote(id,1);

		return false;
	});

	$('body').on('click.dellayer', 'a[class^=deleteBtn]', function(e){
		var id = $(e.currentTarget).data("id"),
			ismine = $(e.currentTarget).data("mine");

		if(ismine){
			removeItem(id);
		}
		else{
			$('#pw_'+id).show();
		}

		return false;
	});

	$('body').on('click.delcancel', 'input[class^=deleteCancel]', function(e){
		var id = $(e.currentTarget).data("id");
		$('#delitem_'+id).val('');
		$('#pw_'+id).hide();

		return false;
	});

	$('body').on('click.delok', 'input[class^=deleteOk]', function(e){
		var id = $(e.currentTarget).data("id"),
			pwd = $('#delitem_' + id).val();

		if($.trim(pwd) == ''){
			alert('비밀번호를 입력해 주세요.');
			return false;
		}

		removeItem(id,pwd);

		return false;
	});

	$('body').on('click.disagree', 'a[class^=disagree_count]', function(e){
		if($(document).data("disabled")) {
			alert('비추천 처리중입니다.');
			return false;
		}

		var id = $(e.currentTarget).data("id");

		if($(e.currentTarget).hasClass('hit')){
			alert('이미 비추천하셨습니다.');
			return false;
		}

		vote(id,0);

		return false;
	});
});

function build_list(init){
	var $list = $('#requestList_wrap');

	if($list.data("disabled-vscroll")) {
		return;
	}

	if(init){
		$("#last_id").val('');
		$(document).data('post-count', 0);
	}

	var last_id = $.trim($("#last_id").val()),
		$askzone_wrap = $('#askzone_wrap'),
		output = new StringBuffer();

	if(last_id == ''){
		$askzone_wrap.empty();
	}

	var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
		address = $('#search_address').attr('data-in');

	if(address == 'false' || $.trim($('#search_address').val()) == addrStr){
		address = '';
	}
	else{
		address = $.trim($('#search_address').val());
	}

//	console.log($('document').data('my_request'));

	$.ajax({
		type: 'GET',
		url : "https://api.socar.kr/zone/candidate_ex",
		crossDomain: true,
		data: {
			auth_token: '',
			last_id: last_id,
			address : address,
			my_request : $(document).data('my_request')
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$list.data("disabled-vscroll",true);
			output.append('<div id="list-indicator" style="width:auto;height:32px;background:url(\'//web-assets.socar.kr/template/asset/images/common/loading.gif\') 50% 50% no-repeat;"></div>');

			$list.append(output.toString());
			output.clear();
		},
		success: function(res){
			if(res.retCode == 1){
				var last_list_id = res.result.last_list_id,
					result = res.result.data;

				if(result.length > 0){
					for(var i in result){
						var replyItem = $("<div />",{
							id : 'unit_' + result[i].id,
							class: 'unit'
						});

						output.append('<h1>' + result[i].writer + '</h1>');

						if(result[i].address !== '' && result[i].address != null){
							output.append('<p class="location">' +  result[i].address + '</p>');
						}

						output.append('<p class="txt">' + result[i].contents + '</p>');
						output.append('<p class="date">' + result[i].created_at + '<a href="#" style="margin-left: 5px;" class="deleteBtn" data-id="' + result[i].id + '" data-mine="' + result[i].is_mine + '">');
						output.append('<img src=\'//web-assets.socar.kr/template/asset/images/common/btn_delete.gif\' alt="삭제"></a></p>');
						output.append('<div class="pw" id="pw_' + result[i].id + '">비밀번호&nbsp;<input type="password" class="input" name="delitem_' + result[i].id + '" id="delitem_' + result[i].id + '" value="" />');
						output.append('<input type="image" class="deleteOk" data-id="' + result[i].id + '" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_delete.gif\' alt="확인">&nbsp;');
						output.append('<input type="image" class="deleteCancel" data-id="' + result[i].id + '" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_cancel.gif\' alt="취소"> </div>');

						var agree_class = "agree_count",
							disagree_class = "disagree_count";

						if(result[i].agree_mine == 1) agree_class += " hit";
						if(result[i].disagree_mine == 1) disagree_class += " hit";

						output.append('<ul><li class="good"><a href="#" class="' + agree_class +'" id="agree_' + result[i].id + '" data-id="' + result[i].id + '">' + result[i].agree_count + '</a></li>');
						output.append('<li class="notgood"><a href="#" class="' + disagree_class + '" id="disagree_' + result[i].id + '" data-id="' + result[i].id + '">' + result[i].disagree_count + '</a></li></ul>');
						output.append('</div>');

						$(replyItem).append(output.toString());
						output.clear();

						$askzone_wrap.append(replyItem);
					}

					$("#last_id").val(last_list_id);

					//현재까지 로딩한 게시물 수 업데이트
					var current_count = $(document).data('post-count');
					$(document).data('post-count', parseInt(current_count) + parseInt(result.length));
				}
				else{
					$askzone_wrap.append('<div class="unit" style="text-align:center;">검색된 결과가 없습니다.</div>');
				}
			}
		},
		error : function(xhr){
			$list.data("disabled-vscroll",false);
			$("#list-indicator").remove();

			alert('일시적인 오류가 발생하였습니다. 잠시 후 다시 시도해 주세요');
		},
		complete: function(){
			$list.data("disabled-vscroll",false);
			$("#list-indicator").remove();
		}
	});

	return;
}

function vote(id, type){
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/zone/candidate_ex/vote",
		crossDomain: true,
		data: {
			auth_token: '',
			candidate_id: id,
			type: type
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$(document).data("disabled",true);
		},
		success: function(json){
			if(json.retCode == 1){
				var res = json.result,
					candidate_id	= res.candidate_id,
					agree_count		= res.agree_count,
					disagree_count	= res.disagree_count;

				if(type == 0){
					$('#disagree_' + candidate_id).addClass('hit').empty().text(disagree_count);
				}
				else{
					$('#agree_' + candidate_id).addClass('hit').empty().text(agree_count);
				}
			}
			else{
				alert(json.retMsg);
			}
		},
		error: function(){
			alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
			$(document).data("disabled",false);
		},
		complete: function(){
			$(document).data("disabled",false);
		}
	});

	return;
}

function removeItem(id,passwd){
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/zone/candidate_ex/remove",
		crossDomain: true,
		data: {
			auth_token: '',
			candidate_id: id,
			password: passwd
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$(document).data("disabled",true);
		},
		success: function(json){
			if(json.retCode == 1){
				$("#unit_" + id).remove();
				alert('정상적으로 삭제되었습니다.');
			}
			else{
				alert(json.retMsg);
			}
		},
		error: function(){
			alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
			$(document).data("disabled",false);
		},
		complete: function(){
			$(document).data("disabled",false);
		}
	});

	return;
}

function initVirtualScroll(){
	var $scrlBody = $('#requestList_wrap');
	$(document).data('post-count', 0);

	$scrlBody.unbind("scroll.data");
	$scrlBody.bind("scroll.data", function(){
		//현재까지 로딩한 게시물이 30개 넘어가면 더 이상 스크롤 안함
		if (parseInt($(document).data('post-count')) >= 30) {
			return false;
		}
		var scrlTop = $scrlBody.scrollTop();
		var offsetBtm = $('#requestList').height() - $scrlBody.height();

		if(scrlTop == offsetBtm){
			build_list();
		}
	});

	return;
}

function SNSlogInHdlr($data) {
/*
	console.log("member_id: " + $data.member_id);
	console.log("email:" + $data.email);
	console.log("provider: " + $data.provider);
	console.log("username: " + $data.username);
	console.log("oauth_uid: " + $data.oauth_uid);
*/
	var member_id	= $data.member_id,
		email		= $data.email,
		provider	= $data.provider,
		username	= $data.username,
		oauth_uid	= $data.oauth_uid;

	//SNS 간편로그인
	if(member_id !== null && member_id != '') {
		var redirect = get_cookie('tmp_login_redirect');
		var redirect_data = get_cookie('tmp_login_redirect_data');

		set_cookie('tmp_login_redirect', null);
		set_cookie('tmp_login_redirect_data', null);

		$.doPost('https://www.socar.kr/user/login', {
			join_type	: 'sns',
			member_id	: member_id,
			email		: $.trim(email),
			oauth_uid	: oauth_uid,
			provider	: provider,
			redirect	: redirect,
			redirect_data	: redirect_data
		});
	}
	else {
		alert('연동된 SNS계정이 없습니다. 신규가입이나 쏘카계정 로그인을 해주세요.');
		document.location.href=document.URL.split('?')[0];
	}

	return;
}

function SNSlogOutHdlr(provider) {
	if(provider == 'facebook') {
		$("#fb_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"fb_interlock\"><span>연결하기</span></a>");
	}
	else if(provider == 'naver'){
		$("#naver_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"naver_interlock\"><span>연결하기</span></a>");
	}
	else{
		$("#kakao_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"kakao_interlock\"><span>연결하기</span></a>");
	}

	bindSNSInterlock();
	return;
}

function bindSNSInterlock() {
	$("#fb_interlock").unbind("click");
	$("#naver_interlock").unbind("click");
	$("#kakao_interlock").unbind("click");

	$("#fb_interlock, #naver_interlock, #kakao_interlock").bind("click", function() {
		set_cookie('tmp_ref_type','interlock');

		var id = $(this).attr("id");

		if(id == 'fb_interlock') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_interlock'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}

		return false;
	});
}

function SNSIntlckHdlr() {
	document.location.href='https://www.socar.kr/mypage';
	return;
}

function SNSJoinHdlr($data) {
	var invite		= '',
		id			= $data.id,
		email		= $data.email,
		provider	= $data.provider,
		username	= $data.username,
		oauth_uid	= $data.oauth_uid;

	if(provider == 'kakao' || provider == 'naver') username = '';



	var tmp_invite = $.cookie('tmp_invite');
	if(tmp_invite != null && tmp_invite != '') {
		set_cookie('tmp_invite', null);
		invite = tmp_invite;
	}

	showJoinLayer(false);

	$("#join_name").val(username);
	$("#join_email").val(email);
	$("#sns_connect_id").val(id);
	$("#oauth_uid").val(oauth_uid);
	$("#provider").val(provider);
	$("#join_type").val('sns');
	$("#invite").val(invite);

	$('#mwCont .close').unbind('click');
	$('#mwCont .close').bind('click',function(){
		document.location.href=document.URL.split('?')[0];
	});

	return;
}

function showJoinLayer(bPassword,email){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('joinSNS_Wrap');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .joinSNS_Info').css('display','block');

	// 인증 후 변경 불가 상태 복구
	$("#join_name, #join_mobile").css('border-color','#cdcdcd');
	$("#join_name, #join_mobile").prop('readonly', false);
	$("#join_name, #join_mobile").css('color','#222');
	$("#btn_confirm_num, .tip_auth").show();

	if(bPassword) {
		$("#join_type").val('email');
		$("#join_email").val(email);
		$("#password_input").css('display','block');
	}

	return;
}

function showLoginLayer(alertMessage, redirect_to, redirect_data) {
	if ( redirect_to ) $('#mwCont .login #redirect').val( redirect_to );
	if ( typeof redirect_data == 'object' ) {
		$('#mwCont .login #redirect_data').val( JSON.stringify(redirect_data) );
	}

	if(alertMessage) alert('로그인이 필요합니다.');
	$('#header .util1').click();
}

var $cur_page = 1;


$('.require_login').click(function(){
	if ( $(this).data('href') ) {
		showLoginLayer(true, $(this).data('href') );
	} else {
		showLoginLayer(true);
	}
});

$(".aside .quick1").click(function(){
	
				showLoginLayer(true,window.location.pathname+window.location.search+'#quick1');
	

	return false;
});

$('#inviteSubmit').bind('click', function () {
	var mail = $('#inviteMail').val();
	var cont = $('#inviteCont').val();

	if(mail == ''){
		alert('이메일 주소를 입력해주세요.');
		return false;
	}
	else if(cont == ''){
		alert('초대 메세지를 입력해주세요.');
		return false;
	}
	$.blockUI.defaults.css = {
		padding:        10,
		margin:         0,
		width:          '30%',
		top:            '40%',
		left:           '35%',
		textAlign:      'center',
		color:          '#000',
		border:         '2px solid #aaa',
		backgroundColor:'#fff',
		cursor:         'wait'
	};
	$.blockUI( { baseZ: 9999999, message: '<h1 style="font-size: 1.5em;"> 잠시만 기다려 주세요.</h1>'} );
	$.ajax({
		url : $base_url + 'user/invite',
		type : "POST",
		data : {
			email: mail,
			content: cont
		},
		dataType: "json",
		success : function(data){
			$.unblockUI();
			if(data.retCode == '1'){
				alert('초대 메일이 전송되었습니다.');
				$('#inviteMail').val('');
				$('#inviteCont').val('');
				$('#inviteMail').focus();
			}
			else{
				alert(data.retMsg + ' 코드 : ' + data.retCode);
			}
		},
		error : function(){
			$.unblockUI();
			alert('err');
		}
	});

	return false;
});

/* quick oil */
$(".aside .quick2").click(function(){
	$.ajax({
		url : $base_url + 'mypage/json_data',
		type : "POST",
		 data: {
			url: 'cs/oil_price'
		 },
		 dataType: 'json',
		 success: function(json){
			if(json.retCode == 1){

				var result = json.result;
				var car_list = $('#oil_carlist');
				car_list.empty();
				car_list.append('<option value="" selected="selected">차종 선택</option>');
				for(var i in result){
					if(result[i].state==1){
					car_list.append(
					'<option value="' + result[i].oil_price  + '">' +
															result[i].car_name  + ' ('  +
															result[i].oil_price + '원/km)' +
					'</option>');
					}
				}
				$('.oilForm .oilCarList a').click(function(){
					var $car = $(this).attr('title');
					var basic_price = $(this).next().text();

					$('#layer_oil_basic').text(basic_price);

					$('#oilCarSelect').attr('value',$car);
					$('#oilCarSelect').prev('.i_label').css('display','none');
					//$('.oilForm .oilCarList').removeClass('show');
					return false;
				});
			}
			else{
				alert(json.retMsg + ' 코드 : ' + json.retCode);
			}
		 },
		 error: function(){
			  alert('err');
		 }
	});

	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('oilLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .oilL').css('display','block');
	return false;
});

// side_menu - askzone
/*
$(".aside .quick3").click(function(){

	if($('#askzone_iframe').length == 0){
		var iframe         = document.createElement('iframe');
		iframe.id          = 'askzone_iframe';
		iframe.src         = '/cs/askzone';
		iframe.scrolling   = 'yes';

		$('#btn_askzone_close').before(iframe);
	}

	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('requestLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .requestL').css('display','block');

	return false;
});
*/

$(".aside .quick3").click(function(){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('requestLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .requestL').css('display','block');

	build_list(true);
	initVirtualScroll();

	return false;
});

/* coupon book */
$(".aside .quick4").click(function(){
	document.location.href="/couponbook";
	return false;
});

$(".aside .quick5").click(function(){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('company_member_invite_layer');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .company_member_invite_layer_content').css('display','block');
});

$(".aside .quick6").click(function(){
	document.location.href="/reserve/so_together";
	return false;
});

/* 쏘카존 신청 레이어 오픈시 초기화할 함수
var init_askzone = function(json) {
	alert(json.retMsg);
	$('#layer_askzone_text').val('');
	$('#layer_askzone_text').focus();
	$('#layer_askzone_name').val('');
	$('#layer_askzone_password').val('');

	var r = json.result;
	var wrap = $('#askzone_iframe').contents().find('.wrap');
	var created = r.created_at.substr(0, 10) + ' ' + r.created_at.substr(11, 8);

	var div = document.createElement('div');
	$(div).addClass('unit');

	$(div).append(
		'<h1>' + r.writer + '</h1>' +
		'<p class="txt">' + r.contents + '</p>' +
		'<p class="date">' + r.created_at +
			'<a href="#" style="margin-left: 5px;" class="deleteBtn">' +
				'<img src=\'//web-assets.socar.kr/template/asset/images/common/btn_delete.gif\' alt="삭제" />' +
			'</a>' +
		'</p>' +

		'<div class="pw">' +
			'비밀번호' +
			'<input type="text" class="input" />' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<input type="image" class="deleteOk" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_delete.gif\' alt="확인" />' +
			'<input type="image" class="deleteCancel" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_cancel.gif\' alt="취소" /> ' +
		'</div>' +

		'<ul>' +
		'<li class="good">' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<a href="#" class="hit agree_count">0</a>' +
		'</li>' +
		'<li class="notgood">' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<a class="disagree_count" href="#">0</a>' +
		'</li>' +
		'</ul>');

	$(wrap).prepend(div);

	$(div).find('.deleteBtn').click(function(){
		$(this).parent().next('.pw').css('display','block');
		return false;
	});
	$(div).find('.deleteCancel').click(function(){
		$(this).parent().css('display','none');
		return false;
	});
	$(div).find('.agree_count').click(function(){
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/vote',
				auth_token: '',
				type: 'agree',
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					var count = $(cur).text();
					count = parseInt(count) + 1;
					$(cur).text(count);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
	$(div).find('.disagree_count').click(function(){
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/vote',
				auth_token: '',
				type: 'disagree',
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					var count = $(cur).text();
					count = parseInt(count) + 1;
					$(cur).text(count);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
	$(div).find('.deleteOk').click(function() {
		var pass = $(this).prev().prev().val();
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/remove',
				auth_token: '',
				password: pass,
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					$(cur).parent().css('display','none');
					$(cur).parent().parent().remove();
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
}

$('#layer_askzone_submit').bind('click', function () {
	var text = $('#layer_askzone_text').val();
	var name = $('#layer_askzone_name').val();
	var pass = $('#layer_askzone_password').val();

	$.ajax({
		url : $base_url + 'mypage/json_data',
		type : "POST",
		data: {
			url: 'zone/candidate/create',
			auth_token: '',
			writer: name,
			contents: text,
			password: pass
		},
		dataType: 'json',
		success: init_askzone,
		error: function(){
			alert('오류가 발생했습니다. 고객센터에 문의해주세요.');
		}
	});

	return false;
});

$("#requestList .deleteBtn").click(function(){
	$(this).parent().next('.pw').css('display','block');
	return false;
});
$("#requestList .deleteCancel").click(function(){
	$(this).parent().css('display','none');
	return false;
});
*/
</script>
<script type="text/javascript" src="//web-assets.socar.kr/template/./asset/js/kakao.min.js?1503639793" charset="utf-8"></script>
<script type="text/javascript" src="//web-assets.socar.kr/template/./asset/js/sns_interlocking.js?1503639793" charset="utf-8"></script>

			<div class="mwCont buy_coupon">
				<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/couponbook/event_140821_layer.png' /></div>
				<p class="txt">누적 구매 : <span id="purchased_coupon_count_layer" style="color:#1ba8ed;"></span>/5개 (최대 5개)<br />구매내역은 <a style="text-decoration:underline;color:#00b7ff;" href="/mypage/coupon">마이페이지>내 쿠폰</a>에서<br />확인 가능합니다.</p>
				<div class="link"><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.socar.kr%2Fcouponbook%2Fso_lucky_deal" target="_blank">페이스북에 공유하기</a></div>
				<p class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" title="닫기"></a></p>
			</div>
			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>

</body>
</html>