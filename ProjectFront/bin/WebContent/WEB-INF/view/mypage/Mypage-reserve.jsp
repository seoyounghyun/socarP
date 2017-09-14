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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264825"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264825"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264825"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264825"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264825"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>


<script type="text/javascript" src="https://apis.daum.net/maps/maps3.js?apikey=9200376e38c344c4dc2ee20a76b6ba19b2605d06&libraries=services" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="/template/mypage/../asset/css/mypage.css?v=20170731" />
<link rel="stylesheet" href="/template/mypage/../asset/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="/template/mypage/../asset/css/jquery.ui.timepicker.css" />
<script src="/template/mypage/../asset/js/jquery-ui.js"></script>
<script src="/template/mypage/../asset/js/jquery.ui.timepicker.js"></script>
<script type="text/javascript">
var $map_small = null;
var $map_small_marker = null;

function commify(n) {
	var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
	n += '';						  // 숫자를 문자열로 변환
	while (reg.test(n))
		n = n.replace(reg, '$1' + ',' + '$2');
	return n;
}

function number_format(yourNumber) {
	var n= yourNumber.toString().split(".");
	n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	return n.join(".");
}

function date_to_string(isostr){
	var p = isostr.match(/\d+/g);
	var return_date = new Date(p[0], p[1] - 1, p[2], p[3], p[4], p[5]);
	var week = new Array('일', '월', '화', '수', '목', '금', '토');
	return return_date.toLocaleDateString() + " " + week[return_date.getDay()] +"요일 "+ return_date.getHours() + ":" + return_date.getMinutes();
}

function dateFromISOType(isostr){
	var p = isostr.match(/\d+/g);
	return new Date(p[0], p[1] - 1, p[2], p[3], p[4], p[5]);
}

