<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentContract.css"
	rel="stylesheet">




<div data-v-511373d6="" class="layer-xk2">
	<div data-v-511373d6="" class="content-4ps style-KPFcP"
		id="style-KPFcP">
		<div data-v-511373d6="" class="layer-kip box-fvo">
			<h3 data-v-511373d6="">임대계약 등록</h3>
		</div>

		<div data-v-511373d6="">
			<div data-v-511373d6="">
				<div data-v-511373d6="" class="top-pdh">
					<div data-v-511373d6="" class="ste-c3b"
						data-rent-room-no="${rentRoomVO.rentRoomNo }">
						<ul data-v-511373d6="" class="ste-1xs nav nav-tabs" id="myTab"
							role="tablist">

							<li data-v-511373d6="" class="ste-qtd act-gt5 nav-item"
								role="presentation"><a data-v-3a1dceac=""
								class="nav-link active" id="lessee-tab" data-bs-toggle="tab"
								data-bs-target="#lesseeInfo" type="button" role="tab"
								aria-controls="lessee" aria-selected="true"> 임차인 정보</a></li>

							<li data-v-511373d6="" class="ste-qtd nav-item"
								role="presentation"><a data-v-3a1dceac="" class="nav-link"
								id="contract-tab" data-bs-toggle="tab"
								data-bs-target="#contractInfo" type="button" role="tab"
								aria-controls="contract" aria-selected="false"> 계약 정보</a></li>

							<li data-v-511373d6="" class="ste-qtd nav-item"
								role="presentation"><a data-v-3a1dceac="" class="nav-link"
								id="pruf-tab" data-bs-toggle="tab" data-bs-target="#prufInfo"
								type="button" role="tab" aria-controls="pruf"
								aria-selected="false"> 증빙 정보</a></li>
						</ul>
					</div>
				</div>


				<div data-v-511373d6="" class="layer-th4 tab-content"
					id="myTabContent">
					<!--**************** 임차인 정보 시작 ****************-->

					<div data-v-511373d6="" class="tab-pane fade show active"
						id="lesseeInfo" role="tabpanel" aria-labelledby="lessee-tab">

						<div data-v-83c7f150="" data-v-511373d6=""
							class="hir-6c5 tab-pane fade show active" id="lesseeInfo"
							role="tabpanel" aria-labelledby="lessee-tab">

							<div data-v-83c7f150="">
								<div data-v-83c7f150="" class="title-mt9">
									<div data-v-83c7f150="" class="tab-h4v">◈ 임차인 정보등록</div>
									<div data-v-83c7f150="" class="tab-ldk">임차인의 기본정보를 등록 후
										관리합니다.</div>
								</div>
								<div data-v-83c7f150="" class="body-pkf">
									<table data-v-83c7f150="">
										<tbody>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">계약자명</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<input data-v-83c7f150="" type="text" name="cntrctrNm"
															placeholder="(필수) 계약자명을 20자 이내로 입력해 주세요"
															class="input-6o6 foobl">
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">휴대폰 번호</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<div data-v-83c7f150="" class="input-po7">
															<input data-v-83c7f150="" type="text" name="mbtlnum"
																placeholder="(필수) -를 제외한 휴대폰 번호를 입력해 주세요"
																class="input-6o6 foobl">
														</div>
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">이메일 <span data-v-83c7f150=""
													class="option-cl3">(선택)</span>
												</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<div data-v-83c7f150="" class="input-po7">
															<input data-v-83c7f150="" type="text" name="emailAdres"
																placeholder="(선택) 이메일을 입력해주세요" class="input-6o6 foobl">
														</div>
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">차량보유</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<ul data-v-83c7f150="" class="tab-iot tab-o76">
															<li data-v-83c7f150="" data-vhcle-yn="Y"><a
																data-v-83c7f150="">유</a></li>
															<li data-v-83c7f150="" data-vhcle-yn="N" class="nebvo"><a
																data-v-83c7f150="">무</a></li>
														</ul>
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">반려동물</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<ul data-v-83c7f150="" class="tab-iot tab-o76">
															<li data-v-83c7f150="" data-animal-yn="Y"><a
																data-v-83c7f150="">유</a></li>
															<li data-v-83c7f150="" data-animal-yn="N" class="nebvo"><a
																data-v-83c7f150="">무</a></li>
														</ul>
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">계약담당자명</th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<div data-v-83c7f150="" class="input-po7 w40-mc2">
															<input data-v-83c7f150="" type="text" name="ctpPicName"
																placeholder="(선택) 계약담당자명을 입력해주세요"
																class="input-6o6 foobl">
														</div>
													</div>
												</td>
												<td data-v-83c7f150=""></td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">계약담당자 휴대폰 <span
													data-v-83c7f150="" class="option-cl3">(선택)</span></th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<div data-v-83c7f150="" class="input-po7">
															<input data-v-83c7f150="" type="text"
																name="ctpPicMbtlnum"
																placeholder="(선택) 계약담당자 휴대폰을 입력해주세요"
																class="input-6o6 foobl">
														</div>
													</div>
												</td>
											</tr>
											<tr data-v-83c7f150="">
												<th data-v-83c7f150="">계약담당자 이메일 <span
													data-v-83c7f150="" class="option-cl3">(선택)</span></th>
												<td data-v-83c7f150="">
													<div data-v-83c7f150="" class="rel-t8a">
														<div data-v-83c7f150="" class="input-po7">
															<input data-v-83c7f150="" type="text" name="ctpPicEmail"
																placeholder="(선택) 계약담당자 이메일을 입력해주세요"
																class="input-6o6 foobl">
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<a href="#" class="single-cat" id="speedUpOne"> <img
								src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
								alt="#" width="25px" height="25px" />
							</a>
						</div>
					</div>
					<!-- 				</div> -->
					<!--**************** 임차인 정보 끝 ****************-->



					<!--**************** 계약 정보 시작 ****************-->


					<div class="layer-ek4 contract tab-pane fade" id="contractInfo"
						role="tabpanel" aria-labelledby="contract-tab">
						<div>
							<!-- 						<div data-v-6ffdd9ca="" class="contract tab-pane fade" -->
							<!-- 							id="contractInfo" role="tabpanel" aria-labelledby="contract-tab"> -->
							<div data-v-6ffdd9ca="" class="hir-akg hir-em5">
								<div data-v-6ffdd9ca="">
									<div data-v-6ffdd9ca="">
										<div data-v-6ffdd9ca="" class="title-obz">
											<div data-v-6ffdd9ca="" class="tab-6ns">◈ 기본정보 등록</div>
											<div data-v-6ffdd9ca="" class="tab-p7w">임대관리 자동화 시스템
												부가서비스를 설정합니다.</div>
										</div>
										<div data-v-6ffdd9ca="" class="body-87r">
											<table data-v-6ffdd9ca="">
												<tbody>
													<tr data-v-6ffdd9ca="">
														<th data-v-6ffdd9ca="">건물정보</th>
														<td data-v-6ffdd9ca="">
															<div data-v-6ffdd9ca="" class="rel-16r">
																<div data-v-6ffdd9ca="">
																	<div data-v-6ffdd9ca="" class="text-7gd">${rentBldgVO.bldgNm}</div>
																	<div data-v-6ffdd9ca="">${rentBldgVO.bldgAddr}</div>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<table data-v-099f0f32="" data-v-6ffdd9ca="">
												<c:set var="dong" value="${bldgVO.bldgDong }" />
												<tbody>
													<tr data-v-099f0f32="">
														<th data-v-099f0f32="">동/층/호</th>
														<td data-v-099f0f32="" class="don-8zs"><c:if
																test="${not empty dong}"> (${dong }동)</c:if>
															${rentRoomVO.room.roomFloor }F /
															${rentRoomVO.room.roomUnit }호</td>
													</tr>
												</tbody>
											</table>
											공급면적
											<div data-v-6ffdd9ca="" class="rel-16r input-v6o input-4kg">
												<input type="text" placeholder="0" name="dctRentAr"
													class="input-1ly dviyg num-jm7"> <span
													class="uni-try v">㎡</span>
											</div>
											<div data-v-3571ea76="" data-v-6ffdd9ca="" class="flo-geh">
												<div data-v-3571ea76="" class="fle-2o8 fle-a8p"></div>
											</div>
											계약형태
											<div data-v-6ffdd9ca="" class="rel-16r">
												<ul data-v-6ffdd9ca="" class="tab-b84 tab-6l8">
													<li data-v-6ffdd9ca="" class="xrvps"
														data-dct-clsf="MONTHLY"><a data-v-6ffdd9ca="">월세</a></li>
													<li data-v-6ffdd9ca="" data-dct-clsf="CHARTER"><a
														data-v-6ffdd9ca="">전세</a></li>
												</ul>
											</div>
											계약기간
											<div data-v-6ffdd9ca="" class="rel-16r">
												<div data-v-6ffdd9ca="" class="input-v6o">
													<div data-v-6ffdd9ca="">
														<span data-v-6ffdd9ca="" class="input-4kg">
															<div data-v-6ffdd9ca="" class="vdp-c4z ui-do4">
																<div>
																	<input type="text" name="dctBgng" id="startDate"
																		placeholder="계약시작일 선택"
																		class="input-1ly dviyg input-n97">
																</div>
															</div>
														</span> <span data-v-6ffdd9ca="" class="bri-k9n">~</span> <span
															data-v-6ffdd9ca="" class="input-4kg">
															<div data-v-6ffdd9ca="" class="vdp-c4z ui-do4">
																<div>
																	<input type="text" name="dctEnd" id="endDate"
																		placeholder="계약만료일 선택"
																		class="input-1ly dviyg input-n97">
																</div>
															</div>
														</span>
													</div>
													<ul data-v-6ffdd9ca=""
														class="fle-2o8 fle-ijp spa-wmw aut-p3v">
														<li data-v-6ffdd9ca=""
															class="inF-sss jus-4qd bor-yhq aut-kid" data-period="1">
															1개월</li>
														<li data-v-6ffdd9ca=""
															class="inF-sss jus-4qd bor-yhq aut-kid" data-period="3">
															3개월</li>
														<li data-v-6ffdd9ca=""
															class="inF-sss jus-4qd bor-yhq aut-kid" data-period="6">
															6개월</li>
														<li data-v-6ffdd9ca=""
															class="inF-sss jus-4qd bor-yhq aut-kid" data-period="12">
															1년</li>
														<li data-v-6ffdd9ca=""
															class="inF-sss jus-4qd bor-yhq aut-kid" data-period="24">
															2년</li>
													</ul>
												</div>
											</div>
										</div>
										<div data-v-6ffdd9ca="" class="cat-22z">
											<div data-v-6ffdd9ca="" class="title-obz">
												<div data-v-6ffdd9ca="" class="tab-6ns">◈ 임대료 정보 등록</div>
												<div data-v-6ffdd9ca="" class="tab-p7w">임대차 계약 임대료 정보를
													등록 후 관리합니다.</div>
											</div>
											<div data-v-6ffdd9ca="" class="body-87r">
												<table data-v-6ffdd9ca="">
													<tbody>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">부가세 적용</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<ul data-v-6ffdd9ca="" class="tab-b84 tab-j1r">
																		<li data-v-6ffdd9ca="" class="xrvps" data-se="1"><a
																			data-v-6ffdd9ca="" class="fs1-xjs">전체적용</a></li>
																		<li data-v-6ffdd9ca="" data-se="2"><a
																			data-v-6ffdd9ca="" class="fs1-xjs">임대료만 적용</a></li>
																		<li data-v-6ffdd9ca="" data-se="3"><a
																			data-v-6ffdd9ca="" class="fs1-xjs">관리비만 적용</a></li>
																		<li data-v-6ffdd9ca="" data-se="4"><a
																			data-v-6ffdd9ca="" class="fs1-xjs">미적용</a></li>
																	</ul>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">보증금</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca=""
																	class="rel-16r input-v6o input-4kg">
																	<input type="text" placeholder="0"
																		class="input-1ly dviyg num-jm7" name="grnteAmt">
																	<span class="uni-try">원</span>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">임대료 <span id="boogase1">(부가세
																	포함)</span>
															</th>
															<td data-v-6ffdd9ca="" class="fle-2o8 fle-a8p">
																<div data-v-6ffdd9ca=""
																	class="rel-16r input-v6o input-4kg">
																	<input type="text" placeholder="부가세가 포함된 임대료를 입력해주세요"
																		class="input-1ly dviyg num-jm7" name="mhlAmt">
																	<span class="uni-try">원</span>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">관리비 <span id="boogase2">(부가세
																	포함)</span>
															</th>
															<td data-v-6ffdd9ca="" class="fle-2o8 fle-a8p">
																<div data-v-6ffdd9ca=""
																	class="rel-16r input-v6o input-4kg">
																	<input type="text" placeholder="부가세가 포함된 관리비를 입력해주세요"
																		class="input-1ly dviyg num-jm7" name="managectAmt">
																	<span class="uni-try">원</span>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>

														<tr data-v-6ffdd9ca="" id="boogase3">
															<th data-v-6ffdd9ca="">부가세 (10%)</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<div data-v-6ffdd9ca="" class="input-v6o">
																		<span data-v-6ffdd9ca="" class="input-4kg"> <input
																			data-v-6ffdd9ca="" name="ctpVatApplc" type="text"
																			class="input-1ly dviyg num-jm7 dis-vjo"> <span
																			data-v-6ffdd9ca="" class="uni-try b">원</span>
																		</span>
																	</div>
																</div>
															</td>
														</tr>

														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">월 입금액</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<div data-v-6ffdd9ca="" class="input-v6o">
																		<span data-v-6ffdd9ca="" class="input-4kg"><input
																			data-v-6ffdd9ca="" type="text" name="mtRcpmnyAmt"
																			class="input-1ly dviyg num-jm7 dis-vjo fytcm">
																			<span data-v-6ffdd9ca="" class="uni-try b">원</span></span>
																	</div>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div data-v-6ffdd9ca="" class="cat-22z">
											<div data-v-6ffdd9ca="" class="title-obz">
												<div data-v-6ffdd9ca="" class="tab-6ns">◈ 수납 정보설정</div>
												<div data-v-6ffdd9ca="" class="tab-p7w">임대차 계약 임대료 수납
													정보를 설정 후 관리합니다.</div>
											</div>
											<div data-v-6ffdd9ca="" class="body-87r">
												<table data-v-6ffdd9ca="">
													<tbody>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">입금자</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<div data-v-6ffdd9ca="" class="input-v6o w45-ivv">
																		<input data-v-6ffdd9ca="" type="text"
																			name="ctpRcpmnyer"
																			placeholder="입금자명을 20자 이내로 입력해 주세요"
																			class="input-1ly dviyg"> <a
																			data-v-6ffdd9ca=""
																			class="btn-jnw inF-sss bor-yhq one-fpn"> 계약자명과 동일
																		</a>
																	</div>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">청구일자 기준</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<ul data-v-6ffdd9ca="" class="tab-b84 tab-6l8">
																		<li data-v-6ffdd9ca="" class="xrvps"
																			data-ctp-dedt-de="GYE"><a data-v-6ffdd9ca="">계약일</a></li>
																		<li data-v-6ffdd9ca="" data-ctp-dedt-de="NAP"><a
																			data-v-6ffdd9ca="">납기일</a></li>
																	</ul>
																</div>
															</td>
															<td data-v-6ffdd9ca=""></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">납기일</th>

															<!-- 															계약일 -->
															<td data-v-6ffdd9ca=""><span data-v-6ffdd9ca=""
																class="w42-7rj1"> 매월 <span id="naggiday">
																</span> 일
															</span> <!-- 															날짜 선택 --> <span data-v-6ffdd9ca=""
																class="w42-7rj2"> <select data-v-6ffdd9ca=""
																	onchange="Napgi(this)"
																	class="select-3ji select-ll5 w31-x2q">
																		<option data-v-6ffdd9ca="" value="">날짜선택</option>
																		<option data-v-6ffdd9ca="" value="1">1일</option>
																		<option data-v-6ffdd9ca="" value="2">2일</option>
																		<option data-v-6ffdd9ca="" value="3">3일</option>
																		<option data-v-6ffdd9ca="" value="4">4일</option>
																		<option data-v-6ffdd9ca="" value="5">5일</option>
																		<option data-v-6ffdd9ca="" value="6">6일</option>
																		<option data-v-6ffdd9ca="" value="7">7일</option>
																		<option data-v-6ffdd9ca="" value="8">8일</option>
																		<option data-v-6ffdd9ca="" value="9">9일</option>
																		<option data-v-6ffdd9ca="" value="10">10일</option>
																		<option data-v-6ffdd9ca="" value="11">11일</option>
																		<option data-v-6ffdd9ca="" value="12">12일</option>
																		<option data-v-6ffdd9ca="" value="13">13일</option>
																		<option data-v-6ffdd9ca="" value="14">14일</option>
																		<option data-v-6ffdd9ca="" value="15">15일</option>
																		<option data-v-6ffdd9ca="" value="16">16일</option>
																		<option data-v-6ffdd9ca="" value="17">17일</option>
																		<option data-v-6ffdd9ca="" value="18">18일</option>
																		<option data-v-6ffdd9ca="" value="19">19일</option>
																		<option data-v-6ffdd9ca="" value="20">20일</option>
																		<option data-v-6ffdd9ca="" value="21">21일</option>
																		<option data-v-6ffdd9ca="" value="22">22일</option>
																		<option data-v-6ffdd9ca="" value="23">23일</option>
																		<option data-v-6ffdd9ca="" value="24">24일</option>
																		<option data-v-6ffdd9ca="" value="25">25일</option>
																		<option data-v-6ffdd9ca="" value="26">26일</option>
																		<option data-v-6ffdd9ca="" value="27">27일</option>
																		<option data-v-6ffdd9ca="" value="28">28일</option>
																		<option data-v-6ffdd9ca="" value="29">29일</option>
																		<option data-v-6ffdd9ca="" value="30">30일</option>
																		<option data-v-6ffdd9ca="" value="31">31일</option>
																</select> (매월 말일은 31일 선택)
															</span></td>
														</tr>
														<tr data-v-6ffdd9ca="">
															<th data-v-6ffdd9ca="">부과기간 설정</th>
															<td data-v-6ffdd9ca="">
																<div data-v-6ffdd9ca="" class="rel-16r">
																	<div data-v-6ffdd9ca="" class="input-v6o">
																		<ul data-v-6ffdd9ca="" class="tab-b84 tab-6l8">
																			<li data-v-6ffdd9ca="" data-rent-cnd="CND01"
																				class="xrvps"><a data-v-6ffdd9ca="">월기준</a></li>
																			<li data-v-6ffdd9ca="" data-rent-cnd="CND02"><a
																				data-v-6ffdd9ca="">계약 시작일 기준</a></li>
																		</ul>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-v-6ffdd9ca="" class="bil-kth">
															<th data-v-6ffdd9ca=""></th>
														</tr>
														<tr data-v-6ffdd9ca="" class="bil-kth newChung">
														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--**************** 계약 정보 끝 ****************-->

					<!--**************** 증빙 정보 시작 ****************-->
					<div data-v-83c7f150="" data-v-511373d6=""
						class="layer-kwo tab-pane fade show" id="prufInfo" role="tabpanel"
						aria-labelledby="pruf-tab">
						<!-- 					<div class="layer-kwo"> -->
						<div>
							<div data-v-234dc1ac="" class="hir-47f hir-1wk">
								<div data-v-234dc1ac="">
									<div data-v-37a9573c="" data-v-234dc1ac="" class="cat-kjl">
										<div data-v-37a9573c="" class="title-lc8">
											<div data-v-37a9573c="" class="tab-sgc">◈ 임대료 증빙정보 설정</div>
											<div data-v-37a9573c="" class="tab-49i">임대료 수납 후 임차인 증빙
												발행 정보를 설정 후 관리합니다.</div>
										</div>
										<div data-v-37a9573c="" class="body-fto">
											<table data-v-37a9573c="">
												<tbody>
													<tr data-v-37a9573c="">
														<th data-v-37a9573c="">부가세 적용범위</th>
														<td data-v-37a9573c="">
															<div data-v-37a9573c="" class="jus-a7n fle-715">
																<div data-v-37a9573c="" id="forWhat">전체적용</div>
															</div>
														</td>
													</tr>
													<tr data-v-37a9573c="">
														<th data-v-37a9573c="">증빙발행 설정</th>
														<td data-v-37a9573c="">
															<div data-v-37a9573c="" class="rel-joj">
																<ul data-v-37a9573c="" class="tab-8xo tab-bm5">
																	<!-- 																 <li data-v-37a9573c="" data-proof="1" class="nrnii" ><a data-v-37a9573c="">둘다 발행</a></li> -->
																	<li data-v-37a9573c="" data-proof="PROOFBG"
																		class="nrnii"><a data-v-37a9573c="">비과세 발행</a></li>
																	<li data-v-37a9573c="" data-proof="PROOFG"><a
																		data-v-37a9573c="">과세 발행</a></li>
																	<li data-v-37a9573c="" data-proof="PROOFNO"><a
																		data-v-37a9573c="">미발행</a></li>
																</ul>
															</div>
														</td>
														<td data-v-37a9573c=""></td>
													</tr>
													<tr data-v-37a9573c="" class="proofSetting">
														<th data-v-37a9573c="" class="thT-dt4 bor-clg style-8Pc8w"
															id="style-8Pc8w">증빙정보 설정</th>
														<td data-v-37a9573c="">
															<div data-v-37a9573c=""
																class="fle-ox6 fle-avn evd-ta4 style-xGhmZ"
																id="style-xGhmZ">
																<table data-v-37a9573c="">
																	<thead data-v-37a9573c="">
																		<tr data-v-37a9573c="" class="proofSe">
																			<th data-v-37a9573c="">증빙구분</th>
																			<th data-v-37a9573c="">증빙종류</th>
																			<th data-v-37a9573c="">증빙설정</th>
																		</tr>
																	</thead>
																	<tbody data-v-37a9573c="">
																		<tr data-v-37a9573c="" class="gwa">
																			<td data-v-37a9573c="">과세</td>
																			<td data-v-37a9573c="">미설정</td>
																			<td data-v-37a9573c="">
																				<div data-v-37a9573c=""
																					class="fle-ox6 jus-a7n set-qre"
																					onclick="qwaSetOpen()">설정창 열기</div>
																				<div data-v-37a9573c=""
																					class="fle-ox6 jus-a7n set-close"
																					style="display: none" onclick="qwaSetClose()">설정창
																					닫기</div>
																			</td>
																		</tr>
																		<tr data-v-37a9573c="" class="bgwa">
																			<td data-v-37a9573c="">비과세</td>
																			<td data-v-37a9573c="">미설정</td>
																			<td data-v-37a9573c="">
																				<div data-v-37a9573c=""
																					class="fle-ox6 jus-a7n set-qre2"
																					onclick="bqwaSetOpen()">설정창 열기</div>
																				<div data-v-37a9573c=""
																					class="fle-ox6 jus-a7n set-close2"
																					style="display: none" onclick="bqwaSetClose()">설정창
																					닫기</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- 과세 설정창 -->
										<div data-v-04cd2d57="" data-v-37a9573c="" class="evd-bt9">
											<div data-v-04cd2d57="" class="body-fto inE-3ie">
												<div data-v-37a9573c="" class="tab-sgc">◈ 과세 설정창</div>
												<table data-v-04cd2d57="">
													<tbody id="gwaTbody">
														<tr data-v-04cd2d57="">
															<th data-v-04cd2d57="">증빙종류</th>
															<td data-v-04cd2d57="">
																<div data-v-04cd2d57="" class="rel-joj">
																	<ul data-v-04cd2d57="" class="tab-8xo tab-lma">
																		<li data-v-04cd2d57="" data-sort="GKND01"
																			class="nrnii"><a data-v-04cd2d57=""
																			class="aTa-8oq">세금계산서</a></li>
																		<li data-v-04cd2d57="" data-sort="GKND02"><a
																			data-v-04cd2d57="" class="aTa-8oq">현금영수증</a></li>
																	</ul>
																</div>
															</td>
														</tr>
														<tr data-v-04cd2d57="">
															<th data-v-04cd2d57="">증빙 발행방식</th>
															<td data-v-04cd2d57="">
																<div data-v-04cd2d57="" class="rel-joj">
																	<!--세금 계산서일 경우 -->
																	<ul data-v-04cd2d57="" class="tab-8xo tab-lma1">
																		<li data-v-04cd2d57="" data-method="GMTHD01"
																			class="nrnii"><a data-v-04cd2d57=""
																			class="aTa-8oq">영수</a></li>
																		<li data-v-04cd2d57="" data-method="GMTHD02"><a
																			data-v-04cd2d57="" class="aTa-8oq">청구</a></li>
																	</ul>
																	<!--현금영수증일 경우 -->
																	<ul data-v-04cd2d57="" class="tab-8xo tab-lma2">
																		<li data-v-04cd2d57="" data-method="GMTHD03"
																			class="nrnii"><a data-v-04cd2d57=""
																			class="aTa-8oq">소득공제용</a></li>
																		<li data-v-04cd2d57="" data-method="GMTHD04"><a
																			data-v-04cd2d57="" class="aTa-8oq">지출증빙용</a></li>
																	</ul>
																</div>
															</td>
															<td data-v-04cd2d57=""></td>
														</tr>
														<tr>
															<th style="">발행일 (매월 1일~31일)</th>
															<td>
																<div class="rel-859">
																	<div class="input-ch2">
																		<span class="input-vmm"><input type="number"
																			class="input-tl1 ioodb num-qsa" name="prufDe">
																			<span class="uni-rza">일</span></span>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<!-- 과세설정창 끝 -->

										<!-- 비과세 설정창 시작 -->
										<div data-v-4bec500c="" class="evd-6p9">
											<div data-v-4bec500c="" class="body-5if inE-bix">
												<div data-v-37a9573c="" class="tab-sgc">◈ 비과세 설정창</div>
												<table data-v-4bec500c="">
													<tbody>
														<tr data-v-4bec500c="">
															<th data-v-4bec500c="">증빙종류</th>
															<td data-v-4bec500c="">
																<div data-v-4bec500c="" class="rel-ara">
																	<ul data-v-4bec500c="" class="tab-vo4 tab-vac">
																		<li data-v-4bec500c="" data-sort="BGKND01"
																			class="oaoco"><a data-v-4bec500c=""
																			class="aTa-f53">계산서</a></li>
																		<li data-v-4bec500c="" data-sort="BGKND02"><a
																			data-v-4bec500c="" class="aTa-f53">현금영수증</a></li>
																	</ul>
																</div>
															</td>
														</tr>
														<tr data-v-4bec500c="">
															<th data-v-4bec500c="">증빙 발행방식</th>
															<td data-v-4bec500c="">
																<div data-v-4bec500c="" class="rel-ara">
																	<!--계산서일 경우 -->
																	<ul data-v-4bec500c="" class="tab-vo4 tab-vac1">
																		<li data-v-4bec500c="" data-method="BGMTHD01"
																			class="oaoco"><a data-v-4bec500c=""
																			class="aTa-f53">영수</a></li>
																		<li data-v-4bec500c="" data-method="BGMTHD02"><a
																			data-v-4bec500c="" class="aTa-f53">청구</a></li>
																	</ul>
																	<!--현금영수증일경우 -->
																	<ul data-v-4bec500c="" class="tab-vo4 tab-vac2 ">
																		<li data-v-4bec500c="" data-method="BGMTHD03"
																			class="oaoco"><a data-v-4bec500c=""
																			class="aTa-f53">소득공제용</a></li>
																		<li data-v-4bec500c="" data-method="BGMTHD04"><a
																			data-v-4bec500c="" class="aTa-f53">지출증빙용</a></li>
																	</ul>
																</div>
															</td>
															<td data-v-4bec500c=""></td>
														</tr>
														<!-- 														<tr data-v-4bec500c=""> -->
														<!-- 															<th data-v-4bec500c="">공급받는자 정보 <span -->
														<!-- 																data-v-4bec500c="" class="icon-698">?</span></th> -->
														<!-- 															<td data-v-4bec500c=""> -->
														<!-- 																<div data-v-4bec500c="" class="rel-ara"> -->
														<!-- 																	<ul data-v-4bec500c="" class="tab-vo4 tab-vac"> -->
														<!-- 																		<li data-v-4bec500c="" class="oaoco"><a -->
														<!-- 																			data-v-4bec500c="" class="aTa-f53">사업자정보</a></li> -->
														<!-- 																		<li data-v-4bec500c=""><a data-v-4bec500c="" -->
														<!-- 																			class="aTa-f53">주민등록번호</a></li> -->
														<!-- 																	</ul> -->
														<!-- 																</div> -->
														<!-- 															</td> -->
														<!-- 															<td data-v-4bec500c=""></td> -->
														<!-- 														</tr> -->
														<tr>
															<th style="">발행일 (매월 1일~31일)</th>
															<td>
																<div class="rel-859">
																	<div class="input-ch2">
																		<span class="input-vmm"><input type="number"
																			class="input-tl1 ioodb num-qsa" name="prufDe2">
																			<span class="uni-rza">일</span></span>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- 											<div data-v-4bec500c="" class="las-kt1"> -->
											<!-- 												<div data-v-4bec500c="" class="btn-7on"> -->
											<!-- 													<a data-v-4bec500c="" class="las-f8s can-5np hov-ncl">취소</a> -->
											<!-- 													<a data-v-4bec500c="" class="las-f8s sav-p6r hov-ncl">등록</a> -->
											<!-- 												</div> -->
											<!-- 											</div> -->
										</div>
										<!--비과세 설정창 끝 -->


									</div>
								</div>
								<div data-v-234dc1ac="" class="hir-o6h cus-cdd">
									<div data-v-234dc1ac="" class="btn-oq1 typ-op5 act-gah"
										onclick="submit()">등록</div>
								</div>
							</div>
						</div>
					</div>
					<!--**************** 증빙 정보 끝 ****************-->



				</div>
			</div>
		</div>
		<div data-v-511373d6="" class="loading-owl zId-yky style-ziLoS"
			id="style-ziLoS">
			<div data-v-511373d6="" class="loading-qdz"></div>
		</div>







	</div>
