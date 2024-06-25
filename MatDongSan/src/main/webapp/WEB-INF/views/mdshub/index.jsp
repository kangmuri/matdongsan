<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!-- 로그인 여부(authMember)를 판단하고,  -->
<!-- 로그인 된 경우, 해당 사용자의 이름을 출력. -->
<!-- 로그인 전인 경우, 로그인 페이지로 이동할 수 있는 a 태그 출력. -->
<%-- <h4>Principal : ${pageContext.request.userPrincipal }</h4> --%>
<%-- <c:set value="${pageContext.request.userPrincipal }" var="principal"/> --%>
<%-- <c:choose> --%>
<%-- 	<c:when test="${not empty principal }"> --%>

<%-- 	</c:when> --%>
<%-- 	<c:otherwise> --%>
<%-- 		<a href="<c:url value='/login/loginForm.jsp'/>">로그인폼</a> --%>
<%-- 		<a href="<c:url value='/member/memberInsert.do'/>">가입하기</a> --%>
<%-- 	</c:otherwise> --%>
<%-- </c:choose> --%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/index.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<div data-v-a0a7c796="" class="cont-xn7" style="">
	${mainMap.payList}
	<h2 data-v-a0a7c796="">
		임대현황<span data-v-a0a7c796="" class="info-bwm"> 꼭 필요한 임대관리 정보를
			빠르게 보여줍니다.</span>
	</h2>
	<div data-v-708cf50e="" data-v-a0a7c796=""
		class="grid-6b6 mt2-bwy biqgp">
		<div data-v-708cf50e="" class="item-9xx item-gl2">
			<div data-v-708cf50e="" class="inn-i1p">
				<li data-v-708cf50e=""><a data-v-708cf50e=""
					a href="#" onclick="return false;" style=" pointer-events : none;">
						<p data-v-708cf50e="" class="gtbmn">${mainMap.rstts01Cnt}
							/ ${mainMap.allCnrt} <span data-v-708cf50e="">호</span>
						</p>
						<p data-v-708cf50e="" class="vrjoa btn-5yh">
							<span data-v-708cf50e="">호실기준</span> 임대현황
						</p>
				</a></li>
				<ul data-v-708cf50e="" class="info-bwm">
					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">전월/당월 신규 계약 건수</span> <span data-v-708cf50e=""
						class="rig-aa7"> ${mainMap.preMonthCnrt}건 /
							${mainMap.thisMonthCnrt}건</span></li>

					<c:set var="preMonthCnrt" value="${mainMap.preMonthCnrt}" />
					<c:set var="thisMonthCnrt" value="${mainMap.thisMonthCnrt}" />



					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">실시간 공실률</span> <span data-v-708cf50e=""
						class="rig-aa7"> <c:set var="preMonthCnrt"
								value="${mainMap.preMonthCnrt}" /> <c:set var="thisMonthCnrt"
								value="${mainMap.thisMonthCnrt}" /> <c:choose>
								<c:when test="${preMonthCnrt ne 0 or thisMonthCnrt ne 0 }">
									<%-- preMonthCnrt가 0이 아닌 경우에만 백분율을 계산합니다. --%>
									<c:set var="percentageChange"
										value="${100 - (thisMonthCnrt / preMonthCnrt) * 100}" />
									<%-- 음수 값을 방지 --%>
									<c:choose>
										<c:when test="${percentageChange < 0}">
											<c:set var="percentageChange" value="0" />
										</c:when>
										<c:otherwise>
											<c:set var="percentageChange" value="${percentageChange}" />
										</c:otherwise>
									</c:choose>
									${percentageChange}
									<%-- 							        ${100 - Math.round((thisMonthCnrt / preMonthCnrt) * 100)} --%>
								</c:when>
								<c:otherwise>
									<%-- preMonthCnrt가 0인 경우에는 "N/A"를 표시합니다. --%>
							        0
							    </c:otherwise>
							</c:choose> %
					</span></li>
				</ul>
			</div>
		</div>
		<!--         <div data-v-708cf50e="" class="item-9xx item-mhq"> -->
		<!--             <div data-v-708cf50e="" class="inn-i1p"> -->
		<!--                 <li data-v-708cf50e="" class="btn-5yh"><a data-v-708cf50e="" href="/pay/pay-data?overdue=true"> -->
		<!--                         <p data-v-708cf50e="" class="gtbmn">0 <span data-v-708cf50e="">건</span></p> -->
		<!--                         <p data-v-708cf50e="" class="vrjoa">연체현황</p> -->
		<!--                     </a></li> -->
		<!--                 <ul data-v-708cf50e="" class="info-bwm"> -->
		<!--                     <li data-v-708cf50e=""><span data-v-708cf50e="" class="lef-iax">연체 임차인 수</span> <span data-v-708cf50e="" class="rig-aa7">0명</span></li> -->
		<!--                     <li data-v-708cf50e=""><span data-v-708cf50e="" class="lef-iax">연체금 총액</span> <span data-v-708cf50e="" class="rig-aa7">0원</span></li> -->
		<!--                 </ul> -->
		<!--             </div> -->
		<!--         </div> -->
		<div data-v-708cf50e="" class="item-9xx item-orj">
			<div data-v-708cf50e="" class="inn-i1p rel-r33">
				<li data-v-708cf50e="" class="btn-5yh"><a data-v-708cf50e=""
					href="#" onclick="return false;" style=" pointer-events : none;">
						<p data-v-708cf50e="" class="gtbmn">${mainMap.before7EndCnt + mainMap.thisMonthEndCnt}
							<span data-v-708cf50e="">건</span>
						</p>
						<p data-v-708cf50e="" class="vrjoa">계약만료 예정</p>
				</a></li>
				<ul data-v-708cf50e="" class="info-bwm">
					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">7일 이내 종료예정 계약건수</span> <span data-v-708cf50e=""
						class="rig-aa7">${mainMap.before7EndCnt}건</span></li>
					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">이번달 종료예정 계약건수</span> <span data-v-708cf50e=""
						class="rig-aa7">${mainMap.thisMonthEndCnt}건</span></li>
				</ul>
			</div>
		</div>
		<div data-v-708cf50e="" class="item-9xx item-mpo">
			<div data-v-708cf50e="" class="inn-i1p">
				<li data-v-708cf50e="" class="btn-5yh"><a data-v-708cf50e=""
					href="#" onclick="return false;" style=" pointer-events : none;">
						<p data-v-708cf50e="" class="gtbmn">${mainMap.todayPayDedtDe}
							<span data-v-708cf50e="">건</span>
						</p>
						<p data-v-708cf50e="" class="vrjoa">오늘 입금 예정</p>
				</a></li>
				<ul data-v-708cf50e="" class="info-bwm">
					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">오늘 입금 예정 금액</span> <span data-v-708cf50e=""
						class="rig-aa7">${mainMap.todayRqestAmt}원</span></li>
					<li data-v-708cf50e=""><span data-v-708cf50e=""
						class="lef-iax">당월 입금 예정 금액</span> <span data-v-708cf50e=""
						class="rig-aa7">${mainMap.thisMonthRqestAmt}원</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div data-v-6ee9e071="" data-v-a0a7c796="" class="grid-7ii mt3-5yp">
		<div data-v-6ee9e071="" class="box-t9i">
			<div data-v-6ee9e071="" class="inn-i1p iyhpn">
				<dl data-v-6ee9e071="" class="item-lfc">
					<dt data-v-6ee9e071="">계약 중 임대료 현황</dt>
					<dd data-v-6ee9e071="" class="ilayn">
						<ul data-v-6ee9e071="" class="list-zxw">
							<li data-v-6ee9e071="">
								<div data-v-6ee9e071="" class="rent-pjg">
									<div data-v-6ee9e071="" class="title-nkr">보증금 총액</div>
									<div data-v-6ee9e071="" class="cnts-sil">
										<span data-v-6ee9e071="" class="bol-i88">${mainMap.allGrnteAmt}</span>
										원
									</div>
								</div>
							</li>
							<li data-v-6ee9e071="">
								<div data-v-6ee9e071="" class="rent-pjg">
									<div data-v-6ee9e071="" class="title-nkr">월 임대료 총액</div>
									<div data-v-6ee9e071="" class="cnts-sil">
										<span data-v-6ee9e071="" class="bol-i88">${mainMap.allMhlAmt}</span>
										원
									</div>
								</div>
							</li>
							<li data-v-6ee9e071="">
								<div data-v-6ee9e071="" class="rent-pjg">
									<div data-v-6ee9e071="" class="title-nkr">월 관리비 총액</div>
									<div data-v-6ee9e071="" class="cnts-sil">
										<span data-v-6ee9e071="" class="bol-i88">${mainMap.allManagectAmt}</span>
										원
									</div>
								</div>
							</li>
							<!--                             <li data-v-6ee9e071=""> -->
							<!--                                 <div data-v-6ee9e071="" class="rent-pjg"> -->
							<!--                                     <div data-v-6ee9e071="" class="title-nkr">월 부가세 총액</div> -->
							<!--                                     <div data-v-6ee9e071="" class="cnts-sil"><span data-v-6ee9e071="" class="bol-i88">0</span> 원</div> -->
							<!--                                 </div> -->
							<!--                             </li> -->
						</ul>
					</dd>
				</dl>
			</div>
			<!--             <div data-v-6ee9e071="" class="inn-i1p tbebk"> -->
			<!--                 <dl data-v-6ee9e071="" class="item-lfc"> -->
			<!--                     <dt data-v-6ee9e071="">연체 임차인 Top 5 <span data-v-6ee9e071="" class="mor-mz8"> -->
			<!--                             <li data-v-6ee9e071=""><a data-v-6ee9e071="" href="/hire/overdue/hire-info">+ 더보기</a></li> -->
			<!--                         </span></dt> -->
			<!--                     <dd data-v-6ee9e071="" class="ilayn"></dd> -->
			<!--                 </dl> -->
			<!--             </div> -->
			<div data-v-6ee9e071="" class="inn-i1p iyhpn">
				<dl data-v-6ee9e071="" class="item-lfc">
					<dt data-v-6ee9e071="">
						건물 공실률 Top 3 <span data-v-6ee9e071="" class="mor-mz8"><a
							data-v-6ee9e071="" class="rule-xt8">공실률: 총 호실수 기준</a></span>
					</dt>
					<dd data-v-6ee9e071="">
						<c:if test="${not empty mainMap.rentRoomList}">
							<c:forEach items="${mainMap.rentRoomList}" var="rent">
								<li data-v-6ee9e071="">
									<div data-v-6ee9e071="" class="top-o7n btn-5yh">
										<div data-v-6ee9e071="" class="emp-sbd">
											<div data-v-6ee9e071="" class="list-bl5">
												<span> ${rent.rentBldg.bldgNm} </span>
											</div>
										</div>
										<div data-v-6ee9e071="" class="rat-zn4">${rent.roomsWithContract}/${rent.totalRooms}</div>
										<div data-v-6ee9e071="" class="per-92m">
											<span data-v-6ee9e071="" class="bol-i88"> <%-- 퍼센트 계산 및 소수점 두 자리까지 표시 --%>
												<fmt:formatNumber value="${rent.percentage}"
													type="number" maxFractionDigits="0" minFractionDigits="0" />%
											</span>
										</div>
									</div>
								</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty mainMap.rentRoomList}">
							<br>
							<br>
							<br>
							<br>
							<span style="text-align: center;" data-v-708cf50e=""
								class="lef-iax">등록된 건물 정보가 없습니다.</span>
						</c:if>
					</dd>
				</dl>
			</div>
		</div>
		<div data-v-6ee9e071="" class="box-4qf">

			<div data-v-6ee9e071="" class="inn-i1p tbebk">
				<dl data-v-6ee9e071="" class="item-lfc">
					<dt data-v-6ee9e071="">호실 공실 경과일 Top 3</dt>
					<dd data-v-6ee9e071="">
						<c:if test="${not empty mainMap.gonsilList}">
							<c:forEach items="${mainMap.gonsilList}" var="gong">
								<li data-v-6ee9e071="">
									<div data-v-6ee9e071="" class="top-o7n btn-5yh">
										<div data-v-6ee9e071="" class="emp-9wc">
											<div data-v-6ee9e071="" class="list-bl5">
												<span> ${gong.rentBldg.bldgNm } </span>
											</div>
										</div>
										<div data-v-6ee9e071="" class="flo-omv">${gong.room.roomFloor}F/${gong.room.roomUnit}호</div>
										<div data-v-6ee9e071="" class="ove-f5i">
											<span data-v-6ee9e071="" class="bol-i88">${gong.sinceEnd}
												일</span>
										</div>
									</div>
								</li>
							</c:forEach>
						</c:if>
						<c:if test="${empty mainMap.gonsilList}">
							<br>
							<br>
							<br>
							<br>
							<span style="text-align: center;" data-v-708cf50e=""
								class="lef-iax">등록된 호실 정보가 없습니다.</span>
						</c:if>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<div data-v-a0a7c796="" class="grid-7ii mt3-5yp">
		<div class="box-dl4">
			<div data-v-967bc4c0="" class="ser-v9o">
				<div data-v-967bc4c0="" class="gra-rcy">
					<div data-v-967bc4c0="" class="title-svi">
						최근 1년 임대료 매출 현황 <span data-v-967bc4c0="" class="uni-eoi">(금액단위:
							원)</span>
					</div>
					<!-- 					<div data-v-967bc4c0="" class="toggle-6bf"> -->
					<!-- 						<ul data-v-967bc4c0="" class="fle-cym spa-jpw"> -->
					<!-- 							<li data-v-967bc4c0="" class="biqgp"><a data-v-967bc4c0="" -->
					<!-- 								class="fle-cym jus-6v7 bor-5ab"> 계약 납기일 기준 </a></li> -->
					<!-- 							<li data-v-967bc4c0=""><a data-v-967bc4c0="" -->
					<!-- 								class="fle-cym jus-6v7 bor-5ab">실제 납부일 기준</a></li> -->
					<!-- 						</ul> -->
					<!-- 					</div> -->
				</div>

				<div data-v-967bc4c0="" class="card-iqr">
					<div data-v-967bc4c0="">
						<div class="chart-g9o">
							<div class="chart-3rw">
								<div></div>
							</div>
							<div class="chart-gq2">
								<div></div>
							</div>
						</div>
						<canvas id="line-chart" width="1226" height="360"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
		</div>

	</div>



