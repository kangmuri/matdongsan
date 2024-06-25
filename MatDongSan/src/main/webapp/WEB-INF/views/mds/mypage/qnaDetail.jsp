<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">1:1문의</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>1:1문의 상세</li>
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

                <!-- 수정해야될 게시글 상세 form 들어갈자리 -->
                <div class="col-lg-8 col-md-12 col-12" >
                    <div class="single-inner">
                        <div class="post-details">
                            <div class="detail-inner" style="min-height: 558px;">
                                <h3 class="post-title">
                                    ${postVO.pstSj}
                                </h2>
                                <hr>
                                <!-- post meta -->
                                <ul class="custom-flex post-meta">
                                    <li>
                                        <a href="javascript:void(0)">
                                            <i class="lni lni-calendar"></i>
                                            ${postVO.pstWrtDe}
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <i class="lni lni-comments"></i>
                                            ${principal.userNm}
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <i class="lni lni-eye"></i>
                                            확인여부
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/qna/modify/${postVO.pstNo}" style="margin: 0px 0px 0px 300px">수정</a>
                                        <a href="javascript:void(0)" onclick="detBtn(this)" style="margin: 0px 0px 0px 10px">삭제</a>
                                    </li>
                                </ul>
                                <hr>
                                <p>${postVO.pstCn}</p>
                                <!-- Post Social Share -->
                            </div>
                            <!-- Comments -->
                            <div class="post-comments">
                                <h3 class="comment-title"><span>문의 답글</span></h3>
                                <ul class="comments-list">
                                	<c:if test="${empty replyVOList}">
                                		<h6>답변이 등록되지 않았습니다.</h6>
                                	</c:if>
                                	<c:if test="${not empty replyVOList}">
                                		<c:forEach items="${replyVOList}" var="replyVO">
		                                    <li>
		                                        <div class="comment-desc">
		                                            <div class="desc-top">
		                                                <h6>${replyVO.userNm}</h6>
		                                                <span class="date">${replyVO.cmntWrtDt}</span>
		                                            </div>
		                                            <p>
		                                                ${replyVO.cmntCn} 
		                                            </p>
		                                        </div>
		                                    </li>
                                		</c:forEach>
                                	</c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 수정해야될 게시글 상세 form 들어갈자리 끝부분 -->
            </div>
        </div>
    </section>
    <script>
  		//=========================== 댓글 스크립트 =========================//
  		let rpBtn = document.querySelector("#rpBtn");
  		rpBtn.addEventListener('click',function(e){
  			e.preventDefault()
  			// console.log(document.querySelector("textarea[name='reply']").value);
  			let cmntCn = document.querySelector("textarea[name='reply']").value;
  			
  			url=`\${cPath}/reply`;
  			
  			data = {
  				cmntCn : cmntCn, //댓글내용 
 				userNo : `${principal.userNo}`, //사용자번호 
  				pstNo : `${postVO.pstNo}`  //게시글번호
  			};
  			
  			fetch(url,{
  				method : 'post',
  				headers : {
  					'Content-type' : 'application/json'
  				},
  				body : JSON.stringify(data)
  			})
  			.then(resp=>resp.text())
  			.then(data=>{
  				console.log(data);
  			})
  			
  		})
  		//======================== 댓글 스크립트 END ========================//
  		
  		
        //===================== 삭제 스크립트 ========================//
        function detBtn(e){
            Swal.fire({
                title: '정말 삭제하시겠습니까?',
                text: '',
                icon: 'warning',
                showCancelButton: true, 
                confirmButtonColor: '#6528b5', 
                confirmButtonText: '삭제', 
                cancelButtonText: '취소',
            })
            .then(result => {
                if (result.isConfirmed) { 
                    fDel();
                }
            });
        }

        function fDel(){
            let data = {
                pstNo : `${postVO.pstNo}`,
                userNo : `${principal.userNo}`
            }
            let url = `\${cPath}/qna/remove`;
            fetch(url,{
                method: 'post',
                headers : {
                    'Content-Type' : 'application/json'
                },
                body : JSON.stringify(data)
            })
            .then(response=>response.text())
            .then(data=>{
                console.log(data);
                if(data == "ok"){
                    Swal.fire({
                        title: '삭제가 완료되었습니다.',
                        text: '',
                        icon: 'success',
                        confirmButtonColor: '#6528b5'
                    }).then(result => {
                        location.href = cPath+"/qna";
                    });
                }
            })
            .catch(error=>{
                console.log("error=>",error);
            })
        }
      //===================== 삭제 스크립트 END ========================//


    </script>
<!-- End Dashboard Section -->