</div>


<script>





//================= 자동입력 이벤트(계약)===================//
	var scntrctrNm= document.querySelector("input[name=cntrctrNm]"); //계약자명
	var smbtlnum= document.querySelector("input[name=mbtlnum]"); //휴대폰번호
	var semailAdres= document.querySelector("input[name=emailAdres]"); //이메일주소
	var svhcleYn= document.querySelectorAll(".tab-o76>.nebvo")[0].dataset.vhcleYn; //차량보유여부
	var sanimalYn= document.querySelectorAll(".tab-o76>.nebvo")[1].dataset.animalYn; //반려동물여부
	var sctpPicName= document.querySelector("input[name=ctpPicName]"); //계약담당자명
	var sctpPicEmail= document.querySelector("input[name=ctpPicEmail]"); //계약담당자이메일주소
	var sctpPicMbtlnum = document.querySelector("input[name=ctpPicMbtlnum]"); //계약담당자휴대폰번호

	var speedUpOne = document.querySelector("#speedUpOne");
	speedUpOne.addEventListener('click',function(e){
	e.preventDefault();
	scntrctrNm.value ="천우희";
	smbtlnum.value ="01075981246";
	semailAdres.value ="fmfmfmgk@naver.com";
	sctpPicName.value ="이성경";
	sctpPicEmail.value ="leesk0228@naver.com";
	sctpPicMbtlnum.value ="01035353434";

})
//=================================================//

