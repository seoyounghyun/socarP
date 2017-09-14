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
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.banner.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/ssun.js?1505264054"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/json3.min.js?1505264054"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/common.js?1505264054"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/day-picker.js?1505264054"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.block.ui.min.js?1505264054"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/rental.css?v=20170731' />
<style>
  .guide-title { margin-top: 22px; color: #333; font-size: 12px; font-weight: bold; }
  .guide-content-box { margin-top: 10px; padding: 14px 0 14px 19px; border: 1px solid #ededed; background: #fbfbfb; }
</style>
<script type="text/javascript">
  $(function(){
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
    /* oil */
    $(".oil").click(function(){
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
  });
</script>
</head>

<body id="rental">
  <div id="wrap">
    	<jsp:include page="/template/Header.jsp"/>

    <div id="container">
      <div id="content">
        <div class="index">
          <img src='//web-assets.socar.kr/template/asset/images/rental/top_menu_img_2.png' alt="이용요금을 알려드립니다." />
        </div>
        <div class="box">
          <div class="group">
            <h3><img src='//web-assets.socar.kr/template/asset/images/rental/so_fare.png' alt="쏘카 회원제"></h3>
            <p><img src='//web-assets.socar.kr/template/asset/images/rental/rental_txt13_20150727.gif' alt="연회비 완전 무료, 대여요금 최대 80% 할인 등 쏘카만의 차별화된 회원혜택을 확인해보세요."></p>
            <table cellspacing="0" class="cols">
              <colgroup><col><col width="600" span="2"></colgroup>
              <thead>
                <tr>
                  <th><strong>구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;분</strong></th>
                  <th><strong>상세내용</strong></th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <th>연&nbsp;회&nbsp;비</th>
                  <td>무료</td>
                </tr>
                <tr>
                  <th>가입조건</th>
                  <td>만 21세 이상, 운전면허 취득 후 1년 이상 경과</td>
                </tr>
                <tr>
                  <th>필수조건</th>
                  <td>본인 명의 운전면허증 및 신용/체크카드 등록</td>
                </tr>
                <tr>
                  <th>대여요금</th>
                  <td>차종별 차등 할인</td>
                </tr>
                <tr>
                  <th>가입혜택</th>
                  <td>신규 가입 시 할인 쿠폰 지급</td>
                </tr>
                <tr>
                  <th>이용혜택</th>
                  <td>이용 횟수에 따라 다양한 혜택 지급</td>
                </tr>
              </tbody>
            </table>

            <ul>
              <li>가입 및 이용 혜택은 당사 정책에 따라 변경될 수 있습니다.</li>
            </ul>

            
            <div style="margin-top:30px;display:block;overflow:hidden;width:100%;">
              <a href="https://goo.gl/QFGQtZ"><img src='//web-assets.socar.kr/template/asset/images/rental/banner_20160530.jpg' alt=""></a>
            </div>
            
          </div>

          <div class="group">
            <h3><img src='//web-assets.socar.kr/template/asset/images/rental/socarzone_drive_fee.png' alt="전국 쏘카존 대여요금 안내"></h3>
            <p><img src='//web-assets.socar.kr/template/asset/images/rental/rental_txt14.gif?v=1' alt="타면된다, 쏘카!&#8203; 10분단위로 자유롭게 신나는 드라이빙을 즐기세요! 다양한 쿠폰혜택과 모바일에서만 만나볼 수 있는 특가상품까지 부담없이 누리세요!"></p>

            <table cellspacing="0" class="cols">
              <colgroup>
              <col width="82">
              <col width="172">
              <col width="90">
              <col width="90">
              <col width="90">
              <col width="110">
              <col>
            </colgroup>

            <thead>
              <tr>
                <th rowspan="2">차종</th>
                <th rowspan="2">모델</th>
                <th rowspan="2">내륙<br/>기준대여요금<br>(10분기준)</th>
                <th rowspan="2">제주<br/>기준대여요금<br>(10분기준)</th>
                <th colspan="2">쏘친만을 위한 <span style="color:#f63325">특별할인!</span></th>
                <th rowspan="2">주행요금<br>(주행거리 Km당)</th>
              </tr>
              <tr>
                <th class="strong">주중</th>
                <th style="width: 13%">주말</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <th rowspan="3" class="first">경형A<br></th>
                <td class="tal">모닝</td>
                <td>1,200원</td>
                <td>-</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">올뉴모닝</td>
                <td>1,200원</td>
                <td>-</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">넥스트스파크</td>
                <td>1,200원</td>
                <td>2,180원</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <th class="first">경형B</th>
                <td class="tal">레이</td>
                <td>1,250원</td>
                <td>2,200원</td>
                <td class="strong">750원~</td>
                <td>1,000원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="2" class="first">소형</th>
                <td class="tal">프라이드</td>
                <td>1,430원</td>
                <td>2,210원</td>
                <td class="strong">850원~</td>
                <td>1,140원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">엑센트</td>
                <td>1,430원</td>
                <td>2,210원</td>
                <td class="strong">850원~</td>
                <td>1,140원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="6" class="first">준중형</th>
                <td class="tal">K3</td>
                <td>1,580원</td>
                <td>2,400원</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">아반떼</td>
                <td>1,580원</td>
                <td>-</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">아반떼AD</td>
                <td>1,580원</td>
                <td>2,400원</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">i30</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">볼트</td>
                <td>2,860원</td>
                <td>-</td>
                <td class="strong">1,720원~</td>
                <td>2,290원~</td>
                <td>90원</td>
              </tr>
              <tr>
                <td class="tal">아이오닉 일렉트릭</td>
                <td>3,000원</td>
                <td>3,550원</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td><span style="text-decoration: line-through;">100원</span> → 0원</td>
              </tr>
              <tr>
                <th rowspan="7" class="first">중형</th>
                <td class="tal">K5</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">K5(LPG)</td>
                <td>2,160원</td>
                <td>2,810원</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>150원</td>
              </tr>
              <tr>
                <td class="tal">LF 쏘나타</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">LF 쏘나타(LPG)</td>
                <td>2,160원</td>
                <td>2,810원</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>150원</td>
              </tr>
              <tr>
                <td class="tal">SM5</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">말리부</td>
                <td>2,660원</td>
                <td>-</td>
                <td class="strong">1,600원~</td>
                <td>2,130원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">스팅어</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>200원</td>
              </tr>
              <tr>
                <th rowspan="2" class="first">대형</th>
                <td class="tal">그랜저HG</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>190원</td>
              </tr>
              <tr>
                <td class="tal">그랜저HG(LPG)</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="6" class="first">SUV</th>
                <td class="tal">QM3(경유)</td>
                <td>3,000원</td>
                <td>-</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>120원</td>
              </tr>
              

            </tbody>
          </table>

          <br>
          <span style="color: #333">※ 주중/주말 기준</span>
          <br>
          <span style="color: #333">　·  </span><span style="color: #333">주중 - 일 19:00 ~ 금 19:00 / 주중 심야 - 00:00 ~ 06:00</span>
          <br>
          <span style="color: #333">　·  </span><span style="color: #333">주말 - 금 19:00 ~ 일 19:00 (공휴일 및 당사 지정 성수기 포함)</span>

          <ul><br>
            <li>최소 30분부터 10분 단위로 원하는 시간만큼 예약이 가능합니다. (최대 5일)</li>
            <li>1일 기준대여요금은 10시간 요금을 기준으로 책정됩니다.</li>
            <li>주행요금은 차량 이용 후 실제 주행거리에 따라 부과됩니다. 주행요금 계산기로 예상 비용을 미리 확인해보세요. <a href="#" class="oil">주행요금 계산기</a></li>
            <li>보험료는 대여 시 선택하신 자기부담금에 따라 별도 부과됩니다.</li>
            <li>편도/부름 서비스 이용 시에는 차량 회송비용 등을 고려한 별도 요금이 추가 과금될 수 있습니다.</li>
            <li>제주공항 쏘카존의 경우 별도 대여요금이 적용됩니다.</li>
          </ul>

          <div class="guide-title">요금 변동사항 안내</div>
          <ul class="guide-content-box">
            <li>대여요금 및 주행요금은 당사 내부정책/유가변동에 따라 변경될 수 있습니다.</li>
            <li>대여요금은 지역별, 성수기/비수기 등에 따라 탄력요금제로 운영하므로, 위에 안내된 요금은 결제 시 요금과 다를 수 있습니다.</li>
            <li>요금표의 10분 기준대여요금은 원단위 절사한 것으로 1일 기준대여요금과 다를 수 있습니다.</li>
            <li>요금표의 쏘친만을 위한 특별할인 금액은 최저가 기준으로 실제 예약 시 지역/시간대별 할인율에 따라 다를 수 있습니다.</li>
          </ul>

          <div class="guide-title">할인 안내</div>
          <ul class="guide-content-box">
            <li>24시간 초과 예약시 예약시간에 따라 최대 70%까지 할인됩니다. </li>
            <li>주행거리 100km 초과 시, 초과된 주행요금에서 20%가 할인됩니다.</li>
            <li style="background: none; padding-left: 0;">
              ☞ <a href="http://www.socar.kr/notice/565" style="font-size: inherit;">장시간·장거리 할인 안내</a>
            </li>
          </ul>
        </div>

      <div class="group">
        <h3><img src='//web-assets.socar.kr/template/asset/images/rental/rental_txt8.gif' alt="보험안내"></h3>
        <p><img src='//web-assets.socar.kr/template/asset/images/rental/protection_guide_txt.png' alt="쏘카는 자동차종합보험 및 차량손해 면책제도가 모든 차량에 적용되며, 기본 대여요금에 포함되어 있어 일반 렌트카처럼 별도의 보험료를 지불할 필요가 없습니다."></p>

        <table cellspacing="0" class="cols">
          <tbody>
            <tr>
              <th>자기차량 손해 면책제도</th>
              <td>
                사고 1건당 자기부담금 선택가능<br/>
                자기부담금 최대 30만원 : 1일 기준 7,000원~<br/>
                자기부담금 최대 70만원 : 1일 기준 5,000원~
              </td>
            </tr>
            <tr>
              <th>자동차 종합보험</th>
              <td>
                대인배상 (무한)<br/>
                대물배상 (1억원 한도)<br/>
                자손 (1천 5백만원 한도)
              </td>
            </tr>
            <tr>
              <th>휴차보상료</th>
              <td>
                수리기간이 길어져도 최대 5일까지 휴차일 산정<br/>
                (휴차료 산정 기준 : 해당 차량 1일 기준요금의 50%)<br/><br/>
                단, 폐차 발생시 별도의 휴차일 산정 기준을 따릅니다.</td>
              </tr>
            </tbody>
          </table>
          <ul>
            <li>대여시 선택하신 보험료에 따라 사고 처리 비용을 실비 정산하여 자기부담금이 부과됩니다. 사고 처리비용이 선택하신 자기부담금 미만인 경우 실비 정산을 하며, 이상인 경우 자기부담금만 지불하시면 됩니다.<br/><a href="http://goo.gl/1kUkZz">보험안내 자세히 보기</a></li>
            <li>보험상품에 가입이 되어있더라도, 사고 발생 즉시 신고하지 않았거나 음주운전 사고로 인한 손해, 예약자 이외의 운전자가 일으킨 사고, 1종보통 이상의 면허 소지자 외에 승합차량운전 등 쏘카대여약관에 의거한 손해면책 사항에 해당하는 경우 자기차량 손해면책제도에서 제외되며, 법적 고발 및 이용 불가 조치가 행해질 수 있습니다.</li>
            <li>수입차의 경우 원산지 사정에 따라 부품조달에 시간이 걸려 수리가 지연될 수 있습니다.</li>
            <li>차량 이용 및 보험에 관한 사항은 쏘카 자동차대여약관에 따릅니다. 쏘카 회원이용약관 및 자동차대여약관은 차량 예약 전에 꼭 숙지해주세요.<br><a href="/rent_terms">쏘카대여약관 자세히보기</a></li>
          </ul>
        </div>

      <div class="group">
        <h3><img src='//web-assets.socar.kr/template/asset/images/rental/protection_fee_guide.png' alt="보험안내"></h3>
        <p><img src='//web-assets.socar.kr/template/asset/images/rental/protection_guide_txt_2.png' alt="쏘카는 자동차종합보험 및 차량손해 면책제도가 모든 차량에 적용되며, 기본 대여요금에 포함되어 있어 일반 렌트카처럼 별도의 보험료를 지불할 필요가 없습니다."></p>
        <table cellspacing="0" class="cols">
          <colgroup>
            <col width="90">
            <col width="90">
            <col width="90">
            <col width="90">
            <col width="90">
          </colgroup>

          <thead>
            <tr>
              <th rowspan="2">모델</th>
              <th colspan="2">손해 면책부담금 최대 30만원 선택</th>
              <th colspan="2">손해 면책부담금 최대 70만원 선택</th>
            </tr>
            <tr>
              <th>1시간 기준</th>
              <th>1일 기준</th>
              <th>1시간 기준</th>
              <th>1일 기준</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td class="first">경형A</td>
              <td>700</td>
              <td>7,000</td>
              <td>500</td>
              <td>5,000</td>
            </tr>
            <tr>
              <td class="first">경형B</td>
              <td>700</td>
              <td>7,000</td>
              <td>500</td>
              <td>5,000</td>
            </tr>
            <tr>
              <td class="first">소형</td>
              <td>800</td>
              <td>8,000</td>
              <td>600</td>
              <td>6,000</td>
            </tr>
            
            
          </tbody>
        </table>
      </div>
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