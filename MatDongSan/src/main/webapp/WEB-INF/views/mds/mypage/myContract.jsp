<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
        .single-list {
            transition: background-color 0.4s ease, color 0.4s ease;
        }

        .single-list:hover {
            background-color: #A374DB;
            cursor : pointer;
        }

        .single-list * {
            transition: color 0.4s ease;
        }

        .single-list:hover * {
            color: black;
        }
    </style>
<body>
	
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">계약관리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>계약관리</li>
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
                            <h3 class="block-title">계약관리</h3>
                            <nav class="list-nav">
                                <ul class="toggle">
                                    <li data-active="lessor"><a href="javascript:void(0)">임대</a></li>
                                    <li data-active="lessee"><a href="javascript:void(0)">임차</a></li>
                                </ul>
                            </nav>
                            <!-- Start Invoice Items Area -->
                            <div class="invoice-items default-list-style">
                                <!-- Start List Title -->
                                <div class="default-list-title">
                                    <div class="row align-items-center">
                                        <div class="col-lg-3 col-md-3 col-12">
                                            <p>계약번호</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>주소</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>계약자</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>피계약자</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>계약상태</p>
                                        </div>
                                        <div class="col-lg-1 col-md-1 col-12 align-right">
                                            <p>비고</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Title -->
                                <!-- Start Single List -->
                                <div class="cntrList">
	                               <div>
	                                    <div class="row align-items-center">
	                                        <div class="col-lg-12 col-md-12 col-12">
	                                            <h3 style="text-align: center;">보유중인 계약이 없습니다.</h3>
	                                        </div>
	                                    </div>
	                                </div>
                                </div>
                                <!-- End Single List -->
                                
                                <!-- Pagination -->
                           		<div id="Cpaging"></div>
                                <!--/ End Pagination -->
                                
                            </div>
                            <!-- End Invoice Items Area -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<script>
	$(function() {
		/************임대 임차 버튼 이벤트 주기*********/
		$(".toggle li").click(function() {
                $(".toggle li").removeClass("active");
                $(this).addClass("active");
                let active = $(this).data('active');
                requestList(active);
				
            });

		$(".toggle li").first().trigger('click');
		
		/************목록 값 가져오기*********/
        function requestList(active) {
            let url = `\${cPath}/myContract/\${active}`;

            $.ajax({
                url : url,
                type : 'get',
                dataType : 'json',
                success : function(data) {
//                 	console.log("넘어온 data값==>",data.cntList);
//                 	console.log("넘어온 page값==>",data.pagingHTML);
                	let str = makeCntrListDiv(data.cntList);	
//                 	let str = makeCntrListDiv(data.cntrctDealingVOList);
                	$(".cntrList").html(str);
                	$("#Cpaging").html(data.pagingHTML);
                },
                error : function(error) {
                    console.log("error ==>", error);
                }
            })
        }
        
        /************목록 출력하기*********/
        function makeCntrListDiv(data) {
        	let divStr = "";
        	if(data == null || data == '') {
        		divStr += `<div>
				                    <div class="row align-items-center">
				                    <div class="col-lg-12 col-md-12 col-12">
				                    <p style="margin: 63px 63px 63px 320px; font-size: 25px;">등록된 계약이 없습니다.</P>
				                    </div>
				                </div>
				            </div>`;
        	}
        	
        	if(Array.isArray(data)) {
        		for(let str of data) {
            		divStr += `
    			        		<div class="single-list">
    			                    <div class="row align-items-center">
    			                    <div class="col-lg-3 col-md-3 col-12">
    			                        <p>\${str.delngCntrctNo}</p>
    			                    </div>
    			                    <div class="col-lg-2 col-md-2 col-12">
    			                        <p>\${str.dctLocplc}</p>
    			                    </div>
    			                    <div class="col-lg-2 col-md-2 col-12">
    			                        <p>\${str.lessorNm}</p>
    			                    </div>
    			                    <div class="col-lg-2 col-md-2 col-12">
    			                        <p>\${str.lesseeNm}</p>
    			                    </div>
    			                    <div class="col-lg-2 col-md-2 col-12">`;

                                    if(str.dctStts == '계약중') {
                                        divStr +=   `<p class="pending">\${str.dctStts}</p>`;
                                    }else if(str.dctStts == '계약완료') {
                                        divStr +=   `<p class="paid">\${str.dctStts}</p>`;
                                    }else if(str.dctStts == '삭제') {
                                        divStr +=   `<p class="unpaid">\${str.dctStts}</p>`;
                                    }

    			                    divStr += `</div>
    			                    <div class="col-lg-1 col-md-1 col-12 align-right">
    			                        <ul class="action-btn">
    			                            <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
    			                        </ul>
    			                    </div>
    			                </div>
    			            </div>`;
            	}
        	}else {
        		divStr += `
	        		<div class="single-list">
	                    <div class="row align-items-center">
	                    <div class="col-lg-3 col-md-3 col-12">
	                        <p>\${str.delngCntrctNo}</p>
	                    </div>
	                    <div class="col-lg-2 col-md-2 col-12">
	                        <p>\${str.dctLocplc}</p>
	                    </div>
	                    <div class="col-lg-2 col-md-2 col-12">
	                        <p>\${str.lessorNm}</p>
	                    </div>
	                    <div class="col-lg-2 col-md-2 col-12">
	                        <p>\${str.lesseeNm}</p>
	                    </div>
	                    <div class="col-lg-2 col-md-2 col-12">`;
                        
                        if(str.dctStts == '계약중') {
                            divStr +=   `<p class="pending">\${str.dctStts}</p>`;
                        }else if(str.dctStts == '계약완료') {
                            divStr +=   `<p class="paid">\${str.dctStts}</p>`;
                        }else if(str.dctStts == '삭제') {
                            divStr +=   `<p class="unpaid">\${str.dctStts}</p>`;
                        }
                        
	                    divStr += `</div>
	                    <div class="col-lg-1 col-md-1 col-12 align-right">
	                        <ul class="action-btn">
	                            <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>`;
        	}
        	return divStr;
        }
        
        $(document).on('click', '.single-list', function() {
        	fContract(this);
        });
        /************계약 진행 화면으로 이동하기*********/
        function fContract(fThis) {
        	//임대 임차 구분하기
        	let active = $('.toggle .active').data('active');
        	//계약번호 찾기
        	let delngCntrctNo = $(fThis).find('p').first().text();
        	
        	//계약 완료이면 문서 출력 화면 이동
        	let cntrStts = $(fThis).find('p').last().text();
        	if(cntrStts == '계약완료') {
        		location.href = `\${cPath}/contract/loadDoc/\${delngCntrctNo}`;
        	}else {
        		//임대차 계약 화면으로 이동 임대면 수정또는 확인 화면 임차면 임차 계약 화면
            	location.href = `\${cPath}/contract/\${active}/\${delngCntrctNo}`;
        	}
        	
        }
	})
</script>
</body>