$(function(){

	$("#mypage .rvCancelB").click(function(){
		var resv_id = $(this).parent().find('.reserve_id').text();
		$('#reserve_num').text(resv_id);

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/resv_info?resv_id=' + resv_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_cancel_car_name').text(result['car_class']);
					$('#layer_cancel_car_num').text(result['car_num']);
					$('#layer_cancel_duration').text(result['start_at'] + ' - ' + result['end_at']);
					$('#layer_cancel_zone_name').text(result['zone_name']);

					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('rvCancelLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .rvCancel').css('display','block');
				}
				else{
					alert(json.retMsg);
				}
			}
		});

		return false;
	});

	//예약 취소 버튼
	$('#btn_reserve_cancel').bind('click', function () {
		// $('.mwLayer').removeClass('open');
		// $('.mwLayer #mwCont').removeClass();
		// $('.mwLayer .mwCont').css('display','none');
		// $("#calendar").css('display','none');

		var num = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/reserve/cancel/" + num,
			type : "GET",
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					alert('예약취소가 완료되었습니다.');
					$('#mwCont .mypage .close').click();
					document.location.href = '/mypage/reserve';
				}
				else{
					alert(data.retMsg + ' 코드 : ' + data.retCode);
					$('#mwCont .mypage .close').click();
					document.location.href = '/mypage/reserve';
				}
			},
			error : function(){
				alert('err');
			}
		});
		return false;
	});

	//차량 상세 정보
	$('.carDetail').bind('click', function () {
		var car_id = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/car_info?car_id=' + car_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_car_name').text(result['car_name']);
					$('#layer_car_basic_price').text(number_format(result['base_price']) + '원');
					$('#layer_car_maker').text(result['maker']);
					$('#layer_car_visual').text(result['visual']);
					$('#layer_car_fuel').text(result['fuel']);
					$('#layer_car_gearbox').text(result['gearbox']);
					$('#layer_car_capacity').text(result['capacity']);
					$('#layer_car_img').attr('src', '//web-assets.socar.kr/template/asset/images' + result['car_img'][0]);
					$('#layer_oil_price').text(number_format(result['oil_price']) + '원');

					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('socarDetailLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .socarDetail').css('display','block');

//차종별로 상세보기 내역 보이도록 수정
					$('[class="socarSpec"][id^=car_class]').css('display','none');
					var class_selecter = '.mwLayer .socarDetail #car_class' + result['car_class'];
//by 금동
					$(class_selecter).css('display','block');
				}
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;

	}); //$('.view_detail_car') end


	//쏘카존 상세 정보
	$('.socarzoneDetail').bind('click', function () {
		var blank_text = "";
		$('#layer_zone_name').text(blank_text);
		$('#layer_able_num').text(blank_text);
		$('#layer_toal_num').text(blank_text);
		$('#layer_zone_addr').text(blank_text);
		$('#layer_oper_time').text(blank_text);
		$('#layer_oper_way').text(blank_text);
		$('#layer_visit').html(blank_text);

		var zone_id = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/zone_info?zone_id=' + zone_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_zone_name').text(result['zone_name']);
					$('#layer_able_num').text(result['able_num']);
					$('#layer_toal_num').text(result['total_num']);
					$('#layer_zone_addr').text(result['zone_addr']);
					$('#layer_oper_time').text(result['oper_time']);
					$('#layer_oper_way').text(result['oper_way']);
										var visit_html = result['visit'];
										if (result['state']) {
											visit_html += result['visit_link'] ? ' <a href="'+result['visit_link']+'" target="_blank">길찾기</a>' : '';
											visit_html += result['link'] ? ' <a href="'+result['link']+'" target="_blank">상세안내</a>' : '';
											visit_html += result['notice'] ? '<p style="padding-top:5px">' + result['notice'] + '</p>' : '';
										}
										$('#layer_visit').html(visit_html);


					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('socarzoneLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .socarzone').css('display','block');

					//존 정보 레이어에 작은 맵 생성
					if($map_small == null){
						$map_small = new daum.maps.Map(document.getElementById('map_small'), {
							center: new daum.maps.LatLng(result['lat'], result['lng']),
							level: 5
						});
						var mapTypeControl = new daum.maps.MapTypeControl();
						$map_small.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
					}
					//마커 생성
					if($map_small_marker == null){
						$map_small_marker = new daum.maps.Marker({ position: new daum.maps.LatLng(result['lat'], result['lng'])});
						$map_small_marker.setMap($map_small);
					}
					else{
						var pos = new daum.maps.LatLng(result['lat'], result['lng']);
						$map_small.setCenter(pos);
						$map_small.setLevel(5);
						$map_small_marker.setPosition(pos);
					}
				} //if(retCode == 1)
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	}); //$('.socarzoneDetail').bind


	//반납 연장 레이어 확인 버튼
	$('#layer_btn_extend').bind('click', function () {

		var reserve_id = $(this).prev().text();
		var end_date   = $('#layer_input_endDay').val();
		var end_time   = $('#layer_input_endTime').timepicker('getTime');
		var end_at	 = end_date.replace(/\./g, '-') + 'T' + end_time + ':00+09:00';

		// spock 연장하기 전에 연장 예정금액을 보여준다.
		var extend_car_id = $( "#"+reserve_id+"_car_id" ).html();
		var extend_way_type = $( "#"+reserve_id+"_reserve_way" ).html(); // 일단은 round로 통일 계산.
		var extend_start_at = $( "#"+reserve_id+"_reserve_end_at" ).html();
		var extend_end_at = end_at;
		var extend_zone_id = $( "#"+reserve_id+"_zone_id" ).html();
		var extend_price  = 0;
		var extend_oneway_id = $( "#"+reserve_id+"_oneway_id" ).html();

		if(extend_start_at == end_at){
			alert("예약 종료시간과 반납 연장시간이 일치합니다.\n다른 시간을 정해주십시오.")
			return;
		}
		if( dateFromISOType(extend_start_at) > dateFromISOType(end_at) ){
			alert("반납 연장시간이 예약 종료시간보다 이전입니다.\n다른 시간을 정해주십시오.")
			return;
		}

		$.ajax({
			type: 'POST',
			url : "https://www.socar.kr/mypage/json_data",
			data: {
				url: "reserve/price",
				way : extend_way_type,
				start_at : extend_start_at,
				end_at : extend_end_at,
				car_id : extend_car_id,
				zone_id : extend_zone_id,
				oneway_id : extend_oneway_id,
				reservation_id: reserve_id,
				extend : 1,
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc'
			},
			dataType: 'json',
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];
					extend_price = parseInt(result['price_dis'], 10);

					if (result.pre_deductible_type && result.protection_fee_table) {
						var protection_fee = result.protection_fee_table[result.pre_deductible_type].total_fee;
		        extend_price += parseInt(protection_fee, 10);
					}

					var message = "반납을 연장하시겠습니까? 연장후 취소는 불가합니다.\n";
					message += "·변경 반납일 : " + date_to_string(end_at)  + "\n";
					message += "·추가 과금액 : " + commify(extend_price) + "원";
					var end_at_timestamp = new Date(end_at).getTime() / 1000;

					if( confirm( message ) ) {
						$.ajax({
							url : "https://www.socar.kr/reserve/extend",
							type : "POST",
							data : {
								reservation_id: reserve_id,
								end_at: end_at_timestamp
							},
							dataType: "json",
							success : function(data){
								if(data.retCode == '1'){
									alert('반납연장 되었습니다.');
									$('#mwCont .mypage .close').click();
									window.location.href = '/mypage/reserve';
								}
								else{
									alert(data.retMsg + ' 코드: ' + data.retCode);
								}
							},
							error : function(){
								alert('err');
							}
						});
					}
					return false;
				}
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
			}
		});
		// end
	});

	//연장 버튼
	$("#mypage .rvExtendB").click(function(){


		var reserve_id = $(this).parent().find('.reserve_id').text();
		var start_at   = $(this).parent().find('.reserve_start_at').text();
		var end_at	 = $(this).parent().find('.reserve_end_at').text();

		$('#layer_reserve_id').text(reserve_id);

		$('#layer_input_endDay').datepicker({
			dateFormat: 'yy.mm.dd',
			showMonthAfterYear: true,
			minDate: new Date(end_at.substr(0,4),
							  end_at.substr(5,2) - 1,
							  end_at.substr(8,2), 0, 0, 0),
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
		});

		$('#layer_input_startDay').val(start_at.substr(0, 10).replace(/-/g, '.'));
		$('#layer_input_startTime').val(start_at.substr(11, 5));

		$('#layer_input_endDay').datepicker('setDate', new Date(  end_at.substr(0,4),
																  end_at.substr(5,2)-1,
																  end_at.substr(8,2), 0, 0, 0));
		$('#layer_input_endTime').val(end_at.substr(11, 5));

		$('#layer_input_endTime').timepicker({
			showPeriodLabels: false,
			defaultTime: end_at.substr(11, 5),
			atPosition: 'top bottom',
			hourText: '시',
			minuteText: '분',
			minutes: {starts: 0, ends: 50, interval: 10},
			showCloseButton: true,
			closeButtonText: '확인'
		})

		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('rvExtendLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .rvExtend').css('display','block');
		return false;
	});
	$('.btn_payment_detail').bind('click', function () {
		var url  = '/mypage/payment_detail/' + $(this).attr('value');
		window.open(url, 'payment', 'width=380,height=700, scrollbars=yes');

		return false;
	});

	$('.btn_reserve_print').bind('click', function () {
		var url  = '/receipt/' + $(this).attr('value');
		window.open(url, 'reserve_print', 'width=700,height=997, scrollbars=yes');

		return false;
	});

})
</script>
</head>

