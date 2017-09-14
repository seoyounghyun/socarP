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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505264771"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505264771"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505264771"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505264771"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505264771"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href="/template/mypage/../asset/css/mypage.css?v=20170731" />
<style>
li.guide { height: 22px; background: none !important; padding-left: 0 !important; }
</style>



					<div class="group membercard">
						<h3><img src="/template/mypage/../asset/images/mypage/tit_membercard_1223.gif" alt="추가 카드키" /></h3>
						<div class="txt_more">선택한 카드로 차량 문 개폐가 가능합니다.</div>
						<ul class="list_membcard" id="list_membcard">
							<li class="on" data-regist="0">
								<dl>
									<dt>
										<input type="radio" name="member_card" id="no_member_card" checked="checked" class="inp_radio member_card_radio" value="0" />
										<label for="no_member_card">선택 안 함</label>
									</dt>
									<dd>모바일앱 스마트키로 차량 문 개폐가 가능합니다.</dd>
								</dl>
							</li>
						
							<li>
								<dl>
									<dt>
										<input type="radio" name="member_card" id="tmoney" class="inp_radio no_regist" />
										<label for="tmoney">T-money 카드</label>
									</dt>
									<dd>
										<div class="tmoney">
											<input type="text" class="inp_tmoney" id="tmoney_card_number" value="" maxlength="16" />
										
											<a href="#" class="btnS" id="regist_t"><span>등록</span></a>
										
											<span id="inp_info" class="err inp_info">16자리 카드번호를 입력해주세요.</span>
											<!-- <span class="err">이미 사용중인 카드입니다.</span>
											<span class="ok">사용 가능한 카드입니다.</span> -->
										</div>
										<ul class="tip">
											<li class="red">T-money 카드로는 서울지역 쏘카존 차량만 적용 가능합니다.</li>
											<li>T-money 카드는 회원카드로 사용되며 요금 결제와는 무관합니다.</li>
											<li>캐시비카드,신용카드가 아닌 T-money 카드 번호를 입력해주세요.</li>
											<li>T-money 카드 번호는 카드 뒷면에서 찾을 수 있습니다.</li>
										</ul>
									</dd>
								</dl>
							</li>
						
						
							<li>
								<dl>
									<dt>
										<input type="radio" name="member_card" id="socarcard" class="inp_radio no_regist" />
										<label for="socarcard">회원카드</label>
									</dt>
									<dd>
										<div class="socar_card">
										
											<a href="#" id="socarCardLayer" data-state="0" class="btnS"><span>발급신청</span></a>
										
										</div>
										<p class="more">카드 발급 신청시 1,500원이 결제됩니다.</p>
									</dd>
								</dl>
							</li>
						
						
						</ul>
						<ul class="tip mt10">
							<li>차량 운행 중 카드 변경이 불가능하니, 운행 전 신중하게 변경해주세요.</li>
							<!-- <li>쏘카카드 선택시, 구매 감사의 의미로 운행 지원 패키지(쿠폰 등)를 같이 제공합니다. <a href="#" class="link">패키지 구경하기</a></li> -->
						</ul>
					</div>

					
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/index_txt10.gif" alt="회원제 정보" /></h3>

						<table cellspacing="0" class="cols">
						<colgroup><col width="120" /><col /><col /><col /></colgroup>
						<thead>
						<tr>
							<th>종류</th>
							<th style="width: 136px;">연회비</th>
							<th>보험혜택</th>
							<th>이용요금</th>
						</tr>
						</thead>
						<tbody>
						
							<tr>
								<td><strong>SO회원</strong></td>
								<td>

									<strong><em style="color: Red">무료</em></strong>
								</td>
								<td>
									대인, 대물, 자손 적용<br />
									<br />
									자기부담금 선택 가능<br />
									- 자기부담금 최대 30만원 : 1일 기준 7,000원~<br />
									- 자기부담금 최대 70만원 : 1일 기준 5,000원~<br />
									<br />
									휴차보상료 별도 부과
								</td>
								<td>최대 70% 할인<br />(주중/주말/심야 할인)</td>
							</tr>
						
						</tbody>
						</table>
<!--                        <p class="centerBtn">
							<a href="#"><img src="/template/mypage/../asset/images/mypage/btn_change.gif" alt="회원제 변경하기" /></a>
						</p> -->
					</div>
					
				

				
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/index_txt12.gif" alt="회원탈퇴" /></h3>
						<div class="gbx">
							<div style="margin-bottom: 3px;">쏘카를 이용하시는데 불편함이 있으셨나요?</div>
							<ul>
								<li>이용 불편 및 문의사항은 고객센터 1:1문의에 남겨주시면 답변드리겠습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<a id="btn_user_drop" href="#" class="">
								<img src="/template/mypage/../asset/images/mypage/btn_leave.gif" alt="탈퇴하기" />
							</a>
						</p>

					</div>
				
				</div>
			</div>
		</div>


		
<jsp:include page="/template/Aside.jsp" />

<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>



</div>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src='/template/asset/images/daum_close.png' id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1;width:20px;height:20px;" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>


</body>
</html>