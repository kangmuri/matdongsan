<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- *********************************************** 건물정보 단건 detail *********************************************** -->

<ul data-v-3a1dceac="" class="panel-bxj ySc-1fn">
	<li data-v-3a1dceac="">
		<div data-v-3a1dceac="" class="find-e9w">
			<div data-v-3a1dceac="" class="info-hqe">
				<h3 id="addr1" data-v-3a1dceac="">
					<c:set var="dong" value="${bldgVO.bldgDong }" />

					${bldgVO.bldgNm }
					<c:if test="${not empty dong}"> (${dong }동)</c:if>
					<span data-v-3a1dceac="">(${bldgVO.bldgSe })</span>
				</h3>
				<div data-v-0e840ab4="" class="footer-6ba">
					<p data-v-3a1dceac="" class="info-aos">${bldgVO.bldgAddr }</p>
				</div>
			</div>

			<ul data-v-3a1dceac="" class="user-624 nav nav-tabs" id="myTab"
				role="tablist">
				<li data-v-3a1dceac="" class="jhehj nav-item" role="presentation"><a
					data-v-3a1dceac="" class="nav-link active" id="home-tab"
					data-bs-toggle="tab" data-bs-target="#home" type="button"
					role="tab" aria-controls="home" aria-selected="true">호실 목록</a></li>

				<li data-v-3a1dceac="" class="nav-item" role="presentation"><a
					data-v-3a1dceac="" class="nav-link" id="contract-tab"
					data-bs-toggle="tab" data-bs-target="#contract" type="button"
					role="tab" aria-controls="contract" aria-selected="false">임대계약
						목록</a></li>
				<!-- 				<li data-v-3a1dceac="" class="nav-item" role="presentation"><a -->
				<!-- 					data-v-3a1dceac="" class="nav-link" id="costChange-tab" -->
				<!-- 					data-bs-toggle="tab" data-bs-target="#costChange" role="tab" -->
				<!-- 					aria-controls="costChange" aria-selected="false">변동관리비 일괄청구</a></li> -->

				<!-- 				<li data-v-3a1dceac="" class="nav-item" role="presentation"><a -->
				<!-- 					data-v-3a1dceac="" class="nav-link" id="recptManage-tab" -->
				<!-- 					data-bs-toggle="tab" data-bs-target="#recptManage" role="tab" -->
				<!-- 					aria-controls="recptManage" aria-selected="false">건물 수납관리</a></li> -->

				<!-- 				<li data-v-3a1dceac="" class="nav-item" role="presentation"><a -->
				<!-- 					data-v-3a1dceac="" class="nav-link" id="contacttt-tab" -->
				<!-- 					data-bs-toggle="tab" data-bs-target="#contacttt" role="tab" -->
				<!-- 					aria-controls="contact" aria-selected="false">건물정보 상세</a></li> -->
			</ul>
			<div class="tab-content" id="myTabContent">

				<div class="tab-pane fade" id="contract" role="tabpanel"
					aria-labelledby="contract-tab">
					<!--********************** 임대계약 목록 탭 (시작) ************************ -->
					<div>
						<div data-v-3a1dceac="" class="content-n7d">
							<div data-v-0abebce5="" class="fle-5f8 spa-495 mb2-v6p"></div>

							<!-- 해당 건물에 계약건 없을때 (시작)-->
							<c:if
								test="${empty rentContractIngList and empty rentContractPreList and empty rentContractEndList}">
								<div>
									<div>
										<div class="info-qpc">
											<p>
												등록된 임대계약이 없습니다.<br>'<b>임대계약 등록</b>'으로 '<b>임대관리</b>'를
												시작해보세요.
											</p>
										</div>
									</div>
								</div>
							</c:if>
							<!-- 해당 건물에 계약건 없을때 (끝)-->

							<!-- 해당 건물에 계약건 있을때 (시작)-->
							<c:if
								test="${not empty rentContractIngList or not empty rentContractPreList or not empty rentContractEndList}">
								<div>
									<div>
										<div data-v-0e6ef53a="" class="mt3-l7o mb5-9ky">
											<span data-v-0e6ef53a="" class="cat-7qr">계약중 (총 관리건수 :
												${fn:length(rentContractIngList)} 건)</span>
											<ul data-v-0e6ef53a="" class="list-wx7 mt1-2c9">
												<!--  입주중 리스트  -->
												<c:forEach var="ingList" items="${rentContractIngList}">
													<li data-v-ba831638="" data-v-0e6ef53a=""><a
														data-v-ba831638="">
															<div data-v-ba831638="" class="reg-pzp">
																<dl data-v-ba831638="" class="tag-ncf bvfky">
																	${ingList.rentRoom.room.roomFloor }F
																</dl>
																<dl data-v-ba831638="" class="info-egg">
																	<dt data-v-ba831638="">
																		<c:set var="ingdong"
																			value="${ingList.rentRoom.room.rentDong }" />
																		<c:if test="${not empty ingdong}"> ${ingdong }동</c:if>
																		${ingList.rentRoom.room.roomUnit }호 -
																		${ingList.cntrctrNm } <span data-v-ba831638=""></span>
																	</dt>
																	<dd data-v-ba831638="">
																		<div data-v-ba831638=""
																			class="fle-pvx fle-zc6 fle-zqq">
																			<p data-v-ba831638="">계약기간 (${ingList.dctBgng} ~
																				${ingList.dctEnd}) / 월입금액 (${ingList.mtRcpmnyAmt }원)
																				/ 납부일 (${ingList.ctpDedtDe}일)</p>
																		</div>
																	</dd>
																</dl>
																<ul data-v-ba831638="" class="reg-rmx">
																</ul>
															</div>
													</a></li>
												</c:forEach>
												<!--  계약중 리스트  -->
											</ul>
											<div data-v-7136ea58="" data-v-0e6ef53a=""
												class="paging-vfz mt3-fdj"></div>
										</div>
										<div data-v-0e6ef53a="" class="mt3-l7o mb5-9ky">
											<span data-v-0e6ef53a="" class="cat-7qr">입주예정 (총 관리건수
												: ${fn:length(rentContractPreList)} 건)</span>
											<ul data-v-0e6ef53a="" class="list-wx7 mt1-2c9">
												<c:forEach var="preList" items="${rentContractPreList}">
													<li data-v-ba831638="" data-v-0e6ef53a=""><a
														data-v-ba831638="">
															<div data-v-ba831638="" class="reg-pzp">
																<dl data-v-ba831638="" class="tag-ncf bvfky">${preList.rentRoom.room.roomFloor }F
																</dl>
																<dl data-v-ba831638="" class="info-egg">
																	<dt data-v-ba831638="">
																		<c:set var="predong"
																			value="${preList.rentRoom.room.rentDong }" />
																		<c:if test="${not empty predong}"> ${predong }동</c:if>
																		${preList.rentRoom.room.roomUnit }호 -
																		${preList.cntrctrNm } <span data-v-ba831638=""></span>
																	</dt>
																	<dd data-v-ba831638="">
																		<div data-v-ba831638=""
																			class="fle-pvx fle-zc6 fle-zqq">
																			<p data-v-ba831638="">계약기간 (${preList.dctBgng} ~
																				${preList.dctEnd}) / 월입금액 (${preList.mtRcpmnyAmt }원)
																				/ 납부일 (${preList.ctpDedtDe}일)</p>
																		</div>
																	</dd>
																</dl>
																<ul data-v-ba831638="" class="reg-rmx">
																	<li data-v-ba831638="" class="bvfky">예정</li>
																</ul>
															</div>
													</a></li>
												</c:forEach>
											</ul>
											<div data-v-7136ea58="" data-v-0e6ef53a=""
												class="paging-vfz mt3-fdj"></div>
										</div>
										<div data-v-0e6ef53a="" class="mt3-l7o mb5-9ky">
											<span data-v-0e6ef53a="" class="cat-7qr">계약종료 (총 관리건수
												: ${fn:length(rentContractEndList)} 건)</span>
											<ul data-v-0e6ef53a="" class="list-wx7 mt1-2c9">
												<c:forEach var="endList" items="${rentContractEndList}">
													<li data-v-ba831638="" data-v-0e6ef53a=""><a
														data-v-ba831638="">
															<div data-v-ba831638="" class="reg-pzp">
																<dl data-v-ba831638="" class="tag-ncf bvfky">${endList.rentRoom.room.roomFloor }F
																</dl>
																<dl data-v-ba831638="" class="info-egg">
																	<dt data-v-ba831638="">
																		<c:set var="enddong"
																			value="${endList.rentRoom.room.rentDong }" />
																		<c:if test="${not empty enddong}"> ${enddong }동</c:if>
																		${endList.rentRoom.room.roomUnit }호 -
																		${endList.cntrctrNm }
																		<div data-v-5e1501e4="" data-v-ba831638=""
																			class="badge-r3l">
																			<div data-v-5e1501e4="" class="badge-2ly"></div>
																		</div>
																		<span data-v-ba831638=""></span>
																	</dt>
																	<dd data-v-ba831638="">
																		<div data-v-ba831638=""
																			class="fle-pvx fle-zc6 fle-zqq">
																			<p data-v-ba831638="">계약기간 (${endList.dctBgng} ~
																				${endList.dctEnd}) / 월입금액 (${endList.mtRcpmnyAmt }원)
																				/ 납부일 (${endList.ctpDedtDe}일)</p>
																		</div>
																	</dd>
																</dl>
																<ul data-v-ba831638="" class="reg-rmx">
																	<li data-v-ba831638="" class="ywnrf">종료</li>
																</ul>
															</div>
													</a></li>
												</c:forEach>
											</ul>
											<div data-v-7136ea58="" data-v-0e6ef53a=""
												class="paging-vfz mt3-fdj"></div>
										</div>
									</div>
								</div>
								<!-- 해당 건물에 계약건 있을때 (끝) -->
							</c:if>
							<!--  if문 끝 -->
						</div>
					</div>
					<!--********************** 임대계약 목록 탭 (끝) ************************ -->
				</div>


				<div class="tab-pane fade" id="contacttt" role="tabpanel"
					aria-labelledby="contact-tab">
					<div data-v-3a1dceac="" class="content-n7d"></div>
				</div>
			</div>


			<!-- 건물정보 (방 정보 있을때) 탭중 첫번째 -->
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">
				<ul data-v-3a1dceac="">
					<div data-v-3a1dceac="" class="content-n7d">
						<div data-v-9631a1ac="" class="upper-qhr">
							<div data-v-9631a1ac="" class="lef-w9f">
								<div data-v-9631a1ac="" class="icon-9ny fle-gvv"></div>
							</div>


							<div data-v-9631a1ac="" class="rig-k1e">
								<!-- 								<div data-v-9631a1ac=""  -->
								<!-- 									class="upp-jh2 typ-i2q" data-bs-toggle="offcanvas" -->
								<!-- 									data-bs-target="#offcanvasRight2" -->
								<%-- 									aria-controls="offcanvasRight2" data-bldg-no="${rentBldgNo }" --%>
								<!-- 									>호실정보 등록</div> -->
								<div data-v-9631a1ac="" class="upp-jh2 typ-i2q"
									data-bldg-no="${rentBldgNo }">호실정보 등록</div>

								<div data-v-9631a1ac="" class="upp-jh2 typ-vqi">건물정보 삭제</div>
								<div data-v-9631a1ac="" class="upp-jh2 typ-vqi">건물정보 수정</div>
							</div>
							<div data-v-9631a1ac="" class="loading-rte style-eOHAm"
								id="style-eOHAm">
								<div data-v-9631a1ac="" class="loading-ls1"></div>
							</div>
						</div>



						<!-- *********************************************** 방 정보가 없을 경우 *********************************************** -->
						<c:if test="${empty rentRoomList }">
							<div>
								<div data-v-26e57b98="" class="info-emj">
									<p data-v-26e57b98="">
										등록된 호실정보가 없습니다.<br data-v-26e57b98="">'<b
											data-v-26e57b98="">호실정보 등록</b>'으로 '<b data-v-26e57b98="">건물정보</b>'를
										시작해보세요.
									</p>
									<span data-v-26e57b98="" class="row-a13 roo-73q"><i
										data-v-26e57b98="" class="edge-zw7"></i> <i data-v-26e57b98=""
										class="cor-n5o"><i data-v-26e57b98=""></i></i> <i
										data-v-26e57b98="" class="edge-23n"></i></span>
								</div>
							</div>
							<div data-v-32545c74="">
								<div data-v-32545c74="" class="layer-excel-hao"></div>
								<div data-v-32545c74="" class="popup-y7r">
									<h3 data-v-32545c74="">호실 엑셀 일괄 등록</h3>
									<div data-v-32545c74="" class="info-o2i">
										<div data-v-32545c74="" class="box-2fz">
											<p data-v-32545c74="" class="jrdhx">주의사항</p>
											<p data-v-32545c74="" class="con-f8p">- 호실 일괄 등록 시 사전에 건물
												정보를 등록해야 합니다.</p>
											<p data-v-32545c74="">- 신규 호실 등록 양식에 호실 정보를 작성하신 후에 파일을
												업로드 하시기 바랍니다.</p>
											<p data-v-32545c74="">- 호실 일괄 등록은 건물에 등록된 관리 호수 이상은 등록할 수
												없습니다.</p>
											<p data-v-32545c74="">- 한 번에 최대 50건까지 등록이 가능합니다. 50건 초과시
												나누어 등록하세요.</p>
										</div>
										<div data-v-32545c74="" class="jrdhx mt2-l7v style-UjLS2"
											id="style-UjLS2">일괄등록 (양식 최종수정일 : 2022-03-25)</div>
										<div data-v-32545c74="" id="style-oaPKo" class="style-oaPKo">
											<a data-v-32545c74=""
												href="https://api.homebutton.co.kr/upload/download/homebutton_room_excel_form_insert.xlsx"
												class="btn-k74 ktlxc">호실 등록양식 다운</a>
										</div>
										<form data-v-32545c74="">
											<input data-v-32545c74="" type="hidden" name="bb_idx"
												id="bb_-mqm" value="6253">
											<table data-v-32545c74="" class="list-1mb no-25o">
												<colgroup data-v-32545c74="">
													<col data-v-32545c74="" width="160">
													<col data-v-32545c74="" width="*">
												</colgroup>
												<tbody data-v-32545c74="">
													<tr data-v-32545c74="">
														<th data-v-32545c74="">관리 현황</th>
														<td data-v-32545c74="">총 0호 중 0호 등록 중</td>
													</tr>
													<tr data-v-32545c74="">
														<th data-v-32545c74="">신규 등록 가능 수</th>
														<td data-v-32545c74="">총 0호</td>
													</tr>
													<tr data-v-32545c74="">
														<th data-v-32545c74="">첨부파일</th>
														<td data-v-32545c74=""><input data-v-32545c74=""
															type="file" id="exc-p3r" name="excel_file"></td>
													</tr>
												</tbody>
											</table>
										</form>
										<a data-v-32545c74="" class="btn-k74 ptfoa">엑셀 파일 등록</a>
									</div>
									<a data-v-32545c74="" class="btn-tov">close</a>
								</div>
								<div data-v-32545c74="" class="loading-rte style-kAw3o"
									id="style-kAw3o">
									<div data-v-32545c74="" class="loading-ls1"></div>
								</div>
							</div>
						</c:if>
					</div>
				</ul>


				<!-- *********************************************** 방 정보가 있을 경우 *********************************************** -->
				<c:if test="${not empty rentRoomList }">
					<div>
						<div data-v-26061652="" class="bri-l78">
							<div data-v-30e6de21="" data-v-26061652=""
								class="bri-31y gre-682">
								<p data-v-30e6de21="">
									<span data-v-30e6de21="" class="big-w6e">${rsroomcnt}</span> <span
										data-v-30e6de21="" class="bol-cx7">호</span> <span
										data-v-30e6de21="" class="big-w6e"> / ${roomCnt}</span> <span
										data-v-30e6de21="" class="bol-cx7">호</span>
								</p>
								<p data-v-30e6de21="" class="fs1-opa">입주중 호실수 / 전체 호실수</p>
							</div>
							<!-- 							<div data-v-30e6de21="" data-v-26061652="" -->
							<!-- 								class="bri-31y yel-bne"> -->
							<!-- 								<p data-v-30e6de21=""> -->
							<!-- 									<span data-v-30e6de21="" class="big-w6e">0</span> <span -->
							<!-- 										data-v-30e6de21="" class="bol-cx7">건</span> <span -->
							<!-- 										data-v-30e6de21="" class="big-w6e"> / 0</span> <span -->
							<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> -->
							<!-- 								</p> -->
							<!-- 								<p data-v-30e6de21="" class="fs1-opa">미납계약 / 미납호실</p> -->
							<!-- 							</div> -->
							<div data-v-30e6de21="" data-v-26061652=""
								class="bri-31y pur-xra">
								<p data-v-30e6de21="">
									<span data-v-30e6de21="" class="big-w6e">${endRoomCnt}</span> <span
										data-v-30e6de21="" class="bol-cx7">호</span>
								</p>
								<p data-v-30e6de21="" class="fs1-opa">이번 달 종료예정 호실</p>
							</div>
							<div data-v-30e6de21="" data-v-26061652="" class="bri-31y y-z5l">
								<p data-v-30e6de21="">
									<span data-v-30e6de21="" class="big-w6e"> <c:set
											var="roomCnt" value="${roomCnt}" /> <c:set var="gongsilCnt"
											value="${gongsilCnt}" /> <c:choose>
											<c:when test="${gongsilCnt ne 0 or roomCnt ne 0 }">
												<%-- endRoomCnt와 roomCnt가 0이 아닌 경우에만 백분율을 계산합니다. --%>
												<c:set var="percentageChange"
													value="${(gongsilCnt / roomCnt) * 100}" />
												<%-- 음수 값을 방지 --%>
												<c:choose>
													<c:when test="${percentageChange < 0}">
														<c:set var="percentageChange" value="0" />
													</c:when>
													<c:otherwise>
														<c:set var="percentageChange" value="${percentageChange}" />
													</c:otherwise>
												</c:choose>
												<%-- 소수점 제거 --%>
												<c:set var="formattedPercentageChange"
													value="${fn:substringBefore(percentageChange, '.')}" />
        ${formattedPercentageChange}
    </c:when>
											<c:otherwise>
												<%-- endRoomCnt와 roomCnt가 0인 경우에는 "0"을 표시합니다. --%>
        0
    </c:otherwise>
										</c:choose>




									</span> <span data-v-30e6de21="" class="bol-cx7">%</span> <span
										data-v-30e6de21="" class="big-w6e"> / ${gongsilCnt}</span> <span
										data-v-30e6de21="" class="bol-cx7">호</span>
								</p>
								<p data-v-30e6de21="" class="fs1-opa">공실률 / 공실수</p>
							</div>
						</div>



						<c:forEach var="entry" items="${floorMap}">
							<div data-v-4e46e8b0="">
								<div data-v-4e46e8b0="" class="floor-vkt">
									<div data-v-4e46e8b0="" class="lef-8o4">
										<div data-v-4e46e8b0="" class="left-vqh">
											<div data-v-4e46e8b0="">${entry.key}F</div>
											<div data-v-4e46e8b0="" class="room-pfw">(${entry.value.size()}개
												호실)</div>
										</div>
									</div>



									<div data-v-4e46e8b0="" class="rig-jcz">
										<div data-v-4e46e8b0="" class="large-dl5">
											<ul data-v-4e46e8b0="">
												<c:forEach var="room" items="${entry.value}">
													<c:if test="${room.gonsil eq 'Y'}">
														<li data-v-53ae6165="" data-v-4e46e8b0=""
															class="card-7o4 emp-q83">
													</c:if>
													<c:if test="${room.gonsil eq 'C'}">
														<li data-v-53ae6165="" data-v-4e46e8b0=""
															class="card-7o4">
													</c:if>
													<c:if test="${room.gonsil eq 'N'}">
														<li data-v-53ae6165="" data-v-4e46e8b0="" class="card-7o4">
													</c:if>
													<div data-v-53ae6165="" class="roomInfo"
														data-room-no="${room.rentRoomNo }">
														<div data-v-53ae6165="" class="upp-hfd"></div>
														<div data-v-53ae6165="" class="mid-p1a">
															<p data-v-53ae6165="" class="room-sqn">${room.room.roomUnit }호</p>
															<p data-v-53ae6165="" class="hire-desc ellip">${cntrctrNm }</p>
															<c:if test="${room.gonsil eq 'N'}">
																<p data-v-53ae6165="" class="hire-s8d ell-hxe">입주중</p>
															</c:if>
															<c:if test="${room.gonsil eq 'Y'}">
																<p data-v-53ae6165="" class="hire-s8d ell-hxe">공실</p>
															</c:if>
															<c:if test="${room.gonsil eq 'C'}">
																<p data-v-53ae6165="" class="hire-s8d ell-hxe">입주예정</p>
															</c:if>