//모든 입력 필드를 선택합니다
const inputs = document.querySelectorAll('.input-1ly.dviyg.num-jm7');

// 각 입력 필드에 이벤트 리스너를 추가합니다
inputs.forEach((input) => {
    input.addEventListener('keyup', function(e) {
        let value = e.target.value;
        value = Number(value.replaceAll(',', ''));
        if (isNaN(value)) { //NaN인지 판별
            e.target.value = 0;
        } else { //NaN이 아닌 경우
            const formatValue = value.toLocaleString('ko-KR');
            e.target.value = formatValue;
        }
    });
});

	/************************ 메뉴 선택 ***********************/
	var ctList = $(".ste-1xs li").on("click", function() { //버튼 선택
		console.log("ㅎㅇ");
		$(ctList).removeClass('act-gt5');
		$(this).addClass('act-gt5');
	});
	
	//=========================== 숫자 콤마 넣기 ==============================//
// 	document.addEventListener('DOMContentLoaded', function() {
//     const inputs = document.querySelectorAll('input.num-jm7');

//     inputs.forEach(input => {
//         input.addEventListener('input', function() {
//             // 입력된 값에서 콤마 제거
//             let value = this.value.replace(/,/g, '');
//             // 숫자 형식으로 변환
//             value = Number(value);
//             // 콤마 추가하여 입력 필드에 설정
//             this.value = value.toLocaleString('ko-KR');
//         });
//     });
// });
//=========================== 숫자 콤마 넣기 끝 ==============================//	

	 
	


