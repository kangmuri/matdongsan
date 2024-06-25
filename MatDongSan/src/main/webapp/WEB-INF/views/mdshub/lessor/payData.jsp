<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/ag-grid-community/dist/ag-grid-community.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/payData.css"
	rel="stylesheet">
<div class="content-ebt">
	<div class="inB-7vx">
		<div class="cont-smv att-3qt pmc-l7n">
			<div class="tit-9t9 header-he7">
				<h2 class="bctpo">납부데이터 통합관리</h2>
			</div>





			<div class="content-gd1 search-kvd">
				<div data-v-704a40ac="" class="search-167">
					<div data-v-704a40ac="" class="inBox-space-o7o inB-wb1">
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="fa-chr">납부상태</div>
							<div data-v-704a40ac="" class="select-p8k">
								<select data-v-704a40ac=""
									class="select-7p8 select-2q9 select-ryx pay-b5n">
									<option data-v-704a40ac="" value="">전체</option>
									<option data-v-704a40ac="" value="comp">납부완료</option>
									<option data-v-704a40ac="" value="none">연체</option>
									<option data-v-704a40ac="" value="will">납부예정</option>
									<option data-v-704a40ac="" value="can">미납부(연체+납부예정)</option>
									<option data-v-704a40ac="" value="today">오늘입금</option>
									<option data-v-704a40ac="" value="part_ing">분납중</option>
									<option data-v-704a40ac="" value="paid_part">분납완료</option>
								</select>
							</div>
						</div>
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="select-qkq">납부방법</div>
							<div data-v-704a40ac="" class="select-p8k">
								<select data-v-704a40ac=""
									class="select-7p8 select-2q9 select-ryx pay-b5n">
									<option data-v-704a40ac="" value="">전체</option>
									<option data-v-704a40ac="" value="passive">수동납부</option>
									<option data-v-704a40ac="" value="autochk">계좌이체</option>
									<option data-v-704a40ac="" value="virtual_main">
										전용계좌(가상계좌)</option>
									<option data-v-704a40ac="" value="virtual_once">
										일회용계좌(가상계좌)</option>
									<option data-v-704a40ac="" value="creditCard">신용카드</option>
									<option data-v-704a40ac="" value="sunnap">선납납부완료</option>
									<option data-v-704a40ac="" value="excel">엑셀수동납부</option>
								</select>
							</div>
						</div>
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="select-qkq">청구서 유형</div>
							<div data-v-704a40ac="" class="select-p8k">
								<select data-v-704a40ac=""
									class="select-7p8 select-2q9 select-ryx pay-b5n">
									<option data-v-704a40ac="" value="">전체</option>
									<option data-v-704a40ac="" value="CONT">계약금</option>
									<option data-v-704a40ac="" value="60400001">임대료</option>
									<option data-v-704a40ac="" value="60400002">(개별)변동관리비
									</option>
									<option data-v-704a40ac="" value="60400005">(일괄)변동관리비
									</option>
								</select>
							</div>
						</div>
					</div>
					<div data-v-704a40ac="" class="inBox-space-o7o inB-wb1">
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="fa-chr">임차인</div>
							<input data-v-704a40ac="" placeholder="임차인 이름 입력"
								class="input-7ap pay-b5n z-7lt">
						</div>
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="select-qkq">호실</div>
							<input data-v-704a40ac="" placeholder="'호'를 제외하고 입력"
								class="input-7ap pay-b5n z-7lt">
						</div>
						<div data-v-704a40ac="" class="search-wfk w26-hqo">
							<div data-v-704a40ac="" class="select-qkq">건물명</div>
							<div data-v-704a40ac="" class="select-p8k">
								<select data-v-704a40ac=""
									class="select-7p8 select-2q9 select-ryx pay-b5n">
									<option data-v-704a40ac="" value="0">전체</option>
									<option data-v-704a40ac="" value="6231">아가페</option>
								</select>
							</div>
						</div>
						<div data-v-704a40ac="" class="fle-994 spa-gcx w78-oxg"></div>
					</div>
					<div data-v-704a40ac="" class="inBox-space-o7o inB-wb1">
						<div data-v-704a40ac="" class="search-wfk">
							<div data-v-704a40ac="" class="fa-chr">기간조회</div>
							<div data-v-704a40ac="" class="select-p8k">
								<select data-v-704a40ac=""
									class="select-7p8 select-2q9 select-ryx pay-b5n">
									<option data-v-704a40ac="" value="chargeDt">납기일</option>
									<option data-v-704a40ac="" value="deposDt">납부일</option>
								</select>
							</div>
							<div data-v-704a40ac="" class="search-wfk ml1-szt">
								<div data-v-704a40ac="" class="vdp-ted">
									<div>
										<input type="text" placeholder="검색 시작일"
											class="input-mr6 kpttg bdP-x5h search-i57">
									</div>
									<div class="vdp-csn style-9Rbny" id="style-9Rbny">
										<header>
											<span class="pre-t6o">&lt;</span> <span class="jdcit">2024년
												5월</span> <span class="nex-tyc">&gt;</span>
										</header>
										<div>
											<span class="cel-8aj header-h7i">일</span><span
												class="cel-8aj header-h7i">월</span><span
												class="cel-8aj header-h7i">화</span><span
												class="cel-8aj header-h7i">수</span><span
												class="cel-8aj header-h7i">목</span><span
												class="cel-8aj header-h7i">금</span><span
												class="cel-8aj header-h7i">토</span> <span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq select-tkq">1</span><span
												class="cel-8aj scwfq">2</span><span class="cel-8aj scwfq">3</span><span
												class="cel-8aj scwfq">4</span><span class="cel-8aj scwfq">5</span><span
												class="cel-8aj scwfq">6</span><span class="cel-8aj scwfq">7</span><span
												class="cel-8aj scwfq">8</span><span class="cel-8aj scwfq">9</span><span
												class="cel-8aj scwfq">10</span><span class="cel-8aj scwfq">11</span><span
												class="cel-8aj scwfq">12</span><span class="cel-8aj scwfq">13</span><span
												class="cel-8aj scwfq">14</span><span class="cel-8aj scwfq">15</span><span
												class="cel-8aj scwfq">16</span><span class="cel-8aj scwfq">17</span><span
												class="cel-8aj scwfq">18</span><span class="cel-8aj scwfq">19</span><span
												class="cel-8aj scwfq">20</span><span class="cel-8aj scwfq">21</span><span
												class="cel-8aj scwfq">22</span><span class="cel-8aj scwfq">23</span><span
												class="cel-8aj scwfq">24</span><span class="cel-8aj scwfq">25</span><span
												class="cel-8aj scwfq">26</span><span class="cel-8aj scwfq">27</span><span
												class="cel-8aj scwfq">28</span><span class="cel-8aj scwfq">29</span><span
												class="cel-8aj scwfq">30</span><span class="cel-8aj scwfq">31</span>
										</div>
									</div>
									<div class="vdp-csn style-FqOxs" id="style-FqOxs">
										<header>
											<span class="pre-t6o">&lt;</span> <span class="jdcit">2024년</span>
											<span class="nex-tyc">&gt;</span>
										</header>
										<span class="cel-8aj mon-nl4">1월</span><span
											class="cel-8aj mon-nl4">2월</span><span
											class="cel-8aj mon-nl4">3월</span><span
											class="cel-8aj mon-nl4">4월</span><span
											class="cel-8aj mon-nl4 select-tkq">5월</span><span
											class="cel-8aj mon-nl4">6월</span><span
											class="cel-8aj mon-nl4">7월</span><span
											class="cel-8aj mon-nl4">8월</span><span
											class="cel-8aj mon-nl4">9월</span><span
											class="cel-8aj mon-nl4">10월</span><span
											class="cel-8aj mon-nl4">11월</span><span
											class="cel-8aj mon-nl4">12월</span>
									</div>
									<div class="vdp-csn style-WHcqw" id="style-WHcqw">
										<header>
											<span class="pre-t6o">&lt;</span> <span>2020 - 2029년</span> <span
												class="nex-tyc">&gt;</span>
										</header>
										<span class="cel-8aj yea-37v">2020</span><span
											class="cel-8aj yea-37v">2021</span><span
											class="cel-8aj yea-37v">2022</span><span
											class="cel-8aj yea-37v">2023</span><span
											class="cel-8aj yea-37v select-tkq">2024</span><span
											class="cel-8aj yea-37v">2025</span><span
											class="cel-8aj yea-37v">2026</span><span
											class="cel-8aj yea-37v">2027</span><span
											class="cel-8aj yea-37v">2028</span><span
											class="cel-8aj yea-37v">2029</span>
									</div>
								</div>
								<span data-v-704a40ac="" class="spa-gzn"> ~ </span>
								<div data-v-704a40ac="" class="vdp-ted">
									<div>
										<input type="text" placeholder="검색 종료일"
											class="input-mr6 kpttg bdP-x5h search-i57">
									</div>
									<div class="vdp-csn style-lTQlB" id="style-lTQlB">
										<header>
											<span class="pre-t6o">&lt;</span> <span class="jdcit">2024년
												5월</span> <span class="nex-tyc">&gt;</span>
										</header>
										<div>
											<span class="cel-8aj header-h7i">일</span><span
												class="cel-8aj header-h7i">월</span><span
												class="cel-8aj header-h7i">화</span><span
												class="cel-8aj header-h7i">수</span><span
												class="cel-8aj header-h7i">목</span><span
												class="cel-8aj header-h7i">금</span><span
												class="cel-8aj header-h7i">토</span> <span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq bla-pq8"></span><span
												class="cel-8aj scwfq">1</span><span class="cel-8aj scwfq">2</span><span
												class="cel-8aj scwfq">3</span><span class="cel-8aj scwfq">4</span><span
												class="cel-8aj scwfq">5</span><span class="cel-8aj scwfq">6</span><span
												class="cel-8aj scwfq">7</span><span class="cel-8aj scwfq">8</span><span
												class="cel-8aj scwfq">9</span><span class="cel-8aj scwfq">10</span><span
												class="cel-8aj scwfq">11</span><span class="cel-8aj scwfq">12</span><span
												class="cel-8aj scwfq">13</span><span class="cel-8aj scwfq">14</span><span
												class="cel-8aj scwfq">15</span><span class="cel-8aj scwfq">16</span><span
												class="cel-8aj scwfq">17</span><span class="cel-8aj scwfq">18</span><span
												class="cel-8aj scwfq">19</span><span class="cel-8aj scwfq">20</span><span
												class="cel-8aj scwfq">21</span><span class="cel-8aj scwfq">22</span><span
												class="cel-8aj scwfq">23</span><span class="cel-8aj scwfq">24</span><span
												class="cel-8aj scwfq">25</span><span class="cel-8aj scwfq">26</span><span
												class="cel-8aj scwfq">27</span><span class="cel-8aj scwfq">28</span><span
												class="cel-8aj scwfq">29</span><span class="cel-8aj scwfq">30</span><span
												class="cel-8aj scwfq select-tkq">31</span>
										</div>
									</div>
									<div class="vdp-csn style-RZvoH" id="style-RZvoH">
										<header>
											<span class="pre-t6o">&lt;</span> <span class="jdcit">2024년</span>
											<span class="nex-tyc">&gt;</span>
										</header>
										<span class="cel-8aj mon-nl4">1월</span><span
											class="cel-8aj mon-nl4">2월</span><span
											class="cel-8aj mon-nl4">3월</span><span
											class="cel-8aj mon-nl4">4월</span><span
											class="cel-8aj mon-nl4 select-tkq">5월</span><span
											class="cel-8aj mon-nl4">6월</span><span
											class="cel-8aj mon-nl4">7월</span><span
											class="cel-8aj mon-nl4">8월</span><span
											class="cel-8aj mon-nl4">9월</span><span
											class="cel-8aj mon-nl4">10월</span><span
											class="cel-8aj mon-nl4">11월</span><span
											class="cel-8aj mon-nl4">12월</span>
									</div>
									<div class="vdp-csn style-oh9An" id="style-oh9An">
										<header>
											<span class="pre-t6o">&lt;</span> <span>2020 - 2029년</span> <span
												class="nex-tyc">&gt;</span>
										</header>
										<span class="cel-8aj yea-37v">2020</span><span
											class="cel-8aj yea-37v">2021</span><span
											class="cel-8aj yea-37v">2022</span><span
											class="cel-8aj yea-37v">2023</span><span
											class="cel-8aj yea-37v select-tkq">2024</span><span
											class="cel-8aj yea-37v">2025</span><span
											class="cel-8aj yea-37v">2026</span><span
											class="cel-8aj yea-37v">2027</span><span
											class="cel-8aj yea-37v">2028</span><span
											class="cel-8aj yea-37v">2029</span>
									</div>
								</div>
							</div>
						</div>
						<div data-v-704a40ac="" class="search-wfk">
							<div data-v-704a40ac="" class="btn-m8m">초기화</div>
							<div data-v-704a40ac="" class="btn-3cb">검색</div>
						</div>
					</div>
				</div>
				<div class="mb4-4kb">
					<div>
						<div data-v-1db704ec="" class="btn-aew">
							<div data-v-1db704ec="" class="gui-5ct"></div>
							<div data-v-1db704ec="" class="btn-lpo">
								<div data-v-1db704ec="" class="select-hxc">
									<div data-v-1db704ec="" class="search-j3c">
										<select data-v-1db704ec="" class="select-7p8 select-2q9">
											<option data-v-1db704ec="" value="10">10개</option>
											<option data-v-1db704ec="" value="20">20개</option>
											<option data-v-1db704ec="" value="30">30개</option>
											<option data-v-1db704ec="" value="40">40개</option>
											<option data-v-1db704ec="" value="50">50개</option>
											<option data-v-1db704ec="" value="100">100개</option>
										</select>
									</div>
								</div>
							</div>
						</div>



						<div class="list-1ha pmc-42h">
							<table class="list-z5i pmc-63o">
								<colgroup>
									<col width="45">
									<col width="100">
									<col width="100">
									<col width="120">
									<col width="160">
									<col width="140">
									<col width="105">
									<col width="90">
									<col width="90">
									<col width="90">
									<col width="100">
									<col width="100">
								</colgroup>
								<thead>
									<tr class="agejb">
										<th></th>
										<th>건물명</th>
										<th>층/호수</th>
										<th>임차인명</th>
										<th>청구서명</th>
										<th>
											<p>청구금액</p>
											<p>(잔액)</p>
										</th>
										<th>납부상태</th>
										<th>납기일</th>
										<th></th>
										<th>납부일</th>
									</tr>
								</thead>
								<c:if test="${empty payDataList }">
									<tbody>

										<tr data-v-15af6418="" class="item-ws2">
											<td data-v-15af6418="">
												<p data-v-15af6418="" class="row-8ph"></p>
											</td>
											<td data-v-15af6418="">
												<div data-v-15af6418="" class="w10-qrr rel-lbm">
													<div data-v-15af6418="" class="list-azf">
														<span> </span>
													</div>
												</div>
											</td>
											<td data-v-15af6418=""></td>
											<td data-v-15af6418=""></td>
											<td data-v-15af6418="" colspan="2">
												<div data-v-15af6418="" class="list-azf">
													<span class="underline-ihf btn-j75"> 납부데이터 목록이 존재하지
														않습니다. </span>
												</div>
											</td>
											<td data-v-15af6418=""></td>
											<td data-v-15af6418=""></td>
											<td data-v-15af6418="" style=""></td>
											<td data-v-15af6418=""></td>
										</tr>
									</tbody>
								</c:if>
								<c:if test="${not empty payDataList }">
									<c:forEach items="${payDataList }" var="pay" varStatus="status">
										<tbody>
											<c:if test="${status.count % 2 eq 0}">
												<tr data-v-3d52edd8="" class="white">
											</c:if>
											<c:if test="${status.count % 2 ne 0}">
												<tr data-v-3d52edd8="" class="bg-color">
											</c:if>
											<td data-v-3d52edd8="">
												<p data-v-3d52edd8="" class="row-ipj">${pay.knum }</p>
											</td>
											<td data-v-3d52edd8="">${pay.rentContract.rentRoom.rentBldg.bldgNm }</td>
											<td data-v-3d52edd8="">${pay.rentContract.rentRoom.room.roomFloor }F/${pay.rentContract.rentRoom.room.roomUnit }</td>
											<td data-v-3d52edd8="">
												<div data-v-3d52edd8="" class="list-si1">
													<span class="underline-4ax btn-e9d">
														${pay.rentContract.cntrctrNm } </span>
												</div>
											</td>
											<td data-v-3d52edd8="">
												<div data-v-3d52edd8="" class="list-si1">
													<span data-pay-no="${pay.payNo }"
														class="underline-4ax btn-e9d" data-bs-toggle="offcanvas"
														data-bs-target="#offcanvasRight"
														aria-controls="offcanvasRight" id="payone">
														${pay.blNm } </span>
												</div>
											</td>
											<td data-v-3d52edd8="">
												<div data-v-3d52edd8="">
													<p data-v-3d52edd8="" class="ylvtm">${pay.rqestAmt }원</p>
												</div>
											</td>
											<td data-v-3d52edd8="" id="payStts">${pay.payStts }</td>
											<td data-v-3d52edd8="">${pay.dedtDe }</td>
											<!-- 										<td data-v-3d52edd8="">수동납부</td> -->
											<td data-v-3d52edd8="">
												<p data-v-3d52edd8=""></p>
											</td>
											<td data-v-3d52edd8="" id="paydee">${pay.payDe }</td>
											</tr>
										</tbody>
									</c:forEach>
								</c:if>
							</table>


						</div>
					</div>
					${pagingHTML }
				</div>
				<div class="loading-v5t style-TwYAt" id="style-TwYAt">
					<div class="loading-hw1"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<form action="<c:url value='/lessor/payData'/>" id="searchForm">
	<!-- 	<input type="text" name="boardDong" /> -->
	<!-- 	<input type="text" name="searchWord" /> -->
	<input type="hidden" name="currentPage" />
