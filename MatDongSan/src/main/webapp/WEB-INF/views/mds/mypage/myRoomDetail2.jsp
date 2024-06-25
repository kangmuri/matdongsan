<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">매물관리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>매물관리</li>
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
                <div class="col-lg-3 col-md-12 col-12">
                    <!-- Start Dashboard Sidebar -->
                    <div class="dashboard-sidebar">
                        <div class="user-image">
                            <img id="authImg1" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://via.placeholder.com/100x100" >
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
                <div class="col-lg-9 col-md-12 col-12">
                    <div class="main-content">
                        <div class="dashboard-block mt-0" style="margin-top: 0px;">
                            <h3 class="block-title">매물상세조회</h3>
                            <!-- 매물 상세 페이지 시작 -->
                            
                            <div class="container">
					            <div class="top-area" style="width: 805px;">
					                <div class="row">
					                    <div class="col-lg-6 col-md-12 col-12">
					                        <div class="product-images">
					                            <main id="gallery">
												<!-- 이미지 슬라이드 -->
												<div id="carouselExample" class="carousel slide">
												
													<div class="carousel-inner">
														<div class="carousel-item active">
															<img src="${pageContext.request.contextPath}${roomVO.room.tbAttachFileList[0].webPath}" class="d-block w-100" alt="..." style="width: 399px;height: 299px;">
														</div>
													 	
														<c:forEach items="${roomVO.room.tbAttachFileList}" var="List">
															<div class="carousel-item">
																<img src="${pageContext.request.contextPath}${List.webPath}" class="d-block w-100" alt="..." style="width: 399px;height: 299px;">
															</div>
													 	</c:forEach>
													</div>
													
													<button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
													  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
													  <span class="visually-hidden">Previous</span>
													</button>
													<button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
													  <span class="carousel-control-next-icon" aria-hidden="true"></span>
													  <span class="visually-hidden">Next</span>
													</button>
												</div>
												<!-- 이미지 슬라이드 -->
					                            </main>
					                        </div>
					                    </div>
					                    <div class="col-lg-6 col-md-12 col-12" style="margin: 16px;width: 373px;">
					                        <div class="product-info">
					                            <h5 class="title"  style="margin:0px 0px 10px 0px">${roomVO.roomDetailDcSj}</h5>
					                            <p class="location"><i class="lni lni-map-marker"></i><a href="javascript:void(0)">${roomVO.room.region1depthNm} ${roomVO.room.region2depthNm} ${roomVO.room.region3depthNm}</a></p>
					                            <div class="list-info">
					                            <br>
					                                <h5 style="margin:0px 0px 10px 0px">기본정보</h5>
					                                <ul>
					                                    <li><span>유형:</span> ${roomVO.room.roomTy}</li><br>
					                                    <li><span>방형태:</span> ${roomVO.livingType}</li><br>
					                                    <li><span>방갯수:</span> ${roomVO.roomCnt}개</li>
					                                </ul>
					                            </div>
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <div class="item-details-blocks">
					                <div class="row">
					                    <div class="col-lg-8 col-md-7 col-12">
					                        <!-- Start Single Block -->
					                        <div class="single-block description">
					                            <h3>상세설명</h3>
					                            <pre>${roomVO.roomDetailDc}</pre>
					                        </div>
					                        <!-- End Single Block -->
					                        <!-- Start Single Block -->
					                        <div class="single-block">
					                            <h3>가격정보</h3>
					                            <ul>
													<li><span>거래종류:</span> ${roomVO.delngType}</li>
													<br>
													<li><span>보증금:</span> ${roomVO.roomDeposit}만원</li>
													<br>
													<c:if test="${not empty roomVO.roomLshl}">
														<li><span>전세금:</span> ${roomVO.roomLshl}만원</li>
													</c:if>
													<c:if test="${not empty roomVO.roomMhl}">
														<li><span>월세금:</span> ${roomVO.roomMhl}만원</li>
													</c:if>
													<br>
													<li><span>관리비:</span> ${roomVO.roomManagectPc}만원</li>
					                            </ul>
					                        </div>
					                        <!-- End Single Block -->
					                        <!-- Start Single Block -->
					                        <div class="single-block">
					                            <h3>상세정보</h3>
					                            <ul>
													<li><span>유형:</span> ${roomVO.room.roomTy}</li>
													<br>
													<li><span>방형태:</span> ${roomVO.livingType}</li>
													<br>
													<li><span>방갯수:</span> ${roomVO.roomCnt}개</li>
													<br>
													<li><span>해당층수/전체층수:</span> ${roomVO.room.roomFloor}층/${roomVO.room.floorCnt}층</li>
													<br>
													<li><span>면적:</span> ${roomVO.roomSize}㎡</li>
													<br>
													<li><span>방/욕실:</span> ${roomVO.roomCnt}개/${roomVO.room.roomBtrCnt}개</li>
													<br>
													
													<c:if test="${roomVO.roomAsapYn == 'Y'}">
													<li><span>즉시입주여부:</span> 가능</li>
													</c:if>
													<c:if test="${roomVO.roomAsapYn == 'N'}">
													<li><span>즉시입주여부:</span> 불가능</li>
													</c:if>
													<br>
													
													<c:if test="${empty roomMvnPosbl}">
													<li><span>입주가능날짜:</span> 추후 결정예정</li>
													</c:if>
													<c:if test="${not empty roomMvnPosbl}">
													<li><span>입주가능날짜:</span> ${roomVO.roomMvnPosbl}</li>
													</c:if>
					                            </ul>
					                        </div>
					                        <!-- End Single Block -->
					                    </div>
					                    <div class="col-lg-4 col-md-5 col-12">
					                        <div class="item-details-sidebar">
					                         
					                            <!-- Start Single Block -->
					                            <div class="single-block ">
					                                <h3>지도</h3>
					                                <div id="map" style="width:100%;height:240px;"></div>
					                            </div>
					                            <!-- End Single Block -->
					                            <!-- Start Single Block -->
						                        <div class="single-block tags">
						                            <h3>옵션</h3>
						                            <ul>
						                            <c:forEach items="${roomVO.room.roomLvlhList}" var="lvlnList">
					                                	<li><a href="javascript:void(0)">${lvlnList.fcltySe}</a></li>
									                </c:forEach>
						                            </ul>
						                        </div>
						                        <!-- End Single Block -->
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <br>
					            <button class="btn btn-primary" id="modify" style="background-color: #5830E0">수정 하기</button>
					        </div>
                            <!-- 매물 상세 페이지 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </section>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b8d71513ea3b29c07e0606ae94468834"></script>
<script>
	$('#modify').on('click', function() {
		location.href = `\${cPath}/room/modify`;
	})
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(`${roomVO.room.y}`, `${roomVO.room.x}`), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(`${roomVO.room.y}`, `${roomVO.room.x}`); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	position: markerPosition
	});
	
	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	
</script>