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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505267726"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505267726"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505267726"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505267726"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505267726"></script>
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

</head>
<style type="text/css">
#garageContent .garage_visual {display:block;width:100%;height:520px;margin:0 auto;position:relative;overflow:hidden;background-color:#000;border-bottom:1px solid #8f8f8f;}
#garageContent .garage_visual ul {width:100%;height:520px;position:absolute;top:0;left:0;overflow:hidden;}
#garageContent .garage_visual ul li {float:left;width:100%;height:520px;font-size:14px;color:#fff;text-align:center;}
#garageContent .garage_visual .inner {display:block;position:relative;width:984px;margin:0 auto;}
#garageContent .garage_visual .visual1 {background:url('//web-assets.socar.kr/template/asset/images/garage/top_img1_bg.jpg') top center repeat-x;}
#garageContent .garage_visual .visual1 .btn {position:absolute;top:0;right:-8px;}
#garageContent .garage_visual .visual2 {background:url('//web-assets.socar.kr/template/asset/images/garage/top_img2_bg.jpg') top center repeat-x;}
#garageContent .garage_visual .visual2 .btn {position:absolute;top:0;right:-8px;}
#garageContent .garage_visual .visual3 {background:url('//web-assets.socar.kr/template/asset/images/garage/top_img3_bg.jpg') top center repeat-x;}
#garageContent .garage_visual .visual3 .btn {position:absolute;top:0;right:-8px;}
/* 2014.11.20 */
#garageContent .garage_visual .visual4 {background:url('//web-assets.socar.kr/template/asset/images/garage/top_img4_bg.jpg') top center repeat-x;}
#garageContent .garage_visual .visual4 .btn {position:absolute;top:0;right:-8px;}
/* // 2014.11.20 */
#garageContent .garage_cont {}
/* 2014.11.20 */
#garageContent .garage_cont .inner {display:block;position:relative;overflow:hidden;width:984px;margin:0 auto;}
#garageContent .garage_cont .tit {padding-top:51px;}
#garageContent .garage_cont .cont {display:block;overflow:hidden;width:1068px;}
#garageContent .garage_cont .cont li {float:left;margin-right:84px;}
/* // 2014.11.20 */
#garageContent .btn_area {position:relative;width:984px;height:0;margin:0 auto;}
#garageContent .btn_area button {opacity:0.5;filter:alpha(opacity=50);cursor:pointer}
#garageContent .btn_area button:hover {opacity:1;filter:alpha(opacity=100);}
#garageContent .btn_area .btn_prev {display:block;overflow:hidden;position:absolute;top:-319px;left:0;width:74px;height:118px;background:url('//web-assets.socar.kr/template/asset/images/garage/btn_left.png') 0 0 no-repeat;text-indent:-9999px;}
#garageContent .btn_area .btn_next {display:block;overflow:hidden;position:absolute;top:-319px;right:0;width:74px;height:118px;background:url('//web-assets.socar.kr/template/asset/images/garage/btn_right.png') 0 0 no-repeat;text-indent:-9999px;}
.mwLayer #mwCont{position:absolute; top:350px;; left:50%; border-radius:5px; box-shadow:0 4px 20px rgba(0,0,0,.7); -webkit-box-shadow:0 4px 20px rgba(0,0,0,.7); -moz-box-shadow::0 4px 20px rgba(0,0,0,.7); -ms-box-shadow:0 4px 20px rgba(0,0,0,.7); overflow:hidden; background:#fff;}
.mwLayer .close{position:absolute; top:20px; right:20px; display:block; width:16px; height:16px; text-indent:-9999em; overflow:hidden; background:url('//web-assets.socar.kr/template/asset/images/common/btn_layer_close_s.gif') no-repeat 0 0;}
.mwLayer .car_requestLy {margin:-379px 0 0 -254px; padding:28px 20px 0 20px; width:468px; height:730px; top: 445px !important;}
.mwLayer .car_requestL h4{margin-left:7px; height:45px;}
.mwLayer .car_requestL .txt{margin-left:12px; height:38px;}
.mwLayer .car_requestL .requestForm{position:relative; padding:18px 0 18px 18px; border-top:2px solid #4f555e; background:#f8f8f8;}
.mwLayer .car_requestL .requestForm .textarea{width:344px; height:56px;}
.mwLayer .car_requestL .requestForm .submit{position:absolute; top:17px; right:16px;}
.mwLayer .car_requestL .requestForm dl{margin-top:12px; *zoom:1;}
.mwLayer .car_requestL .requestForm dl:after{content:""; display:block; clear:both;}
.mwLayer .car_requestL .requestForm dt{float:left; margin-right:7px; color:#333; line-height:26px;}
.mwLayer .car_requestL .requestForm dd{float:left; margin-right:10px;}
.mwLayer .car_requestL .requestForm dd .input{width:105px; height:24px; line-height:24px;}
.mwLayer .car_requestL iframe{margin-top:14px; width:466px; height:410px; border:1px solid #d3d3d3; overflow-y:scroll;overflow-x:hidden;}
.mwLayer .car_requestL .centerBtn{margin-top:14px !important;}
.mwLayer .car_requestL .centerBtn .close{display:inline; position:relative; top:0; right:0; width:auto; height:auto; text-indent:0; background:none;}

.mwLayer .newcar_wrap {margin:-379px 0 0 -254px; padding:28px 20px 0 20px; width:468px; height:730px; top: 445px !important;}
.mwLayer .newcar_cont h4{margin-left:7px; height:45px;}
.mwLayer .newcar_cont .txt{margin-left:12px; height:38px;}
.mwLayer .newcar_cont .newcarForm{position:relative; padding:18px 0 18px 18px; border-top:2px solid #4f555e; background:#f8f8f8;}
.mwLayer .newcar_cont .newcarForm .textarea{width:344px; height:56px;}
.mwLayer .newcar_cont .newcarForm .submit{position:absolute; top:17px; right:16px;}
.mwLayer .newcar_cont .newcarForm dl{margin-top:12px; *zoom:1;}
.mwLayer .newcar_cont .newcarForm dl:after{content:""; display:block; clear:both;}
.mwLayer .newcar_cont .newcarForm dt{float:left; margin-right:7px; color:#333; line-height:26px;}
.mwLayer .newcar_cont .newcarForm dd{float:left; margin-right:10px;}
.mwLayer .newcar_cont .newcarForm dd .input{width:265px; height:24px; line-height:24px;}
.mwLayer .newcar_cont iframe{margin-top:14px; width:466px; height:410px; border:1px solid #d3d3d3; overflow-y:scroll;overflow-x:hidden;}
.mwLayer .newcar_cont .centerBtn{margin-top:14px !important;}
.mwLayer .newcar_cont .centerBtn .close{display:inline; position:relative; top:0; right:0; width:auto; height:auto; text-indent:0; background:none;}
</style>
<script type="text/javascript" src="/template/garage/../asset/js/jquery.touchSlider-hello.js"></script>
<script type="text/javascript" src="/template/garage/../asset/js/jquery.event.drag-1.5.min-hello.js"></script>
<script type="text/javascript">
function timerSet(param, target, speed) {
	timer = setInterval(function() {
		$(param).next().find($(target)).click();
	}, speed);
	$(param).hover(function() {
		clearInterval(timer);
	}, function() {
		timer = setInterval(function() {
			$(param).next().find($(target)).click();
		}, speed);
	})
	$(param).bind("touchstart", function() {
		clearInterval(timer);
	}).bind("touchend", function() {
		timer = setInterval(function() {
			$(param).next().find($(target)).click();
		}, speed);
	})
}

$(document).ready(function() {
	$("#touchSliderGarage").touchSlider({
		flexible : true,
		initComplete : function(e) {
			$("#touchSliderGarage_paging").html("");
			$("#touchSliderGarage > ul > li").each(function(i, el) {
				if (i != 0)
					$("#touchSliderGarage_paging").append('<button type="button" class="btn_page">page' + (i + 1) + '</button>');
				else
					$("#touchSliderGarage_paging").append('<button type="button" class="btn_page btn_page_on">page' + (i + 1) + '</button>');
			});
			$("#touchSliderGarage_paging .btn_page").bind("click", function(e) {
				var i = $(this).index();
				$("#touchSliderGarage").get(0).go_page(i);
			});
		},
		btn_prev : $("#touchSliderGarage").next().find(".btn_prev"),
		btn_next : $("#touchSliderGarage").next().find(".btn_next"),
		counter : function(e) {
			$("#touchSliderGarage_paging .btn_page").removeClass("btn_page_on").eq(e.current - 1).addClass("btn_page_on");
		}
	});
	timerSet("#touchSliderGarage", ".btn_next", 4000);
});
</script>
<body id="socarGarage">
<div id="wrap">

    	<jsp:include page="/template/Header.jsp"/>


	<div id="garageContent">
<!-- 2014.09.14 -->
		<div id="touchSliderGarage" class="garage_visual">
			<ul>
<!-- 2014.11.20 -->
				<li class="visual2">
					<div class="inner">
						<div class="visual"><img src='//web-assets.socar.kr/template/asset/images/garage/top_img5.png' /></div>
						<div class="btn"><img src='//web-assets.socar.kr/template/asset/images/garage/top_img1_btn.png' usemap="#top_img5_btn" /></div>
<map name="top_img5_btn" id="top_img5_btn">
  <area shape="circle" coords="74,131,69" href="#" class="top_img_btn" />
</map>
					</div>
				</li>
<!--// 2014.11.20 -->
				<li class="visual3">
					<div class="inner">
						<div class="visual"><img src='//web-assets.socar.kr/template/asset/images/garage/top_rolling_nspark_1110.jpg' /></div>
						<div class="btn"><img src='//web-assets.socar.kr/template/asset/images/garage/top_img1_btn.png' usemap="#top_img3_btn" /></div>
<map name="top_img3_btn" id="top_img3_btn">
  <area shape="circle" coords="74,131,69" href="#" class="top_img_btn" />
</map>
					</div>
				</li>
				<li class="visual1">
					<div class="inner">
						<div class="visual"><img src='//web-assets.socar.kr/template/asset/images/garage/top_img1.jpg' /></div>
						<div class="btn"><img src='//web-assets.socar.kr/template/asset/images/garage/top_img1_btn.png' usemap="#top_img1_btn" /></div>

<map name="top_img1_btn" id="top_img1_btn">
  <area shape="circle" coords="74,131,69" href="#" class="top_img_btn" />
</map>
					</div>
				</li>
			</ul>
		</div>
		<div class="btn_area">
			<button type="button" class="btn_prev">이전</button>
			<button type="button" class="btn_next">다음</button>
		</div>
		<div id="touchSliderGarage_paging" class="btn_area" style="display:none;text-align:center;"></div>
<!--// 2014.09.14 -->
		<div class="garage_cont">
			<div class="inner">
				<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_tit.jpg' /></div>
				<ul class="cont">
					<li><a href="http://goo.gl/8gLGo0" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img10_n3.png' alt="미니5도어" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/3340" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_nextspark_151104.jpg' alt="넥스트스파크" border="0" /></a></li>

					<li><a href="http://blog.socar.kr/3409" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_avanteAD_151126.jpg' alt="아반떼AD" border="0" /></a></li>

					<li><a href="http://blog.socar.kr/2409" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img15.jpg' alt="비틀" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/1830" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img11_n.jpg' alt="QM3" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/1767" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img10_n2.png' alt="미니쿠퍼" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/1631" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img9_n.jpg' alt="올란도" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/1392" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img7_n.jpg' alt="스타렉스" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/518" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img6_n.jpg' alt="모닝" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/253" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img4_n.jpg' alt="레이" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/1554" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img3_n.jpg' alt="프라이드" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/559" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img2_n.jpg' alt="아반떼" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/560" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img1_n.jpg' alt="K3" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/2015" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_img14.jpg' alt="엑센트" border="0" /></a></li>
					<li><a href="http://blog.socar.kr/3068" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/garage/socar_garage_lfsonata_150709.jpg' alt="LF쏘나타" border="0" /></a></li>
				</ul>
			</div>
		</div>
			
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>


</html>