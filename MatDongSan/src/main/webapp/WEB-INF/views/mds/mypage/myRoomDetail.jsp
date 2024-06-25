<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Ad Details</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>Ad Details</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Item Details -->
    <section class="item-details section">
        <div class="container">
            <div class="top-area">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-images">
                            <main id="gallery">
                                <div class="main-img">
                                    <img src="https://via.placeholder.com/1200x900" id="current" alt="#">
                                </div>
                                <div class="images">
                                <c:forEach items="${roomVO.room.tbAttachFileList}" var="List">
									<img src="${pageContext.request.contextPath}${List.webPath}" class="img" alt="#">
                                </c:forEach>
                                </div>
                            </main>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-info">
                            <h2 class="title">${roomVO.roomDetailDcSj}</h2>
                            <p class="location"><i class="lni lni-map-marker"></i><a href="javascript:void(0)">New York, USA</a></p>
                            <h3 class="price">$999</h3>
                            <div class="list-info">
                                <h4>Informations</h4>
                                <ul>
                                    <li><span>유형:</span> ${roomVO.room.roomTy}</li>
                                    <li><span>방형태:</span> ${roomVO.livingType}</li>
                                    <li><span>방갯수:</span> ${roomVO.roomCnt}개</li>
                                </ul>
                            </div>
                            <div class="contact-info">
                                <ul>
                                    <li>
                                        <a href="tel:+002562352589" class="call">
                                            <i class="lni lni-phone-set"></i>
                                            +00 256 235 2589
                                            <span>Call & Get more info</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mailto:example@gmail.com" class="mail">
                                            <i class="lni lni-envelope"></i>
                                        </a>
                                    </li>
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
								<li><span>전세금액:</span> ${roomVO.roomLshl}만원</li>
								<br>
								<li><span>월세금액:</span> ${roomVO.roomMhl}만원</li>
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
								<li><span>즉시입주여부:</span> ${roomVO.roomAsapYn}</li>
								<br>
								<li><span>입주가능날짜:</span> ${roomVO.roomMvnPosbl}</li>
                            </ul>
                        </div>
                        <!-- End Single Block -->
                        <!-- Start Single Block -->
                        <div class="single-block comments">
                            <h3>Comments</h3>
                            <!-- Start Single Comment -->
                            <div class="single-comment">
                                <img src="https://via.placeholder.com/300x300" alt="#">
                                <div class="content">
                                    <h4>Luis Havens</h4>
                                    <span>25 Feb, 2023</span>
                                    <p>
                                        There are many variations of passages of Lorem Ipsum available, but the majority
                                        have suffered alteration in some form, by injected humour, or randomised words
                                        which don't look even slightly believable.
                                    </p>
                                    <a href="javascript:void(0)" class="reply"><i class="lni lni-reply"></i> Reply</a>
                                </div>
                            </div>
                            <!-- End Single Comment -->
                        </div>
                        <!-- End Single Block -->
                    </div>
                    <div class="col-lg-4 col-md-5 col-12">
                        <div class="item-details-sidebar">
                            <!-- Start Single Block -->
                            <div class="single-block author">
                                <h3>등록인</h3>
                                <div class="content">
                                    <img src="https://via.placeholder.com/200x200" alt="#">
                                    <h4>Miliya Jessy</h4>
                                    <span>Member Since May 15,2023</span>
                                    <a href="javascript:void(0)" class="see-all">See All Ads</a>
                                </div>
                            </div>
                            <!-- End Single Block -->
                            <!-- Start Single Block -->
                            <div class="single-block ">
                                <h3>Location</h3>
                                <div class="mapouter">
                                    <div class="gmap_canvas"><iframe width="100%" height="300" id="gmap_canvas"
                                            src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                                            href="https://putlocker-is.org"></a><br>
                                        <style>
                                            .mapouter {
                                                position: relative;
                                                text-align: right;
                                                height: 300px;
                                                width: 100%;
                                            }
                                        </style><a href="https://www.embedgooglemap.net">google map code for website</a>
                                        <style>
                                            .gmap_canvas {
                                                overflow: hidden;
                                                background: none !important;
                                                height: 300px;
                                                width: 100%;
                                            }
                                        </style>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Block -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Item Details -->