<body id="mypage" class="reservation">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src="/template/mypage/../asset/images/mypage/h2.gif" alt="마이페이지
내 정보와 예약내역, 쿠폰 등을 확인할 수 있습니다." /></h2>

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
							<img src="/template/mypage/../asset/images/mypage/reservation_txt1.gif" alt="예약내역" /> <span>0</span> <img src="/template/mypage/../asset/images/mypage/reservation_txt2.gif" alt="건" />
							<a href="/mypage/export_xls/reserve" target="_blank" class="btn"><img src="/template/mypage/../asset/images/mypage/btn_reser.gif" alt="이용내역 다운로드" /></a>
						</h3>

						<div class="gbx">
							<ul>
							<li>예약변경은 반납연장만 가능합니다. 대여기간 수정, 지역 및 차종 변경은 취소 후 새로 예약해주세요.</li>
							<li>반납연장은 반납 예정 시각 30분 이전까지만 가능하며, 다른 회원의 예약이 이미 존재하는 경우에는 반납연장이 불가합니다.</li>
							<li>예약취소 시 대여요금과 보험료의 각 10%에 해당하는 수수료가 부과될 수 있습니다.</li>
							</ul>
						</div>

						
							<table cellspacing="0" class="cols">
							<thead>
							<tr>
								<th colspan="2">예약</th>
								<th>총 요금</th>
								<th>상태</th>
								<th>변경/취소</th>
							</tr>
							</thead>
							<tbody>
							
								<tr class="over">
									<td>
										<p class="thumb">
											<em class="car_id" style="display:none;">7268</em>
											<a href="#" class="carDetail">
												<img src='//web-assets.socar.kr/template/asset/images/car_image/car22.png' />
											</a>
										</p>
									</td>
									<td class="info">
										<h4>
											<em id="7292917_car_id" class="car_id" style="display:none;">7268</em>
											<a href="#" class="carDetail">아반떼AD</a> (40하9862)
										</h4>
										<div class="desc">
											2016.12.28 수 17:00 - 2016.12.28 수 21:30 <br />
											총 4시간 30분 <br />
											<em id="7292917_zone_id" style="display:none;">665</em>
												
													<a href="#" class="socarzoneDetail">강남역 11번출구</a>
													
										</div>
									</td>
									<td class="price">
										<a class="btn_payment_detail" href="#" value='uizyp'>30,870원</a><em style="display:none;">7292917</em>
										
										
										<br />
										<a class="btn_reserve_print" href="#" value='uizyp'><img src="/template/mypage/../asset/images/btn_statement.gif" alt="" /></a>
										
									</td>
									<td class="status">완료</td>
									<td>
										<!-- spock 연장시 연장금액 출력을 위해 부가정보 저장 -->
										<em id="7292917_reserve_id" class="reserve_id" style="display:none;">7292917</em>
										<em id="7292917_reserve_start_at" class="reserve_start_at" style="display:none;">2016-12-28T17:00:00+09:00</em>
										<em id="7292917_reserve_end_at" class="reserve_end_at" style="display:none;">2016-12-28T21:30:00+09:00</em>
										<em id="7292917_car_class" class="car_class" style="display:none;">22</em>
										<em id="7292917_reserve_way" style="display:none;">round</em>
										<em id="7292917_oneway_id" style="display:none;">0</em>
										
										
											
										
	<!--									 <a href="#" class="btnS rvChangeB"><span>변경</span></a>
										<a href="#" class="btnS rvCancelB"><span>취소</span></a>
										<a href="#" class="btnS rvExtendB"><span>반납연장</span></a>
									-->
									</td>
								</tr>
							
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

			<!-- 쏘카존 -->
