<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
					role="tab" aria-controls="contract" aria-selected="false">종료계약</a></li>


				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a
					data-v-f5be1daa="" class="nav-link" id="room-tab"
					data-bs-toggle="tab" data-bs-target="#room" role="tab"
					aria-controls="room" aria-selected="false">호실정보</a></li>

<!-- 				<li data-v-f5be1daa="" class="nav-item" role="presentation"><a -->
<!-- 					data-v-f5be1daa="" class="nav-link" id="memo-tab" -->
<!-- 					data-bs-toggle="tab" data-bs-target="#memo" role="tab" -->
<!-- 					aria-controls="memo" aria-selected="false">메모</a></li> -->
			</ul>

			<div>
				<div>
					<div>


						<div>

							<div class="tab-content" id="myTabContent">
								<!--**********************  계약정보 탭  (시작)************************ -->
								<div class="tab-pane fade show active" id="home" role="tabpanel"
									aria-labelledby="home-tab">
									<div data-v-42ad03f4="" class="select-17o">
										<div data-v-42ad03f4="" class="select-tbj">
											<!-- 진행중 계약 조회 select버튼 있었던 곳. 없애면 UI 깨짐  -->
										</div>
										<div data-v-42ad03f4="" class="btn-28v">
											<div data-v-42ad03f4="">
												<!-- 자식 offcanvas를 여는 버튼 -->
												<a data-v-42ad03f4=""
													class="btn-i5c qgioc act-n82 lpwme ml1-lah btn-52i"
													id="addcbtn"
													data-room-no="${room.rentRoomNo }" type="button"
													data-bs-toggle="offcanvas"
													data-bs-target="#offcanvasNested"
													aria-controls="offcanvasNested"> 임대계약 등록 </a> <a
													data-v-42ad03f4=""
													class="btn-i5c qgioc lpwme ml1-lah btn-52i"> 삭제 </a>
											</div>
										</div>
									</div>


									<!-- 자식 offcanvas -->
