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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505267601"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505267601"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505267601"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505267601"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505267601"></script>
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
<script type="text/javascript" src="/template/couponbook/../asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/template/couponbook/../asset/js/jquery.plugin.min.js?v=20150630"></script>
<script type="text/javascript" src="/template/couponbook/../asset/js/jquery.countdown.min.js?v=20150630"></script>
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
	
	
		document.location.href = url;
	
		return false;
	});

	$(".downbtn").click(function() {
	

		if($(this).hasClass('soldout')) {
			alert("쿠폰이 모두 소진되었습니다.");
			return false;
		}

		if($(this).hasClass('off')) {
			alert("조금만 기다려주세요! 오픈시간이 되지 않은 쿠폰입니다.\n기타 궁금하신 사항이 있으시면 고객센터에 문의해 주세요.");
			return false;
		}

		if($(this).hasClass('close')) {
			alert("이미 마감된 쿠폰입니다.");
			return false;
		}

		if($(document).data('disabled')) {
			alert('쿠폰을 다운받는 중입니다.');
			return false;
		}

		var policyId		= $(this).attr("policy_id");
		var owned			= $(this).attr("owned");
		var active_limit	= $(this).attr("active_limit");

		if(Number(owned) >= Number(active_limit)) {
			alert("이미 해당 쿠폰을 받으셨습니다. 마이페이지-내쿠폰에서 확인해주세요.");
			return false;
		}

		$.ajax({
			url: 'https://api.socar.kr/coupon/dn',
			crossDomain: true,
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
				policy_id : policyId
			},
			type: 'POST',
			dataType: 'jsonp',
			beforeSend: function(xhr){
				$(document).data("disabled", true);
			},
			success: function(res) {
				if (res['retCode'] == 1) {
					alert("'" + res['result']['policy_name'] + "' " + res['retMsg']);
					if(window.opener !== null && window.opener !== undefined) {
						if(typeof window.opener.remakeCouponList === 'function') {
							window.opener.remakeCouponList();
						}
					}
					document.location.reload();
				} else {
					alert(res['retMsg']);
				}

				$(document).data("disabled", false);
			},
			error: function(){
				alert('일시적으로 쿠폰 받기에 문제가 발생하였습니다. 다시 시도해주세요. 계속해서 동일한 문제가 발생 시 고객센터로 문의바랍니다. A107');
			}
		});

	
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
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			
			<div class="couponbook">
				<h2><img src='//web-assets.socar.kr/template/asset/images/couponbook/title_couponbook.png' alt="쏘카 쿠폰북" style="width: 330px; margin-bottom: 33px" /></h2>
				<div class="couponbook_cont">
					
					<!-- 컨텐츠가 있을시 -->
				
				<ul class="list_couponbook">
				
					
					<li>
						<div class="thumb">
							
								<img src='https://d353obgi8xzt9w.cloudfront.net/coupon/c62c9b7367307a2c68ce8748dadc4d23.png' />
							
						</div>
						<div class="cont">
							<div class="tit_cont">
								<p class="tit">14시간 13,000원</p>
							</div>
							<img src='//web-assets.socar.kr/template/asset/images/couponbook/dash.png' width='280'/>
							<div class="box_listcont">
								<dl class="list_cont">
									<dt>오픈기간</dt>
									<dd class="period">2017.09.28 19시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">만 30세 이상 전용<br>
주중 19시~09시 예약 전용</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>5,864</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>이용 대상</dt>
	<dd>만 30세 이상 회원(생년월일 경과 기준)</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>차량 이용 가능 시간</dt>
	<dd>주중 19:00~09:00</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd>주중 전용 (일 19:00~금 09:00)<br>
14시간 예약 시 사용 가능
</dd>
</dl>


<dl style="margin-bottom: 5px;">
	<dt>존 제한</dt>
	<dd>제주공항 쏘카존 제외</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>차종제한</dt>
	<dd>모닝/스파크/레이/엑센트/프라이드/아반떼/K3/올란도/투싼/티볼리/트랙스/스포티지/QM3 전용</dd>
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
							
							
								
									
								
							
							<div class="btn downbtn on" policy_id="3314"  active_limit="999">
							
								
									<a href="#">쿠폰받기</a>
								
							
							</div>
						</div>
					</li>
				
					
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
									<dd class="period">2017.09.22 18시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">만 26세 이상/10회 이상 전용<br>
30시간 전용, 대여요금 15% 할인</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>4,998</strong>개 남음
										
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
	<dd>2017년 9월 24일 24시까지</dd>
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
	<dd>모닝/스파크/레이/엑센트/프라이드/아반떼/K3/K5/LF쏘나타/SM5/말리부/그랜저/올란도/투싼/티볼리/트랙스/스포티지/QM3 전용</dd>
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
									<dd class="period">2017.09.22 18시까지</dd>
								</dl>
								<dl class="list_cont">
									<dt>사용조건</dt>
									<dd style="height: 38px;overflow: hidden;">만 26세 이상/10회 이상 전용<br>
54시간 전용, 대여요금 13% 할인</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>2,652</strong>개 남음
										
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
	<dd>2017년 9월 24일 24시까지</dd>
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
	<dd>모닝/스파크/레이/엑센트/프라이드/아반떼/K3/K5/LF쏘나타/SM5/말리부/그랜저/올란도/투싼/티볼리/트랙스/스포티지/QM3 전용</dd>
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
							
								<img src='https://d353obgi8xzt9w.cloudfront.net/coupon/f94015fdfe3fe5956318fd346fc27175.png' />
							
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
									<dd style="height: 38px;overflow: hidden;"><strong style="color:#00d2ff;">미리 예약 가능</strong><br>
주중 8시~17시 내 예약 가능</dd>
								</dl>
								<dl class="list_cont">
									<dt>남은수량</dt>
									<dd class="count">
										
											<strong>1,406</strong>개 남음
										
										<a href="javascript: return false;" class="btn_moreview">상세정보보기 &gt;</a>
									</dd>
									<dd>
										<div class="more_layer">
											<div class="coupon-info" style="height:290px;overflow:auto;">
												
												<dl style="margin-bottom: 5px;">
	<dt>차량 이용 가능 시간</dt>
	<dd>주중 8:00~17:00</dd>
</dl>



<dl style="margin-bottom: 5px;">
	<dt>대여/반납 가능 조건</dt>
	<dd><strong>미리 예약 가능</strong><br>
주중 전용 (월 8:00~금 17:00)<br>
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
							
							
								
									
								
							
							<div class="btn downbtn on" policy_id="2785"  active_limit="999">
							
								
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
										
											<strong>4,193</strong>개 남음
										
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
		
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>

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