</div>



<script>
//=========================== 숫자 콤마 넣기 ==============================//
	function addCommasToNumber(className) {
		var elements = document.querySelectorAll(className);
		if (elements) {
			elements.forEach(function(element) {
				var text = element.textContent; // 원래의 텍스트
				var numberPart = text.match(/\d+/)[0]; // 숫자 부분 추출
				var formattedNumber = parseInt(numberPart).toLocaleString(); // 형식화된 숫자
				element.textContent = text.replace(/\d+/, formattedNumber); // 형식화된 숫자로 교체
			});
		}
	}

	// 모든 숫자에 쉼표 추가
	addCommasToNumber(".rig-aa7");
	addCommasToNumber(".bol-i88");
//=========================== 숫자 콤마 넣기 끝 ==============================//	
	

//=========================== 1년치 임대료 차트 ==============================//
	
// 	$.ajax({
//     url: cPath + '/hubMain/chart', // 데이터를 가져올 엔드포인트 URL
//     dataType : 'json',
//     type: 'GET',
//     success: function(response) {
//     	console.log("오긴와써?")
//     	console.log()
//         // 서버에서 받은 데이터를 처리
//         var payList = response; // 서버 응답에서 payList 추출

//         // 데이터 처리 및 차트 생성
//         processDataAndCreateChart(payList);
//     },
//     error: function(xhr, status, error) {
//         console.error('Error:', error); // 에러 처리
//     }
// });
            var labels = [];
            var dataset1 = [];
            var dataset2 = [];
	 // 첫 번째 차트를 위한 AJAX 요청
            $.ajax({
                url: cPath + '/hubMain/chart', // 데이터를 가져올 엔드포인트 URL
                dataType: 'json',
                type: 'GET',
                success: function(response) {
                    console.log("차트1 데이터 수신 성공:", response);
                    processData(response, dataset1);
                    if (dataset2.length > 0) {
                        createChart(labels, dataset1, dataset2);
                    }
                },
                error: function(xhr, status, error) {
                    console.error('차트1 오류 발생:', error); // 에러 처리
                }
            });

            // 두 번째 차트를 위한 AJAX 요청
            $.ajax({
                url:cPath + '/hubMain/chart2', // 데이터를 가져올 엔드포인트 URL
                dataType: 'json',
                type: 'GET',
                success: function(response) {
                    console.log("차트2 데이터 수신 성공:", response);
                    processData(response, dataset2);
                    if (dataset1.length > 0) {
                        createChart(labels, dataset1, dataset2);
                    }
                },
                error: function(xhr, status, error) {
                    console.error('차트2 오류 발생:', error); // 에러 처리
                }
            });

            function processData(payList, dataset) {
            	console.log("wddd")
                // 현재 날짜 기준으로 현재 월과 연도 가져오기
                const now = new Date();
                const currentMonthIndex = now.getMonth();
                const currentYear = now.getFullYear();

                // 시작 월과 연도 설정
                var startMonth = (currentMonthIndex - 11 + 12) % 12; // 현재 월로부터 11개월 전
                var startYear = currentYear - (startMonth === 11 ? 0 : 1); // 현재 연도에서 11개월 전

                // 월의 한글 이름을 반환하는 함수
                function getKoreanMonthName(monthIndex) {
                    const koreanMonths = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
                    return koreanMonths[monthIndex];
                }

                for (var i = 0; i < 12; i++) {
                    if (labels.length < 12) {
                        labels.push(getKoreanMonthName(startMonth));
                    }
                    const monthStr = (startMonth + 1).toString().padStart(2, '0');
                    const yearMonth = `\${startYear}-\${monthStr}`;
                    const item = payList.find(item => item.payMonth === yearMonth);
                    dataset.push(item ? item.totalAmount : 0);
                    startMonth = (startMonth + 1) % 12;
                    if (startMonth === 0) startYear++;
                }
            }

            function createChart(labels, dataset1, dataset2) {
                var ctx = document.getElementById('line-chart').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: labels,
                        datasets: [
                            {
                                label: '총 입금액',
                                data: dataset1,
                                fill: false,
                                borderColor: 'rgb(75, 192, 192)',
                                tension: 0.1
                            },
                            {
                                label: '관리비',
                                data: dataset2,
                                fill: false,
                                borderColor: 'rgb(255, 99, 132)',
                                tension: 0.1
                            }
                        ]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            }

  //=========================== 1년치 임대료 차트 끝==============================//
</script>



