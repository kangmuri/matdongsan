<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/payData.css"
	rel="stylesheet">
			<!-- *********************************************** 납부데이터 모달창 시작 *********************************************** -->
					<div class="content-w3x dep-8tn">
						<div class="layer-head-qli">
							<h3>청구서 상세 정보</h3>
							<div class="btn-odr">
								<button class="btn-ot3 btn-oe4" data-bs-toggle="modal" data-bs-target="#exampleModal">납부상태변경</button>
<!-- 								<button class="btn-ot3 btn-oe4">완료 고지서 알림 발송</button> -->
								
							<!-- 모달 시작 -->
							<div class="modal fade" id="exampleModal" style="z-index:9999999" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							    <div class="modal-dialog">
							        <div class="modal-content">
							            <div class="modal-header">
							                <h5 class="modal-title" id="exampleModalLabel">납부상태 변경</h5>
							                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							            </div>
							            <div class="modal-body">
							                <form id="napboo">
							                    <label for="recipient-name" class="col-form-label">납부 일자</label>
							                    <input type="text" id="datepicker2" name="napboo" placeholder="날짜 선택" class="form-control">
							                </form>
							            </div>
							            <div class="modal-footer">
							                <button type="button" class="btn btn-secondary" id="payclose" data-bs-dismiss="modal">닫기</button>
							                <button type="button" class="btn btn-primary" id="paysubmit" data-pay-no="${pay.payNo }">완료</button>
							            </div>
							        </div>
							    </div>
							</div>
							<!-- 모달 끝 -->


							</div>
						</div>
						<div class="layer-5ky">
							<div>
								<div data-v-c967e49e="" class="top-oq4">
									<table data-v-c967e49e="" class="list-rbw no-45y pd-dz9">
										<colgroup data-v-c967e49e="">
											<col data-v-c967e49e="" width="100">
											<col data-v-c967e49e="" width="150">
											<col data-v-c967e49e="" width="100">
											<col data-v-c967e49e="" width="150">
											<col data-v-c967e49e="" width="150">
											<col data-v-c967e49e="" width="*">
										</colgroup>
										<tbody data-v-c967e49e="">
											<tr data-v-c967e49e="">
												<th data-v-c967e49e="">임차인</th>
												<td data-v-c967e49e="">
													<div data-v-c967e49e="" class="info-pzo">
														<p data-v-c967e49e="" class="jslqt">${pay.rentContract.cntrctrNm }</p>
														<p data-v-c967e49e="" class="bvrov">${pay.rentContract.mbtlnum }</p>
													</div>
												</td>
												<th data-v-c967e49e="">임대호수</th>
												<c:set var="dong" value="${pay.rentContract.rentRoom.room.rentDong}" />
												<td data-v-c967e49e=""> <c:if test="${not empty dong}"> (${dong}동)</c:if> ${pay.rentContract.rentRoom.room.roomUnit}호</td>
												<th data-v-c967e49e="">임대건물</th>
												<td data-v-c967e49e="">
													<div data-v-c967e49e="" class="build-i79">
														<p data-v-c967e49e="" class="jslqt">${pay.rentContract.rentRoom.rentBldg.bldgNm}</p>
														<p data-v-c967e49e="" class="bvrov">${pay.rentContract.rentRoom.rentBldg.bldgAddr}</p>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div data-v-934fee78="">
									<div data-v-934fee78="" class="title-ikg">
										<div data-v-934fee78="" class="title-ohk">
											<div data-v-934fee78="" class="noE-w9y">${pay.blNm}</div>
										</div>
										<span data-v-934fee78="" class="warning-ych ml1-ltz">
										  <c:if test="${pay.rentContract.cntrctStts eq 'RSTTS03'}">
									        (중도퇴실 ${pay.rentContract.midwayDt})
									  	  </c:if>
										</span>
									</div>
									<div data-v-934fee78="" class="bri-dq1">
										<div data-v-934fee78="" class="bri-e19">
											<div data-v-934fee78="">월 입금 총액</div>
											<div data-v-934fee78="" class="fs3-18t">
												<p data-v-934fee78="">${pay.rqestAmt } 원</p>
											</div>
										</div>
										<div data-v-934fee78="" class="bri-e19">
											<div data-v-934fee78="">납부정보</div>
											<div data-v-934fee78="" class="fs3-18t">
												<p data-v-934fee78="" id="napbo">${pay.payStts }</p>
											</div>
										</div>
									</div>
								</div>
								<div class="w10-27c">
									<div class="dep-8tn fle-so2 fle-42i fle-qq6 mt3-2z5">
										<div class="fle-2gi spa-5or w10-27c mb2-4tt">
											<ul class="det-abd w54-mll">
												<li class="det-m6f tTy-jcw bTo-28o">
													<div>월입금액</div>
													<div>
														<p>${pay.rentContract.mtRcpmnyAmt } 원</p>
													</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div>임대료</div>
													<div>${pay.rentContract.mhlAmt } 원</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div>관리비</div>
													<div>${pay.rentContract.managectAmt } 원</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div>
														부가세 (10%) <span class="al0-rne">(${pay.rentContract.ctpVatApplcYn })</span>
													</div>
													<div>${pay.boogase } 원</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div class="fle-so2 spa-5or w10-27c">
													</div>
												</li>
											</ul>
											<ul class="det-abd w54-mll">
												<li class="det-m6f tTy-jcw bTo-28o">
													<div>납부 고유번호</div>
													<div>${pay.payNo}</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div>납기일</div>
													<div>${pay.dedtDe }</div>
												</li>
												<li class="det-m6f sTy-ptg">
													<div>납부일</div>
													<div>
														<p>${pay.payDe }</p>
													</div>
												</li>
												<li class="det-m6f sTy-ptg">
												</li>
											</ul>
										</div>
										<div class="fle-2gi spa-5or w10-27c mb2-4tt">
										</div>
										<div data-v-0a5d7bee="" class="fle-2gi spa-5or w10-27c">
											<div data-v-0a5d7bee="" class="w54-mll xgoom bTo-28o"></div>
											<div data-v-0a5d7bee="" class="w54-mll xgoom bTo-28o"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- --------end------------ -->


			<!-- *********************************************** 납부데이터 모달창 끝 *********************************************** -->
