<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">
		<nav class="list-nav">
			<ul class="toggle">
				<li data-active="lessor" ><a
					href="${pageContext.request.contextPath}/hubMain">임대인</a></li>
				<li data-active="lessee" class="active"><a href="${pageContext.request.contextPath}/lessee/lesseeMain">임차인</a></li>
			</ul>
		</nav>
		<!--       <li class="nav-item"> -->
		<%--          <a class="nav-link " href="${pageContext.request.contextPath}/lessee/lesseeMain"> --%>
		<!--           <i class="bi bi-grid"></i> -->
		<!--           <span>임차인</span> -->
		<!--         </a> -->
		<%--          <a class="nav-link " href="${pageContext.request.contextPath}/hubMain"> --%>
		<!--           <i class="bi bi-grid"></i> -->
		<!--           <span>임대인</span> -->
		<!--         </a> -->
		<!--       </li>End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav"
			href="${pageContext.request.contextPath}/lessee/rentNotice"> <i
				class="bi bi-menu-button-wide"></i><span>공지사항</span>
		</a></li>
		<!-- End Components Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-journal-text"></i><span>납부관리</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="forms-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="${pageContext.request.contextPath}/lessee/payData">
						<i class="bi bi-circle"></i><span>납부내역</span>
				</a></li>
<!-- 				<li><a href="forms-layouts.html"> <i class="bi bi-circle"></i><span>납부통계</span> -->
<!-- 				</a></li> -->
			</ul></li>
		<!-- End Forms Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav"
			href="${pageContext.request.contextPath}/lessee/contractRent"> <i
				class="bi bi-layout-text-window-reverse"></i><span>계약관리</span>
		</a></li>
		<!-- End Tables Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-bar-chart"></i><span>민원</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="charts-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a
					href="${pageContext.request.contextPath}/lessee/complaints"> <i
						class="bi bi-circle"></i><span>민원 및 청소 신청</span>
				</a></li>
			</ul></li>
		<!-- End Charts Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav"
			href="${pageContext.request.contextPath}/lessee/community"> <i
				class="bi bi-gem"></i><span>커뮤니티</span>
		</a></li>

<!-- 		<li class="nav-item"><a class="nav-link collapsed" -->
<!-- 			data-bs-target="#icons-nav" -->
<%-- 			href="${pageContext.request.contextPath}/lessee/rdReview"> <i --%>
<!-- 				class="bi bi-gem"></i><span>실거주자 후기 작성</span> -->
<!-- 		</a></li> -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav"
			href="${pageContext.request.contextPath}/lessee/schedule"> <i
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