<%-- 															<p data-v-53ae6165="" class="hire-desc ellip">${cntrctrNm }</p> --%>
															<%-- 															<c:if --%>
															<%-- 																test="${room.rentContractList eq 'RSTTS02'}"> --%>
															<!-- 																<p data-v-53ae6165="" class="hire-s8d ell-hxe">입주예정</p> -->
															<%-- 															</c:if> --%>
														</div>
														<div data-v-53ae6165="" class="low-qac"></div>
													</div>
	</li>
	</c:forEach>
</ul>
</div>
</div>



</div>
</div>
</c:forEach>
</div>
</c:if>
<%-- 				<c:if test="${not empty rentRoomList }"> --%>
<!-- 					<div> -->
<!-- 						<div data-v-26061652="" class="bri-l78"> -->
<!-- 							<div data-v-30e6de21="" data-v-26061652="" -->
<!-- 								class="bri-31y gre-682"> -->
<!-- 								<p data-v-30e6de21=""> -->
<!-- 									<span data-v-30e6de21="" class="big-w6e">0</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> <span -->
<!-- 										data-v-30e6de21="" class="big-w6e"> / 1</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> -->
<!-- 								</p> -->
<!-- 								<p data-v-30e6de21="" class="fs1-opa">계약중 호실수 / 전체 호실수</p> -->
<!-- 							</div> -->
<!-- 							<div data-v-30e6de21="" data-v-26061652="" -->
<!-- 								class="bri-31y yel-bne"> -->
<!-- 								<p data-v-30e6de21=""> -->
<!-- 									<span data-v-30e6de21="" class="big-w6e">0</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">건</span> <span -->
<!-- 										data-v-30e6de21="" class="big-w6e"> / 0</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> -->
<!-- 								</p> -->
<!-- 								<p data-v-30e6de21="" class="fs1-opa">미납계약 / 미납호실</p> -->
<!-- 							</div> -->
<!-- 							<div data-v-30e6de21="" data-v-26061652="" -->
<!-- 								class="bri-31y pur-xra"> -->
<!-- 								<p data-v-30e6de21=""> -->
<!-- 									<span data-v-30e6de21="" class="big-w6e">0</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">건</span> <span -->
<!-- 										data-v-30e6de21="" class="big-w6e"> / 0</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> -->
<!-- 								</p> -->
<!-- 								<p data-v-30e6de21="" class="fs1-opa">종료예정 계약 / 종료예정 호실</p> -->
<!-- 							</div> -->
<!-- 							<div data-v-30e6de21="" data-v-26061652="" class="bri-31y y-z5l"> -->
<!-- 								<p data-v-30e6de21=""> -->
<!-- 									<span data-v-30e6de21="" class="big-w6e">100</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">%</span> <span -->
<!-- 										data-v-30e6de21="" class="big-w6e"> / 1</span> <span -->
<!-- 										data-v-30e6de21="" class="bol-cx7">호</span> -->
<!-- 								</p> -->
<!-- 								<p data-v-30e6de21="" class="fs1-opa">공실률 / 공실수</p> -->
<!-- 							</div> -->
<!-- 						</div> -->



