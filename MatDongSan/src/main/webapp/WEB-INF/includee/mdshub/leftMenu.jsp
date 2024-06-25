<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
	<nav class="list-nav">
		<ul class="toggle">
			<li data-active="lessor" class="active"><a
				href="${pageContext.request.contextPath}/hubMain">임대인</a></li>
			<li data-active="lessee"><a
				href="${pageContext.request.contextPath}/lessee/lesseeMain">임차인</a></li>
		</ul>
	</nav>
	<ul class="sidebar-nav" id="sidebar-nav">



		<!--       <li class="nav-item"> -->
		<%--         <a class="nav-link " href="${pageContext.request.contextPath}/hubMain"> --%>
		<!--           <i class="bi bi-grid"></i> -->
		<!--           <span>임대인</span> -->
		<!--         </a> -->
		<%--         <a class="nav-link " href="${pageContext.request.contextPath}/lessee/lesseeMain"> --%>
		<!--           <i class="bi bi-grid"></i> -->
		<!--           <span>임차인</span> -->
		<!--         </a> -->
		<!--       </li>End Dashboard Nav -->

		<li class="nav-item">
		<a class="nav-link collapsed"
			data-bs-target="#tables-nav"  href="${pageContext.request.contextPath}/lessor/buildingInfo">
				<i class="bi bi-menu-button-wide"></i><span>건물관리</span>
<!-- 				<i class="bi bi-chevron-down ms-auto"></i> -->
		</a>
<!-- 			<ul id="components-nav" class="nav-content collapse " -->
<!-- 				data-bs-parent="#sidebar-nav"> -->
<!-- 				<li><a -->
<%-- 					href="${pageContext.request.contextPath}/lessor/buildingInfo"> --%>
<!-- 						<i class="bi bi-circle"></i><span>건물정보</span> -->
<!-- 				</a></li> -->
<!-- 				<li><a -->
<%-- 					href="${pageContext.request.contextPath}/lessor/cntrctInfo"> <i --%>
<!-- 						class="bi bi-circle"></i><span>임대현황</span> -->
<!-- 				</a></li> -->
<%-- 				<li><a href="${pageContext.request.contextPath}/lessor/payData"> --%>
<!-- 						<i class="bi bi-circle"></i><span>납부데이터</span> -->
<!-- 				</a></li> -->
<!-- 			</ul> -->
			</li>
		<!-- End Components Nav -->

<!-- 		<li class="nav-item"><a class="nav-link collapsed" -->
<!-- 			data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"> <i -->
<!-- 				class="bi bi-journal-text"></i><span>임대현황</span><i -->
<!-- 				class="bi bi-chevron-down ms-auto"></i> -->
<!-- 		</a> -->
<!-- 			<ul id="forms-nav" class="nav-content collapse " -->
<!-- 				data-bs-parent="#sidebar-nav"> -->
<!-- 				<li><a -->
<%-- 					href="${pageContext.request.contextPath}/lessor/recptAccount"> --%>
<!-- 						<i class="bi bi-circle"></i><span>수납계좌</span> -->
<!-- 				</a></li> -->
<!-- 				<li><a -->
<%-- 					href="${pageContext.request.contextPath}/lessor/virtualAccount"> --%>
<!-- 						<i class="bi bi-circle"></i><span>가상계좌</span> -->
<!-- 				</a></li> -->
<!-- 			</ul></li> -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" href="${pageContext.request.contextPath}/lessor/cntrctInfo">
			 <i class="bi bi-journal-text"></i><span>임대현황</span>
<!-- 			 <i class="bi bi-chevron-down ms-auto"></i> -->
		</a>
<!-- 			<ul id="forms-nav" class="nav-content collapse " -->
<!-- 				data-bs-parent="#sidebar-nav"> -->
<!-- 				<li><a -->
<%-- 					href="${pageContext.request.contextPath}/lessor/recptAccount"> --%>
<!-- 						<i class="bi bi-circle"></i><span>수납계좌</span> -->
<!-- 				</a></li> -->
<!-- 				<li> -->
<%-- 				<a href="${pageContext.request.contextPath}/lessor/virtualAccount"> --%>
<!-- 						<i class="bi bi-circle"></i><span>가상계좌</span> -->
<!-- 				</a></li> -->
<!-- 			</ul> -->
			</li>
		<!-- End Forms Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav"
			href="${pageContext.request.contextPath}/lessor/payData">
				<i class="bi bi-layout-text-window-reverse"></i><span>납부데이터</span>
		</a></li>
		<!-- End Tables Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-bar-chart"></i><span>민원관리</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="charts-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a
					href="${pageContext.request.contextPath}/lessor/complaints"> <i
						class="bi bi-circle"></i><span>민원관리</span>
				</a></li>
<%-- 				<li><a href="${pageContext.request.contextPath}/lessor/chit"> --%>
<!-- 						<i class="bi bi-circle"></i><span>전표관리</span> -->
<!-- 				</a></li> -->
				<li><a
					href="${pageContext.request.contextPath}/lessor/rentNotice"> <i
						class="bi bi-circle"></i><span>공지관리</span>
				</a></li>
<%-- 				<li><a href="${pageContext.request.contextPath}/lessor/ccpy"> --%>
<!-- 						<i class="bi bi-circle"></i><span>협력업체관리</span> -->
<!-- 				</a></li> -->
			</ul></li>
		<!-- End Charts Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav"
			href="${pageContext.request.contextPath}/lessor/schedulee"> <i
				class="bi bi-gem"></i><span>일정관리</span>
		</a></li>
		<!-- End Icons Nav -->

		<li class="nav-heading">Pages</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="${pageContext.request.contextPath}/mypage"> <i
				class="bi bi-person"></i> <span>Profile</span>
		</a></li>
		<!-- End Profile Page Nav -->

	</ul>

</aside>
<!-- End Sidebar-->