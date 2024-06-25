<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <header id="header" class="header fixed-top d-flex align-items-center">
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<security:authorize url="/authUser">
	<security:authentication property="principal.realUser" var="principal" scope="request"/>
</security:authorize>
<style>
.header .login-button {
  margin-left: 40px;
}

.header .login-button ul {
  padding: 14px 20px;
  border-radius: 30px;
}

.header .login-button ul li {
  display: inline-block;
  margin-right: 10px;
  padding-right: 10px;
  border-right: 1px solid #eee;
  height: 100%;
}

.header .login-button ul li:last-child {
  margin: 0;
  padding: 0;
  border: none;
}

.header .login-button ul li a {
  color: #081828;
  font-size: 14px;
  font-weight: 500;
}

.header .login-button ul li a:hover {
  color: #5830E0;
}

.header .login-button ul li a i {
  display: inline-block;
  color: #5830E0;
  margin-right: 4px;
  font-size: 15px;
}

/* .header .login-button { */
/*     display: none; */
/*   } */
  .header .navbar-collapse {
    top: 59px !important;
    border-top: 1px solid #eee;
  }
  
  /*  header의 마이페이지 드롭다운 =요한= */
 .dropdown_main {
    position: relative;
    display: inline-block;
    user-select: none;
}

.dropdown_bar {
	color : "black";
    display: inline-flex;
    align-items: center;
    cursor: pointer;
    font-size: 20px;
    font-weight: bold;
}

.dropdown_bar svg {
    vertical-align: middle;
    margin-left: 5px;
}

.dropdown_content {
    position: absolute;
    display: none;
    margin-top: 5px;
    width: 120px;
    background: white;
    border-radius: 5%;
    box-shadow: 4px 4px 10px #000000;
    animation: fade-in 1s ease;
}

.dropdown_content a {
    text-align: left;
    color: block;
    padding: 0.5rem;
    text-decoration: none;
    display: block;
    font-size: 16px;
}

.drop_icon2 {
    display: none;
}

@keyframes fade-in {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.dropdown_content_list{
	margin: 15px 10px 15px 10px;
    display: flex;
    align-content: flex-start;
    justify-content: space-around;
}

 /*  header의 마이페이지 드롭다운 END =요한= */
</style>

	<!-- main로고 -->
    <div class="d-flex align-items-center justify-content-between">
      <a href="${pageContext.request.contextPath}/hubMain" class="logo d-flex align-items-center">
        <img src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/img/mdshub.png" alt="">
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
	<!-- main로고 END -->


    <nav class="header-nav ms-auto" style="margin: 200px;">
		<ul class="d-flex align-items-center">
      
	        <li class="nav-item d-block d-lg-none">
	          <a class="nav-link nav-icon search-bar-toggle " href="#">
	            <i class="bi bi-search"></i>
	          </a>
	        </li>
        
        <!-- index 로고 -->
		  <a href="${pageContext.request.contextPath}/index">
		  	<img alt="" src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/img/mdslogo.png" class="mdslogo">
		  </a>
			<security:authorize url="/login">
	 		<li class="nav-item">
		        <a class="nav-link collapsed" href="<c:url value='/login/loginForm.jsp'/>">
		        </a>
	     	</li>
			</security:authorize>
		<!-- index 로고 END -->
        
		<!-- 로그인 정보 시작 -->
			<security:authorize url="/logout">
				<div class="login-button" style="margin: 10px;">
					<ul>
						<li>
							<div class="user-image">
								<img id="authImg"
									src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey"
									alt="https://via.placeholder.com/100x100"
									style="height: 50px; width: 50px; border-radius: 50%;">
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
					</ul>
				</div>
			</security:authorize>
		<!-- 로그인 정보 END -->
		
		
			
		</ul>
    </nav>
</header>

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  