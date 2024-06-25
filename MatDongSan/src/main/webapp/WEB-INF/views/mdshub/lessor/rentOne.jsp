<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul data-v-0e4dda1c="" class="panel-dlo panel-48m">
	<li data-v-0e4dda1c="">
		<div data-v-0e4dda1c="" class="find-2lr">
			<div data-v-0e2dbda9="" data-v-0e4dda1c="" class="info-goh mt1-4dt">
				<div data-v-0e2dbda9="" class="fa-cok bas-vgz"></div>
				<div data-v-0e2dbda9="" class="info-gzg">
					<div data-v-0e2dbda9="" class="per-mzz">
						<p data-v-0e2dbda9="" class="thqne only-iao">
							${contract.cntrctrNm }</p>
						<p data-v-0e2dbda9="" class="thqne only-iao"></p>
						<p data-v-0e2dbda9="" class="nwoom">${contract.mbtlnum }</p>
					</div>
					<div data-v-0e2dbda9="" class="wfsav">
						<div data-v-0e2dbda9="" class="info-x6o">
							<div data-v-0e2dbda9="" class="only-iao">${contract.rentRoom.rentBldg.bldgNm }</div>
							<div data-v-0e2dbda9="" class="only-iao">(${contract.rentRoom.rentBldg.bldgSe })</div>
							<div data-v-0e2dbda9="" class="item-n4g">
								${contract.rentRoom.room.roomUnit}호</div>
						</div>
						<div data-v-0e2dbda9="">
							<div data-v-0e2dbda9="">${contract.dctBgng }~
								${contract.dctEnd }</div>
							<div data-v-0e2dbda9="">월입금액 (${contract.mtRcpmnyAmt }원) /
								납부일 매월 (${contract.ctpDedtDe }일)</div>
						</div>
					</div>
					<ul data-v-0e2dbda9="" class="user-89h cus-afa">
						<li data-v-0e2dbda9="" class="ofppi">정상납부</li>
						<c:if test="${not empty contract.lesseeNo }"><li data-v-0e2dbda9="" class="ofppi">계정연동</li></c:if>
						<c:if test="${empty contract.lesseeNo }"><li data-v-0e2dbda9="">계정연동</li></c:if>
					</ul>
				</div>
			</div>
<!-- 			<ul data-v-0e4dda1c="" class="user-orj"> -->
<!-- 				<li data-v-0e4dda1c="" class="ofppi"><a data-v-0e4dda1c=""> -->
<!-- 						계약정보 </a></li> -->
<!-- 				<li data-v-0e4dda1c=""><a data-v-0e4dda1c=""> 청구서 관리 </a></li> -->
<!-- 			</ul> -->
			<ul data-v-0e4dda1c="">     
				<li data-v-0e4dda1c=""></li>
				<li data-v-45a748fb="" data-v-0e4dda1c="">
					<div data-v-45a748fb="" class="content-z7q">
						<div data-v-45a748fb="">
							<div data-v-45a748fb="" class="section-626">
								<h3 data-v-45a748fb="">
									임차인 정보 <span
										class="small-button active-btn collectBtn btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#exampleModal" >연동하기</span>
<!-- 									<span -->
<!-- 										class="small-button active-btn collectBtn btn btn-primary" -->
<!-- 										data-bs-toggle="modal" data-bs-target="#exampleModal2" >인증하기</span> -->

								</h3>

								<!-- 보안코드 전송 모달 -->
								<div class="modal fade" id="exampleModal" tabindex="-1"
									aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">임차인 계정
													연동</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<input type="text" class="form-control" name="userEmail"
													id="userEmail" value="${contract.emailAdres }"placeholder="임차인이메일">


											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal" id="close">닫기</button>
												<button type="button" class="btn btn-primary" id="mail-Check-Btn">보안코드전송</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 모달 끝 -->

								<!-- 보안코드 인증 모달 -->