//*************************임차인정보*****************************
//차량보유, 애완동물보유 선택 
var aa = document.querySelectorAll(".tab-o76"); 
//배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
 
  aa.forEach((list) => {
   // 각 .toggle-tj3 내의 li 요소들을 가져온다.
	   var ritems = list.querySelectorAll("li");
	   ritems.forEach((item)=>{
			item.addEventListener('click',function(){
			   	 ritems.forEach((e)=>{
			           //하나만 선택되도록 기존의 효과를 지워준다.
			             e.classList.remove('nebvo');
			     })
			    // 선택한 그 아이만 효과를 추가해준다.
			    this.classList.add('nebvo');
			})
	   })
  })
  

var cntrctrNm= document.querySelector("input[name=cntrctrNm]"); //계약자명
var mbtlnum= document.querySelector("input[name=mbtlnum]"); //휴대폰번호
var emailAdres= document.querySelector("input[name=emailAdres]"); //이메일주소
var vhcleYn= document.querySelectorAll(".tab-o76>.nebvo")[0].dataset.vhcleYn; //차량보유여부
var animalYn= document.querySelectorAll(".tab-o76>.nebvo")[1].dataset.animalYn; //반려동물여부
var ctpPicName= document.querySelector("input[name=ctpPicName]"); //계약담당자명
var ctpPicEmail= document.querySelector("input[name=ctpPicEmail]"); //계약담당자이메일주소
var ctpPicMbtlnum= document.querySelector("input[name=ctpPicMbtlnum]"); //계약담당자휴대폰번호
 
