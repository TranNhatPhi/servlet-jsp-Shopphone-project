<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!-- ----------------------------------------------------------------------------------Header -->
<link href="../../template/web/css/style.css" rel="stylesheet" type="text/css"/>
<!-- ----------------------------------------------------------------------------Header-Banner-->
<div class="header">
	
        
	<!-- -------------------------------------------------------------------------Header-Masthead-->
	<div class="masthead" style="background-color: #F7941D; color: black;">
	    <div class="masthead__container">
	        <div class="masthead__logo">  
	            <a href="<c:url value='/trang-chu'/>" class="masthead__logo-text">TH Shop</a>
	            <i class="fas fa-bars masthead__menu-toggle"></i>
	        </div>
        	<form class="masthead__find" action='<c:url value="/all-product-by-brand"></c:url>' method="get">
        		<input type="hidden" name="search" value ="true">
	        	<input type="text" name="keyWord" class="masthead__find-input" placeholder="Bạn tìm gì...">
	            <button type="submit" class="masthead__find-btn" >
	                <i class="fa fa-search"></i>
	                <span>Tìm kiếm</span>
	                <span></span>
	            </button>
        	</form>       
	        <div class="masthead__icon">
	        	<c:if test="${not empty USERMODEL}">
					<a  href="<c:url value='/profile'/>" class="masthead__login">
					<i class="fa fa-user"></i>
                    <p class="masthead__login-item" style="color: black">${USERMODEL.fullName}</p></a>
				</c:if>
				<c:if test="${empty USERMODEL}">
					<a href="<c:url value='/dang-nhap?action=login'/>" class="masthead__login">
		                <i class="fa fa-user"></i>
				<p class="masthead__login-item" style="color: black">Login</p>
	            	</a>
				</c:if>
	            <a href='<c:url value="/cart"></c:url>' class="masthead__cart" style="color: black">
	            	<c:if test="${empty sumQuantity}">
	            		<div class="number">0</div>
	            	</c:if>
	            	<c:if test="${not empty sumQuantity}">
	            		<div class="number">${sumQuantity}</div>
	            	</c:if>
	                
	                <i class="fa fa-shopping-cart"></i>
	                <p class="masthead__cart-item" style="color: black">Cart</p>
	            </a>
                        
                    <a href="<%=request.getContextPath()%>/admin-dashboard" class="masthead__cart">
	                <p class="masthead__cart-item" style="color: black">ADMIN</p>
	            </a>    
                        
                        
	        </div>
                        
	        </div>
	    </div>
	    
</div>