<div class="socarzone mwCont">
	<h4 id="layer_zone_name">종각제일은행 주차장</h4>
	<div class="detailInfo" style="height:180px;overflow:auto;">
		<table cellspacing="0">
		<tr id="layer_vehicle_count_row">
			<th><span>운영차량</span></th>
			<td>
				총 <em id="layer_toal_num">5</em>대
				<!-- <a href="#">예약가능 쏘카 보기</a> -->
			</td>
		</tr>
		<tr>
			<th><span>위치</span></th>
			<td id="layer_zone_addr">서울시 강남구 개포1동 123-1 LG개포자이 101동 주차장</td>
		</tr>
		<tr>
			<th><span>운영시간</span></th>
			<td id="layer_oper_time">24</td>
		</tr>
		<tr>
			<th><span>찾아가기</span></th>
			<td id="layer_visit"></td>
		</tr>
		</table>
	</div>
	<div class="socarzoneMapArea">
		<ul>
		<li class="on">
			<span style="display:inline-block;padding-right:10px;height:41px;line-height:41px;font-weight:bold;color:#1ba4e7;">지도/스카이뷰</span>

		</li>
		</ul>

		<div class="socarzonMap">
			<div id="map_small" style="width:479px; height:231px"></div>
		</div>
	</div>
	<p class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif' alt="확인" /></a></p>
