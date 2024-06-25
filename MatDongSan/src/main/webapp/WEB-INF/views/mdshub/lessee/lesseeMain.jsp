<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#main {
	margin-left: 55px;
}

.col-lg-8 {
	width: 100%;
}
/* 메인 캘린더  */
#calendar{
	width: 39vw;
	height: 480px !important;
	margin-right: 0px;
	margin-left: 47px;
	background-color: white;
}
.chartRent{
  	width: 50%;  
}
.cardCont{
	display: flex; 
}
.fc-daygrid-event {
	white-space: normal;
}
</style>
<main id="main" class="main">
	
	<div class="pagetitle" style="display:flex">
		<h1>임차현황</h1>
		<span class="small-button active-btn collectBtn btn btn-primary"
			data-bs-toggle="modal" data-bs-target="#exampleModal2">연동하기</span>

		<!-- 보안코드 인증 모달 -->
		<div class="modal fade" id="exampleModal2" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">임차인 계정 연동</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<input class="form-control mail-check-input" name="code"
							placeholder="인증번호 6자리를 입력해주세요!" maxlength="6"> <span
							id="mail-check-warn"></span>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal" id="close2">닫기</button>
						<button type="button" class="btn btn-primary"
							id="mail-Check-input">확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 모달 끝 -->
	<!-- 실거주 후기 모달 -->
	<div class="modal fade" id="basicModal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Basic Modal</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="card-body">
					<h5 class="card-title">Floating labels Form</h5>
	
					<!-- Floating Labels Form -->
					<form name="postingReportForm" class="row g-3">
						<div class="col-md-12">
							<div class="form-floating">
								<input type="text" name="pstRprtSj" class="form-control" id="floatingName" placeholder="신고제목"> 
									<label for="floatingName">후기제목</label>
							</div>
						</div>
						<div class="col-12">
							<div class="form-floating">
								<textarea name="pstRprtCn" class="form-control" placeholder="신고사유" id="floatingTextarea" style="height: 200px;"></textarea>
								<label for="floatingTextarea">후기내용</label>
							</div>
						</div>
						<div class="text-center">
							<input name="pstNo" type="hidden" value="${commDetail.pstNo }">
							<button type="submit" class="btn btn-primary" id="reportBtn">제출</button>
							<button type="reset" class="btn btn-secondary">초기화</button>
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						</div>
					</form>
					<!-- End floating Labels Form -->
	
				</div>
			</div>
		</div>
	</div>
	<!-- 실거주 후기 모달 -->

	</div>
	<!-- End Page Title -->

	<section class="section dashboard">
		<div class="row">

			<!-- Left side columns -->
			<div class="col-lg-8">
				<div class="row">

					<!-- Sales Card -->
					<c:forEach items="${contractDataList }" var="contractData">
					<div class="col-xxl-4 col-md-6">
						<div class="card info-card sales-card">
							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown">
									<i class="bi bi-three-dots"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>
								<div class="card-body">
									<h5 class="card-title">
										${contractData.rentRoom.rentBldg.bldgNm} <span>| ${contractData.cntrctrNm}</span>
									</h5>
	
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-house"></i>
										</div>
										<div class="ps-3">
											<h6>${contractData.rentRoom.room.roomUnit }&nbsp;<span>호</span></h6>
											<span class="text-muted small pt-2 ps-1">계약기간</span>
											<span class="text-success small pt-1 fw-bold">${contractData.dctBgng} ~</span> 
											<span class="text-success small pt-1 fw-bold">${contractData.dctEnd}</span> 
	
										</div>
									</div>
								</div>

						</div>
					</div>
					</c:forEach>
					<!-- End Sales Card -->
					</div>
					<!-- End Reports -->

					<!-- Recent Sales -->
					<div class="col-12">
						<div class="card recent-sales overflow-auto">

							<div class="filter">
								<a class="icon" href="#" data-bs-toggle="dropdown"><i
									class="bi bi-three-dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<li class="dropdown-header text-start">
										<h6>Filter</h6>
									</li>

									<li><a class="dropdown-item" href="#">Today</a></li>
									<li><a class="dropdown-item" href="#">This Month</a></li>
									<li><a class="dropdown-item" href="#">This Year</a></li>
								</ul>
							</div>

							<div class="card-body">
								<h5 class="card-title">민원</h5>

								<table class="table table-borderless datatable">
									<thead>
										<tr>
											<th scope="col">민원번호</th>
											<th scope="col">민원종류</th>
											<th scope="col">민원내용</th>
											<th scope="col">처리희망일시</th>
											<th scope="col">처리상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${complaintList }" var="complaints">
											<tr>
												<th scope="row">${complaints.cvlcpNo }</th>
												<td>${complaints.cvlcpKnd }</td>
												<td>${complaints.cvlcpCn }</td>
												<td>${complaints.cvlcpHopeDt }</td>
												<c:if test="${complaints.cvlcpStts eq '처리완료'}">
												<td><span class="badge bg-success">${complaints.cvlcpStts }</span></td>
												</c:if>
												<c:if test="${complaints.cvlcpStts eq '처리중'}">
												<td><span class="badge bg-danger">${complaints.cvlcpStts }</span></td>
												</c:if>
												<c:if test="${complaints.cvlcpStts eq '처리불가'}">
												<td><span class="badge bg-warning">${complaints.cvlcpStts }</span></td>
												</c:if>
											</tr>
										</c:forEach>
										
									</tbody>
								</table>
								${pagingHTML }

							</div>
						</div>
					</div>
					<!-- End Recent Sales -->
					

				</div>
			</div>
			<!-- End Left side columns -->


		<!-- End Recent Activity -->
	<div class="cardCont">
		<!-- Budget Report -->
		<div class="card chartRent">
			<div class="filter">
				<a class="icon" href="#" data-bs-toggle="dropdown"><i
					class="bi bi-three-dots"></i></a>
				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
					<li class="dropdown-header text-start">
						<h6>Filter</h6>
					</li>

					<li><a class="dropdown-item" href="#">Today</a></li>
					<li><a class="dropdown-item" href="#">This Month</a></li>
					<li><a class="dropdown-item" href="#">This Year</a></li>
				</ul>
			</div>

			<div class="card-body pb-0 ">
				<h5 class="card-title">
				Lessee Report
				</h5>
				
				<div id="budgetChart" style="min-height: 400px;" class="echart"></div>
				<script>
				// 일단 이거슨 아주 좋은 방법이 아님을 인지하삼
				// 배열로 데이터값을 받아주기 위해 배열 선언
				let contractData = [];
				
				//forEach문을 써서 리스트값을 출력해줘서 배열에 넣어준다
				<c:forEach items="${contractDataList}" var="contract">