<script>
$(function() {
	requestPayschedule();
	 $("#paysubmit").on("click",function(){ 
		 console.log("ㅎㅇ")
			payde = $('input[name=napboo]').val();
			payno = $("#paysubmit").data("pay-no");
			var murl = `\${cPath}/lessor/payData/\${payno}/\${payde}`;
			
			$.ajax({
			    url: murl,
			    type: "POST",
			    contentType: "application/json",
			    dataType: "text",
			    success: function(data) {
			        console.log("data : " + data);
			        Swal.fire({
			            title: "처리 완료",
			            text: "납부 처리가 완료되었습니다.",
			            icon: "success"
			        });
			        $("#payclose").trigger("click");
			        $("#napbo").html("납부완료")
			        gPayStts.html("납부완료")
			        gPaydee.html(payde)
			        
			        
			        
			        
			    },
			    error: function(xhr, status, error) {
			        console.error("Error: " + error);
			        Swal.fire({
			            title: "처리 실패",
			            text: "납부 처리에 실패했습니다.",
			            icon: "error"
			        });
			    }
			});
	})
})	

//************************ 달력 *****************************
   //계약기간설정 
    function requestPayschedule() {
        let payInput = document.forms['napboo'].napboo;
        
        flatpickr(payInput, {
            dateFormat: 'Y-m-d',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });
    }
   function handleDateChange(selectedDates, dateStr, instance) {
    }

 //************************ 달력 끝 *****************************
  
</script>