// function btnClick() {
// 	  var mydiv = document.getElementById('my-div');
	  
// 	  if(mydiv.style.display === 'none') {
// 	    mydiv.style.display = 'block';
// 	  }else {
// 	    mydiv.style.display = 'none';
// 	  }
// }
  
//************************ 달력 *****************************
var datepicker2 = document.getElementById('datepicker2');
var startDateInput = document.getElementById('startDate');
var endDateInput = document.getElementById('endDate');
var periods = document.querySelectorAll(".aut-p3v>li");
	
	for(period of periods){
		period.addEventListener("click",function(){
			var addperiod = this.dataset.period;
			var add = parseInt(addperiod);
			console.log("ㅇㅅㅇ:",addperiod)
			var start = new Date(startDateInput.value);
			start.setMonth(start.getMonth() + add);
			start.setDate(start.getDate() - 1);
			endDateInput.value = skDateChg(start);
		})
	}
	
	function skDateChg(skDate){
		var year = skDate.getFullYear();
		var month = skDate.getMonth()+1;
		if(month<10){
			month = "0" + month;
		}
		var date = skDate.getDate();
		if(date<10){
			date = "0"+date;
		}
		return `\${year}-\${month}-\${date}`;
	}
		
	
	function handleDateChange(selectedDates, dateStr, instance) {
	}
	
	flatpickr(startDateInput, {
		dateFormat: 'Y-m-d',
		enabvarime: false,
// 		minDate: 'today',
		defaultDate: 'today',
		locale: 'ko',
		onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
	});
	
	flatpickr(endDateInput, {
		dateFormat: 'Y-m-d',
		enabvarime: false,
// 		minDate: 'today',
		defaultDate: 'today',
		locale: 'ko',
		onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
	});
	
//*************************계약정보*****************************  


//납기일 = 계약일
var start = new Date(startDateInput.value);
var naggiday = start.getDate();
var ctpDedtDe = start.getDate();
$("#naggiday").text(naggiday); 
$(".w42-7rj2").css('display', 'none');






function Napgi(nap){
	ctpDedtDe = nap.value
}

var liList = $(".tab-6l8>li").on("click",function(){
	var a = $(this).data("ctp-dedt-de");
	if(a=="GYE"){
		$(".w42-7rj2").css('display', 'none');
		$(".w42-7rj1").css('display', 'block');
		ctpDedtDe = start.getDate();
	}
	if(a=="NAP"){
		$(".w42-7rj1").css('display', 'none');
		$(".w42-7rj2").css('display', 'block');
	}
})
console.log("aaa:",ctpDedtDe)








//계약자명 꺼내기
var name =  cntrctrNm.value
var ctpRcpmnyer= document.querySelector("input[name=ctpRcpmnyer]"); //입금자

//계약자명=입금자명 동일 버튼
$(".one-fpn").on("click",function(){
	cname = cntrctrNm.value;
	console.log("돼?:",cname)
	ctpRcpmnyer.value = cname;
})

//계약형태, 임대료 납부조건
var dctClsfList = document.querySelectorAll(".tab-6l8"); 
//배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
 
  dctClsfList.forEach((list) => {
   // 각 .toggle-tj3 내의 li 요소들을 가져온다.
	   var ritems = list.querySelectorAll("li");
	   ritems.forEach((item)=>{
			item.addEventListener('click',function(){
			   	 ritems.forEach((e)=>{
			           //하나만 선택되도록 기존의 효과를 지워준다.
			             e.classList.remove('xrvps');
			     })
			    // 선택한 그 아이만 효과를 추가해준다.
			    this.classList.add('xrvps');
			})
	   })
  }) // 
  var dctClsf= document.querySelectorAll(".tab-6l8>.xrvps")[0].dataset.dctClsf; //계약형태분류
  var rentCnd= document.querySelectorAll(".tab-6l8>li.xrvps")[2].dataset.rentCnd; //임대료 납부조건 
  var dctRentAr= document.querySelector("input[name=dctRentAr]"); //임대할부분면적
  var dctBgng= document.querySelector("input[name=dctBgng]"); //계약시작일자
  var dctEnd= document.querySelector("input[name=dctEnd]"); //계약만료일자
  
//*************************임대료정보*****************************  
//부가세 적용
var ctpVatApplcList = document.querySelectorAll(".tab-j1r");   
var boogaAll = 10; //부가세(임대+관리)
var boogaIm = 0; //부가세(임대)
var boogaGwan = 0; //부가세(관리)
var boogase1 = document.getElementById("boogase1"); // 임대료
var boogase2 = document.getElementById("boogase2"); // 관리비
var forWhat = document.getElementById("forWhat"); //임대료 증빙정보 - 부가세 적용범위
var ctpVatApplcYn = "BOOGA01"; //부가세 종류
console.log(forWhat)
ctpVatApplcList.forEach((list) => {
    // 각 .toggle-tj3 내의 li 요소들을 가져온다.
    var ritems = list.querySelectorAll("li");
    ritems.forEach((item)=>{
        item.addEventListener('click',function(){
            ritems.forEach((e)=>{
                //하나만 선택되도록 기존의 효과를 지워준다.
                e.classList.remove('xrvps');
            });
            // 선택한 그 아이만 효과를 추가해준다.
            this.classList.add('xrvps');
            if(this.dataset.se=="1"){ //전체적
                boogase1.style.display="block";
                boogase2.style.display="block";
                boogase3.style.display="block";
                boogaAll = 10; //부가세(임대+관리)
                boogaIm = 0; //부가세(임대)
                boogaGwan = 0; //부가세(관리)
                forWhat.innerHTML ="전체 적용"
               	ctpVatApplcYn = "BOOGA01";
            }
            if(this.dataset.se=="2"){ //임대
                boogase1.style.display="block";
                boogase2.style.display="none";
                boogase3.style.display="block";
                boogaAll = 0; //부가세(임대+관리)
                boogaIm = 10; //부가세(임대)
                boogaGwan = 0; //부가세(관리) 
                forWhat.innerHTML ="임대료만 적용"
               	ctpVatApplcYn = "BOOGA02";
            }
            if(this.dataset.se=="3"){ //관리
                boogase1.style.display="none";
                boogase2.style.display="block";
                boogase3.style.display="block";
                boogaAll = 0; //부가세(임대+관리)
                boogaIm = 0; //부가세(임대)
                boogaGwan = 10;
                forWhat.innerHTML ="관리비만 적용"
                ctpVatApplcYn = "BOOGA03";
            }
            if(this.dataset.se=="4"){
                boogase1.style.display="none";
                boogase2.style.display="none";
                boogase3.style.display="none";
                boogaAll = 0; //부가세(임대+관리)
                boogaIm = 0; //부가세(임대)
                boogaGwan = 0; //부가세(관리)
                ctpVatApplcYn = "BOOGA04";
            }
            calculateSum();
        });
    });
});
console.log("a",boogaAll);
console.log("b",boogaIm);
console.log("c",boogaGwan);

