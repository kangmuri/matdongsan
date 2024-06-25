<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div data-v-596363a9="" class="content-57g">
	<div data-v-596363a9="" class="layer-o82">

		<h2 data-v-596363a9="">호실정보</h2>
	</div>

	<c:set var="room" value="${rentRoomVO }" scope="request"></c:set>
	<c:set var="building" value="${RentBldgVO }" scope="request"></c:set>
	<div data-v-596363a9="" class="layer-e6w">
		<div>
			<div data-v-1175a59d="" class="roo-83n">
				<p data-v-1175a59d="" class="roo-1nd">
					${building.bldgNm }
					<c:set var="bldgDong" value="${building.bldgDong }" />
					<c:if test="${not empty bldgDong}"> (${bldgDong }동)</c:if>
					<span data-v-1175a59d="" class="roo-tyb">(${building.bldgSe })</span>
					<span data-v-1175a59d="" class="roo-7ao">${room.room.roomFloor }층
						${room.room.roomUnit }호</span>
				</p>
				<p data-v-1175a59d="" class="add-6fo">${building.bldgAddr }</p>
			</div>

			<ul data-v-f5be1daa="" class="user-2dx nav nav-tabs" id="myTab"
				role="tablist">
				<li data-v-f5be1daa="" class="jhehj nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link active" id="home-tab"
					data-bs-toggle="tab" data-bs-target="#home" type="button"
					role="tab" aria-controls="home" aria-selected="true">계약정보</a></li>

				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="endCntrct-tab"
					data-bs-toggle="tab" data-bs-target="#endCntrct" type="button"
					role="tab" aria-controls="endCntrct" aria-selected="false">종료계약</a></li>
					
				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="manage-tab"
					data-bs-toggle="tab" data-bs-target="#manage" role="tab"
					aria-controls="manage" aria-selected="false">관리이력</a></li>

				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="adjustment-tab"
					data-bs-toggle="tab" data-bs-target="#adjustment" role="tab"
					aria-controls="adjustment" aria-selected="false">정산관리</a></li>

				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="room-tab"
					data-bs-toggle="tab" data-bs-target="#room" role="tab"
					aria-controls="room" aria-selected="false">호실정보</a></li>

				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="memo-tab"
					data-bs-toggle="tab" data-bs-target="#memo" role="tab"
					aria-controls="memo" aria-selected="false">메모</a></li>
			</ul>

			<div>
				<div>
					<div>
						<div data-v-42ad03f4="" class="select-17o">
							<div data-v-42ad03f4="" class="select-tbj">
								<!-- 진행중 계약 조회 select버튼 있었던 곳. 없애면 UI 깨짐  -->
							</div>
							<div data-v-42ad03f4="" class="btn-28v">
								<div data-v-42ad03f4="">
									<a data-v-42ad03f4=""
										class="btn-i5c qgioc act-n82 lpwme ml1-lah btn-52i"
										data-room-no="${room.rentRoomNo }" onclick="fMCOpen(this)">
										임대계약 등록 </a> <a data-v-42ad03f4=""
										class="btn-i5c qgioc lpwme ml1-lah btn-52i"> 삭제 </a>
								</div>
							</div>
						</div>
						<div>

							
									<!--**********************  계약정보 탭  (시)************************ -->
									<div class="tab-pane fade show active" id="home" role="tabpanel"
									aria-labelledby="home-tab">
									<!-- 임대계약없을 경우(시작)  -->

									<!-- 							<div data-v-26e57b98="" class="info-ovx"> -->
									<!-- 								<p data-v-26e57b98=""> -->
									<!-- 									등록된 임대계약이 없습니다.<br data-v-26e57b98="">'<b -->
									<!-- 										data-v-26e57b98="">임대계약 등록</b>'으로 '<b data-v-26e57b98="">임대관리</b>'를 -->
									<!-- 									시작해보세요. -->
									<!-- 								</p> -->
									<!-- 								<span data-v-26e57b98="" class="row-yth no-igj"><i -->
									<!-- 									data-v-26e57b98="" class="edge-h8o"></i> <i data-v-26e57b98="" -->
									<!-- 									class="cor-ljo"><i data-v-26e57b98=""></i></i> <i -->
									<!-- 									data-v-26e57b98="" class="edge-3eh"></i></span> -->
									<!-- 							</div> -->
									<!--  임대계약 없을 경우(끝) -->



									<!--  임대계약 있을 경우(시작) -->


									<!--  계약정보 (시작) -->
									<div>
										<div data-v-920c14ac="" class="search-erm">
											<div data-v-920c14ac="" class="inB-194">
												<ul data-v-920c14ac="">
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok sho-8fa">계약상태</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="20000001">계약중</option>
																	<option data-v-920c14ac="" value="20000003">입주예정</option>
																	<option data-v-920c14ac="" value="20000004">종료예정</option>
																	<option data-v-920c14ac="" value="20000007">가계약</option>
																	<option data-v-920c14ac="" value="PRECANCEL">가계약철회</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">계약형태</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="60100002">월세</option>
																	<option data-v-920c14ac="" value="60100001">전세</option>
																	<option data-v-920c14ac="" value="60100003">선납</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">납부방식</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="60200001">선불</option>
																	<option data-v-920c14ac="" value="60200002">후불</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">납부상태</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="comp">정상</option>
																	<option data-v-920c14ac="" value="none">연체</option>
																	<option data-v-920c14ac="" value="will">납부예정</option>
																	<option data-v-920c14ac="" value="can">
																		미납부(연체+납부예정)</option>
																	<option data-v-920c14ac="" value="today">오늘입금</option>
																</select>
															</div>
														</div>
													</li>
												</ul>
											</div>
											<div data-v-920c14ac="" class="inB-194">
												<ul data-v-920c14ac="">
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok sho-8fa">기간조정</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="JDCSTALK">
																		중도퇴실 협의중</option>
																	<option data-v-920c14ac="" value="JDCSDECI">
																		중도퇴실 확정</option>
																	<option data-v-920c14ac="" value="JDCSCOMP">
																		중도퇴실 완료</option>
																	<option data-v-920c14ac="" value="AUTOEXT">자동연장
																	</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">증빙종류</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="60700001">
																		세금계산서</option>
																	<option data-v-920c14ac="" value="60700002">계산서
																	</option>
																	<option data-v-920c14ac="" value="60700003">
																		현금영수증</option>
																	<option data-v-920c14ac="" value="N">미설정</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">보증금 상태</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="DONE">반환완료</option>
																	<option data-v-920c14ac="" value="NEED">반환필요</option>
																	<option data-v-920c14ac="" value="WILL">반환예정</option>
																	<option data-v-920c14ac="" value="PAY_NEED">
																		입금필요</option>
																	<option data-v-920c14ac="" value="PAY_DONE">
																		입금완료</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok">임차인</div>
															<input data-v-920c14ac="" placeholder="2글자 이상 입력"
																class="roo-cvk">
														</div>
													</li>
												</ul>
											</div>
											<div data-v-920c14ac="" class="inB-194">
												<ul data-v-920c14ac="">
													<li data-v-920c14ac="">
														<div data-v-920c14ac="" class="search-9oz">
															<div data-v-920c14ac="" class="sel-4ok sho-8fa">기간조회</div>
															<div data-v-920c14ac="" class="select-qgw">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel w13-ok5">
																	<option data-v-920c14ac="" value="">전체</option>
																	<option data-v-920c14ac="" value="regDt">계약등록일</option>
																	<option data-v-920c14ac="" value="contStDt">
																		계약시작일</option>
																	<option data-v-920c14ac="" value="contEndDt">
																		계약종료일</option>
																	<option data-v-920c14ac="" value="deposDt">
																		계약납기일</option>
																	<option data-v-920c14ac="" value="jdcsDt">중도퇴실일
																	</option>
																</select>
															</div>
															<div data-v-920c14ac="" class="vymix"></div>
															<div data-v-920c14ac="" class="vdp-o35">
																<div>
																	<input type="text" placeholder="검색 시작일"
																		class="input-oik arvbc bdP-lsw search-n5o">
																</div>
																<div class="vdp-624 style-TwtDJ" id="style-TwtDJ">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span class="gnvsw">2024년
																			5월</span> <span class="nex-mjb">&gt;</span>
																	</header>
																	<div>
																		<span class="cel-6jr header-7dd">일</span><span
																			class="cel-6jr header-7dd">월</span><span
																			class="cel-6jr header-7dd">화</span><span
																			class="cel-6jr header-7dd">수</span><span
																			class="cel-6jr header-7dd">목</span><span
																			class="cel-6jr header-7dd">금</span><span
																			class="cel-6jr header-7dd">토</span> <span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno">1</span><span
																			class="cel-6jr cekno">2</span><span
																			class="cel-6jr cekno">3</span><span
																			class="cel-6jr cekno">4</span><span
																			class="cel-6jr cekno">5</span><span
																			class="cel-6jr cekno">6</span><span
																			class="cel-6jr cekno">7</span><span
																			class="cel-6jr cekno">8</span><span
																			class="cel-6jr cekno">9</span><span
																			class="cel-6jr cekno">10</span><span
																			class="cel-6jr cekno">11</span><span
																			class="cel-6jr cekno">12</span><span
																			class="cel-6jr cekno">13</span><span
																			class="cel-6jr cekno">14</span><span
																			class="cel-6jr cekno">15</span><span
																			class="cel-6jr cekno">16</span><span
																			class="cel-6jr cekno">17</span><span
																			class="cel-6jr cekno">18</span><span
																			class="cel-6jr cekno">19</span><span
																			class="cel-6jr cekno">20</span><span
																			class="cel-6jr cekno">21</span><span
																			class="cel-6jr cekno">22</span><span
																			class="cel-6jr cekno">23</span><span
																			class="cel-6jr cekno">24</span><span
																			class="cel-6jr cekno">25</span><span
																			class="cel-6jr cekno">26</span><span
																			class="cel-6jr cekno">27</span><span
																			class="cel-6jr cekno">28</span><span
																			class="cel-6jr cekno">29</span><span
																			class="cel-6jr cekno">30</span><span
																			class="cel-6jr cekno">31</span>
																	</div>
																</div>
																<div class="vdp-624 style-xwFzC" id="style-xwFzC">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span class="gnvsw">2024년</span>
																		<span class="nex-mjb">&gt;</span>
																	</header>
																	<span class="cel-6jr mon-3v2">1월</span><span
																		class="cel-6jr mon-3v2">2월</span><span
																		class="cel-6jr mon-3v2">3월</span><span
																		class="cel-6jr mon-3v2">4월</span><span
																		class="cel-6jr mon-3v2">5월</span><span
																		class="cel-6jr mon-3v2">6월</span><span
																		class="cel-6jr mon-3v2">7월</span><span
																		class="cel-6jr mon-3v2">8월</span><span
																		class="cel-6jr mon-3v2">9월</span><span
																		class="cel-6jr mon-3v2">10월</span><span
																		class="cel-6jr mon-3v2">11월</span><span
																		class="cel-6jr mon-3v2">12월</span>
																</div>
																<div class="vdp-624 style-CgNAB" id="style-CgNAB">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span>2020 -
																			2029년</span> <span class="nex-mjb">&gt;</span>
																	</header>
																	<span class="cel-6jr yea-bsl">2020</span><span
																		class="cel-6jr yea-bsl">2021</span><span
																		class="cel-6jr yea-bsl">2022</span><span
																		class="cel-6jr yea-bsl">2023</span><span
																		class="cel-6jr yea-bsl">2024</span><span
																		class="cel-6jr yea-bsl">2025</span><span
																		class="cel-6jr yea-bsl">2026</span><span
																		class="cel-6jr yea-bsl">2027</span><span
																		class="cel-6jr yea-bsl">2028</span><span
																		class="cel-6jr yea-bsl">2029</span>
																</div>
															</div>
															<div data-v-920c14ac="" class="select-qgw style-o1Dlr"
																id="style-o1Dlr">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel select-wyj">
																	<option data-v-920c14ac="" value="1">1 일</option>
																	<option data-v-920c14ac="" value="2">2 일</option>
																	<option data-v-920c14ac="" value="3">3 일</option>
																	<option data-v-920c14ac="" value="4">4 일</option>
																	<option data-v-920c14ac="" value="5">5 일</option>
																	<option data-v-920c14ac="" value="6">6 일</option>
																	<option data-v-920c14ac="" value="7">7 일</option>
																	<option data-v-920c14ac="" value="8">8 일</option>
																	<option data-v-920c14ac="" value="9">9 일</option>
																	<option data-v-920c14ac="" value="10">10 일</option>
																	<option data-v-920c14ac="" value="11">11 일</option>
																	<option data-v-920c14ac="" value="12">12 일</option>
																	<option data-v-920c14ac="" value="13">13 일</option>
																	<option data-v-920c14ac="" value="14">14 일</option>
																	<option data-v-920c14ac="" value="15">15 일</option>
																	<option data-v-920c14ac="" value="16">16 일</option>
																	<option data-v-920c14ac="" value="17">17 일</option>
																	<option data-v-920c14ac="" value="18">18 일</option>
																	<option data-v-920c14ac="" value="19">19 일</option>
																	<option data-v-920c14ac="" value="20">20 일</option>
																	<option data-v-920c14ac="" value="21">21 일</option>
																	<option data-v-920c14ac="" value="22">22 일</option>
																	<option data-v-920c14ac="" value="23">23 일</option>
																	<option data-v-920c14ac="" value="24">24 일</option>
																	<option data-v-920c14ac="" value="25">25 일</option>
																	<option data-v-920c14ac="" value="26">26 일</option>
																	<option data-v-920c14ac="" value="27">27 일</option>
																	<option data-v-920c14ac="" value="28">28 일</option>
																	<option data-v-920c14ac="" value="29">29 일</option>
																	<option data-v-920c14ac="" value="30">30 일</option>
																	<option data-v-920c14ac="" value="31">31 일</option>
																</select>
															</div>
															<span data-v-920c14ac="" class="spa-aef"> ~ </span>
															<div data-v-920c14ac="" class="vdp-o35">
																<div>
																	<input type="text" placeholder="검색 종료일"
																		class="input-oik arvbc bdP-lsw search-n5o">
																</div>
																<div class="vdp-624 style-LZlop" id="style-LZlop">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span class="gnvsw">2024년
																			5월</span> <span class="nex-mjb">&gt;</span>
																	</header>
																	<div>
																		<span class="cel-6jr header-7dd">일</span><span
																			class="cel-6jr header-7dd">월</span><span
																			class="cel-6jr header-7dd">화</span><span
																			class="cel-6jr header-7dd">수</span><span
																			class="cel-6jr header-7dd">목</span><span
																			class="cel-6jr header-7dd">금</span><span
																			class="cel-6jr header-7dd">토</span> <span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno bla-x4r"></span><span
																			class="cel-6jr cekno">1</span><span
																			class="cel-6jr cekno">2</span><span
																			class="cel-6jr cekno">3</span><span
																			class="cel-6jr cekno">4</span><span
																			class="cel-6jr cekno">5</span><span
																			class="cel-6jr cekno">6</span><span
																			class="cel-6jr cekno">7</span><span
																			class="cel-6jr cekno">8</span><span
																			class="cel-6jr cekno">9</span><span
																			class="cel-6jr cekno">10</span><span
																			class="cel-6jr cekno">11</span><span
																			class="cel-6jr cekno">12</span><span
																			class="cel-6jr cekno">13</span><span
																			class="cel-6jr cekno">14</span><span
																			class="cel-6jr cekno">15</span><span
																			class="cel-6jr cekno">16</span><span
																			class="cel-6jr cekno">17</span><span
																			class="cel-6jr cekno">18</span><span
																			class="cel-6jr cekno">19</span><span
																			class="cel-6jr cekno">20</span><span
																			class="cel-6jr cekno">21</span><span
																			class="cel-6jr cekno">22</span><span
																			class="cel-6jr cekno">23</span><span
																			class="cel-6jr cekno">24</span><span
																			class="cel-6jr cekno">25</span><span
																			class="cel-6jr cekno">26</span><span
																			class="cel-6jr cekno">27</span><span
																			class="cel-6jr cekno">28</span><span
																			class="cel-6jr cekno">29</span><span
																			class="cel-6jr cekno">30</span><span
																			class="cel-6jr cekno">31</span>
																	</div>
																</div>
																<div class="vdp-624 style-sIykV" id="style-sIykV">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span class="gnvsw">2024년</span>
																		<span class="nex-mjb">&gt;</span>
																	</header>
																	<span class="cel-6jr mon-3v2">1월</span><span
																		class="cel-6jr mon-3v2">2월</span><span
																		class="cel-6jr mon-3v2">3월</span><span
																		class="cel-6jr mon-3v2">4월</span><span
																		class="cel-6jr mon-3v2">5월</span><span
																		class="cel-6jr mon-3v2">6월</span><span
																		class="cel-6jr mon-3v2">7월</span><span
																		class="cel-6jr mon-3v2">8월</span><span
																		class="cel-6jr mon-3v2">9월</span><span
																		class="cel-6jr mon-3v2">10월</span><span
																		class="cel-6jr mon-3v2">11월</span><span
																		class="cel-6jr mon-3v2">12월</span>
																</div>
																<div class="vdp-624 style-sKB1R" id="style-sKB1R">
																	<header>
																		<span class="pre-o7b">&lt;</span> <span>2020 -
																			2029년</span> <span class="nex-mjb">&gt;</span>
																	</header>
																	<span class="cel-6jr yea-bsl">2020</span><span
																		class="cel-6jr yea-bsl">2021</span><span
																		class="cel-6jr yea-bsl">2022</span><span
																		class="cel-6jr yea-bsl">2023</span><span
																		class="cel-6jr yea-bsl">2024</span><span
																		class="cel-6jr yea-bsl">2025</span><span
																		class="cel-6jr yea-bsl">2026</span><span
																		class="cel-6jr yea-bsl">2027</span><span
																		class="cel-6jr yea-bsl">2028</span><span
																		class="cel-6jr yea-bsl">2029</span>
																</div>
															</div>
															<div data-v-920c14ac="" class="select-qgw style-byQXx"
																id="style-byQXx">
																<select data-v-920c14ac=""
																	class="select-ty3 select-r55 select-fel select-wyj">
																	<option data-v-920c14ac="" value="1">1 일</option>
																	<option data-v-920c14ac="" value="2">2 일</option>
																	<option data-v-920c14ac="" value="3">3 일</option>
																	<option data-v-920c14ac="" value="4">4 일</option>
																	<option data-v-920c14ac="" value="5">5 일</option>
																	<option data-v-920c14ac="" value="6">6 일</option>
																	<option data-v-920c14ac="" value="7">7 일</option>
																	<option data-v-920c14ac="" value="8">8 일</option>
																	<option data-v-920c14ac="" value="9">9 일</option>
																	<option data-v-920c14ac="" value="10">10 일</option>
																	<option data-v-920c14ac="" value="11">11 일</option>
																	<option data-v-920c14ac="" value="12">12 일</option>
																	<option data-v-920c14ac="" value="13">13 일</option>
																	<option data-v-920c14ac="" value="14">14 일</option>
																	<option data-v-920c14ac="" value="15">15 일</option>
																	<option data-v-920c14ac="" value="16">16 일</option>
																	<option data-v-920c14ac="" value="17">17 일</option>
																	<option data-v-920c14ac="" value="18">18 일</option>
																	<option data-v-920c14ac="" value="19">19 일</option>
																	<option data-v-920c14ac="" value="20">20 일</option>
																	<option data-v-920c14ac="" value="21">21 일</option>
																	<option data-v-920c14ac="" value="22">22 일</option>
																	<option data-v-920c14ac="" value="23">23 일</option>
																	<option data-v-920c14ac="" value="24">24 일</option>
																	<option data-v-920c14ac="" value="25">25 일</option>
																	<option data-v-920c14ac="" value="26">26 일</option>
																	<option data-v-920c14ac="" value="27">27 일</option>
																	<option data-v-920c14ac="" value="28">28 일</option>
																	<option data-v-920c14ac="" value="29">29 일</option>
																	<option data-v-920c14ac="" value="30">30 일</option>
																	<option data-v-920c14ac="" value="31">31 일</option>
																</select>
															</div>
														</div>
													</li>
													<li data-v-920c14ac="" class="pl2-xla">
														<div data-v-920c14ac="" class="fle-rmw fle-8py">
															<div data-v-920c14ac="" class="search-9oz">
																<div data-v-920c14ac="" class="tag-dtk">태그</div>
																<div data-v-920c14ac="" class="select-qgw">
																	<select data-v-920c14ac=""
																		class="select-ty3 select-r55 select-fel w13-ok5">
																		<option data-v-920c14ac="" value="">선택</option>
																		<option data-v-920c14ac="" value="Y">포함</option>
																		<option data-v-920c14ac="" value="N">제외</option>
																	</select>
																</div>
															</div>
															<div data-v-920c14ac="" class="search-9oz ml2-2ja">
																<div data-v-920c14ac="" class="select-qgw">
																	<select data-v-920c14ac=""
																		class="select-ty3 select-r55 select-fel w21-mnh dis-t6o">
																		<option data-v-920c14ac="" value="">선택</option>
																	</select>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
											<div data-v-920c14ac="" class="inB-194 fle-kw2 pr2-dcq">
												<div data-v-920c14ac="" class="las-89n">
													<div data-v-920c14ac="" class="search-so2 search-wqs">초기화</div>
													<div data-v-920c14ac="" class="search-so2 search-roa">검색</div>
												</div>
											</div>
										</div>
										<div>
											<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
												<span data-v-0e6ef53a="" class="cat-ma8">계약중 (총 관리건수
													: 1 건)</span>
												<ul data-v-0e6ef53a="" class="list-tix mt1-x54">
													<li data-v-ba831638="" data-v-0e6ef53a=""
														class="select-nmt"><a data-v-ba831638="">
															<div data-v-ba831638="" class="reg-rha">
																<dl data-v-ba831638="" class="tag-lm7 qysek">1F
																</dl>
																<dl data-v-ba831638="" class="info-dh2">
																	<dt data-v-ba831638="">
																		1동 11호 - 강무리 <span data-v-ba831638=""></span>
																	</dt>
																	<dd data-v-ba831638="">
																		<div data-v-ba831638=""
																			class="fle-rmw fle-8py fle-31t">
																			<p data-v-ba831638="">계약기간 (2024.05.01 ~
																				2025.04.30) / 월입금액 (11원) / 납부일 (1일)</p>
																		</div>
																	</dd>
																</dl>
																<ul data-v-ba831638="" class="reg-8q1">
																</ul>
															</div>
													</a></li>
												</ul>
												<div data-v-7136ea58="" data-v-0e6ef53a=""
													class="paging-omb mt3-d3q">
													<a data-v-7136ea58="" class="btn-mmz ini-mne"></a> <a
														data-v-7136ea58="" class="btn-mmz pre-o7b"></a> <a
														data-v-7136ea58="" class="gxese act-12o">1</a> <a
														data-v-7136ea58="" class="btn-mmz nex-mjb"></a> <a
														data-v-7136ea58="" class="btn-mmz pgxse"></a>
												</div>
											</div>
											<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
												<span data-v-0e6ef53a="" class="cat-ma8">입주예정 (총 관리건수
													: 1 건)</span>
												<ul data-v-0e6ef53a="" class="list-tix mt1-x54">
													<li data-v-ba831638="" data-v-0e6ef53a=""><a
														data-v-ba831638="">
															<div data-v-ba831638="" class="reg-rha">
																<dl data-v-ba831638="" class="tag-lm7 qysek">1F
																</dl>
																<dl data-v-ba831638="" class="info-dh2">
																	<dt data-v-ba831638="">
																		1동 11호 - 11 <span data-v-ba831638=""></span>
																	</dt>
																	<dd data-v-ba831638="">
																		<div data-v-ba831638=""
																			class="fle-rmw fle-8py fle-31t">
																			<p data-v-ba831638="">계약기간 (2025.05.01 ~
																				2026.04.30) / 월입금액 (0원) / 납부일 (1일)</p>
																		</div>
																	</dd>
																</dl>
																<ul data-v-ba831638="" class="reg-8q1">
																	<li data-v-ba831638="" class="qysek">예정</li>
																</ul>
															</div>
													</a></li>
												</ul>
												<div data-v-7136ea58="" data-v-0e6ef53a=""
													class="paging-omb mt3-d3q">
													<a data-v-7136ea58="" class="btn-mmz ini-mne"></a> <a
														data-v-7136ea58="" class="btn-mmz pre-o7b"></a> <a
														data-v-7136ea58="" class="gxese act-12o">1</a> <a
														data-v-7136ea58="" class="btn-mmz nex-mjb"></a> <a
														data-v-7136ea58="" class="btn-mmz pgxse"></a>
												</div>
											</div>
											<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
												<span data-v-0e6ef53a="" class="cat-ma8">가계약 (총 관리건수
													: 0 건)</span>
												<ul data-v-0e6ef53a="" class="list-tix mt1-x54"></ul>
											</div>
											<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
												<span data-v-0e6ef53a="" class="cat-ma8">가계약 철회 (총
													관리건수 : 0 건)</span>
												<ul data-v-0e6ef53a="" class="list-tix mt1-x54"></ul>
											</div>
										</div>
									</div>
									<!--  계약정보 () -->



									<!--  임대계약 있을 경우(끝) -->
									
									<!--********************** 임대계약 목록 탭 (끝) ************************ -->
									

									<!--********************** 변동관리비 일괄청구 탭 (시작)************************ -->
									<div class="tab-pane fade" id="costChange" role="tabpanel"
											aria-labelledby="costChange-tab">
									<!--********************** 변동관리비 일괄청구 탭 (끝)************************ -->
									
									<!--********************** 건물수납관리 탭 (시작)************************ -->
										<div class="tab-pane fade" id="recptManage" role="tabpanel"
									aria-labelledby="recptManage-tab">
									<!--********************** 건물수납관리 탭 (끝)************************ -->
									<!--********************** 건물상세정보 탭 (시작)************************ -->
									<div class="tab-pane fade" id="contacttt" role="tabpanel"
									aria-labelledby="contact-tab">
									<!--********************** 건물상세정보 탭 (끝)************************ -->
		








								</div>
							</div>
							<div class="loading-zga style-sf165" id="style-sf165">
								<div class="loading-s4o"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
/******************** 계약 등록 모달 ***********************/
function fMCOpen(contractB) {
	const rentRoomNo = contractB.dataset.roomNo;
	location.href= cPath + "/lessor/cntrctInfo/addC/" + rentRoomNo;
}
</script>