<!-- 								<div class="modal fade" id="exampleModal2" tabindex="-1" -->
<!-- 									aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
<!-- 									<div class="modal-dialog"> -->
<!-- 										<div class="modal-content"> -->
<!-- 											<div class="modal-header"> -->
<!-- 												<h5 class="modal-title" id="exampleModalLabel">임차인 계정 -->
<!-- 													연동</h5> -->
<!-- 												<button type="button" class="btn-close" -->
<!-- 													data-bs-dismiss="modal" aria-label="Close"></button> -->
<!-- 											</div> -->
<!-- 											<div class="modal-body"> -->
<!-- 												<input class="form-control mail-check-input" name="code" placeholder="인증번호 6자리를 입력해주세요!" maxlength="6"> -->
<!-- 												<span id="mail-check-warn"></span> -->
<!-- 											</div>	 -->
<!-- 											<div class="modal-footer"> -->
<!-- 												<button type="button" class="btn btn-secondary" -->
<!-- 													data-bs-dismiss="modal" id="close2">닫기</button> -->
<!-- 												<button type="button" class="btn btn-primary" id="mail-Check-input">확인</button> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<!-- 모달 끝 -->







								<ul data-v-45a748fb="" class="btn-bea">
									<li data-v-45a748fb=""></li>
								</ul>
								<table data-v-45a748fb="" class="list-3id mt2-qck">
									<colgroup data-v-45a748fb="">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="270">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="*">
									</colgroup>
									<tbody data-v-45a748fb="">
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">계약자</th>
											<td data-v-45a748fb="" class="pdt-ooz">${contract.cntrctrNm }</td>
											<th data-v-45a748fb="">계약고유번호</th>
											<td data-v-45a748fb="" class="cntrctRentNo">${contract.cntrctRentNo }</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">휴대폰 번호</th>
											<td data-v-45a748fb="" class="fle-9mh fle-zzk">
												<div data-v-45a748fb="" class="fle-9mh jus-qnh icany">${contract.mbtlnum }</div>
											</td>
											<th data-v-45a748fb="">이메일</th>
											<td data-v-45a748fb="">${contract.emailAdres }</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">차량보유</th>
											<td data-v-45a748fb="">
												<p data-v-45a748fb="">${contract.vhcleYn }</p>
											</td>
											<th data-v-45a748fb="">반려동물</th>
											<td data-v-45a748fb="">
												<p data-v-45a748fb="">${contract.animalYn }</p>
											</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">계약담당자명</th>
											<td data-v-45a748fb="">강물이</td>
											<th data-v-45a748fb="">계약담당자 휴대폰</th>
											<td data-v-45a748fb="">${contract.ctpPicMbtlnum }</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">계약담당자 이메일</th>
											<td data-v-45a748fb="">${contract.ctpPicEmail }</td>
											<th data-v-45a748fb=""></th>
											<td data-v-45a748fb="" class="fle-9mh spa-zml">
												<div data-v-45a748fb=""
													class="tag-loh fle-9mh jus-qnh btn-vnt"></div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div data-v-45a748fb="" class="section-626 mt6-2jz">
								<h3 data-v-45a748fb="">계약정보</h3>
								<ul data-v-45a748fb="" class="btn-4d8">
<!-- 									<li data-v-45a748fb=""><a data-v-45a748fb="" -->
<!-- 										href="javascript:void(0);" class="item-88x"> 호실관리 </a></li> -->
									<li data-v-45a748fb=""><a data-v-45a748fb=""
										href="javascript:void(0);" data-bs-toggle="modal" class="item-88x" data-bs-target="#exampleModal2"> 중도퇴실 </a></li>
									<li data-v-45a748fb=""></li>
									<li data-v-45a748fb=""></li>