</form>


<div class="offcanvas offcanvas-end w-65" tabindex="-1"
	id=offcanvasRight aria-labelledby="offcanvasRightLabel">
	<div class="offcanvas-header">
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
			aria-label="Close"></button>
	</div>
	<div class="offcanvas-body"></div>
</div>




<script>
let offcanvasRightEL,offcanvasBody,offCanvas,detailArea;
let gPaydee,gPayStts;
$(function() {
	//상세조회 모달
	offcanvasRightEL = $("#offcanvasRight"); 
	offcanvasBody = offcanvasRightEL.find(".offcanvas-body").eq(0)	;
	offCanvas = new bootstrap.Offcanvas(offcanvasRightEL.get(0));
	detailArea = $(".list-si1"); 
	offcanvasRightEL.on('hidden.bs.offcanvas', event => {
		offcanvasBody.empty();
	})
	
	$(document).on("click",".underline-4ax.btn-e9d",function(){
		gPaydee = $(this).closest("tr").find("#paydee");
		gPayStts =$(this).closest("tr").find("#payStts");
		var payNo = $(this).data("payNo");
		var payUrl = `\${cPath}/lessor/payData/\${payNo}`
		$.ajax({
			url : payUrl,
			dataType : "html",
			success : function(resp){
				offcanvasBody.html(resp);
				offCanvas.show();
			}
		})
	});
	

		$(document).on("click", "[data-page]", function() {
			let page = $(this).data('page');
			searchForm.currentPage.value = page;
			$searchForm.submit();
		});

		const $searchForm = $("#searchForm");
		$("#searchBtn").on("click", function(event) {
			let $searchUI = $(this).parents("#searchUI");
			$searchUI.find(":input[name]").each(function(idx, ipt) {
				let name = this.name;
				let value = $(this).val();
				searchForm[name].value = value;
			});
			$searchForm.submit();
		});

		$("[name='boardDong']").val("${condition.boardDong}")
	})
</script>