<!-- 									<div class="offcanvas offcanvas-end w-65" tabindex="-1" -->
<!-- 										id="offcanvasNested" aria-labelledby="offcanvasNestedLabel" -->
<!-- 										aria-modal="true" role="dialog"> -->
<!-- 										<div class="offcanvas-header"> -->
<!-- 											<button type="button" class="btn-close" -->
<!-- 												data-bs-dismiss="offcanvas" aria-label="Close"></button> -->
<!-- 										</div> -->
<!-- 										<div class="offcanvas-body">ㅇㅇ</div> -->
<!-- 									</div> -->

















									<!-- 임대계약없을 경우(시작)  -->
									<c:if
										test="${empty rentContractIngList and empty rentContractPreList and empty rentContractEndList}">
										<div data-v-26e57b98="" class="info-ovx">
											<p data-v-26e57b98="">
												등록된 임대계약이 없습니다.<br data-v-26e57b98="">'<b
													data-v-26e57b98="">임대계약 등록</b>'으로 '<b data-v-26e57b98="">임대관리</b>'를
												시작해보세요.
											</p>
											<span data-v-26e57b98="" class="row-yth no-igj"><i
												data-v-26e57b98="" class="edge-h8o"></i> <i
												data-v-26e57b98="" class="cor-ljo"><i data-v-26e57b98=""></i></i>
												<i data-v-26e57b98="" class="edge-3eh"></i></span>
										</div>
									</c:if>
									<!--  임대계약 없을 경우(끝) -->



									<!--  임대계약 있을 경우(시작) -->
									<c:if
										test="${not empty rentContractIngList or not empty rentContractPreList or not empty rentContractEndList}">

										<!--  계약정보 (시작) -->
										<div>

											<div>
												<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
													<span data-v-0e6ef53a="" class="cat-ma8">계약중 (총 관리건수
														: ${fn:length(rentContractIngList)} 건)</span>
													<ul data-v-0e6ef53a="" class="list-tix mt1-x54">

														<!--  입주중 리스트  -->
														<c:forEach var="ingList" items="${rentContractIngList}">
															<li data-v-ba831638="" data-v-0e6ef53a=""
																class="select-nmt"><a data-v-ba831638="">
																	<div data-v-ba831638="" class="reg-rha">
																		<dl data-v-ba831638="" class="tag-lm7 qysek">${ingList.rentRoom.room.roomFloor }F
																		</dl>
																		<dl data-v-ba831638="" class="info-dh2">
																			<dt data-v-ba831638="">
																				<c:set var="ingdong"
																					value="${ingList.rentRoom.room.rentDong }" />
																				<c:if test="${not empty ingdong}"> ${ingdong }동</c:if>
																				${ingList.rentRoom.room.roomUnit }호 -
																				${ingList.cntrctrNm } <span data-v-ba831638=""></span>
																			</dt>
																			<dd data-v-ba831638="">
																				<div data-v-ba831638=""
																					class="fle-rmw fle-8py fle-31t">
																					<p data-v-ba831638="">계약기간 (${ingList.dctBgng}
																						~ ${ingList.dctEnd}) / 월입금액 (${ingList.mtRcpmnyAmt }원)
																						/ 납부일 (${ingList.ctpDedtDe}일)</p>
																				</div>
																			</dd>
																		</dl>
																		<ul data-v-ba831638="" class="reg-8q1">
																		</ul>
																	</div>
															</a></li>
														</c:forEach>
													</ul>
												</div>
												<div data-v-0e6ef53a="" class="mt3-vpr mb5-xbg">
													<span data-v-0e6ef53a="" class="cat-ma8">입주예정 (총
														관리건수 : ${fn:length(rentContractPreList)} 건)</span>
													<ul data-v-0e6ef53a="" class="list-tix mt1-x54">
														<!--  계약중 리스트  -->
														<c:forEach var="preList" items="${rentContractPreList}">
															<li data-v-ba831638="" data-v-0e6ef53a=""><a
																data-v-ba831638="">
																	<div data-v-ba831638="" class="reg-rha">
																		<dl data-v-ba831638="" class="tag-lm7 qysek">${preList.rentRoom.room.roomFloor }F
																		</dl>
																		<dl data-v-ba831638="" class="info-dh2">
																			<dt data-v-ba831638="">
																				<c:set var="predong"
																					value="${preList.rentRoom.room.rentDong }" />
																				<c:if test="${not empty predong}"> ${predong }동</c:if>
																				${preList.rentRoom.room.roomUnit }호 -
																				${preList.cntrctrNm } <span data-v-ba831638=""></span>
																			</dt>
																			<dd data-v-ba831638="">
																				<div data-v-ba831638=""
																					class="fle-rmw fle-8py fle-31t">
																					<p data-v-ba831638="">계약기간 (${preList.dctBgng}
																						~ ${preList.dctEnd}) / 월입금액 (${preList.mtRcpmnyAmt }원)
																						/ 납부일 (${preList.ctpDedtDe}일)</p>
																				</div>
																			</dd>
																		</dl>
																		<ul data-v-ba831638="" class="reg-8q1">
																			<li data-v-ba831638="" class="qysek">예정</li>
																		</ul>
																	</div>
															</a></li>
														</c:forEach>
													</ul>
												</div>
											</div>
										</div>
									</c:if>
								</div>

								<!--  임대계약 있을 경우(끝) -->
								<!--********************** 계약정보 목록 탭 (시작) ************************ -->



								<!--********************** 종료계약 목록 탭 (시작) ************************ -->
								<div class="tab-pane fade" id="endCntrct" role="tabpanel"
									aria-labelledby="endCntrct-tab">

									<div>
										<div>
											<div data-v-0e6ef53a="" class="mt3-83o mb5-o2h">
												<span data-v-0e6ef53a="" class="cat-b7o">계약종료 (총 관리건수
													: ${fn:length(rentContractEndList)} 건)</span>
												<ul data-v-0e6ef53a="" class="list-e6w mt1-pv8">

													<c:forEach var="endList" items="${rentContractEndList}">
														<li data-v-ba831638="" data-v-0e6ef53a=""><a
															data-v-ba831638="">
																<div data-v-ba831638="" class="reg-k66">
																	<dl data-v-ba831638="" class="tag-d5g otyck">${endList.rentRoom.room.roomFloor }F
																	</dl>
																	<dl data-v-ba831638="" class="info-kd3">
																		<dt data-v-ba831638="">
																			<c:set var="enddong"
																				value="${endList.rentRoom.room.rentDong }" />
																			<c:if test="${not empty enddong}"> ${enddong }동</c:if>
																			${endList.rentRoom.room.roomUnit }호 -
																			${endList.cntrctrNm } <span data-v-ba831638=""></span>
																		</dt>
																		<dd data-v-ba831638="">
																			<div data-v-ba831638=""
																				class="fle-poz fle-qdg fle-cn6">
																				<p data-v-ba831638="">계약기간 (${endList.dctBgng} ~
																					${endList.dctEnd}) / 월입금액 (${endList.mtRcpmnyAmt }원)
																					/ 납부일 (${endList.ctpDedtDe}일)</p>
																			</div>
																		</dd>
																	</dl>
																	<ul data-v-ba831638="" class="reg-57a">
																		<li data-v-ba831638="" class="ehrgh">
																			<p data-v-ba831638="">중도퇴실</p>
																			<p data-v-ba831638="">완료</p>
																		</li>
																		<li data-v-ba831638="" class="iwqog">종료</li>
																	</ul>
																</div>
														</a></li>
													</c:forEach>

												</ul>
												<!-- 												<div data-v-7136ea58="" data-v-0e6ef53a="" -->
												<!-- 													class="paging-979 mt3-fcb"> -->
												<!-- 													<a data-v-7136ea58="" class="btn-ndq ini-96q"></a> <a -->
												<!-- 														data-v-7136ea58="" class="btn-ndq pre-ofr"></a> <a -->
												<!-- 														data-v-7136ea58="" class="ckomw act-zsk">1</a> <a -->
												<!-- 														data-v-7136ea58="" class="btn-ndq nex-eci"></a> <a -->
												<!-- 														data-v-7136ea58="" class="btn-ndq wdtoq"></a> -->
												<!-- 												</div> -->
											</div>
										</div>
									</div>

								</div>
								<!--********************** 종료계약 목록 탭 (끝) ************************ -->

								<!--********************** 호실정보 탭 (시작)************************ -->
								<div class="tab-pane fade" id="room" role="tabpanel"
									aria-labelledby="room-tab">
									<div>
										<div data-v-c5b78718="" class="roo-982">
											<div data-v-c5b78718="">
												<div data-v-5628c2f7="" data-v-c5b78718=""
													class="section-nj7 mt3-os1">
													<div data-v-5628c2f7="" class="title-x1z">
														<p data-v-5628c2f7="" class="title-mwc">호실 정보</p>
														<div data-v-5628c2f7="" class="btn-oqj">
															<div data-v-5628c2f7="" class="bas-npk act-31b">호실정보
																수정</div>
															<div data-v-5628c2f7="" class="bas-npk nor-dmr">호실
																삭제</div>