<!-- 									<li data-v-45a748fb=""><a data-v-45a748fb="" -->
<!-- 										href="javascript:void(0);" class="item-88x"> 계약연장 </a></li> -->
<!-- 									<li data-v-45a748fb=""><a data-v-45a748fb="" -->
<!-- 										href="javascript:void(0);" class="item-88x"> 계약복사 </a></li> -->
<!-- 									<li data-v-45a748fb=""><a data-v-45a748fb="" -->
<!-- 										href="javascript:void(0);" class="item-88x"> 정보수정 </a></li> -->
								</ul>
								<table data-v-45a748fb="" class="list-3id mt2-qck">
									<colgroup data-v-45a748fb="">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="270">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="*">
									</colgroup>
									<tbody data-v-45a748fb="">
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">계약 등록일</th>
											<td data-v-45a748fb="">${contract.cntrctDe }</td>
											<th data-v-45a748fb="">최종 수정일</th>
											<td data-v-45a748fb="">${contract.ctpUpddeDt}</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">건물명</th>
											<td data-v-45a748fb="">
												<p data-v-45a748fb="" class="bd-pmh">${contract.rentRoom.rentBldg.bldgNm }</p>
											</td>
											<th data-v-45a748fb="">동/호수 (공급면적)</th>
											<td data-v-45a748fb="">
												${contract.rentRoom.room.roomUnit}호 / 공급면적 :
												${contract.dctRentAr } (㎡)</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">계약기간</th>
											<td data-v-45a748fb="">${contract.dctBgng }~
												${contract.dctEnd }</td>
											<th data-v-45a748fb="">계약형태</th>
											<td data-v-45a748fb="">
												<p data-v-45a748fb="">${contract.dctClsf }</p>
											</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">부과기간</th>
											<td data-v-45a748fb="">${contract.rentCnd }</td>
											<th data-v-45a748fb="" >계약상태</th>
											<td data-v-45a748fb="" class="bol-hyj" id="stts">${contract.cntrctStts }</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div data-v-45a748fb="" class="section-626 mt6-2jz">
								<h3 data-v-45a748fb="">임대료 정보</h3>
								<!--                                         <ul data-v-45a748fb="" class="btn-4d8"> -->
								<!--                                             <li data-v-45a748fb=""><a data-v-45a748fb="" class="item-88x btn-vnt">보증금 관리</a></li> -->
								<!--                                         </ul> -->
								<table data-v-45a748fb="" class="list-3id mt2-qck">
									<colgroup data-v-45a748fb="">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="270">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="*">
									</colgroup>
									<tbody data-v-45a748fb="">
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">보증금</th>
											<td data-v-45a748fb="" id="grnteAmt">${contract.grnteAmt }원</td>
											<th data-v-45a748fb="">납기일 (청구일자 기준)</th>
											<td data-v-45a748fb="">${contract.ctpDedtDe }일
												(${contract.rentCnd })</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">부가세 적용여부</th>
											<td data-v-45a748fb="">${contract.ctpVatApplcYn }</td>
											<th data-v-45a748fb="">부가세 (10%)</th>
											<td data-v-45a748fb="" id="booga"><span id="ctpVatApplcYn"></span>
												${contract.booga }원</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">임대료</th>
											<td data-v-45a748fb="" id="mhlAmt">${contract.mhlAmt }원</td>
											<th data-v-45a748fb="">관리비</th>
											<td data-v-45a748fb="" id="managectAmt">${contract.managectAmt }원</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">월 입금액</th>
											<td data-v-45a748fb="" class="bol-hyj" id="mtRcpmnyAmt">${contract.mtRcpmnyAmt }
												원</td>
											<th data-v-45a748fb=""></th>
											<td data-v-45a748fb=""></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div data-v-45a748fb="" class="section-626 mt6-2jz">
								<h3 data-v-45a748fb="">수납 정보</h3>
								<table data-v-45a748fb="" class="list-3id mt2-qck">
									<colgroup data-v-45a748fb="">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="270">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="*">
									</colgroup>
									<tbody data-v-45a748fb="">
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">
												<div data-v-196315a9="" data-v-45a748fb=""
													class="fle-9mh fle-wt5">
													<div data-v-196315a9="">입금자</div>
													<div data-v-196315a9="" class="flo-lny fle-9mh fle-wt5">
													</div>
												</div>
											</th>
											<td data-v-45a748fb="">${contract.ctpRcpmnyer }</td>
											<th data-v-45a748fb="">
												<div data-v-196315a9="" data-v-45a748fb=""
													class="fle-9mh fle-wt5">
													<div data-v-196315a9="">가상계좌(입금 가능액)</div>
													<div data-v-196315a9="" class="flo-lny fle-9mh fle-wt5"></div>
												</div>
											</th>
											<td data-v-45a748fb="">미등록</td>
										</tr>
									</tbody>
								</table>
							</div>




							<div data-v-45a748fb="" class="section-626 mt6-2jz">
								<h3 data-v-45a748fb="">증빙 정보</h3>
								<table data-v-45a748fb="" class="list-3id mt2-qck">
									<colgroup data-v-45a748fb="">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="270">
										<col data-v-45a748fb="" width="170">
										<col data-v-45a748fb="" width="*">
									</colgroup>
									<tbody data-v-45a748fb="">
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">증빙구분</th>
											<td data-v-45a748fb="">${contract.prufNm }</td>
											<th data-v-45a748fb="">증빙종류</th>
											<td data-v-45a748fb="">${contract.prufKnd}</td>
										</tr>
										<tr data-v-45a748fb="">
											<th data-v-45a748fb="">증빙방식</th>
											<td data-v-45a748fb="">${contract.prufMthd }</td>
											<th data-v-45a748fb="">증빙발행일자</th>
											<td data-v-45a748fb="">매월 ${contract.prufDe }일</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>
				</li>
			</ul>
		</div>
	</li>