// 					  console.log("${contract}");
				      contractData.push({
						 name: "${contract.rentRoom.rentBldg.bldgNm}",
						 value:["${contract.grnteAmt}"-0,"${contract.mhlAmt}"-0,"${contract.managectAmt}"-0,"${contract.mtRcpmnyAmt}"-0,(${contract.mhlAmt}+${contract.managectAmt})*0.1]
					  })
			    </c:forEach>;
				
			   //배열에 넣은 값을 map으로 넣어준다 
			  let seriesData = contractData.map(item => ({
				        value: item.value,
				        name: item.name
				    }));
			  
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({

                    legend: {
                      data: contractData.name
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [{
                          name: '보증금'
//                           max: 100000000
                        },
                        {
                          name: '임대료'
//                           max: 10000000
                        },
                        {
                          name: '관리비'
//                           max: 1000000
                        },
                        {
                          name: '월입금액'
//                           max: 5000000
                        },
                        {
                          name: '부가세'
//                           max: 1000000
                        },
//                         {
//                           name: 'Marketing'
// //                           max: 1000000
//                         }
                      ]
                    },
                    series: [{
//                       name: 'Budget vs spending',
                      type: 'radar',
                      data: seriesData
                    }]
                  });
                });
              </script>
			</div>
		</div>
		<!-- End Budget Report -->

	<jsp:include page="/WEB-INF/views/mdshub/lessee/schedule.jsp"></jsp:include>
	</div>
	</section>

</main>
<!-- End #main -->

<form action="<c:url value='/lessee/lesseeMain'/>" id="searchForm">
	<input type="hidden" name="currentPage" />
</form>
					
<script>
//민원페이징
$(function() {
	const $searchForm = $("#searchForm");
	$(document).on("click", "[data-page]", function() {
		let page = $(this).data('page');
		searchForm.currentPage.value = page;
		$searchForm.submit();
	});
})

$('#mail-Check-input').click(function () {
	console.log("눌러땅")
	const inputCode = $('input[name=code]').val();
	const $resultMsg = $('#mail-check-warn');
	let url = cPath + "/lessor/cntrctInfo/check/" + inputCode;
	fetch(url).then(response => response.text()) // 응답을 텍스트로 변환
    .then(result => {
//         console.log("결과: " + result); // 결과 출력
	
        if (result === 'fail') {
            Swal.fire({
            	title: "인증 실패",
                text: "보안코드가 유효하지 않습니다.",
                icon: "error"
                
            });
        } else {
            Swal.fire({
            	title: "인증 성공",
                text: "보안코드가 유효합니다.",
                icon: "success"
            }).then(() => {
                // 인증 성공 후 두 번째 요청을 보냄
                const secondUrl = cPath + "/lessor/cntrctInfo/insert/" + inputCode;

                fetch(secondUrl, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                .then(response => response.text()) // 응답을 텍스트로 변환
                .then(res => {
//                     console.log("두 번째 결과: " + res);
					if(res=="success"){
                    // 두 번째 요청 성공 후 처리
                    Swal.fire({
                        title: "계약 정보 연동 성공",
                        text: "계약 정보 연동에 성공하였습니다.",
                        icon: "success"
                    }).then(result => {
        				location.reload(true);
        			});
					}
                    document.getElementById('close2').click();
                })
                .catch(error => {
                    console.error("두 번째 요청 에러:", error);
                    Swal.fire({
                        title: "오류",
                        text: "계약 정보 처리 중 오류가 발생했습니다.",
                        icon: "error"
                    });
                });
            });
        }
    })
    .catch(error => {
        console.error("에러 발생:", error);
        Swal.fire({
            title: "오류",
            text: "요청 처리 중 오류가 발생했습니다.",
            icon: "error"
        });
    });
});

</script>












