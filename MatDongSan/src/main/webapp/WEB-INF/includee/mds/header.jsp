<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<security:authorize url="/authUser">
	<security:authentication property="principal.realUser" var="principal" scope="request"/>
	<security:authentication property="principal.authorities" var="role" scope="request"/>
</security:authorize>




<!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- /End Preloader -->
	    
    <!-- Start Header Area -->
    <header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                                <img src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/logo/mdslogo.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin: 0px 0px 0px 160px;">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class="active dd-menu collapsed" href="${pageContext.request.contextPath }/search/map" aria-label="Toggle navigation">지도</a>
<!--                                             data-bs-toggle="collapse" data-bs-target="#submenu-1-1" -->
<!--                                             aria-controls="navbarSupportedContent" aria-expanded="false" -->
                                            
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a class="dd-menu collapsed" href="javascript:void(0)"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-3"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">분양</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dd-menu collapsed" href="${pageContext.request.contextPath }/myContract"  aria-label="Toggle navigation">계약</a>
<!--                                             data-bs-toggle="collapse" data-bs-target="#submenu-1-4" -->
<!--                                             aria-controls="navbarSupportedContent" aria-expanded="false" -->
                                           
                                    </li>
                                    <li class="nav-item">
                                        <a class="dd-menu collapsed" href="${pageContext.request.contextPath }/room" aria-label="Toggle navigation">방내놓기</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="${pageContext.request.contextPath}/hubMain" aria-label="Toggle navigation">임대관리시스템</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dd-menu collapsed" href="javascript:void(0)"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-5"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">정보모음</a>
                                        <ul class="sub-menu collapse" id="submenu-1-5">
                                            <li class="nav-item"><a href="blog-grid-sidebar.html">청년지원사업</a>
                                            </li>
                                            <li class="nav-item"><a href="${pageContext.request.contextPath}/guide">전세사기가이드</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                            	<security:authorize url="/login">
		                            <div class="login-button">
		                                <ul>
		                                    <li>
		                                        <a href="${pageContext.request.contextPath}/login"><i class="lni lni-enter"></i> 로그인</a>
		                                    </li>
		                                    <li>
		                                        <a href="${pageContext.request.contextPath}/signup"><i class="lni lni-user"></i> 회원가입</a>
		                                    </li>
		                                </ul>
		                            </div>
                            	</security:authorize>
                            	
	                            <security:authorize url="/logout">
		                            <div class="login-button">
		                                <ul>
		                                    <li>
					                            <div class="user-image">
						                            <img id="authImg" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://via.placeholder.com/100x100" style="height: 50px; width: 50px; border-radius: 50%;">
						                        </div>
					                        </li>
				                        	<li>										
					                        	<!-- 드롭다운 메뉴바 -->
												<div class="dropdown_main">
												    <div class="dropdown_bar" id="authId">정보오류</div>
												    <!-- 드롭다운 시 보여질 태그 -->
												    <div class="dropdown_content">
												        <div class="dropdown_content_list" onclick="dorpdownMypage()">마이페이지</div>
												        <input type="hidden" id="hdPass" value="">
												        <div class="dropdown_content_list" onclick="dorpdownLogout()">로그아웃</div>
												    </div>
												</div>
				                        	</li>
				                        	<security:authorize access="hasRole('ROLE_ADMIN')">
				                        	<li>
					                            <div class="user-image">
						                            <a href="${pageContext.request.contextPath}/admin"><i class="lni lni-user"></i></a>
						                        </div>
					                        </li>
				                        	</security:authorize>
		                                </ul>
		                            </div>
	                            </security:authorize>
                        </nav> <!-- navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <!-- End Header Area -->