<%-- 						<c:forEach items="${rentRoomList }" var="room"> --%>
<!-- 							<div data-v-4e46e8b0=""> -->
<!-- 								<div data-v-4e46e8b0="" class="floor-vkt"> -->
<!-- 									<div data-v-4e46e8b0="" class="lef-8o4"> -->
<!-- 										<div data-v-4e46e8b0="" class="left-vqh"> -->
<%-- 											<div data-v-4e46e8b0="">${room.room.roomFloor }F</div> --%>
<!-- 											<div data-v-4e46e8b0="" class="room-pfw">(1개 호실)</div> -->
<!-- 										</div> -->
<!-- 									</div> -->



<!-- 									<div data-v-4e46e8b0="" class="rig-jcz"> -->
<!-- 										<div data-v-4e46e8b0="" class="large-dl5"> -->
<!-- 											<ul data-v-4e46e8b0=""> -->
<%-- 												<c:if --%>
<%-- 													test="${empty rentContractIngList and empty rentContractPreList and not empty rentContractEndList}"> --%>
<!-- 													<li data-v-53ae6165="" data-v-4e46e8b0="" -->
<!-- 														class="card-7o4 emp-q83"> -->
<%-- 												</c:if> --%>
<!-- 												<li data-v-53ae6165="" data-v-4e46e8b0="" class="card-7o4"> -->
<!-- 													<div data-v-53ae6165="" class="roomInfo" -->
<%-- 														data-room-no="${room.rentRoomNo }"> --%>
<!-- 														<div data-v-53ae6165="" class="upp-hfd"></div> -->
<!-- 														<div data-v-53ae6165="" class="mid-p1a"> -->
<%-- 															<p data-v-53ae6165="" class="room-sqn">${room.room.roomUnit }호</p> --%>
<%-- 															<p data-v-53ae6165="" class="hire-desc ellip">${cntrctrNm }</p> --%>
<%-- 															<c:if --%>
<%-- 																test="${empty rentContractIngList and empty rentContractPreList and not empty rentContractEndList}"> --%>
<!-- 																<p data-v-53ae6165="" class="hire-s8d ell-hxe">공실</p> -->
<%-- 															</c:if> --%>
<!-- 														</div> -->
<!-- 														<div data-v-53ae6165="" class="low-qac"></div> -->
<!-- 													</div> -->
<!-- 												</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 									</div> -->



<!-- 								</div> -->
<!-- 							</div> -->
<%-- 						</c:forEach> --%>
<!-- 					</div> -->
<%-- 				</c:if> --%>
</div>
</li>

</ul>

</div>

<script>
	
</script>