<!-- 															<div data-v-5628c2f7="" class="bas-npk nor-dmr">정보 -->
<!-- 																변경내역</div> -->
														</div>
													</div>
													<table data-v-5628c2f7="" class="list-9tf mt1-ply">
														<colgroup data-v-5628c2f7="">
															<col data-v-5628c2f7="" width="200">
															<col data-v-5628c2f7="" width="260">
															<col data-v-5628c2f7="" width="200">
															<col data-v-5628c2f7="" width="*">
														</colgroup>
														<tbody data-v-5628c2f7="">
															<tr data-v-5628c2f7="">
																<th data-v-5628c2f7="">소재지</th>
																<td data-v-5628c2f7="">${building.bldgAddr }</td>
																<th data-v-5628c2f7="">해당층 / 총층</th>
																<td data-v-5628c2f7="">${room.room.roomFloor }층 / ${building.bldgAllCnt }층</td>
															</tr>
															<tr data-v-5628c2f7="">
																<th data-v-5628c2f7="">호실 고유번호</th>
																<td data-v-5628c2f7="">${room.rentRoomNo }</td>
																<th data-v-5628c2f7="">호실 번호</th>
																<td data-v-5628c2f7="">${room.room.roomUnit }호</td>
															</tr>
															<tr data-v-5628c2f7="">
																<th data-v-5628c2f7="">대지면적 (m<sup
																	data-v-5628c2f7="">2</sup>)
																</th>
																<td data-v-5628c2f7="">${room.room.dctLadAr}</td>
																<th data-v-5628c2f7="">건축면적 (m<sup
																	data-v-5628c2f7="">2</sup>)
																</th>
																<td data-v-5628c2f7="">${room.room.buldAr}</td>
															</tr>
															<tr data-v-5628c2f7="">
																<th data-v-5628c2f7="">전용면적 (m<sup
																	data-v-5628c2f7="">2</sup>)
																</th>
																<td data-v-5628c2f7="" style="">${room.room.buldAr}</td>
																<th data-v-5628c2f7="">난방시설
																</th>
																<td data-v-5628c2f7="">중앙난방</td>
															</tr>
															<tr data-v-5628c2f7="">
																<th data-v-5628c2f7="">주차가능여부</th>
																<td data-v-5628c2f7="">
																<c:if test="${room.room.roomParkngYn eq 'Y'}">가능</c:if>
																<c:if test="${room.room.roomParkngYn eq 'N'}">불가능</c:if>
																</td>
																<th data-v-5628c2f7="">방개수 / 욕실개수</th>
																<td data-v-5628c2f7="">${room.roomCnt} / ${room.room.roomBtrCnt}</td>
															</tr>
														</tbody>
													</table>
												</div>
