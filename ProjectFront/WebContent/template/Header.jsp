<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- header -->
	<div id="header-wrapper">
	<div id="header">
		<h1><a href="<c:url value='/Main/Main.do' />"/><img width="80" src='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20160823' alt="SOCAR" /></a></h1>

		<ul class="gnb">
		<li><a href=<c:url value='/Guide/Guide.do' /> class="gnb1" title="서비스안내">서비스안내</a></li>
		<li><a href=<c:url value='/Guide/Fare.do' /> class="gnb3" title="요금안내">요금안내</a></li>
		<li><a href=<c:url value='/Notice/Notice.do' /> class="gnb4" title="고객센터">고객센터</a></li>

		
		<li><a href="<c:url value='/MyPage/MyPage.do' />" class="gnb5 require_login" title="마이페이지" data-href=https://www.socar.kr/mypage>마이페이지</a></li>
		

		<li><a href="<c:url value='/Reserve/Reserve.do' />" class="gnb6" title="쏘카 찾기·예약">쏘카 찾기·예약</a></li>
		</ul>

		<div class="util">
				
					<ul>
					<li><a href=https://www.socar.kr/user/login class="util1" title="로그인">로그인</a></li>
					<li><a href=<c:url value="/Join/Join.do" /> class="util2" title="회원가입">회원가입</a></li>
					</ul>
				
		</div>
	</div>
	</div>
	<!-- //header -->