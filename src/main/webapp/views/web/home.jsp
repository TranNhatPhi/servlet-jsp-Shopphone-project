<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="UTF-8">
	<title>Phone Store</title>
    </head>
    <body>
	<!-- ------------------------------------Body-------------------------------------------------->
	<div class="content">
	    <div class="content__container">
		<div class="main">
		    <div class="homepage">
			<div class="homepage-image">
			    <div class="homepage-left">
				<i class="fas fa-chevron-left homepage-left-icon-back"></i> <a
				    href="" class="homepage-left-item"> <img
					src="https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/668ca5128790251.615d8356916ac.gif"
					alt="" class="homepage-left-img">
				</a> <i class="fas fa-chevron-right homepage-left-icon-next"></i>
			    </div>
			    <div class="homepage-right">
				<a href="#" class="homepage-right-item"> <img
					src="https://storage.oxii.vn/Cache/Sites/OXII/Storage/Images/2022/10/19/1200x628/apple-am-tham-ra-mat-hai-mau-ipad-moi-vao-toi-qua.png"
					alt="">
				</a> <a href="#" class="homepage-right-item"> <img
					src="https://www.hnmac.vn/media/cache/data/tin-tuc/2019/05/macbook-pro-2019-1200x628-cr-1200x630.jpg"
					alt="">
				</a>
			    </div>
			</div>
		    </div>
		</div>
		<!-- ------------------------------------------Sale----------------------------------- -->
		<div class="list_product">
		    <div class="list_product-info sale-background" style="background-color: gray">
			<div class="list_product-info-title sale-background-title">
			    <img
				src="https://scontent.fsgn13-2.fna.fbcdn.net/v/t1.15752-9/245849585_1249486075570417_3169783331560524360_n.png?_nc_cat=108&ccb=1-5&_nc_sid=ae9488&_nc_ohc=n9M-Q-bZLLIAX9aqDzf&_nc_ht=scontent.fsgn13-2.fna&oh=0630424ccd68a740bd1db3688f44c696&oe=61994A8E"
				alt="">
			</div>
			<div class="list_product-info-group ">
			    <div class="list_product-info-list sale-background-list ">

			    </div>
			</div>
		    </div>
		</div>
		<!-- ------------------------------------------Top_Sell_Phone----------------------------------- -->
		<div class="list_product">
		    <div class="list_product-info">
			<div class="list_product-info-title">
			    <span>ĐIỆN THOẠI PHỔ BIẾN NHẤT</span> <a href="">Xem tất cả</a>
			</div>
			<div class="list_product-info-group">
			    <div class="list_product-info-list">
				<c:forEach var="item" items="${listProduct}">
				    <a
					href='<c:url value="/product-detail?productId=${item.productId}"></c:url>'
					class="list_product-info-item">
					    <img src='<c:url value="${item.imageId.imageSmall}"/>' alt="Hinh">
					<p class="list_product-info-item-name">${item.productName}</p>
					
					<p class="list_product-info-item-price">
					    <c:set var="p" value="${item.price}"/>
					    <fmt:setLocale value="vi_VN"/>
					    <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
					   
					</p>
				    </a>
				</c:forEach>
			    </div>
			</div>
		    </div>
		</div>
		<!--------------------------------------------Top_New_info----------------------------------- -->


	    </div>
	</div>
	<script src="<c:url value='/template/web/js/cataloghome.js'/>"></script>
    </body>
</html>