<!-- 												<div data-v-382c8b04="" data-v-c5b78718="" -->
<!-- 													class="section-nj7 mt6-35l"> -->
<!-- 													<div data-v-382c8b04="" class="title-x1z"> -->
<!-- 														<p data-v-382c8b04="" class="title-mwc">내부 시설물</p> -->
<!-- 														<div data-v-382c8b04="" class="btn-oqj"> -->
<!-- <!-- 															<div data-v-382c8b04="" class="bas-npk nor-dmr">시설물 --> 
<!-- <!-- 																변경내역</div> --> 
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<table data-v-382c8b04="" class="list-9tf mt1-ply"> 
<%-- 														<colgroup data-v-382c8b04=""> --%>
<%-- 															<col data-v-382c8b04="" width="200"> --%>
<%-- 															<col data-v-382c8b04="" width="*"> --%>
<%-- 														</colgroup> --%>
<!-- 														<tbody data-v-382c8b04=""> -->
<!-- 															<tr data-v-382c8b04=""> -->
<!-- 																<th data-v-382c8b04="">가전</th> -->
<!-- 																<td data-v-382c8b04=""> -->
<!-- 																	<div data-v-382c8b04="" class="item-8qr"></div> -->
<!-- 																</td> -->
<!-- 															</tr> -->
<!-- 															<tr data-v-382c8b04=""> -->
<!-- 																<th data-v-382c8b04="">가구</th> -->
<!-- 																<td data-v-382c8b04=""> -->
<!-- 																	<div data-v-382c8b04="" class="item-8qr"></div> -->
<!-- 																</td> -->
<!-- 															</tr> -->
<!-- 															<tr data-v-382c8b04=""> -->
<!-- 																<th data-v-382c8b04="">기타</th> -->
<!-- 																<td data-v-382c8b04=""> -->
<!-- 																	<div data-v-382c8b04="" class="item-8qr"></div> -->
<!-- 																</td> -->
<!-- 															</tr> -->
<!-- 														</tbody> -->
<!-- 													</table> -->
<!-- 												</div> -->
<!-- 												<div data-v-511755a5="" data-v-c5b78718="" -->
<!-- 													class="section-nj7 mt6-35l"> -->
<!-- 													<div data-v-511755a5="" class="title-x1z"> -->
<!-- 														<h3 data-v-511755a5="" class="title-mwc">내부 사진</h3> -->
<!-- 													</div> -->
<!-- 													<div data-v-511755a5="" class="non-3gv"> -->
<!-- 														<p data-v-511755a5="">저장한 호실 내부 사진이 없습니다.</p> -->
<!-- 														<p data-v-511755a5="">호실정보 수정 팝업창에서 사진을 등록해주세요.</p> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												<div data-v-2e552300="" data-v-c5b78718="" -->
<!-- 													class="section-nj7 mt6-35l"> -->
<!-- 													<div data-v-2e552300="" class="title-x1z"> -->
<!-- 														<h3 data-v-2e552300="" class="title-mwc">공실 마케팅</h3> -->
<!-- 														<div data-v-2e552300="" class="btn-oqj"> -->
<!-- 															<div data-v-2e552300="" > -->
<!-- 																</div> -->
<!-- 															<div data-v-2e552300="" class="bas-npk act-31b">호실 내놓기</div> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<table data-v-2e552300="" class="list-9tf mt1-ply"> -->
<%-- 														<colgroup data-v-2e552300=""> --%>
<%-- 															<col data-v-2e552300="" width="200"> --%>
<%-- 															<col data-v-2e552300="" width="260"> --%>
<%-- 															<col data-v-2e552300="" width="*"> --%>
<%-- 														</colgroup> --%>
<!-- 														<tbody data-v-2e552300=""> -->
<!-- 															<tr data-v-2e552300=""> -->
<!-- 																<th data-v-2e552300="">현재 기준 공실 경과일</th> -->
<!-- 																<td data-v-2e552300="">2일</td> -->
<!-- 																<td data-v-2e552300="">입주예정자 없음</td> -->
<!-- 															</tr> -->
<!-- 														</tbody> -->
<!-- 													</table> -->
<!-- 												</div> -->
											</div>
										</div>
									</div>


								</div>
								<!--********************** 호실정보 탭 (끝)************************ -->

								<!--********************** 메모 탭 (시작)************************ -->
								<div class="tab-pane fade" id="memo" role="tabpanel"
									aria-labelledby="memo-tab">

									<div data-v-7681d8b6="" class="memo-988">
										<div data-v-7681d8b6="">
											<textarea data-v-7681d8b6="" class="text-5hw" style=""></textarea>
											<div data-v-7681d8b6="" class="btn-jo5 mt1-dms rig-o6o">
												<a data-v-7681d8b6="" class="btn-858 llhqx btn-jeq"> 저장
												</a>
											</div>
										</div>
										<ul data-v-7681d8b6="" class="list-qdr">
											<li data-v-a1e26c3e="" data-v-7681d8b6="">
												<div data-v-a1e26c3e="" class="xmfer">안녕!!!</div>
												<p data-v-a1e26c3e="" class="dat-fvf">2024-05-29
													01:42:13 (이성경)</p> <span data-v-a1e26c3e="" class="uti-ywo"><a
													data-v-a1e26c3e="" class="edi-am4"></a> <a
													data-v-a1e26c3e="" class="migxo"></a></span>
											</li>
											<li data-v-a1e26c3e="" data-v-7681d8b6="">
												<div data-v-a1e26c3e="" class="xmfer">ㅁㅁㅁ</div>
												<p data-v-a1e26c3e="" class="dat-fvf">2024-05-29
													00:22:57 (이성경)</p> <span data-v-a1e26c3e="" class="uti-ywo"><a
													data-v-a1e26c3e="" class="edi-am4"></a> <a
													data-v-a1e26c3e="" class="migxo"></a></span>
											</li>
										</ul>
									</div>



								</div>
								<!--********************** 메모 탭 (끝)************************ -->
							</div>
							<!-- <div class="tab-content" id="myTabContent"> 태그닫기  -->








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
		location.href = cPath + "/lessor/cntrctInfo/addC/" + rentRoomNo;
	}
	

	
</script>