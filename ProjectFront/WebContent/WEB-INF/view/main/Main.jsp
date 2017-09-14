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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505123494"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505123494"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505123494"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505123494"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505123494"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<script type="text/javascript" src='//web-assets.socar.kr/template/asset/slick_slider/slick.min.js?v=1'></script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/slick_slider/slick.css' />
<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/slick_slider/slick-theme.css' />
<link rel="stylesheet" href='//web-assets.socar.kr/template/asset/css/font-awesome.min.css' />
<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/main.css?v=20170731' />
<style type="text/css">
.banner01{position:absolute; top:151px; right:10px;}
.banner02{position:absolute; top:230px; right:10px;}
.banner03{position:absolute; top:309px; right:10px;}
.slick-dots{ bottom: 15px; }
.slick-dots li button:before { content:""; }
.slick-dots li button { width: 10px; height: 10px; border-radius: 10px; background: #bec1c4; }
li.slick-active button { background: #e9eaeb; }
.banner-container { display: block; width: 100%; height: 420px; overflow: hidden; position: relative; }
.banner-image { position: absolute; top: -100%; left: -100%; right: -100%; bottom: -100%; margin: auto; min-height: 100%; min-width: 100%; }
.fa, .fa { position: absolute; -webkit-transform: translateY(-50%); -moz-transform: translateY(-50%); -ms-transform: translateY(-50%); transform: translateY(-50%); font-size: 40px; z-index: 1; }
.fa-angle-left { top: 50%; left: 20px; }
.fa-angle-right { top: 50%; right: 20px; }

</style>
<script type="text/javascript">
$(function() {
	
	set_cookie('name', null);
	set_cookie('ssn1', null);
	set_cookie('ssn2', null);

	//document.title = '(주)쏘카 :: 신개념 자동차 공유 서비스';

	$("#visual").jQBanner({nWidth:1004,nHeight:440,nCount:4,isActType:"left",nOrderNo:1,isStartAct:"N",isStartDelay:"N",nDelay:30000000,isBtnType:"li"});

	var i_text = $('.i_label').next('.i_text');
	$('.i_label').css('position','absolute');
	i_text
		.focus(function(){
			$(this).prev('.i_label').css('visibility','hidden');
		})
		.blur(function(){
			if($(this).val() == ''){
				$(this).prev('.i_label').css('visibility','visible');
			} else {
				$(this).prev('.i_label').css('visibility','hidden');
			}
		})
		.change(function(){
			if($(this).val() == ''){
				$(this).prev('.i_label').css('visibility','visible');
			} else {
				$(this).prev('.i_label').css('visibility','hidden');
			}
		})
		.blur();


	$('.notice .tab a').click(function(){
		$('.notice .tab li').removeClass('on');
		$(this).parent().addClass('on');
		$('.notice div').css('display','none');
		if($(this).hasClass('tab1')) $('.notice .notice1').css('display','block');
		else $('.notice .notice2').css('display','block');
		return false;
	});


	function MovieLayerPopup(param,bg,target,btnOpen,btnClose){
		$(btnOpen).click(function(){
			MovieLayerOpen(param,target);
			return false;
		});
	//	$(bg).click(function(){
	//		$(param).fadeOut();
	//	});
		$(btnClose).click(function(){
			$(param).fadeOut();
			$('#movieWrap').html('');
			return false;
		});
	}
	function MovieLayerOpen(param,target){
		$(param).fadeIn();
		var temp = $(target);
		$('#movieWrap').html('<object width="720" height="405"><param name="movie" value="https://www.youtube.com/v/I61a1755u4U?hl=ko_KR&amp;version=3&amp;rel=0&autoplay=1&vq=hd720"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="https://www.youtube.com/v/I61a1755u4U?hl=ko_KR&amp;version=3&amp;rel=0&autoplay=1&vq=hd720" type="application/x-shockwave-flash" width="720" height="405" allowscriptaccess="always" allowfullscreen="true"></embed></object>');
		if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
	//	else temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
	//	else temp.css('left', '0px');
	}
	MovieLayerPopup(".movie_layer",".movie_layer .bg",".movie_layer .movie","#movie_layerOpen","#movie_layerClose");
});
</script>

<script type="text/javascript">
var fb_param = {};
fb_param.pixel_id = '6007683407223';
fb_param.value = '0.00';
(function(){
  var fpw = document.createElement('script');
  fpw.async = true;
  fpw.src = '//connect.facebook.net/en_US/fp.js';
  var ref = document.getElementsByTagName('script')[0];
  ref.parentNode.insertBefore(fpw, ref);
})();
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/offsite_event.php?id=6007683407223&amp;value=0" /></noscript>

<style type="text/css">
#main_banner_n {display:block;position:relative;width:100%;min-width:1004px;height:420px;}
#main_banner_n .img {display:block;width:100%;min-width:1004px;height:420px;}
#main_banner_n .prev {display:block;overflow:hidden;position:absolute;top:140px;left:0;width:82px;height:138px;background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_btn.png') 0 0 no-repeat;text-indent:-9999px;}
#main_banner_n .prev:hover {background-position:-150px 0;}
#main_banner_n .next {display:block;overflow:hidden;position:absolute;top:140px;right:0;width:82px;height:138px;background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_btn.png') 0 -200px no-repeat;text-indent:-9999px;}
#main_banner_n .next:hover {background-position:-150px -200px;}
</style>
</head>

<body id="main">
<div id="wrap">
	
<jsp:include page="/template/Header.jsp"/>
<!-- 2015.05.11 -->

<script type="text/javascript">
$(document).ready(function() {
	$('#main_banner_n > .img').hide();
	$('#main_banner_n > .img').eq(0).show();
	var mainbanTarget = $('#main_banner_n > .img');
	var mainbanIndex = $(mainbanTarget).index();
	$('#main_banner_n > .prev').click(function(){
		var showTarget = $('#main_banner_n > .img:visible');
		var thisIndex = $(showTarget).index();
		$('#main_banner_n > .img').hide();
		if (thisIndex == 0){
			$(mainbanTarget).last().show();
		} else {
			$(showTarget).prev().show();
		}
	});
	$('#main_banner_n > .next').click(function(){
		var showTarget = $('#main_banner_n > .img:visible');
		var thisIndex = $(showTarget).index();
		$('#main_banner_n > .img').hide();
		if (thisIndex == mainbanIndex){
			$(mainbanTarget).first().show();
		} else {
			$(showTarget).next().show();
		}
	});
	timer = setInterval(function() { $('#main_banner_n > .next').click();}, 3000);
	$('#main_banner_n').hover(function() {clearInterval(timer);}, function() {timer = setInterval(function() { $('#main_banner_n > .next').click();}, 3000);})

	$('.tvc-banner').slick({
		arrows: true,
		dots: true,
		nextArrow: '<i class="fa fa-angle-right" aria-hidden="true"></i>',
		prevArrow: '<i class="fa fa-angle-left" aria-hidden="true"></i>',
		speed: 1000,
		autoplay: true,
		autoplaySpeed: 2500,
	});
});

</script>
	<!-- <div id="main_banner_n"> -->
		<!-- <div class="img" style="background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_img_160211.jpg') 50% 0px no-repeat;"></div> -->
		<!-- <div class="img" style="background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_img2.jpg') 50% 0px no-repeat; display:none;"></div>
		<div class="img" style="background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_img3_151214.jpg') 50% 0px no-repeat; display:none;"></div>
		<div class="img" style="background:url('//web-assets.socar.kr/template/asset/images/main/main_banner_new_img4.jpg') 50% 0px no-repeat; display:none;"></div>
		<a href="#" class="prev" id="prev"><span>이미지 좌측 이동</span></a>
		<a href="#" class="next" id="next"><span>이미지 우측 이동</span></a> -->
	<!-- </div> -->
<!--// 2015.05.11 -->
	<div class="tvc-banner">
		<a class="banner-container" href="http://pr.socar.kr/sa06" target="_blank">
			<img src='//web-assets.socar.kr/template/asset/images/main/tvc_banner_1.jpg?v=20170726' class="banner-image" role="presentation" />
		</a>
		<a class="banner-container" href="http://pr.socar.kr/sa06" target="_blank">
			<img src='//web-assets.socar.kr/template/asset/images/main/tvc_banner_2.jpg?v=20170726' class="banner-image" role="presentation" />
		</a>
		<a class="banner-container" href="http://pr.socar.kr/sa06" target="_blank">
			<img src='//web-assets.socar.kr/template/asset/images/main/tvc_banner_3.jpg?v=20170726' class="banner-image" role="presentation" />
		</a>
		<a class="banner-container" href="http://pr.socar.kr/sa06" target="_blank">
			<img src='//web-assets.socar.kr/template/asset/images/main/tvc_banner_4.jpg?v=20170726' class="banner-image" role="presentation" />
		</a>
	</div>
	<div id="container">
		<div id="content">
			<!-- visual -->
			<div id="visual">
				<div class="clsBannerScreen">
					<div class="images" style="display:block"><img src='//web-assets.socar.kr/template/asset/images/main/visual1_170719.png' usemap="#visual3" alt="" /></div>
					<div class="images" style="display:none"><img src='//web-assets.socar.kr/template/asset/images/main/visual2_160322.png' usemap="#visual2" alt="" /></div>
					<div class="images" style="display:none"><img src='//web-assets.socar.kr/template/asset/images/main/visual3_160322.png' usemap="#visual1" alt="" /></div>
					<div class="images" style="display:none"><img src='//web-assets.socar.kr/template/asset/images/main/visual4_160322.png' usemap="#visual4" alt="" /></div>
				</div>

				<map name="visual1" id="visual1">
					<area shape="rect" coords="1,166,144,198" href="/reserve?way=oneway" title="편도 예약하기" />
				</map>
				<map name="visual2" id="visual2">
					<area shape="rect" coords="1,166,144,198" href="/fare" title="쏘카 요금보기" />
				</map>
				<map name="visual3" id="visual3">
					<area shape="rect" coords="1,166,144,198" href="/garage" title="쏘카 차고 구경하기" />
				</map>
				<map name="visual4" id="visual4">
					<area shape="rect" coords="1,166,144,198" href="/reserve#seoul" title="가까운 쏘카존 찾기" />
				</map>

				<ul class="clsBannerButton">
				<li class="on">
					<span class="vis3">SMART SERVICE</span>
				</li>
				<li>
					<span class="vis2">SMART PRICE</span>
				</li>
				<li>
					<span class="vis1">SMART SOCAR</span>
				</li>
				<li>
					<span class="vis4">SMART MEMBERSHIP</span>
				</li>
				</ul>
				<div class="movie_layer">
					<div class="bg"></div>
					<div class="movie" id="movie">
						<div class="close"><img src='//web-assets.socar.kr/template/asset/images/main/movie_close.png' id="movie_layerClose" alt="" /></div>
						<div id="movieWrap"></div>
					</div>
				</div>
			</div>
			<!-- //visual -->

			<div class="loginBox">
				
					<!-- 로그인 전 -->
					<div class="group">
						<p class="txt"><img src='//web-assets.socar.kr/template/asset/images/main/right_login_txt1_three_hours.png' alt="즐거운 드라이브 라이프의 시작 가입하면 첫사용 무료! 타면된다 쏘카!" /></p>
						<p class="btn">
							<a href="<c:url value='/Join/Join.do' />"><img src='//web-assets.socar.kr/template/asset/images/main/btn_join.png' alt="회원 가입하기" /></a>
						</p>
					</div>
					<!-- //로그인 전 -->
				
			</div>


<div id='banner02' class='banner02' style='top:242px'><a href='http://www.socar.kr/garage' target='_self'><img src='https://d353obgi8xzt9w.cloudfront.net/banner/banner_2.png' alt='차종다양화' title='차종다양화' width='226' height='74' /></a></div><div id='banner03' class='banner03' style='top:321px'><a href='https://goo.gl/8w3ExU' target='_blank'><img src='https://d353obgi8xzt9w.cloudfront.net/banner/쏘카채용중_웹배너_226X74.png' alt='쏘카 채용사이트 오픈' title='쏘카 채용사이트 오픈' width='226' height='74' /></a></div>

<!-- 			<div class="co2">
				<h2><img src='//web-assets.socar.kr/template/asset/images/main/right_co2_txt1.gif' alt="쏘카 이용으로 줄인 CO2 량" /></h2>
				<p class="date">12.09.25 기준</p>
				<p class="data">4,984,021 <img src='//web-assets.socar.kr/template/asset/images/main/right_co2_txt2.gif' alt="kg" /></p>
			</div>

			<div class="banner">
				<a href="#"><img src='//web-assets.socar.kr/template/asset/images/main/right_banner.gif' alt="" /></a>
			</div> -->


			<div class="rule">
				<ul class="tab">
				<li class="on"><a href="/guide#socar1" class="tab1">쏘카 이용방법</a></li>
				<li><a href="/guide#socar2" class="tab2">쏘카 이용규칙</a></li>
				</ul>
				<!-- 쏘카 이용방법 -->
				<div class="rule1">
					<ul class="list_rule">
						<li><a href="/guide" class="btn1"></a></li>
						<li><a href="/company" class="btn2"></a></li>
						<li><a href="/couponbook" class="btn3"></a></li>
						<li><a href="/guide#socar5" class="btn4"></a></li>
						<li><a href="http://goo.gl/e9rRxk" target="_blank" class="btn5"></a></li>
					</ul>
				</div>
				<!-- //쏘카 이용방법 -->

				<!-- 쏘카 이용규칙 -->
				<div class="rule2">
					<p class="img">쏘카 이용규칙</p>
					<!-- <a href="#" class="more"><img src='//web-assets.socar.kr/template/asset/images/main/btn_more.png' alt="더보기" /></a> -->
				</div>
				<!-- //쏘카 이용규칙 -->
			</div>
			<div class="notice">
				<ul class="tab">
				<li class="on"><a href="#" class="tab1">공지사항</a></li>
				<li><a href="#" class="tab2">자주묻는 질문</a></li>
				</ul>
				<!-- 공지사항 -->
				<div class="notice1">
					<h2 class="blind">공지사항</h2>
					<ul>
						
							<li>
								<a href=https://www.socar.kr/notice/869>
									[이벤트] 금요일 칼퇴 후 떠나는...
									   <img src='//web-assets.socar.kr/template/asset/images/main/ico_new.png' alt="새글" />		
								</a>
							</li>
						
						
					</ul>
					<a href="<c:url value='/Notice/Notice.do' />" class="more"><img src='//web-assets.socar.kr/template/asset/images/main/btn_more.png' alt="더보기" /></a>
				</div>
				<!-- //공지사항 -->

				<!-- 자주묻는 질문 -->
				<div class="notice2">
					<h2 class="blind">자주묻는 질문</h2>
					<ul>
						
							<li>
								<a href="/faq#faq1">주유는 어떻게 해야 하나요? 비용은...</a>
							</li>
						
							
						
					</ul>
					<a href="/faq" class="more"><img src='//web-assets.socar.kr/template/asset/images/main/btn_more.png' alt="더보기" /></a>
				</div>
				<!-- //자주묻는 질문 -->
			</div>
		</div>

		
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>

</body>
</html>