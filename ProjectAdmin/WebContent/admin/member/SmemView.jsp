<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
   <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/favicon.png"/>
	
    <title>
      Acme | Home
    </title>
 
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/theme.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-reset.css" rel="stylesheet"/>
    <!-- <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->

    <!--external css-->
    <link href="${pageContext.request.contextPath}/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/flexslider.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.carousel.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.theme.css"/>

    <link href="${pageContext.request.contextPath}/bootstrap/css/superfish.css" rel="stylesheet" media="screen"/>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>

	<script>
	
	function smemUpdate(){
		if(document.getElementById("smem_one_id").value == ""){
			alert("비밀번호를 입력해주세요");
			document.getElementById("smem_one_id").focus();
			return false;
		}
		else if(document.getElementById("smem_one_id").value.length > 15){
			alert("비밀번호 15자안으로 입력해주세요");
			document.getElementById("smem_one_id").focus();
			return false;
		}	
		else if(document.getElementById("smem_two_id").value == ""){
			alert("비밀번호 확인을 입력해주세요");
			document.getElementById("smem_two_id").focus();
			return false;
		}
		else if(document.getElementById("smem_two_id").value.length > 15){
			alert("비밀번호 15자안으로 입력해주세요");
			document.getElementById("smem_two_id").focus();
			return false;
		}
		else if(document.getElementById("smem_one_id").value != document.getElementById("smem_two_id").value){
			alert("비밀번호와 비밀번호 확인이 다릅니다.");
			document.getElementById("smem_one_id").focus();
			return false;
		}
	}
	
	
	</script>
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   		<div class="container">
				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>회원정보 상세보기</h2><br/><br/>
				    
				    <form action="<c:url value='/Member/SmemModify.do'/>" method="post">
				    <input type='hidden' name="smem_id" value="${smem.smem_id}"/>
				    
				    <table class="table table-bordered table-striped">

						  <thead>
						  	<th style="width: 30%">항목</th>
						  	<th style="width: 70%">내용</th>
						  	
						  </thead>
			              <tbody>				
	                		<tr>
	                				<td><label>아이디</label></td>
	                				<td>
		                				<span>&nbsp;&nbsp;&nbsp;${smem.smem_id}</span>
	                				</td>
	                		</tr>
	                		<tr>
	                				<td><label>비밀번호</label></td>
	                				<td>
	                					<div class="col-xs-3">
	                					<input type="password" class="form-control" value="${smem.smem_pwd}" placeholder="Password" name="smem_pwd" id="smem_one_id"/>
	                					</div>
	                				</td>
	                		</tr>
	                		<tr>
	                				<td><label>비밀번호 확인</label></td>
	                				<td>
	                					<div class="col-xs-3"">
	                					<input type="password" class="form-control" value="${smem.smem_pwd}" placeholder="Password" name="smem_pwd_confirm" id="smem_two_id"/>
	                					</div>
	                				</td>
	                		</tr>
	                		<tr>
	                				<td><label>이름</label></td>
	                				<td><span>&nbsp;&nbsp;&nbsp;${smem.smem_name}</span></td>
	                		</tr>
	                		<tr>
	                				<td> <label>전화번호</label></td>
	                				<td><span>&nbsp;&nbsp;&nbsp;${smem.smem_tel}</span></td>
	                		</tr>
			                <tr>
	                				<td><label>가입일</label></td>
	                				<td><span>&nbsp;&nbsp;&nbsp;${smem.smem_date}</span></td>
	                		</tr>
			              </tbody>
			              </table>
			              <br/><br/><br/><br/><br/><br/><br/><br/>
			         <button type="submit" class="btn btn-info" onclick="return smemUpdate()">수정하기</button>
				     <a href="<c:url value='/Member/SimpleMemberDetail.do'/>" ><button type="button" class="btn btn-info" onclick="history.back()">뒤로가기</button></a>
				      
				    </form>
				  </div><!-- /example -->
			


 		</div>

    <!--small footer start -->
		<c:import url="/template/SmallFooter.jsp" />
    <!--small footer end-->

    <!-- js placed at the end of the document so the pages load faster
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js">
</script>
-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.8.3.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/hover-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.parallax-1.1.3.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/wow.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.carousel.js">
    </script>

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.easing.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/link-hover.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/superfish.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/jquery.cslider.js">
    </script>
    <script type="text/javascript">
      $(function() {

        $('#da-slider').cslider({
          autoplay    : true,
          bgincrement : 100
        });

      });
    </script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/common-scripts.js">
    
    <script>
      $('a.info').tooltip();
      $(window).load(function() {
        $('.flexslider').flexslider({
          animation: "slide",
          start: function(slider) {
            $('body').removeClass('loading');
          }
        });
      });
      $(document).ready(function() {
        $("#owl-demo").owlCarousel({
          items : 4
        });
      });
      jQuery(document).ready(function(){
        jQuery('ul.superfish').superfish();
      });

      new WOW().init();

    </script>
  </body>

</html>