</div>
<!-- //쏘카존 -->


			<!-- 쏘카보기 -->
<div class="socarDetail mwCont">
  <h4><img src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail.gif" alt="쏘카정보" /></h4>
  <div class="socarInfo">
    <p class="thumb"><img id="layer_car_img" width="250" height="124" src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail1.png"/></p>
    <h5 id="layer_car_name"></h5>
    <dl>
      <dt>기본요금</dt>
      <dd><em id="layer_car_basic_price"></em> (30분)</dd>
      <dt>주행요금</dt>
      <dd><em id="layer_oil_price">(별도고지)</em> (1km)</dd>
    </dl>
  </div>

  <div class="socarSpec first">
    <h6>기본제원</h6>
    <table cellspacing="0">
      <tr>
        <th>제조사</th>
      <td id="layer_car_maker"></td>
      </tr>
      <tr>
        <th>차종/외관</th>
        <td id="layer_car_visual"></td>
      </tr>
      <tr>
        <th>연료</th>
        <td id="layer_car_fuel"></td>
      </tr>
      <tr>
        <th>변속방식</th>
        <td id="layer_car_gearbox"></td>
      </tr>
      <tr>
        <th>승차정원</th>
        <td id="layer_car_capacity"></td>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class1" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class2" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class3" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class4" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class5" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class6" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class7" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />핸즈프리</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class8" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class9" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class10" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class11" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class12" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class13" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class14" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class15" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class16" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class17" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class18" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class19" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class20" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class21" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class22" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class23" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class24" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class25" style="display: none">
    <h6>옵션정보</h6>
    <table style="width:100%;" cellspacing="0">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class26" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CDP/HUD<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class27" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CDP/HUD<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class28" style="display: none">
  <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class29" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class30" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class31" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class32" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class33" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB<br />브라이택스 카시트</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class34" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />CD플레이어<br />열선시트<br />AUX/USB<br />블루투스</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class35" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class36" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 말리부 -->
  <div class="socarSpec" id="car_class37" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />AUX/USB<br />블루투스</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 정윤) -->
  <div class="socarSpec" id="car_class38" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 K&12) -->
  <div class="socarSpec" id="car_class39" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 어니언) -->
  <div class="socarSpec" id="car_class40" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 GFX) -->
  <div class="socarSpec" id="car_class41" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 문크) -->
  <div class="socarSpec" id="car_class42" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 설찌) -->
  <div class="socarSpec" id="car_class43" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 레이(비엔날레) -->
  <div class="socarSpec" id="car_class44" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- K3(비엔날레) -->
  <div class="socarSpec" id="car_class45" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 아이오닉 -->
  <div class="socarSpec" id="car_class46" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class47" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 볼트 -->
  <div class="socarSpec" id="car_class49" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 투싼 -->
  <div class="socarSpec" id="car_class50" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- i30 -->
  <div class="socarSpec" id="car_class51" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
      <th>부가옵션</th>
      <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 레이(유채꽃) -->
  <div class="socarSpec" id="car_class52" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 아이오닉(유채꽃) -->
  <div class="socarSpec" id="car_class53" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 레이(노을) -->
  <div class="socarSpec" id="car_class54" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 아이오닉(노을) -->
  <div class="socarSpec" id="car_class55" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 올뉴모닝 -->
  <div class="socarSpec" id="car_class56" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
        </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 스팅어 -->
  <div class="socarSpec" id="car_class57" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션<br />지능형운전보조장치</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="clear"></div>
  <p class="centerBtn"><a href="#" class="close"><img src="/template///web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif" alt="확인" /></a></p>
