<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Profile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
      
		<!-- 이미지 슬라이드 -->
        <div class="col-xl-4">
          <div class="card">
            <div class="card-body">
            <h5 class="card-title">매물 사진</h5>
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

                <div class="carousel-inner">
                <c:forEach items="${roomVO.room.tbAttachFileList}" var="List">
                  <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}${List.webPath}" class="d-block w-100" height="350px" width="100px" alt="...">
                  </div>
                </c:forEach>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
            </div>
          </div>
        </div>
		<!-- 이미지 슬라이드 -->
        <div class="col-xl-8">
          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">
                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">기본정보</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">상세정보</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">매물삭제/검수</button>
                </li>
              </ul>
              <div class="tab-content pt-2">
                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title">${roomVO.roomDetailDcSj}</h5>
                  <pre style="font-size: 15px; overflow: hidden;">${roomVO.roomDetailDc}</pre>

                  <h5 class="card-title">기본정보</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">유형</div>
                    <div class="col-lg-9 col-md-8">${roomVO.room.roomTy}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">방형태</div>
                    <div class="col-lg-9 col-md-8">${roomVO.livingType}</div>
                  </div>
                  
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">방갯수</div>
                    <div class="col-lg-9 col-md-8">${roomVO.roomCnt}개</div>
                  </div>
                  
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">해당층수/전체층수</div>
                    <div class="col-lg-9 col-md-8">${roomVO.room.roomFloor}층/${roomVO.room.floorCnt}층</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">면적</div>
                    <div class="col-lg-9 col-md-8">${roomVO.roomSize}㎡</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">주소</div>
                    <div class="col-lg-9 col-md-8">${roomVO.room.region1depthNm} ${roomVO.room.region2depthNm} ${roomVO.room.region3depthNm}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">상세주소</div>
                    <div class="col-lg-9 col-md-8">${roomVO.room.bldgAddr}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">방/욕실</div>
                    <div class="col-lg-9 col-md-8">${roomVO.roomCnt}개/${roomVO.room.roomBtrCnt}개</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">즉시입주여부</div>
                    <c:if test="${roomVO.roomAsapYn == 'N'}">
                    	<div class="col-lg-9 col-md-8">불가능</div>
                    </c:if>
                    <c:if test="${roomVO.roomAsapYn == 'Y'}">
                    	<div class="col-lg-9 col-md-8">가능</div>
                    </c:if>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">입주가능날짜</div>
                    <c:if test="${empty roomVO.roomMvnPosbl}">
                    	<div class="col-lg-9 col-md-8">상의 후 결정</div>
                    </c:if>
                    <c:if test="${not empty roomVO.roomMvnPosbl}">
                    	<div class="col-lg-9 col-md-8">${roomVO.roomMvnPosbl}</div>
                    </c:if>
                  </div>
                </div>

				<!-- 상세정보 -->
                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">
                <div class="tab-pane fade show active profile-overview" id="profile-overview">
	                <h5 class="card-title">가격정보</h5>
	                  
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">거래종류</div>
	                    <div class="col-lg-9 col-md-8">${roomVO.delngType}</div>
	                  </div>
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">보증금</div>
	                    <div class="col-lg-9 col-md-8">${roomVO.roomDeposit}만원</div>
	                  </div>
	                  <c:if test="${not empty roomVO.roomLshl}">
		                  <div class="row">
		                    <div class="col-lg-3 col-md-4 label">전세금액</div>
		                     <div class="col-lg-9 col-md-8">${roomVO.roomLshl}만원</div>
		                  </div>
	                  </c:if>
	                  <c:if test="${not empty roomVO.roomMhl}">
		                  <div class="row">
		                    <div class="col-lg-3 col-md-4 label">월세금액</div>
		                    <div class="col-lg-9 col-md-8">${roomVO.roomMhl}만원</div>
		                  </div>
	                  </c:if>
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">관리비</div>
	                    <div class="col-lg-9 col-md-8">${roomVO.roomManagectPc}만원</div>
	                  </div>
                
					<h5 class="card-title">옵션</h5>

					
					<c:if test="${roomVO.room.roomParkngYn == 'N'}">
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">주차가능여부</div>
	                    <div class="col-lg-9 col-md-8">없음</div>
	                  </div>
					</c:if>
					<c:if test="${roomVO.room.roomParkngYn == 'Y'}">
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">주차가능여부</div>
	                    <div class="col-lg-9 col-md-8">있음</div>
	                  </div>
					</c:if>
					
					<c:if test="${roomVO.room.roomElvtrYn == 'Y'}">
	                  <div class="row">
	                    <div class="col-lg-3 col-md-4 label">엘레베이터여부</div>
	                    <div class="col-lg-9 col-md-8">있음</div>
	                  </div>
					</c:if>
					<c:if test="${roomVO.room.roomElvtrYn == 'N'}">
					 <div class="row">
	                    <div class="col-lg-3 col-md-4 label">엘레베이터여부</div>
	                    <div class="col-lg-9 col-md-8">없음</div>
	                  </div>
					</c:if>
	                  <c:forEach items="${roomVO.room.roomLvlhList}" var="lvlnList">
		                  <div class="row">
		                    <div class="col-lg-3 col-md-4 label">${lvlnList.fcltyCd}</div>
		                    <div class="col-lg-9 col-md-8">${lvlnList.fcltySe}</div>
		                  </div>
	                  </c:forEach>
                	</div>
                </div>
				<!-- 상세정보 END -->
