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
		var goList = function(){
			
			location.href="<c:url value='/Reserve/ReserveList.do' />";
			
		};
		
		window.onload = function(){
			
			var rs_year = document.getElementById("rs_year");
			var rs_month = document.getElementById("rs_month");
			var rs_date = document.getElementById("rs_date");
			var re_year = document.getElementById("re_year");
			var re_month = document.getElementById("re_month");
			var re_date = document.getElementById("re_date");
			
			
			var re_time = document.getElementById("re_time");
			var rs_time = document.getElementById("rs_time");

			var now = new Date();
			var year = now.getFullYear();
			var mon = now.getMonth()+1;
			var date = now.getDate();
			
			for(var i=year;i<=year+1;i++){
				rs_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				re_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				
			}
			for(var i=1;i<=12;i++){
				rs_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				re_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				
			}
			for(var i=1;i<=31;i++){
				rs_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				re_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=0 ; i < 24 ; i++){
					if(i<10){i = "0"+i;}
				for(var j = 0 ; j<= 50 ; j += 10){
					if(j==0){j = "0"+j;}
					rs_time.innerHTML += "<option value='"+i+":"+j+"'>"+i+":"+j+"</option>";
					re_time.innerHTML += "<option value='"+i+":"+j+"'>"+i+":"+j+"</option>";
					if(j==00){j=0}
				}
			}
			
			
		};
		function findid(){
			window.open("<c:url value='/Member/FindId.do'/>","get","height=500,width=1200,resizable=no");
		}
		function findzone() {
			window.open("<c:url value='/Zone/FindZone.do'/>","get","height=500,width=1200,resizable=no");
		}
		function findcar() {
			if(document.getElementById("soz_code").value != "none"){
				window.open("<c:url value='/Car/FindCar.do'/>?soz_code="+document.getElementById("soz_code").value,"get","height=500,width=1200,resizable=no");
			}
			else{alert("우선 쏘카존을 선택하세요");}
		}
		function changePrice() {
			var price = document.getElementById("res_price");
			
			var rs_year = document.getElementById("rs_year");
			var rs_month = document.getElementById("rs_month");
			var rs_date = document.getElementById("rs_date");
			var re_year = document.getElementById("re_year");
			var re_month = document.getElementById("re_month");
			var re_date = document.getElementById("re_date");
			var re_time = document.getElementById("re_time");
			var rs_time = document.getElementById("rs_time");
			
			var car_land_price = document.getElementById("car_land_price");
			var car_jeju_price = document.getElementById("car_jeju_price");
			var car_price_so_wd = document.getElementById("car_price_so_wd");
			var car_price_so_we = document.getElementById("car_price_so_we");
			var car_insurance_one_hour = document.getElementById("car_insurance_one_hour");
			var car_insurance_one_day = document.getElementById("car_insurance_one_day");
			var car_insurance_two_hour = document.getElementById("car_insurance_two_hour");
			var car_insurance_two_day = document.getElementById("car_insurance_two_day");
			
			
			var startdate = new Date(rs_year.value+"-"+rs_month.value+"-"+rs_date.value+"T"+rs_time.value);
			var enddate = new Date(re_year.value+"-"+re_month.value+"-"+re_date.value+"T"+re_time.value);
			
			var restime = (enddate-startdate)/600/1000;
			
			price.value = restime*car_price_so_wd.value;
			alert(startdate.getDay());
			
		}

	</script>
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>예약 입력</h2><br/><br/>
				    <form action="<c:url value='/Coupon/InsertCoupon.do'/>" method="post">
				  
				    <input type="text" Id="car_land_price"/>
				    <input type="text" Id="car_jeju_price"/>
				    <input type="text" Id="car_price_so_wd"/>
				    <input type="text" Id="car_price_so_we"/>
				    <input type="text" Id="car_insurance_one_hour"/>
				    <input type="text" Id="car_insurance_one_day"/>
				    <input type="text" Id="car_insurance_two_hour"/>
				    <input type="text" Id="car_insurance_two_day"/>
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>회원 아이디</label></td>
					      	  		<td>
								      	<div class="col-xs-5">
									        <input type="text" disabled="disabled" id="smem" name="smem" />
								     		<input type="hidden" name="smem_id" id="smem_id" />
								     	</div>
								     	<button type="button" onclick="findid()" class="btn btn-info">검색</button>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쏘카존 검색</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
									        <input type="text" disabled="disabled" id="zone" name="zone" />
 									        <input type="hidden" value="none" id="soz_code" name="soz_code" />
								     	</div>
											<button type="button" onclick="findzone()" class="btn btn-info">검색</button>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 선택</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        	
									        <input type="text" disabled="disabled" id="car_i" name="car_i" />
 									        <input type="hidden" id="car_i_code" name="car_i_code" />
				     
								        </div>
											<button type="button" onclick="findcar()" class="btn btn-info">검색</button>		
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>카드번호</label></td>
					      	  		<td><div class="col-xs-5">
					      	  			<select id="card_code" name="card_code" class="form-control">
					      	  				
					      	  			</select>
					      	  		</div></td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>렌트시작일</label></td>
					      	  		<td>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="rs_year" name="rs_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="rs_month" name="rs_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="rs_date"  onchange="changePrice()" name="rs_date">
								        </select> 
								        </div>
								        <p class="col-xs-1">일</p>
								        <div class="col-xs-2">
								        <select class="form-control" onchange="changePrice()" id="rs_time" name="rs_time">
								        </select> 
								        </div>
					      	  			
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>렌트종료일</label></td>
					      	  		<td>
					      	  			<div class="col-xs-2" >
									        <select class="form-control" id="re_year" name="re_year">
									        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
									        <select class="form-control" id="re_month" name="re_month">
									        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
									        <select class="form-control" id="re_date" onchange="changePrice()"  name="re_date">
									        </select> 
								        </div>
								        <p class="col-xs-1">일</p>
								        <div class="col-xs-2">
									        <select class="form-control" onchange="changePrice()" id="re_time" name="re_time">
									        </select> 
								        </div>
								        <br/>
								        
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>보험료</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
					      	  			<select name="res_instype" class="form-control" onchange="changePrice()">
					      	  				<option value="type_one">자기부담금 최대 30만원</option>
					      	  				<option value="type_two">자기부담금 최대 70만원</option>
					      	  			</select>
					      	  			</div>
 					      	  		</td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>할인 유형</label></td>
					      	  		<td>
					      	  		    <input type="radio" name="res_sale_type" style="margin-left: 20px;" value="c"> 쿠폰</input> 
					        			<input type="radio" name="res_sale_type" style="margin-left: 50px;" value="p"> 포인트</input>
								    	<input type="radio" name="res_sale_type" checked="checked" style="margin-left: 50px;" value="n"> 미사용</input>
								    </td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>가격</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" value="0" class="form-control" disabled="disabled" id="res_price" name="res_price"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>카드키 사용</label></td>
					      	  		<td>
					      	  			
					      	  			<input type="radio" name="res_cardkey" style="margin-left: 20px;" value="y">예</input> 
					        			<input type="radio" name="res_cardkey" checked="checked" style="margin-left: 50px;" value="n">아니오</input>
					      	  		</td>
					      	  </tr>	
					      	  <tr>
					      	  		<td><label>결제 특이사항</label></td>
					      	  		<td>
					      	  			<textarea rows="5" cols="80" class="form-control"></textarea>
					      	  		</td>
					      	  </tr>
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info">입력하기</button>
				      <button type="button" class="btn btn-info" onclick="goList()">리스트 보기</button>
			
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