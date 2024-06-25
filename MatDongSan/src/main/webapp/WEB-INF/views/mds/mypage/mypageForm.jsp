<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">My Page</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>My Page</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Dashboard Section -->
    <section class="dashboard section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                    <!-- Start Dashboard Sidebar -->
                    <div class="dashboard-sidebar" style="height: 559px;">
                        <div class="user-image">
                            <img id="authImg1" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://via.placeholder.com/100x100">
                            <h3><div id="authNm1"></div>
                                <span><a href="javascript:void(0)" id="authId1"></a></span>
                            </h3>
                        </div>
                        <div class="dashboard-menu">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/mypage"><i class="lni lni-dashboard"></i> MyPage</a></li>
                                <li><a href="${pageContext.request.contextPath}/profile"><i class="lni lni-pencil-alt"></i> 내정보</a></li>
<%--                                 <li><a href="${pageContext.request.contextPath}/roomLike"><i class="lni lni-heart"></i> 찜목록</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/myContract"><i class="lni lni-circle-plus"></i> 계약관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/myRoom"><i class="lni lni-home"></i> 매물관리</a></li>
<%--                                 <li><a href="${pageContext.request.contextPath}/roomReport"><i class="lni lni-bolt-alt"></i> 허위매물</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/qna"><i class="lni lni-printer"></i> 1:1 문의</a></li>
                                <li><a href="${pageContext.request.contextPath}/myChatting"><i class="lni lni-envelope"></i> 채팅</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Dashboard Sidebar -->
                </div>
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
                        <!-- Start Details Lists -->
                        <div class="details-lists">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list">
                                        <div class="list-icon">
                                            <i class="lni lni-checkmark-circle"></i>
                                        </div>
                                        <h3>
                                            ${roomCnt}건
                                            <span>등록매물</span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list two">
                                        <div class="list-icon">
                                            <i class="lni lni-bolt"></i>
                                        </div>
                                        <h3>
                                            ${roomDealingCnt}건 진행중
                                            <span>계약 진행사항</span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                                <div class="col-lg-4 col-md-4 col-12">
                                    <!-- Start Single List -->
                                    <div class="single-list three">
                                        <div class="list-icon">
                                            <i class="lni lni-emoji-sad"></i>
                                        </div>
                                        <h3>
                                            0건
                                            <span>신고횟수</span>
                                        </h3>
                                    </div>
                                    <!-- End Single List -->
                                </div>
                            </div>
                        </div>
                        <!-- End Details Lists -->
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-12">
                                <!-- Start Activity Log -->
                                <div class="activity-log dashboard-block" style="min-height: 378px;">
                                    <h3 class="block-title">1:1 문의</h3>
                                    <ul>
                                    
                                    	<c:if test="${not empty qnaList}">
	                                    	<c:forEach items="${qnaList}" var="qnaVO">
		                                        <li>
		                                            <div class="log-icon">
		                                                <i class="lni lni-alarm"></i>
		                                            </div>
		                                            <a href="${pageContext.request.contextPath}/qnaDetail/${qnaVO.pstNo}" class="title">${qnaVO.pstSj}</a>
		                                            <span class="time">${qnaVO.pstWrtDe}</span>
		                                        </li>
	                                    	</c:forEach>
                                    	</c:if>
                                    	<c:if test="${empty qnaList}">
                                    	<p class="ListEmpty">등록된 문의 게시글이 없습니다.</p>
                                    	</c:if>
                                    </ul>
                                </div>
                                <!-- End Activity Log -->
                            </div>
                            <div class="col-lg-6 col-md-12 col-12">
                                <!-- Start Recent Items -->
                                <div class="recent-items dashboard-block" style="min-height: 378px;">
                                    <h3 class="block-title">찜 목록</h3>
                                    <ul>
                                        <c:if test="${not empty roomList}">
	                                        <c:forEach items="${roomList}" var="roomVO">
		                                        <li>
		                                            <div class="image">
		                                                <a href="javascript:void(0)"><img src="${pageContext.request.contextPath}${roomVO.webPath}" alt="#"></a>
		                                            </div>
		                                            <a href="javascript:void(0)" class="title">${roomVO.roomDetailDcSj}</a>
		                                            <span class="time">
		                                            ${roomVO.region1depthNm}
		                                            ${roomVO.region2depthNm}
		                                            ${roomVO.region3depthNm}
		                                            </span>
		                                            <span class="remove"><a href="javascript:void(0)"><i class="lni lni-close"></i></a></span>
		                                        </li>
	                                        </c:forEach>
                                        </c:if>
                                        <c:if test="${empty roomList}">
                                        <p class="ListEmpty">찜한 매물이 없습니다.</p>
                                        </c:if>
                                    </ul>
                                </div>
                                <!-- End Recent Items -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
<script>
$(function(){
	let data = {
		pstNo : `${postVO.pstNo}`,
		userNo : `${principal.userNo}`
	}
	let url = `\${cPath}/mypage/main`;
	fetch(url,{
		method: 'post',
		headers : {
			'Content-Type' : 'application/json'
		},
		body : JSON.stringify(data)
	})
	.then(response=>response.text())
	.then(data=>{
		console.log("넘어온 Data ==> ",data);
		
	})
	.catch(error=>{
		console.log("error=>",error);
	})
})
</script>