//월 입금액, 부가세 계산 
var managectAmt = document.querySelector("input[name=managectAmt]"); // 관리비
var mhlAmt = document.querySelector("input[name=mhlAmt]"); // 임대료
var mtRcpmnyAmt = document.querySelector("input[name=mtRcpmnyAmt]"); // 월 입금액

var ctpVatApplc = document.querySelector("input[name=ctpVatApplc]");
function calculateSum() {
    var a = parseFloat(mhlAmt.value.replace(/,/g, '')) || 0; // 임대료 숫자 변환, 기본값 0
    var b = parseFloat(managectAmt.value.replace(/,/g, '')) || 0; // 관리비 숫자 변환, 기본값 0
    var c = parseFloat(mtRcpmnyAmt.value) || 0; // 월 입금액 숫자 변환, 기본값 0
    var d = 0;
    // 부가세 계산
    if(boogaIm===0 && boogaGwan===0){
    d = (a + b) / boogaAll;
    }
    if(boogaAll===0 && boogaGwan===0){
    d = a / boogaIm;
    }
    if(boogaAll===0 && boogaIm===0){
    d = b / boogaGwan;
    }
    console.log("부가세총합:",d)
    console.log(boogaAll, boogaIm, boogaGwan)
    d = Math.round(d); // 정수로 반올림
    
    // 부가세 및 월 입금액 필드에 값 할당
    ctpVatApplc.value = d.toLocaleString(); // 부가세를 문자열로 변환하여 할당
    mtRcpmnyAmt.value = (a + b).toLocaleString(); // 임대료와 관리비의 합계를 정수로 표시
//     parseInt(ctpVatApplc.value).toLocaleString(); //0612
//     parseInt(mtRcpmnyAmt.value).toLocaleString(); //0612
}

// 입력 필드에 이벤트 리스너 추가
mhlAmt.addEventListener("input", calculateSum);
managectAmt.addEventListener("input", calculateSum);
mtRcpmnyAmt.addEventListener("input", calculateSum);
//부가세 계산 로직 끝
  
//청구서 생성
var chungStart = new Date(startDateInput.value)//계약서 시작 일자 
var startYear = chungStart.getFullYear(); //청구서 시작 년
var startMonth = chungStart.getMonth()+1; //청구서 시작 월
var startDate = chungStart.getDate(); //청구서 시작 일

var chungEnd = new Date(endDateInput.value)//계약서 종료 일자 
var endYear = chungEnd.getFullYear(); //청구서 종료 년
var endMonth = chungEnd.getMonth()+1; //청구서 종료 월
var endDate = chungEnd.getDate(); //청구서 종료 일


function newChung(){

var chungNew = ` <td data-v-6ffdd9ca="">
	<div data-v-6ffdd9ca="" class="pre-rkh">
	<div data-v-6ffdd9ca="" class="lef-cqa">
		<div data-v-6ffdd9ca="" class="tem-s4x">납부 데이터</div>
		<div data-v-6ffdd9ca="" class="pre-jwk">
			<ul data-v-6ffdd9ca="" class="row-o93">
				<li data-v-6ffdd9ca="">회차</li>
				<li data-v-6ffdd9ca="" class="w13-27g">청구서명</li>
				<li data-v-6ffdd9ca="" class="w13-8wy">부과기간</li>
				<li data-v-6ffdd9ca="" class="fvvfq">납기일</li>
				<li data-v-6ffdd9ca="" class="hltko">납부</li>
				<li data-v-6ffdd9ca="" class="fvvfq">임대료(원)</li>
			</ul>
		</div>
		<div data-v-6ffdd9ca="" class="pre-86l">
			<ul data-v-6ffdd9ca="">
				<li data-v-6ffdd9ca="" style="height:1px"></li>
				<li data-v-6ffdd9ca="" class="xrvps">
					<ul data-v-6ffdd9ca="" class="row-o93">
						<li data-v-6ffdd9ca="">3</li>
						<li data-v-6ffdd9ca="" class="bil-6gd w13-27g">
							<div data-v-6ffdd9ca="" class="bil-eiy bor-yhq">
								\${startYear}년 \${startMonth}월 임대료</div>
						</li>
						<li data-v-6ffdd9ca="" class="w13-8wy">24.07.01
							~ 24.07.31</li>
						<li data-v-6ffdd9ca="" class="fvvfq">2024.07.09</li>
						<li data-v-6ffdd9ca="" class="hltko blu-mpp">예정</li>
						<li data-v-6ffdd9ca="" class="fvvfq">2,000</li>
					</ul>
				</li>
				<li data-v-6ffdd9ca="">
					<ul data-v-6ffdd9ca="" class="row-o93">
						<li data-v-6ffdd9ca="">2</li>
						<li data-v-6ffdd9ca="" class="bil-6gd w13-27g">
							<div data-v-6ffdd9ca="" class="bil-eiy bor-yhq">
								2024년 05월 임대료</div>
						</li>
						<li data-v-6ffdd9ca="" class="w13-8wy">24.06.01
							~ 24.06.30</li>
						<li data-v-6ffdd9ca="" class="fvvfq">2024.06.09</li>
						<li data-v-6ffdd9ca="" class="hltko blu-mpp">예정</li>
						<li data-v-6ffdd9ca="" class="fvvfq">2,000</li>
					</ul>
				</li>
			</ul>
		</div>
		<div data-v-6ffdd9ca="" class="pre-151">
			<div data-v-6ffdd9ca="" class="info-drf pdd-ypr">
				<div data-v-6ffdd9ca="">임대료 합계</div>
				<div data-v-6ffdd9ca="">
					<span id="Im"></span> 원
				</div>
			</div>
			<div data-v-6ffdd9ca="" class="info-r2o">[청구서관리]
				메뉴에서 청구서 추가/수정/삭제 가능</div>
		</div>
	</div>
	<div data-v-6ffdd9ca="" class="rig-ppg"></div>
</div>
</td> 	`;

document.querySelector('.newChung').innerHTML = chungNew;

}
  
  
  
var grnteAmt= document.querySelector("input[name=grnteAmt]"); //보증금  
mhlAmt= document.querySelector("input[name=mhlAmt]"); //임대료, 이친구는 위에서 따로 이용했어서 var이 없음
managectAmt= document.querySelector("input[name=managectAmt]"); //관리비, 이친구는 위에서 따로 이용했어서 var이 없음
ctpRcpmnyer= document.querySelector("input[name=ctpRcpmnyer]"); //입금자, 이친구는 위에서 따로 이용했어서 var이 없음
  

