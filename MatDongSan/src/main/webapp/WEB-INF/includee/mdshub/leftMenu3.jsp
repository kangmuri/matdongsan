<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="${pageContext.request.contextPath}/admin">
          <i class="bi bi-grid"></i>
          <span>관리자</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="${pageContext.request.contextPath}/adminUser">
          <i class="bi bi-layout-text-window"></i><span>계정관리</span>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="${pageContext.request.contextPath}/adminUser">
              <i class="bi bi-circle"></i><span>일반회원</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

<!--       <li class="nav-item"> -->
<!--         <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#"> -->
<!--           <i class="bi bi-bar-chart"></i><span>허위매물관리</span> -->
<!--         </a> -->
		
      </li><!-- End Charts Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" href="${pageContext.request.contextPath}/adminQna">
          <i class="bi bi-journal-text"></i><span>1:1문의관리</span>
        </a>
      </li><!-- End Icons Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" href="${pageContext.request.contextPath}/adminCommunity">
          <i class="bi bi-journal-text"></i><span>커뮤니티 관리</span>
        </a>
      </li><!-- End Icons Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" href="${pageContext.request.contextPath}/adminRoom">
          <i class="bi bi-journal-text"></i><span>매물 검증</span>
        </a>
      </li><!-- End Icons Nav -->

    </ul>

  </aside><!-- End Sidebar-->