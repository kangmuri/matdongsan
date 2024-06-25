<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
    <security:csrfMetaTags/>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">회원가입</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12"> 
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>회원가입</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->
	
    <!-- start Registration section -->
    <section class="login registration section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="form-head">
                        <h4 class="title">회원가입</h4>
                        <form>
                        <security:csrfInput/>
							<div class="form-group">
								<label>이름</label>
								<input type="text" name="userNm" class="form-control" id="userNm"  required />
							</div>
							
							<div class="form-group">
								<label>아이디</label>
								<input type="text" id="userId" name="userId" class="form-control" id="userId" required />
								<div id="idCk"></div>
							</div>
							
							<div class="form-group">
								<label>비밀번호</label>
								<input type="password" name="userPw" class="form-control" id="userPw" required/>
								<span id="pwError"></span>
							</div>
							
							<div class="form-group">
								<label>이메일</label>
								<input type="text" name="userEmail" class="form-control" id="userEmail" required/>
								<span id="emailError"></span>
							</div>
							
							<div class="form-group">
								<label>전화번호</label>
								<input type="text" name="userMbtlnum" class="form-control" id="userMbtlnum" required/>
								<span id="telError"></span>
							</div>
							
							<div class="form-group">
								<label>생년월일</label>
								<div>
									<input type="date" name="userAge" id="userAge" class="form-control" />
								</div>
							</div>
							
							<label>성별</label>
							<div>
								<input type="radio" name="userSexdstn" value="M" class="styled__Radio-sc-1y93qlq-1 jpAOgG" checked/>
								<label for="huey">남성</label>
								<input type="radio" name="userSexdstn" value="F" class="styled__Radio-sc-1y93qlq-1 jpAOgG"/>
								<label for="dewey">여성</label>
							</div>
							<div class="button">
	                        	<button type="submit" class="btn">회원가입</button>
	                        </div>
	                        <p class="outer-link">이미 계정이 있나요?<a href="${pageContext.request.contextPath}/login"> 로그인</a></p>
	                        <a href="#" class="single-cat" id="speedUp">
                              	<img src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg" alt="#" width="25px" height="25px"/>
                            </a>
						</form>
                    </div>
                </div>
            </div>
        </div>
    <script src="${pageContext.request.contextPath}/resources/js/app/signup/signup.js"></script>
    </section>
    <!-- End Registration section -->