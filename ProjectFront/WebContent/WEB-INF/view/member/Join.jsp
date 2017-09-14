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
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505270839"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505270839"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505270839"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505270839"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505270839"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/member.css?v=20170731' />
<link rel="stylesheet" href='//web-assets.socar.kr/template/asset/css/jquery-ui.css' />
<!--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />-->
<script src="https://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<!-- spock naver 프리미엄 로그 전환페이지 설정 -->
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"> </script>
<script type="text/javascript">
  var _nasa={};
  _nasa["cnv"] = wcs.cnv("2","0"); // 회원가입, 단계 0

</script>

<script type="text/javascript">
$(function(){


  $('#coupon_register_btn').click(function(){
    showLoginLayer(false,'/mypage/coupon',null);
    return false;
  });

  $('.member_referer_box').click(function(){
    if($(this).data('direction_img')) {
      $('#refer_direction').attr('src',$(this).data('direction_img'));
    }

    $('#member_referer').css('display','block');
    return false;
  });

  $('#btn_member_referer_submit').bind('click', function () {
    var code = $.trim($('#input_member_referer').val());

    if(code == ''){
      alert('프로모션코드(제휴코드)를 입력해 주세요.');
      return false;
    }

    $.ajax({
      url: "https://api.socar.kr/user/validate_member_referer_code",
      dataType: "jsonp",
      data: {
        code: code
      },
      success: function( res ) {
        if(1==res.retCode){
//          location.href='join/1/'+encodeURIComponent(code);

          set_cookie('tmp_invite', code)
          $("#invite").val(code);
          $('#content .simple_join').click();
        } else {
          alert(res.retMsg);
        }
      }
    });
    return false;
  });

    $('#btn_corp_submit').bind('click', function () {
        var id = $('#corp_id').text();

        if(id == ''){
            alert('법인/단체를 선택해주세요');
            return false;
        }

        $.doPost('/join/1', {
            corp_name: $('#input_corp_name').val(),
            corp_id: $('#corp_id').text()
        });

        return false;
    });

  $('.join-index .box .corp').click(function(){
    var type = $(':radio[name="corpType"]:checked').val();
    if(type == '관리자'){
      //if(confirm("법인/단체 관리자는 소속 구성원 관리 권한을 가지며 차량 예약 및 사용은 불가합니다. 차량을 이용하시려면 관리자 가입 후 별도로 구성원 가입을 해주세요.\n지금 법인/단체 관리자로 가입하시겠습니까?")) {
      window.location.href = '/join_corp/1';
      //}
    }
    else{
      $('#corp').css('display','block');
    }

    return false;
  });

  $( "#input_corp_name" ).autocomplete({
    source: function( request, response ) {
      $.ajax({
        url: "https://api.socar.kr/user/find_company",
        dataType: "jsonp",
        data: {
          name: request.term
        },
        success: function( data ) {
          if(data.result.length == 0){
            $('#corp_alert').css('display', '');
          }
          else{
            $('#corp_alert').css('display', 'none');
          }

          response( $.map( data.result, function( item ) {
            return {
              label: item.name,
              id: item.id
            }
          }));
        }
      });
    },
    minLength: 2,
    select: function( event, ui ) {
      $('#input_corp_name').val(ui.item.label);
      $('#corp_id').text(ui.item.id);
    },
    open: function() {
      $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
    },
    close: function() {
      $( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
    }
  });

  switch(window.location.hash)  {
  case '#rfr':
    $('.member_referer_box').click();
    break;
  case '#corpTypeC':
    $('#corpType1').attr("checked",true);
    break;
  case '#corpTypeM':
    $('#corpType2').attr("checked",true);
    break;
  default:
    break;
  }

  $("#simple-join").bind('click',function() {
    var ret = $('#is_agree').hasClass('on');
    if(!ret){
        alert('약관에 동의해야 회원가입이 가능합니다.');
        return false;
    }

    var sns_connect_id  = $('#sns_connect_id').val(),
      name  = $.trim($('#join_name').val()),
      email = $.trim($('#join_email').val()),
      mobile  = $.trim($('#join_mobile').val()),
      invite  = $.trim($('#invite').val()),
      advertise = $.cookie('tmp_advertise'),
      advertise_id = $.cookie('tmp_advertise_id'),
      validatedPhoneNum = $('#LGD_MOBILENUM').val(),
      auth_confirm_key = $('#auth_confirm_key').val();

    if(name == '' || /[^가-힣a-zA-Z\s]/.test(name)) {
      alert('이름을 확인해주세요');
      return false;
    }

    if(!is_email(email)) {
      alert('이메일 형식이 잘못되었습니다. 다시 입력해주세요.');
      return false;
    }

    if(mobile == '') {
        alert('휴대폰번호를 확인해주세요');
        return false;
    } else {
      var regExp = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

      if(!regExp.test(mobile)) {
        alert('잘못된 휴대폰 번호입니다. 하이픈(-)을 제외한 숫자만 입력해주세요.');
        return false;
      }
    }

    var join_way1='', meta = '';

    if($.trim(invite) != '') {
      if( is_email(invite) ) {
        join_way1 = '친구추천';
      }
      else {
        join_way1 = '제휴단체';
      }
    }

    if($.trim(advertise) != '' && advertise != null) {
      meta = {name:'쏘카광고', value:advertise, advertise_id:advertise_id};
    }

    var password = '', repassword = '';
    var joinType = $("#join_type").val();

    if($.trim(joinType) == "email") {
      password = $('#upw').val();
      repassword = $('#upw2').val();

      if(password == '' || repassword == ''){
        alert('패스워드를 입력해 주세요.');
        return false;
      }

      if ( password.length < 6 ) {
          alert('비밀번호는 6자리 이상으로 입력해 주세요.');
          return false;
      } else if ( ! /[a-zA-Z]/.test(password) || ! /[0-9]/.test(password) ) {
          alert('비밀번호는 영문과 숫자가 모두 포함되어야 합니다.');
          return false;
      }

      if(password != repassword) {
        alert('패스워드가 잘못되었습니다. 다시 입력해 주세요.');
        return false;
      }
    }

    if (auth_confirm_key == '') {
      alert('본인인증을 해주세요.');
      return false;
    }

    var agree_sms = ($('#mkt_agree_sms').hasClass('on')) ? 1 : 0,
        agree_dm = ($('#mkt_agree_email').hasClass('on')) ? 1 : 0,
        agree_push= ($('#mkt_agree_push').hasClass('on')) ? 1 : 0;

    $.ajax({
        url : "https://www.socar.kr/user/simple_add",
        data : {
          sns_connect_id : sns_connect_id,
          name: name,
          email: email,
          password: password,
          phone: mobile,
          join_way1: join_way1,
          join_way2: invite,
          channel: 'www',
          user_agent : navigator.userAgent,
          meta : JSON.stringify(meta),
          agree_sms : agree_sms,
          agree_dm : agree_dm,
          agree_push : agree_push,
          auth_confirm_key: auth_confirm_key,
        },
        type : "POST",
        dataType: "json",
        success : function(data){

        if(data.retCode == 1){
          ga('send','event','pc_web','signup','idmember');

          $('.mwLayer .mwCont').css('display','none');
          $('.mwLayer .joinSNS_result').css('display','block');
          $("#mwCont .close").css('display','none');

          $(".join_pr").unbind("click");
          $(".join_pr").bind("click",function() {
            var joinProc = $(this).attr("id");
            if(joinProc == 'join_continue') {
              ga('send', 'event', 'Join', 'click', 'now',1);
            }
            if(joinProc == 'join_later') {
              ga('send', 'event', 'Join', 'click', 'after',1);
            }
            $.doPost('https://www.socar.kr/user/login', {
              join_type : joinType,
              join_proc : joinProc,
              member_id : data.result.member_id,
              email   : $.trim(email),
              password  : password,
              oauth_uid : $('#oauth_uid').val(),
              provider  : $('#provider').val()
            });
          });
        } else {
          alert(data.retMsg + ' 코드 : ' + data.retCode);
        }
       },
       error : function(){
        alert('오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
       }
    });

    return false;
  });
});

$(document).ready(function(){
  $('.mwLayer .close').hover(function(){
    $('.mwLayer .joinSNS_Info .close_open_btn').show();
    $('.mwLayer .close').css('background-image','url(//web-assets.socar.kr/template/asset/images/common/btn_layer_close_s_on.gif)');
  },function(){
    $('.mwLayer .joinSNS_Info .close_open_btn').hide();
    $('.mwLayer .close').css('background-image','url(//web-assets.socar.kr/template/asset/images/common/btn_layer_close_s.gif)');
  });
});

// 본인인증 완료 후, 실행
function auth_confirm(res) {
  // 인증 값 입력
  $("#join_name").val(res.name);
  $("#join_mobile").val(res.phone);
  $("#auth_confirm_key").val(res.auth_confirm_key);
  // 인증 후 변경불가
  $("#join_name, #join_mobile").css('border-color','#fff');
  $("#join_name, #join_mobile").prop('readonly', true);
  $("#join_name, #join_mobile").css('color','#999');
  $("#btn_confirm_num, .tip_auth").hide();
}
</script>
</head>

<body id="member" class="join-index">
<div id="wrap">
	<jsp:include page="/template/Header.jsp"/>

  <div id="container">
    <div id="content">
      <div class="index"></div>
      <form name="join" method="post" action="">
        <fieldset>
          <div class="type box">
            <ul>
            
            <li class="first" style="">
              <h3><img src='//web-assets.socar.kr/template/asset/images/member/new/txt_join1_three_hour.png' alt="개인회원 가입" /></h3>
              <p><img src='//web-assets.socar.kr/template/asset/images/member/new/txt_join2_20150508.jpg' alt="간편하게 가입하고 편리하게 사용하세요! SNS 계정으로 빠르고 쉽게 시작하기!" /></p>
             
              <p class="btn">
                <!-- <a href="/join/1"><img src='//web-assets.socar.kr/template/asset/images/member/btn_join.gif' alt="가입하기" /></a> -->
                <img src='//web-assets.socar.kr/template/asset/images/member/btn_join.png' class="simple_join" style="cursor:pointer;" alt="가입하기" />
              </p>
            </li>

            </ul>



          </div>
        </fieldset>
      </form>

      <div class="tip">
        <ul>
        <li><strong>만 21세 이상, 운전면허 취득 1년 이후</strong> 쏘카를 사용할 수 있습니다.</li>
        <li>회원 가입시 운전면허 정보와 결제카드 등록이 필요합니다. 미리 <strong>운전면허증과 신용카드를 준비</strong>해주세요.</li>
        <li>타인의 정보를 도용해 가입하거나 허위정보로 가입해 차량을 이용할 경우 법적 처벌의 대상이 될 수 있습니다.</li>
        </ul>
      </div>
    </div>


        
<jsp:include page="/template/Aside.jsp"/>
<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>


</body>
</html>