</div>
<!-- //쏘카보기 -->


			<!-- 예약변경 -->
			<div class="rvChange mypage mwCont">
				<form name="reservationChange" method="post" action="">
					<fieldset>
						<legend>예약변경</legend>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt1.gif" alt="예약변경" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt2.gif" alt="대여일" /></th>
								<td>
									<input type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<select>
										<option selected="selected">10:30</option>
									</select>
								</td>
							</tr>
							<tr>
								<th><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt3.gif" alt="반납일" /></th>
								<td>
									<input type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<select>
										<option selected="selected">10:30</option>
									</select>
								</td>
							</tr>
							</table>
						</div>
						<p class="txt">
							예약변경은 대여기간 수정만 가능합니다.<br /><br />
							※ 수수료 부과 안내<br /><br />
							단기대여(8시간 미만)의 예약 변경<br />
							대여 시작 3시간 이내에 대여 기간 단축 시<br />
							결제 예정 요금의 10%에 해당하는 수수료 부과<br /><br />
							장기대여(8시간 이상)의 예약 변경<br />
							대여 시작 12시간 이내에 대여 기간 단축 시<br />
							결제 예정 요금의 10%에 해당하는 수수료 부과
						</p>

						<p class="centerBtn">
							<input type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //예약변경 -->

			<!-- 반납연장 -->
			<div class="rvExtend mypage mwCont">
				<form name="reservationExtend" method="post" action="">
					<fieldset>
						<legend>반납연장</legend>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt4.gif" alt="반납연장" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt2.gif" alt="대여일" /></th>
								<td>
									<input id="layer_input_startDay" type="text" class="input calendar disabled" disabled="disabled" style="width:103px;" value="2012.09.25" />
									<input id="layer_input_startTime" type="text" class="input disabled" style="width:35px;" readonly />
<!-- 									<select id="layer_selbox_startTime" class="disabled" disabled="disabled">
										<option selected="selected">10:30</option>
									</select> -->
								</td>
							</tr>
							<tr>
								<th><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt3.gif" alt="반납일" /></th>
								<td>
									<input id="layer_input_endDay" type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<input id="layer_input_endTime" type="text" class="input" style="width:35px;" />
<!-- 									<select id="layer_selbox_endTime">
										<option selected="selected">10:30</option>
									</select> -->
								</td>
							</tr>
							</table>
						</div>
						<div class="txt">
							<ul>
							<li>대여기간 수정, 지역 및 차종 변경은 취소 후 새로<br />예약해주세요.</li>
							<li>다른 회원의 예약이 이미 존재하는 경우에는 반납연장이<br />불가합니다.</li>
							<li>반납 연장을 하지 않은 상태에서 임의로 차량을 계속<br />사용할 경우, 시간당 페널티가 과금될 수 있습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<em id="layer_reserve_id" style="display:none;"></em>
							<input id="layer_btn_extend" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //반납연장 -->

			<!-- 예약취소 -->
			<div class="rvCancel mypage mwCont">
				<form name="reservationCancel" method="post" action="">
					<fieldset>
						<legend>예약취소</legend>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_reservation_txt5.gif" alt="예약취소" /></h3>
						<div class="bx">
							<strong id="layer_cancel_car_name">쏘나타 하이브리드</strong>(<span id="layer_cancel_car_num">49허 1111</span>)<br/>
							<p class="" id="layer_cancel_duration">0000.00.00 일 00:00 - 0000.00.00 일 00:00</p>
							<p class="" id="layer_cancel_zone_name">서울시공영주차장</p>
						</div>
						<div class="txt">
							예약취소 시 위약금이 발생할 수 있습니다.<br />아래의 규정을 확인 후 진행해주세요.<br /><br />
							※ 위약금 부과 안내<br /><br />
							<ul>
							<li>대여 시작 3시간 이전에 예약 취소 시<br />: 별도 위약금 없음</li>
							<li>대여 시작 <em>3시간 이내</em>에 예약 취소 시<br />: <em>대여요금과 보험료의 각 10%</em>에 해당하는 위약금 부과</li>
							<li>특정 프로모션 예약의 경우, 사전 고지 또는 예약 시<br /> 동의한 내용에 따라 별도 취소 위약금이 부과될 수<br /> 있습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<em id="reserve_num" style="display:none"></em>
							<input id="btn_reserve_cancel" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" onclick="return false;" alt="확인" />

							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //반납연장 -->

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	
	$('h3.tit_corp a').click(function(){
		alert ('[확인]을 누르면 다운로드가 시작됩니다.\n파일의 비밀번호는 SMS로 발송됩니다.');
		return true;
	});
	
});
</script>
</body>
</html>