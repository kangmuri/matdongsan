<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/translations/ko.js"></script>
<!-- <script src="/resources/js/app/CKEditor/build/ckeditor.js"></script> -->
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Profile Settings</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">Home</a></li>
                        <li>1:1 문의 게시글 작성</li>
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
                    <div class="dashboard-sidebar">
                        <div class="user-image">
                            <img id="authImg1" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey">
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
                        <!-- Start Profile Settings Area -->
                        <div class="dashboard-block mt-0 profile-settings-block" style="margin-top: 0px;">
                        	<c:if test="${empty postVO}">
                            	<h3 class="block-title">문의글 작성</h3>
                            </c:if>
                        	<c:if test="${not empty postVO}">
                            	<h3 class="block-title">문의글 수정</h3>
                            </c:if>
                            <div class="inner-block">
                                <form class="profile-setting-form" method="POST">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group upload-image">
                                                <input name="pstSj" id="pstSj" type="text" value="${postVO.pstSj}" placeholder="제목을 입력하세요." style="margin: 0px 0px 10px 0px;">
												<textarea name="pstCn" id="ckEditor" placeholder="문의 내용을 입력하세요.">${postVO.pstCn}</textarea>
                                            </div>
                                        </div>
                                        <input type="hidden" id="userNo" value="${principal.userNo}">

                                        <c:if test="${empty postVO}">
	                                        <div class="col-12" style="display: flex;flex-direction: row-reverse;">
	                                            <div class="form-group button mb-0">
	                                                <button type="button" id="submBtn" class="btn">문의글 등록</button>
	                                            </div>
	                                        </div>
	                                        <a href="#" class="single-cat" id="speedUp">
												<img src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg" alt="#" width="25px" height="25px"/>
											</a>
                                        </c:if>

                                        <c:if test="${not empty postVO}">
	                                        <div class="col-12"  style="display: flex;flex-direction: row-reverse;">
	                                            <div class="form-group button mb-0">
	                                                <button type="button" id="upBtn" class="btn">수정</button>
	                                            </div>
	                                        </div>
                                        </c:if>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- End Profile Settings Area -->
                    </div>
                </div>
            </div>
        </div>
    </section>
<script>
//================= 자동입력 이벤트 ===================//
let pstSj = document.querySelector("#pstSj");

let speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	
	pstSj.value = "전세만기시와 전세금 반환 관련된 질문.";
	content.setData(`
			6월말 전세가 만기날짜입니다.<br> 2월말에 분명히 계약은 연장하지 않겠다고 말했습니다(증거문자있음)<br>
			다시 3월중순에 만기 때  분명 퇴거하겠다고 전화통화도 하고 문자로 내용도<br>
			전달했는데 ​세입자가 구해지지않으면 돈을 줄수없다?고합니다. 무슨 이런 말도 안되는 경우가....<br>
			여기서 궁금 한 점은<br>
			1. 보증보험에 가입해두었는데, 내용증명을 보내야 효력이 발생하나요?<br>
			2. 만기 이후 임차인 등기명령 진행하고 보증보험에 전세사고 신고 접수 하려고 하는데 기간이 오래걸리나요?<br>
			3. 1.2번을 안 하고, 집주인이 세입자 구해질때까지 대출이자부담해준다고하는데, 제 생각엔 선금으로 받는게 맞는거 같은데, 이럴경우 어떻게 하나요?ㅠㅠ질문이 많네요 죄송합니다
	`);
})
//=================================================//

	const userNo = document.querySelector("#userNo").value;
	console.log("userNo값==>",userNo);
	
	//=================등록용 스크립트===================//
    let submBtn = document.querySelector("#submBtn");
    submBtn?.addEventListener('click',function(e){
        e.preventDefault();
		
        let pstSj = document.querySelector("#pstSj").value;
        let pstCn = content.getData();
		let url = `\${cPath}/qna/create`;
	
		 if(pstSj == ""){
             alert("제목을 입력하세요");
             return;
         }
		 if(pstCn == ""){
             alert("내용을 입력하세요");
             return;
         }
		
        console.log("pstSj==>",pstSj);
        console.log("pstCn==>",content.getData());

        data = {
            pstSj : pstSj,
            pstCn : pstCn,
            userNo :userNo
        };
        
        fetch(url,{
            method: 'POST',
            headers:{
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(data),
        })
        .then(response=>response.text())
        .then(data=>{
            console.log(data);
            if(data == "ok"){
                Swal.fire({
						title: '문의가 접수되었습니다.',
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
    })
    
    
	//=================수정용 스크립트===================//
	
	let upBtn = document.querySelector("#upBtn");
    
	// console.log(document.querySelector("#upBtn"));
	// console.log("btn버튼값=>",upBtn);

	upBtn?.addEventListener('click',function(e){
        e.preventDefault();
		
        let pstSj = document.querySelector("#pstSj").value;
        let pstCn = content.getData();
        
        let url = `\${cPath}/qna/modify`;
        
        data = {
            pstNo : `${postVO.pstNo}`,
            pstSj : pstSj,
            pstCn : pstCn,
            userNo :userNo
        };
        
        fetch(url,{
            method: 'post',
            headers:{
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(data),
        })
        .then(response=>response.text())
        .then(data=>{
            console.log(data);
            if(data == "ok"){
                Swal.fire({
						title: '수정되었습니다.',
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
    })

    let content;
    ClassicEditor
	    .create( document.querySelector( '#ckEditor' ),{
	        language: "ko"
	    })
	    .then( newEditor => {
	    	content = newEditor;
		})
</script>
    <!-- End Dashboard Section -->