//*************************임대료정보***************************** 
//증빙정보 설정 proofSetting
var proofSetting1 = document.querySelector('.proofSetting')//증빙정보설정
var proofSettingGwa = document.querySelector('.evd-bt9') //증빙정보설정-설정(과세)
var proofSettingBGwa = document.querySelector('.evd-6p9') //증빙정보설정-설정(과세)
// var proofSetting2 = document.querySelector('.proofSetting2')//(변동관리비)증빙정보설정
// var proofSetting4 = document.querySelector('.evd-bt92') //(변동관리비)증빙정보설정-설정
proofSettingGwa.style.display="none" //(과세)증빙정보설정-설정
proofSettingBGwa.style.display="none" //(비과세)증빙정보설정-설정
// proofSetting4.style.display="none" //(변동관리비)증빙정보설정-설정

var proofSe = document.querySelector('.proofSe') //구분메뉴
var gwa = document.querySelector('.gwa'); //과세설정
var bgwa = document.querySelector('.bgwa'); //비과세설정



//변동관리
// var proofSe2 = document.querySelector('.proofSe2') //구분메뉴
// var gwa2 = document.querySelector('.gwa2'); //과세설정
// var bgwa2 = document.querySelector('.bgwa2'); //비과세설정
// gwa.style.display="block" //과세 



gwa.style.display="none" //비과세
// gwa2.style.display="none" //비과세





proofButton = document.querySelectorAll('.tab-bm5');
var prufNm = "PROOFBG";
var prufKnd = "BGKND01";//증빙종류
var prufMthd = "BGMTHD01";  //증빙방식 (영수/청구, 소득/지출)
var prufDe = "";

proofButton.forEach((list) => {
    // 각 .toggle-tj3 내의 li 요소들을 가져온다.
    var pitems = list.querySelectorAll("li");
    pitems.forEach((item)=>{
        item.addEventListener('click',function(){
        	pitems.forEach((e)=>{
                //하나만 선택되도록 기존의 효과를 지워준다.
                e.classList.remove('nrnii');
            });
            // 선택한 그 아이만 효과를 추가해준다.
            this.classList.add('nrnii');
            
            
            
            prufNm = this.dataset.proof; //증빙발생 설정 data속성 
            console.log("5/27이얌",prufNm)
//             var proofSE2 = this.dataset.proof2; //(변동관리비)증빙발생 설정 data속성
//             if(proofSE== "1"){ //둘다 발행
//             	proofSe.style.display="" //구분메뉴
//             	gwa.style.display="" //증빙정보설정
//          		bgwa.style.display="" //증정보설정
//             }
            if(prufNm=="PROOFBG"){ //비과세발행
           		qwaSetClose();
           		proofSetting1.style.display="" 
           		gwa.style.display="none" //과세 
                bgwa.style.display="" //비과
               
               	prufKnd = "BGKND01";//증빙종류
               	console.log("여기까지왔어?",prufKnd)
            }
            if(prufNm=="PROOFG"){ //과세발행 
            	bqwaSetClose();
            	proofSetting1.style.display="" 
            	gwa.style.display="" //과세 
            	bgwa.style.display="none" //비과
           		
           		prufKnd = "GKND01";
            }
            if(prufNm=="PROOFNO"){ //미발행
            	qwaSetClose();
            	bqwaSetClose();
            	proofSetting1.style.display="none" 
            	gwa.style.display="none" //과세 
                bgwa.style.display="none" //비과
                prufDe = "";
                prufKnd = "";
            }
            
            //변동관리비
//             if(proofSE2== "1"){ //둘다 발행
//             	proofSe2.style.display="" //구분메뉴
//             	gwa2.style.display="" //증빙정보설정
//          		bgwa2.style.display="" //증정보설정
//             }
//             if(proofSE2== "1"){ //비과세발행
//             	proofSetting2.style.display="" //구분메뉴
//            		gwa2.style.display="none" //과세 
//                 bgwa2.style.display="" //비과
//             }
//             if(proofSE2== "2"){ //과세발행 
//             	proofSetting2.style.display="" //구분메뉴
//             	gwa2.style.display="" //과세 
//             	bgwa2.style.display="none" //비과
//             }
//             if(proofSE2== "3"){ //미발행
//             	proofSetting2.style.display="none" 
//             	gwa2.style.display="none" //과세 
//                 bgwa2.style.display="none" //비과
//             }
            

        })
    })
})



var qwaSetOpenButton = document.querySelector('.set-qre'); //과세 설정창 열기 버튼
var qwaSetCloseButton = document.querySelector('.set-close'); //과세 설정창 닫기 버튼
var bqwaSetOpenButton = document.querySelector('.set-qre2'); //과세 설정창 열기 버튼
var bqwaSetCloseButton = document.querySelector('.set-close2'); //과세 설정창 닫기 버튼

//과세, 비과세 버튼 클릭시
qwaSetCloseButton.style.display="none";
function qwaSetOpen(){
	proofSettingGwa.style.display="block";
	qwaSetOpenButton.style.display="none"; //과세 설정창 열기 버튼 감추기
	qwaSetCloseButton.style.display="block"; //과세 설정창 닫기 버튼 보이기
}
function qwaSetClose(){
	proofSettingGwa.style.display="none";
	qwaSetOpenButton.style.display="block"; //과세 설정창 열기 버튼 감추기
	qwaSetCloseButton.style.display="none"; //과세 설정창 닫기 버튼 보이기
}
function bqwaSetOpen(){
	proofSettingBGwa.style.display="block";
	bqwaSetOpenButton.style.display="none"; //과세 설정창 열기 버튼 감추기
	bqwaSetCloseButton.style.display="block"; //과세 설정창 닫기 버튼 보이기
}
function bqwaSetClose(){
	proofSettingBGwa.style.display="none";
	bqwaSetOpenButton.style.display="block"; //과세 설정창 열기 버튼 감추기
	bqwaSetCloseButton.style.display="none"; //과세 설정창 닫기 버튼 보이기
}


//과세,비과세설정창 버튼
//비과
var bgwaProofSet = document.querySelectorAll('.tab-vo4');//비과
var bangsik1 = document.querySelector('.tab-vac1'); //계산서 눌렀을때
var bangsik2 = document.querySelector('.tab-vac2'); //현금영수증 눌렀을때
bangsik2.style.display="none";

bgwaProofSet.forEach((list) => {
  // 각 .toggle-tj3 내의 li 요소들을 가져온다.
  var bgwaitems = list.querySelectorAll("li");
  bgwaitems.forEach((item)=>{
      item.addEventListener('click',function(){
      	bgwaitems.forEach((e)=>{
              //하나만 선택되도록 기존의 효과를 지워준다.
              e.classList.remove('oaoco');
          });
          // 선택한 그 아이만 효과를 추가해준다.
          this.classList.add('oaoco'); 
          prufKnd = this.dataset.sort;
          
          
              if(prufKnd=="BGKND01"){ //계산서
              	bangsik1.style.display="block";
              	bangsik2.style.display="none";
              	prufMthd = document.querySelector('.tab-vac1>li.oaoco').dataset.method;
              	console.log("비과-계산서:",prufKnd)
              	console.log("비과-계산서 자:",prufMthd)
              	
              }
              if(prufKnd=="BGKND02"){ //현금영수증
              	bangsik1.style.display="none";
              	bangsik2.style.display="block";
              	prufMthd = document.querySelector('.tab-vac2>li.oaoco').dataset.method;
              	console.log("비과-현영:",prufKnd)
              }

      })
  })
})
//과세
var gwaProofSet = document.querySelectorAll('.tab-8xo');//과세
var bangsik3 = document.querySelector('.tab-lma1');//세금계산서 눌렀을때
var bangsik4 = document.querySelector('.tab-lma2');//현금영수증 눌렀을때 
bangsik4.style.display="none";

gwaProofSet.forEach((list) => {
  // 각 .toggle-tj3 내의 li 요소들을 가져온다.
  var gwaitems = list.querySelectorAll("li");
  gwaitems.forEach((item)=>{
      item.addEventListener('click',function(){
      	gwaitems.forEach((e)=>{
              //하나만 선택되도록 기존의 효과를 지워준다.
              e.classList.remove('nrnii');
          });
          // 선택한 그 아이만 효과를 추가해준다. 
          this.classList.add('nrnii'); 
          prufKnd = this.dataset.sort;
          console.log("과:",prufKnd)
          
	          if(prufKnd=="GKND01"){ //세금계산서
	          	bangsik3.style.display="block";
	          	bangsik4.style.display="none";
	          	prufMthd = document.querySelector('.tab-lma1>li.nrnii').dataset.method;
	          	console.log("과-세금계산서",prufMthd)
	          }
	          if(prufKnd=="GKND02"){//현금영수증
	          	bangsik3.style.display="none";
	          	bangsik4.style.display="block";
	          	console.log("과-현금영수증",prufMthd,", 세금계산서:",prufKnd)
	        	prufMthd = document.querySelector('.tab-lma2>li.nrnii').dataset.method;
	          }
      })
  })
})