</ul>

<!-- 중도퇴실 모달 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">중도퇴실</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        <form id="midway">
            <label for="recipient-name" class="col-form-label">중도퇴실 날짜</label>
                              <input type="text" id="datepicker" name="midway"
                                 placeholder="날짜 선택" class="form-control">
        </form>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="closeS" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="midwayS" data-cntrct-rent-no=${contract.cntrctRentNo }>완료</button>
      </div>
    </div>
  </div>
</div>
<!-- 중도퇴실 모달 끝 -->

<script>
	
	
$(function() {
	requestCntrSchedule();
	
	 $("#midwayS").on("click",function(){ 
			midway= $('input[name=midway]').val();
			rentNo=$("#midwayS").data("cntrct-rent-no");
			var murl = `\${cPath}/lessor/cntrctInfo/\${rentNo}/\${midway}`;
			Swal.fire({
                title: `${contract.cntrctrNm}님을 퇴실처리 하시겠습니까?`,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: '네',
                cancelButtonText: '아니요'
            }).then((result) => {
                if (result.isConfirmed) {
                	
			$.ajax({
			    url: murl,
			    type: "POST",
			    contentType: "application/json",
			    dataType: "text",
			    success: function(data) {
			        console.log("data : " + data);
			        Swal.fire({
			            title: "처리 완료",
			            text: `${contract.cntrctrNm}님의 
			            퇴실 처리가 완료되었습니다.`,
			            icon: "success"
			        });
			        $("#stts").html("중도퇴실");
		            listItem = document.querySelector('li.ofppi').querySelector('#style-zA5og')
		            listItem.textContent = "(중도퇴실)";
			        $("#closeS").trigger("click");
			    },
			    error: function(xhr, status, error) {
			        console.error("Error: " + error);
			        Swal.fire({
			            title: "처리 실패",
			            text: `${contract.cntrctrNm}님의 
				            퇴실 처리에 실패하였습니다.`,
			            icon: "error"
			        });
			    }
			})
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    Swal.fire(
                        '취소되었습니다',
                        '등록 작업이 취소되었습니다',
                        'error'
                    );
                }
			
	})
})
})


$('#mail-Check-Btn').click(function() {
	const email = $('#userEmail').val(); // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
	const checkInput = $('.mail-check-input'); // 인증번호 입력하는 곳 
	const cntrctRentNo = $('.cntrctRentNo').html(); // 해당 계약번호
	 Swal.fire({
                title: `${contract.cntrctrNm}님께 보안코드를 
                전송하시겠습니까?`,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: '네',
                cancelButtonText: '아니요'
            }).then((result) => {
                if (result.isConfirmed) {
                	
	$.ajax({
		type: 'get',
		url: cPath + "/lessor/mailCheck/" + email, 
		success: function(data) {
			console.log("data : " + data);
			checkInput.attr('disabled', false);
			const code = data;
			Swal.fire({
				title: "전송완료",
				text: `${contract.cntrctrNm}님께 보안코드가 
				전송되었습니다.`,
				icon: "success"
			});

			$.ajax({
				url: cPath + "/lessor/cntrctInfo/secure",
				type: "post",
				contentType:"application/json",
				data : JSON.stringify({
					secureCode: code,
					cntrctRentNo: cntrctRentNo
				}),
				dataType : "text",
				success: function(res) {
					
					$("#close").trigger("click");
				}
			})
		}
	})
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    Swal.fire(
                        '취소되었습니다',
                        '등록 작업이 취소되었습니다',
                        'error'
                    );
                }
});
})

//************************ 달력 *****************************
   //계약기간설정 
    function requestCntrSchedule() {
        let midwayInput = document.forms['midway'].midway;
        
        flatpickr(midwayInput, {
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