<%--                     ${roomVO.roomDealingStts} --%>

                <div class="tab-pane fade pt-3" id="profile-change-password">
                    <div class="text-center">
                    <c:if test="${roomVO.roomDealingStts == '검수중'}">
                      <button type="submit" id="upBtn" class="btn btn-primary" style="width: 40%;height: 50%;">검수완료</button>
                    </c:if>
                      <button type="submit" id="delBtn" class="btn btn-danger" style="width: 40%;height: 50%;">매물삭제</button>
                    </div>
                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>
    </section>
  </main><!-- End #main -->
<script>
//=================== 매물 등록 스크립트 =================== //
let upBtn = document.querySelector("#upBtn");
upBtn.addEventListener('click',function(e){
	e.preventDefault();
	Swal.fire({
		title: '매물을 등록 하시겠습니까?',
		text: '',
		icon: 'warning',
		showCancelButton: true, 
		confirmButtonColor: '#6528b5', 
		confirmButtonText: '등록', 
		cancelButtonText: '취소',
	})
	.then(result => {
		if (result.isConfirmed) { 
			fUp();
		}
	});
})

function fUp(){
	let url = `\${cPath}/adminRoom/modify/${roomVO.roomDelngNo}`;
	fetch(url,{
		method: 'get'
	})
	.then(response=>response.text())
	.then(data=>{
		console.log(data);
		if(data == "ok"){
			Swal.fire({
				title: '등록이 완료되었습니다.',
				text: '',
				icon: 'success',
				confirmButtonColor: '#6528b5'
			}).then(result => {
				location.href = cPath+"/adminRoom";
			});
		}
	})
	.catch(error=>{
		console.log("error=>",error);
	})
}
//=================== 매물 등록 스크립트 END =================== //

// =================== 매물 삭제 스크립트 =================== //
let delBtn = document.querySelector("#delBtn");
delBtn.addEventListener('click',function(e){
	e.preventDefault();
	Swal.fire({
		title: '매물을 삭제 하시겠습니까?',
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
})

function fDel(){
	let url = `\${cPath}/adminRoom/delete/${roomVO.roomDelngNo}`;
	fetch(url,{
		method: 'get'
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
				location.href = cPath+"/adminRoom";
			});
		}
	})
	.catch(error=>{
		console.log("error=>",error);
	})
}
//=================== 매물 삭제 스크립트 END =================== //


</script>