<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">찜 목록</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>찜 목록</li>
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
                <div class="col-lg-9 col-md-12 col-12">
                    <div class="main-content">
                        <div class="dashboard-block mt-0" style="margin-top: 0px;">
                            <h3 class="block-title">찜 목록</h3>
                            <!-- Start Items Area -->
                            <div class="my-items">
                                <!-- Start List Title -->
                                <div class="item-list-title">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <p>Job Title</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Category</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Condition</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <p>Action</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Title -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="https://via.placeholder.com/100x100" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">Brand New Iphone 11 Pro Max</a></h3>
                                                    <span class="price">$800</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="https://via.placeholder.com/100x100" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">New Ferrari F80 Car</a></h3>
                                                    <span class="price">$13000</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Car</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Vehicle</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="https://via.placeholder.com/100x100" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">Rick Morton- Magicius Chase</a></h3>
                                                    <span class="price">$500</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="https://via.placeholder.com/100x100" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">HP Laptop 6560b core i7</a></h3>
                                                    <span class="price">$750</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Pagination -->
                                <div class="pagination left">
                                    <ul class="pagination-list">
                                        <li><a href="javascript:void(0)">1</a></li>
                                        <li class="active"><a href="javascript:void(0)">2</a></li>
                                        <li><a href="javascript:void(0)">3</a></li>
                                        <li><a href="javascript:void(0)">4</a></li>
                                        <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                    </ul>
                                </div>
                                <!--/ End Pagination -->
                            </div>
                            <!-- End Items Area -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>