var rentRoomNo = document.querySelector('.ste-c3b').dataset.rentRoomNo;



function submit(){
	 cntrctrNm= document.querySelector("input[name=cntrctrNm]"); //계약자명
	 mbtlnum= document.querySelector("input[name=mbtlnum]"); //휴대폰번호
	 emailAdres= document.querySelector("input[name=emailAdres]"); //이메일주소
	 vhcleYn= document.querySelectorAll(".tab-o76>.nebvo")[0].dataset.vhcleYn; //차량보유여부
	 animalYn= document.querySelectorAll(".tab-o76>.nebvo")[1].dataset.animalYn; //반려동물여부
	 ctpPicName= document.querySelector("input[name=ctpPicName]"); //계약담당자명
	 ctpPicEmail= document.querySelector("input[name=ctpPicEmail]"); //계약담당자이메일주소
	 ctpPicMbtlnum= document.querySelector("input[name=ctpPicMbtlnum]"); //계약담당자휴대폰번호
	 ctpRcpmnyer= document.querySelector("input[name=ctpRcpmnyer]"); //입금자
	 dctClsf= document.querySelectorAll(".tab-6l8>.xrvps")[0].dataset.dctClsf; //계약형태분류
	 rentCnd= document.querySelectorAll(".tab-6l8>li.xrvps")[2].dataset.rentCnd; //임대료 납부조건 
	 dctRentAr= document.querySelector("input[name=dctRentAr]"); //임대할부분면적
	 dctBgng= document.querySelector("input[name=dctBgng]"); //계약시작일자
	 dctEnd= document.querySelector("input[name=dctEnd]"); //계약만료일자
	 managectAmt = document.querySelector("input[name=managectAmt]"); // 관리비
	 mhlAmt = document.querySelector("input[name=mhlAmt]"); // 임대료
	 mtRcpmnyAmt = document.querySelector("input[name=mtRcpmnyAmt]"); // 월 입금액
	 ctpVatApplc = document.querySelector("input[name=ctpVatApplc]");
	 grnteAmt= document.querySelector("input[name=grnteAmt]"); //보증금  
	 mhlAmt= document.querySelector("input[name=mhlAmt]"); //임대료
	 managectAmt= document.querySelector("input[name=managectAmt]"); //관리비
	 ctpRcpmnyer= document.querySelector("input[name=ctpRcpmnyer]"); //입금자
	
	
	//활성화된 버튼 모으기
	prufNm = document.querySelector(".tab-bm5>li.nrnii").dataset.proof
	if(prufNm=="PROOFBG"){ //비과세일경우 
		prufKnd = document.querySelector(".tab-vac>li.oaoco").dataset.sort
		console.log("1-1.비과세",prufNm)
		if(prufKnd=="BGKND01"){ //계산서
			console.log("2-1.계산서(비과)",prufKnd)
			prufMthd = document.querySelector(".tab-vac1>li.oaoco").dataset.method
			console.log("3.소득/지출(계산서방식)",prufMthd)
		}
		if(prufKnd=="BGKND02"){ //현금영수증
			console.log("2-2.현금영수증(비과)",prufKnd)
			prufMthd = document.querySelector(".tab-vac2>li.oaoco").dataset.method
			console.log("3.소득/지출(현금영수증방식)",prufMthd)
		}
		prufDe = document.querySelector("input[name=prufDe2]").value;
		console.log("4.비과세일자:",prufDe)
	}
	if(prufNm=="PROOFG"){ //과세일경우
		prufKnd = document.querySelector(".tab-lma>li.nrnii").dataset.sort
		console.log("1-2.과세",prufNm)
		if(prufKnd=="GKND01"){ //세금계산서
			console.log("2-1.세금계산서(과)",prufKnd)
			prufMthd = document.querySelector(".tab-lma1>li.nrnii").dataset.method
			console.log("3.소득/지출(세금계산서방식)",prufMthd)
		}
		if(prufKnd=="GKND02"){ //현금영수증
			console.log("2-2.현금영수증(과)",prufKnd)
			prufMthd = document.querySelector(".tab-lma2>li.nrnii").dataset.method
			console.log("3.소득/지출(현금영수증방식)",prufMthd)
		}
		prufDe = document.querySelector("input[name=prufDe]").value;
		console.log("4.과세일자:",prufDe)
	}
	if(prufNm=="PROOFNO"){ //둘다아닐경우
		prufKnd = "";
		prufMthd = "";
		prufDe = "";
		console.log("1-4.미발행",prufKnd)
	}
	
	mtRcpmnyAmt = mtRcpmnyAmt.value.replace(/,/g, '');
	dctRentAr = dctRentAr.value.replace(/,/g, '');
	managectAmt = managectAmt.value.replace(/,/g, '');
	grnteAmt = grnteAmt.value.replace(/,/g, '');
	mhlAmt = mhlAmt.value.replace(/,/g, '');
	//데이터 넣기
	var data = {
		prufKnd : prufKnd //증빙종류 O
		,prufMthd : prufMthd //증빙방식 O
		,prufDe : prufDe //증빙발행일자 O
		,cntrctrNm : cntrctrNm.value //계약자명 O
		,mbtlnum : mbtlnum.value//휴대폰번호 O
		,emailAdres : emailAdres.value//이메일주소  O
		,vhcleYn : vhcleYn//차량보유여부  O
		,animalYn : animalYn//반려동물여부  O
		,ctpPicName : ctpPicName.value//계약담당자명  O
		,ctpPicEmail : ctpPicEmail.value//계약담당자이메일주소  O
		,ctpPicMbtlnum : ctpPicMbtlnum.value//계약담당자휴대폰번호  O
		,dctRentAr : dctRentAr //임대할부분면적 O
		,dctClsf : dctClsf //계약형태분류 O
		,rentCnd : rentCnd //임대료 납부조건 O
		,dctBgng : dctBgng.value//계약시작일자 O
		,dctEnd : dctEnd.value//계약만료일자 O
		,ctpVatApplcYn : ctpVatApplcYn //부가세 종류 O (Yn으로 안하기로함!)
		,grnteAmt : grnteAmt//보증금 O
		,mhlAmt : mhlAmt//임대료 O
		,managectAmt : managectAmt//관리비 O
		,ctpRcpmnyer : ctpRcpmnyer.value//입금자 O
		,prufNm : prufNm //증빙구분 O
		,ctpDedtDe : ctpDedtDe //납기일자 O
		,mtRcpmnyAmt : mtRcpmnyAmt//월입금액 O
		,rentRoomNo : rentRoomNo //임대관리방등록번호 O
	}	
console.log("data: ",data);
var url = cPath + "/lessor/cntrctInfo";
Swal.fire({
    title: `계약 등록을 완료하시겠습니까?`,
    icon: 'warning',
	showCancelButton: true,
    confirmButtonText: '네',
    cancelButtonText: '아니요'
}).then((result) => {
    if (result.isConfirmed) {
    	
$.ajax({
	url : url
	,type : 'POST'
	,contentType : "application/json;charset=UTF-8"
	,data : JSON.stringify(data)
	,dataType : 'text'
	,success : function(resp) {
		if(resp == "success"){
			Swal.fire({
			   title: '등록완료',
     		   text: '계약 등록이 완료되었습니다.',
     		   icon: 'success',
     		}).then(result=>{
     			
     			location.href = cPath + "/lessor/buildingInfo";
     		})
		}
	}
// 	error: function(xhr) {
//         console.log('Error:', xhr.status);
//     }
})
    } else if (result.dismiss === Swal.DismissReason.cancel) {
        Swal.fire(
            '취소되었습니다',
            '등록 작업이 취소되었습니다',
            'error'
        );
    }
})
  
}  
  
	</script>