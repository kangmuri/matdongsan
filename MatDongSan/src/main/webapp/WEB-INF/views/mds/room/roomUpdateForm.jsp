<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/psm-room.css" />


	<!-- Start Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">매물 수정</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="${pageContext.request.contextPath }/index">메인</a></li>
						<li>매물 수정</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Start Dashboard Section -->
	<section class="dashboard section">
		<div class="container">
			<div class="row">
				<div class="col-lg-1 col-md-1 col-1"></div>
					<div class="col-lg-12 col-md-12 col-12">
						<div class="main-content">
							<!-- Start Profile Settings Area -->
							<div class="dashboard-block mt-0 profile-settings-block">
	<!-- 							<h3 class="block-title">매물 등록</h3> -->
								<div class="inner-block">
	
									<div class="profile-setting-form">
										<div class="row">
											<div class="col-12">
												<div class="form-group"><button id="retrieveDealing" class="btn btn-primary" style="width: 150px ;">매물 선택</button></div>
											</div>
											<div class="col-12">
												<div class="form-group2">

													<!-- 다방코드 -->
													<div class="styled__ContentContainer-sc-1tbsltx-3 ruboG">
														<div class="styled__Content-sc-1tbsltx-4 cYEtWa">
															<section id="room_info"
																class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
																<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																	<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">매물 정보</h1>
																	<p class="styled__RequireText-sc-1xi02p4-0 iNovgR">
																		<span>*</span> 필수입력 항목
																	</p>
																</header>
																<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																	<colgroup>
																		<col width="150px">
																		<col width="300px">
																		<col>
																	</colgroup>
																	<tbody>
																		 <tr style="height: 100%;">
																		<th>
																			<h1>
																				매물유형<span>*</span>
																			</h1>
																		</th>
	
																		<td style="padding: 0px;">
																			<div class="styled__OptionWrap-s8vume-2 cnrejE" id="vila" style="display: block;">
																				<h1 id="roomType" style="font-size: 30px; text-align: unset;margin-top: 50px;">빌라</h1>
																			</div>
																		</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					매물 주소<span>*</span>
																				</h1>
																			</th>
																			<td colspan="2">
																				<div class="styled__Container-sc-1r88oxk-0 jhsifL">
																					<div
																						class="styled__SearchContainer-sc-18eml0m-0 kgHMDK">
																						<div class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																							<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																								<h1 class="styled__Title-g5hn7a-1 bBqcwV">주소</h1>
																							</header>
																							<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																								<div>
																									<div class="styled__Form-sc-18eml0m-1 eLOHkM">
																										<div
																											class="styled__InputWrap-sc-1kc3qak-0 hiNaar">
																											<input disabled autocomplete="off" type="text"
																												name="keyword"
																												placeholder="예) 번동 10-1, 강북구 번동"
																												class="styled__Input-sc-1kc3qak-1 cJIIHX"
																												id="address"
																												value="">
																										</div>
																						
																									</div>
																								</div>
																							</div>
																						</div>
																						<div class="styled__Container-sc-1y1xzna-0 fnBXFS"
																							style="margin-top: 16px;">
																							<div
																								class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																								<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																									<h1 class="styled__Title-g5hn7a-1 hIHHa">동
																										입력</h1>
																								</header>
																								<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																									<div>
																										<div
																											class="styled__InputWrap-sc-1kc3qak-0 krwgOV">
																											<input disabled="" autocomplete="off"
																												type="text" name="dong" placeholder="예) 101"
																												class="styled__Input-sc-1kc3qak-1 jcpiK"
																												value="">
																											<p
																												class="styled__Unit-sc-1kc3qak-6 itaQQb unit">동</p>
																										</div>
																									</div>
																								</div>
																							</div>
																							<div
																								class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																								<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																									<h1 class="styled__Title-g5hn7a-1 hIHHa">호
																										입력(선택)</h1>
																								</header>
																								<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																									<div>
																										<div
																											class="styled__InputWrap-sc-1kc3qak-0 krwgOV">
																											<input disabled="" autocomplete="off"
																												type="text" name="ho" placeholder="예) 101"
																												class="styled__Input-sc-1kc3qak-1 jcpiK"
																												value="">
																											<p
																												class="styled__Unit-sc-1kc3qak-6 itaQQb unit">호</p>
																										</div>
																									</div>
																								</div>
																							</div>
																						</div>
																	
																					</div>
																	
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					매물 크기<span>*</span>
																				</h1>
																			</th>
																			<td colspan="2">
																				<div class="styled__Container-sc-1y1xzna-0 ehzmZA">
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">전용면적</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 krvzkE">
																									<input disabled="" autocomplete="off" type="text"
																										name="pyeong" placeholder="평수 입력"
																										class="styled__Input-sc-1kc3qak-1 jcpiK"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">평</p>
																								</div>
																								<p class="styled__EqualText-ce1ye7-0 hQRLPe">=</p>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 krvzkE">
																									<input disabled="" autocomplete="off" type="text"
																										name="square" placeholder="㎡ 입력"
																										class="styled__Input-sc-1kc3qak-1 gnunwF"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">㎡</p>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					방 정보<span>*</span>
																				</h1>
																			</th>
																			<td colspan="2">
																				<div class="styled__Container-sc-1y1xzna-0 ehzmYj">
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJAZ s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">방 수</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																									<input disabled="" autocomplete="off" type="number" name="roomCnt"
																										class="styled__Input-sc-1kc3qak-1 jcpiK"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">개</p>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</section>
															<section id="additional_info"
															class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
															<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">추가 정보</h1>
															</header>
															<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																<colgroup>
																	<col width="150px">
																	<col width="356px">
																	<col width="150px">
																	<col width="356px">
																</colgroup>
																<tbody>
																	<tr>
																		<th>
																			<h1>
																				층 수<span>*</span>
																			</h1>
																		</th>
																		<td colspan="3">
																			<div class="styled__Container-sc-1y1xzna-0 ehzmZA">
																				<div
																					class="styled__Container-sc-1pfo4ts-0 ffzJAZ s3Pack__group">
																					<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																						<h1 class="styled__Title-g5hn7a-1 bBqcwV">전체
																							층 수</h1>
																					</header>
																					<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																						<div>
																							<div class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																								<input disabled="" autocomplete="off" type="text" name="floorCnt"
																									class="styled__Input-sc-1kc3qak-1 jcpiK"
																									value="">
																								<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">층</p>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div
																					class="styled__Container-sc-1pfo4ts-0 ffzJAZ s3Pack__group">
																					<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																						<h1 class="styled__Title-g5hn7a-1 bBqcwV">해당
																							층 수</h1>
																					</header>
																					<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																						<div>
																							<div class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																								<input disabled="" autocomplete="off" type="text" name="roomFloor"
																									class="styled__Input-sc-1kc3qak-1 jcpiK"
																									value="">
																								<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">층</p>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<th>
																			<h1>
																				욕실 수<span>*</span>
																			</h1>
																		</th>
																		<td colspan="1">
																			<div
																				class="styled__Container-sc-1pfo4ts-0 ffzJAZ s3Pack__group">
																				<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																					<div>
																						<div class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																							<input disabled="" autocomplete="off" type="text" name="roomBtrCnt"
																								class="styled__Input-sc-1kc3qak-1 jcpiK"
																								value="">
																							<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">개</p>
																						</div>
																					</div>
																				</div>
																			</div>
																		</td>
																		<th>
																			<h1>
																				엘리베이터<span>*</span>
																			</h1>
																		</th>
																		<td colspan="1" style="vertical-align: middle;">
																			<div
																				class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																				<div class="styled__Content-sc-1uem0r1-1 becOPN">
																					<div id="roomElvtrYn">
																					</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<th>
																			<h1>
																				주차 가능 여부<span>*</span>
																			</h1>
																		</th>
																		<td colspan="3">
																			<div class="styled__Container-sc-1y1xzna-0 ehznaN">
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group"
																					style="padding: 10px 0px;">
																					<div class="styled__Content-sc-1uem0r1-1 becOPN">
																						<div id="roomParkngYn">
																						</div>
																					</div>
																				</div>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</section>
	
															<section id="trade_info"
																class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
																<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																	<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">거래 정보</h1>
																</header>
																<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																	<colgroup>
																		<col width="150px">
																		<col>
																	</colgroup>
																	<tbody>
																		<tr>
																			<th>
																				<h1>
																					거래 종류<span>*</span>
																				</h1>
																			</th>
																			<td style="vertical-align: middle;">
																				<div class="styled__Container-sc-1y1xzna-0 ehzmZA">
																					<div
																						class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																						<div class="styled__Content-sc-1uem0r1-1 becOPN">
<!-- 																						거래형태 -->
																							<div id="sales">
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt">
																								<input type="radio" name="delingType" class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="CHARTER">
																									<span class="styled__TextContent-sc-1y93qlq-2 bHgKAT">전세</span>
																								</label>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
																									type="radio" name="delingType"
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="MONTHLY">
																									<span
																										class="styled__TextContent-sc-1y93qlq-2 bHgKAT">월세</span>
																								</label>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt">
																								<input
																									type="radio" name="delingType"
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="SALE">
																									<span
																										class="styled__TextContent-sc-1y93qlq-2 bHgKAT">매매</span>
																								</label>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					가격 정보<span>*</span>
																				</h1>
																			</th>
																			<td>
																				<div class="styled__Container-sc-1y1xzna-0 ehzmZA">
																					<!--전세일경우-->
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJDB s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">전세가</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																									<input autocomplete="off" type="text"
																										name="roomLshl"
																										class="styled__Input-sc-1kc3qak-1 qGcbw"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">만원</p>
																								</div>
																							</div>
																						</div>
																					</div>
																					<!--월세일경우-->
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJDB s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">보증금</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																									<input autocomplete="off" type="text"
																										name="roomDeposit"
																										class="styled__Input-sc-1kc3qak-1 qGcbw"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">만원</p>
																								</div>
																							</div>
																						</div>
																					</div>
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJDB s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">월세</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																									<input autocomplete="off" type="text"
																										name="roomMhl"
																										class="styled__Input-sc-1kc3qak-1 qGcbw"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">만원</p>
																								</div>
																							</div>
																						</div>
																					</div>
																					<!--매매일경우-->
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJDB s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">매매가</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																									<input autocomplete="off" type="text"
																										name="roomPas"
																										class="styled__Input-sc-1kc3qak-1 qGcbw"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">만원</p>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					공용관리비<span>*</span>
																				</h1>
																			</th>
																			<td>
																				<div class="styled__Container-sc-1y1xzna-0 ehzmZA">
																					<div
																						class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 bBqcwV">관리비
																								여부</h1>
																						</header>
																						<div class="styled__Content-sc-1uem0r1-1 hYKrnh">
																							<div>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt" title="manageN">
																								<input
																									value="N"
																									type="radio" name="roomManagectAt" checked
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG">
																									<span
																										class="styled__TextContent-sc-1y93qlq-2 bHgKAT">없음</span>
																								</label>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt" title="manageY">
																								<input
																									value="Y"
																									type="radio" name="roomManagectAt"
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG">
																									<span
																										class="styled__TextContent-sc-1y93qlq-2 bHgKAT">있음</span>
																								</label>
																							</div>
																						</div>
																					</div>
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ffzJuH s3Pack__group">
																						<header class="styled__TitleWrap-g5hn7a-0 fXMIIG">
																							<h1 class="styled__Title-g5hn7a-1 hIHHa">관리비</h1>
																						</header>
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div
																									class="styled__InputWrap-sc-1kc3qak-0 bjdhPc">
																									<input disabled autocomplete="off"
																										type="text" name="roomManagectPc"
																										class="styled__Input-sc-1kc3qak-1 jcpiK"
																										value="">
																									<p class="styled__Unit-sc-1kc3qak-6 itaQQb unit">만원</p>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					입주 가능 일자<span>*</span>
																				</h1>
																			</th>
																			<td>
																				<div class="styled__Container-sc-1y1xzna-0 ehznaN">
																					<div
																						class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group"
																						style="padding: 10px 0px;">
																						<div class="styled__Content-sc-1uem0r1-1 becOPN">
																							<div>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt" title="moveInN"><input
																									type="radio" name="moveIn" value="Y"
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG"
																									checked>
																									<span
																										class="styled__TextContent-sc-1y93qlq-2 bHgKAT">즉시
																										입주</span> 
																									</label><label class="styled__Label-sc-1y93qlq-0 LvuTt" title="moveInY"> 
																									<input
																									type="radio" name="moveIn" value="N"
																									class="styled__Radio-sc-1y93qlq-1 jpAOgG">
																									<span class="styled__TextContent-sc-1y93qlq-2 bHgKAT">일자
																										선택</span>
																									 </label>
																							</div>
																						</div>
																					</div>
																					<div
																						class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																						<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																							<div>
																								<div class="styled__Picker-sc-2dolos-0 lWkFY">
																									<div
																										class="styled__InputWrap-sc-1kc3qak-0 bjdhPc">
																										<input disabled="" autocomplete="off" name="moveInDate" id="datepicker"
																											type="text" placeholder="예)20210720"
																											class="styled__Input-sc-1kc3qak-1 jEqnJA"
																											value="">
																										<button disabled="" type="button"
																											class="styled__RightIconBtn-sc-1kc3qak-5 jhfJfd">
																											<svg width="24" height="24"
																												viewBox="0 0 24 24" fill="none"
																												xmlns="http://www.w3.org/2000/svg">
	                                                            <path
																													fill-rule="evenodd" clip-rule="evenodd"
																													d="M7.99194 3.91012C7.94961 3.67688 7.74546 3.5 7.5 3.5C7.22386 3.5 7 3.72386 7 4V4.9999H5C4.44772 4.9999 4 5.44762 4 5.9999V18.9999C4 19.5522 4.44772 19.9999 5 19.9999H19C19.5523 19.9999 20 19.5522 20 18.9999V5.9999C20 5.44762 19.5523 4.9999 19 4.9999H17V4L16.9919 3.91012C16.9496 3.67688 16.7455 3.5 16.5 3.5C16.2239 3.5 16 3.72386 16 4V4.9999H8V4L7.99194 3.91012ZM16 7V5.9999H8V7C8 7.27614 7.77614 7.5 7.5 7.5C7.25454 7.5 7.05039 7.32312 7.00806 7.08988L7 7V5.9999H5V8.5H19V5.9999H17V7C17 7.27614 16.7761 7.5 16.5 7.5C16.2545 7.5 16.0504 7.32312 16.0081 7.08988L16 7ZM19 9.5H5V18.9999H19V9.5ZM8.5 12.9999H9.501V11.9999H8.5V12.9999ZM12.5 12.9999H11.5V11.9999H12.5V12.9999ZM14.5 12.9999H15.5V11.9999H14.5V12.9999ZM9.501 15.9999H8.5V14.9999H9.501V15.9999ZM11.5 15.9999H12.5V14.9999H11.5V15.9999ZM15.5 15.9999H14.5V14.9999H15.5V15.9999Z"
																													fill="#222222"></path>
	                                                        </svg>
																										</button>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>																			
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</section>

	
															<section id="facility_info"
																class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
																<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																	<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">시설 정보</h1>
																</header>
																<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																	<colgroup>
																		<col width="150px">
																		<col>
																	</colgroup>
																	<tbody>
																		<tr>
																			<th>
																				<h1>난방 시설</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																					<div class="styled__Content-sc-1uem0r1-1 becOPN">
<!-- 																						난방시설 공통코드 -->
																						<div id="heating">
																							<label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
																								type="radio" name="heatingType"
																								class="styled__Radio-sc-1y93qlq-1 jpAOgG"
																								value=""
																								checked="">
																								<p class="styled__TextContent-sc-1y93qlq-2 bHgKAT">선택안함</p> 
																							</label>
																								<label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
																								type="radio" name="heatingType"
																								class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="H01">
																								<p
																									class="styled__TextContent-sc-1y93qlq-2 bHgKAT">개별난방</p>
																							</label><label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
																								type="radio" name="heatingType"
																								class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="H02"> 
																								<p
																									class="styled__TextContent-sc-1y93qlq-2 bHgKAT" >중앙난방</p>
																							</label><label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
																								type="radio" name="heatingType"
																								class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="H03">
																								<p
																									class="styled__TextContent-sc-1y93qlq-2 bHgKAT">지역난방</p>
																							</label>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>냉방 시설</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																					<div class="styled__Content-sc-1uem0r1-1 becOPN">
<!-- 																					냉방시설 공통코드 -->
																						<div id="cooling">
																							<label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="coolingType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="C01">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">벽걸이형</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="coolingType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="C02">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">스탠드형</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="coolingType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="C03"> 
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">천장형</p>
																							</label>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>생활 시설</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																					<div class="styled__Content-sc-1uem0r1-1 jrfDal">
<!-- 																					생활시설공통코드 -->
																						<div id="life">
																							<label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L01">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">침대</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L02">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">책상</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L03">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">옷장</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L04"> 
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">식탁</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L05">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">쇼파</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L06">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">신발장</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L07">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">냉장고</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L08">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">세탁기</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L09">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">건조기</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L10">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">샤워부스</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L11">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">욕조</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L12">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">비데</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L13">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">싱크대</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L14">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">식기세척기</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L15">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">가스레인지</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L16">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">인덕션</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L17">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">전자레인지</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L18">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">가스오븐</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L19">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">TV</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="lifeType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="L20">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">붙박이장</p>
																							</label>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>보안 시설</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																					<div class="styled__Content-sc-1uem0r1-1 jrfDal">
<!-- 																						보안시설 공통코드 -->
																						<div id="security">
																							<label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S01">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">경비원</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S02">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">비디오폰</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S03">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">인터폰</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S04">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">카드키</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S05">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">CCTV</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S06">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">사설경비</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S07">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">현관보안</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="securityType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="S08">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">방범창</p>
																							</label>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>기타 시설</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1uem0r1-0 lilFiR s3Pack__group">
																					<div class="styled__Content-sc-1uem0r1-1 becOPN">
																						<div id="etc">
<!-- 																						기타시설공통코드 -->
																							<label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="etcType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="E01">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">화재경보기</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="etcType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="E02">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">베란다</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="etcType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="E03">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">테라스</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="etcType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="E04">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">마당</p>
																							</label><label class="styled__Label-zzioac-0 SlVvm"><input
																								type="checkbox"
																								name="etcType"
																								class="styled__Checkbox-zzioac-1 jhWycL" value="E05">
																								<p class="styled__TextContent-zzioac-2 ieQMOJ">무인택배함</p>
																							</label>
																						</div>
																					</div>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</section>
															<section id="visual_info"
																class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
																<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																	<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">사진 등록</h1>
																	<button type="button"
																		class="styled__TextButton-xsd9tu-0 kTQtaw"
																		style="margin-bottom: -8px;">
																		<div>
																			<svg width="24" height="24" viewBox="0 0 24 24"
																				fill="none" xmlns="http://www.w3.org/2000/svg"
																				style="flex: 0 0 auto;">
	                            <circle cx="12" cy="12" r="9" fill="#F87680"></circle>
	                            <path fill-rule="evenodd"
																					clip-rule="evenodd"
																					d="M11.5081 13.0899C11.5504 13.3231 11.7546 13.5 12 13.5C12.2762 13.5 12.5 13.2761 12.5 13V8.5L12.492 8.41012C12.4496 8.17688 12.2455 8 12 8C11.7239 8 11.5 8.22386 11.5 8.5V13L11.5081 13.0899ZM12 16.2C12.3314 16.2 12.6 15.9314 12.6 15.6C12.6 15.2686 12.3314 15 12 15C11.6687 15 11.4 15.2686 11.4 15.6C11.4 15.9314 11.6687 16.2 12 16.2Z"
																					fill="white"></path>
	                        </svg>
																			<span class="styled__Text-xsd9tu-1 hlcfcT">사진
																				등록 전, 반드시 확인해주세요!</span>
																		</div>
																	</button>
																</header>
																<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																	<colgroup>
																		<col width="150px">
																		<col>
																	</colgroup>
																	<tbody>
																		<tr>
																			<th>
																				<h1>
																					일반 사진<span>*</span>
																				</h1>
																			</th>
																			<td style="padding: 0px;">
																				<div class="styled__BtnWrap-y2osxd-0 eDosqI">
																					<input type="file" name="file" id="file" style="display:none" accept = "image/*" value="" multiple  onchange="fUpload(this)"/>
																					<button type="button"
																						class="styled__LineButton-q6pgzy-0 kYkjCA" onclick="filePreview()">
																						<svg width="24" height="24" viewBox="0 0 24 24"
																							fill="none" xmlns="http://www.w3.org/2000/svg"
																							style="flex: 0 0 auto;">
	                                        <path fill-rule="evenodd"
																								clip-rule="evenodd"
																								d="M12.4919 5.91012C12.4496 5.67688 12.2455 5.5 12 5.5C11.7239 5.5 11.5 5.72386 11.5 6V11.5H6L5.91012 11.5081C5.67688 11.5504 5.5 11.7545 5.5 12C5.5 12.2761 5.72386 12.5 6 12.5H11.5V18L11.5081 18.0899C11.5504 18.3231 11.7545 18.5 12 18.5C12.2761 18.5 12.5 18.2761 12.5 18V12.5H18L18.0899 12.4919C18.3231 12.4496 18.5 12.2455 18.5 12C18.5 11.7239 18.2761 11.5 18 11.5H12.5V6L12.4919 5.91012Z"
																								fill="#222222"></path>
	                                    </svg>
																						<span class="styled__Text-q6pgzy-1 hnPnIj">사진
																							추가</span>
																					</button>
																				</div>
	
																				<div
																					class="styled__SortableContainer-y2osxd-1 eXbRxD"></div>
																				<div id="DndDescribedBy-0" style="display: none;">
																					To pick up a draggable item, press the space bar.
																					While dragging, use the arrow keys to move the item.
																					Press space again to drop the item in its new
																					position, or press escape to cancel.</div>
																				<div id="DndLiveRegion-0" role="status"
																					aria-live="assertive" aria-atomic="true"
																					style="position: fixed; width: 1px; height: 1px; margin: -1px; border: 0px; padding: 0px; overflow: hidden; clip: rect(0px, 0px, 0px, 0px); clip-path: inset(100%); white-space: nowrap;">
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</section>
															<section id="detail_info"
																class="styled__Element-sc-1tbsltx-5 diqGlM scroll-element">
																<header class="styled__Header-sc-1tbsltx-6 NeDlO">
																	<h1 class="styled__Title-sc-1tbsltx-7 hopsCM">상세 설명</h1>
																</header>
																<table class="styled__Table-sc-1tbsltx-8 bFRgqU">
																	<colgroup>
																		<col width="150px">
																		<col>
																	</colgroup>
																	<tbody>
																		<tr>
																			<th>
																				<h1>
																					제목<span>*</span>
																				</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																					<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																						<div>
																							<div class="styled__InputWrap-sc-1kc3qak-0 haRVRm">
																								<input autocomplete="off" type="text" name="roomDetailH"
																									placeholder="리스트에 노출되는 문구입니다. 40자 이내로 작성해 주세요."
																									class="styled__Input-sc-1kc3qak-1 cJIIHX"
																									value="">
																							</div>
																						</div>
																					</div>
																				</div>
																				<p class="styled__PTag-sc-1tbsltx-10 dUCmGE">-
																					한글, 영어, 숫자, 허용된 특수문자(+ - / , . ㎡) 이외에 문자는 입력할 수
																					없습니다. 평형, 평, 기타 특수문자, 매물과 관련 없는 정보는 삭제 처리 됩니다.</p>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				<h1>
																					상세설명<span>*</span>
																				</h1>
																				<h1>(1000자 제한)</h1>
																			</th>
																			<td>
																				<div
																					class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
																					<div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
																						<div>
																							<label
																								class="styled__TextareaLabel-sc-1wjgqsg-1 beLHDj">
																								<div class="styled__Content-sc-1wjgqsg-2 jRKrHf">
																									<textarea autocomplete="off" name="roomDetailS"
																										placeholder="매물 상세 페이지에 노출되는 문구입니다. 1000자 이내로 작성해 주세요."
																										class="styled__TextArea-sc-1wjgqsg-3 dLoJjQ"></textarea>
																									<div class="styled__Border-sc-1wjgqsg-0 hCgNHj"></div>
																								</div>
																							</label>
																						</div>
																					</div>

																				</div>
																				<p class="styled__PTag-sc-1tbsltx-10 dUCmGE">- 매물
																					정보와 관련없는 홍보성 정보는 입력할 수 없습니다.</p>
																				<p class="styled__PTag-sc-1tbsltx-10 dUCmGE">-
																					매물등록규정에 위반되는 금칙어는 입력할 수 없습니다.</p>
																				<p class="styled__PTag-sc-1tbsltx-10 dUCmGE">- 위
																					주의사항 위반시 임의로 매물 삭제 혹은 서비스 이용이 제한될 수 있습니다.</p>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">
																				<div class="col-12">
						                                                            <div class="form-group button mb-0 psm-btn01">
						                                                                <button type="button" class="btn " onclick="updateRoom()">수정 완료</button>
						                                                            </div>
		                                                        				</div>
	                                                        				</td>
																		</tr>
																	</tbody>
																</table>
															</section>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						
						<!-- End Profile Settings Area -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Dashboard Section -->

<script>
	
	$(function() {

		let oldFileList = [];

		$('#retrieveDealing').on('click', function() {
			let url = `\${cPath}/room/roomDealingList`;
			$.ajax({
				url : url,
				type : 'get',
				dataType : 'json',
				success : function(data) {
					console.log(data);
					selectRoom(data);
					
				},
				error : function(error) {
					console.log(error);
				}
			})
		})
		
	})

	function RoomParam() {
				//주소검색시 받아야함
				this.roomVO = new RoomVO();
				//room_dealing테이블
				this.roomDealingVO = new RoomDealingVO();
				//roomLvlh 테이블
				this.roomLvlhList = [];
				this.fileArr =[];	//첨부파일 정보
				this.oldFileList = [] //기존 파일 삭제 기록

				return this;
			}
	
			function RoomLvlhVO() {
				this.fcltySe = null;	//시설구분
				this.fcltyCd = null;	//시설코드
				this.roomNo = null;		//방고유번호
	
				return this;
			}
	
			function RoomVO() {
				//room테이블 정보
				this.roomNo = null			//방번호
				this.bldgAddr =null;			//도로명주소
				this.hCode =null;			//시군구코드
				this.bCode =null;			//법정동코드
				this.dctLadLndcgr =null;	//대지구분코드
				this.bun =null;				//번
				this.ji =null;				//지
				this.region1depthNm =null;	//시도
				this.region2depthNm =null;	//구군
				this.region3depthNm =null;	//동
				this.x =null;				//x좌표
				this.y =null;				//y좌표
				this.floorCnt = null;		//전체층수
				this.rentDong = null;		//해당 동
				this.roomFloor = null;		//해당 층
				this.roomUnit = null;		//해당 호수
				this.roomBtrCnt = null; 	//욕실수
				this.dctLadAr = null;		//토지면적
				this.buldAr = null; 		//건물면적
				this.buldPrpos = null;		//건물용도
				this.buldMprpos = null;	//건물 주용도
				this.rentAr = null; 		//전용면적
				this.roomTy = null;			//방유형
				this.roomParkngYn = null; 	//주차가능여부
				this.roomElvtrYn = null; 	//엘리베이터여부
				this.unityAtchmnflNo = null;//통합첨부파일번호
				this.userNo = null; 		//방등록자번호
	
				return this;
			}
	
			function RoomDealingVO() {
				this.roomDelngNo = null;      
				this.roomSize = null;                 
				this.roomCnt = null;                 
				this.livingType = null;      
				this.delngType = null;       
				this.roomLshl = null;       
				this.roomMhl = null;      
				this.roomDeposit= null;      
				this.roomManagectPc = null;      
				this.roomManagectAt = null;      
				this.roomDetailDcSj= null;      
				this.roomDetailDc = null;      
				this.roomMvnPosbl = null;      
				this.roomDelngDe = null;      
				this.roomDealingStts = null;      
				this.roomOthbcYn = null;
				this.roomAsapYn = null;      
				this.roomNo = null;      
				this.roomPas = null;  
	
				return this;
			}
	
			function TbAttachFileVO() {
				 
				 this.atchmnflSn = null;    //첨부파일 순번    
				 this.filePath = null;      //파일경로
				 this.webPath = null;       //웹경로 
				 this.streFileNm = null;    //저장파일명  
				 this.fileSize = null;      //파일크기    
				 this.fileType = null;      //파일유형 
				 this.regUserId = null;     //등록자ID  
				  
				 
				 return this;
			}
			let roomParam = new RoomParam();


	async function selectRoom(data) {
		const { value: room } = await Swal.fire({
			title: "수정할 매물 선택",
			input: "select",
			inputOptions: data,
			inputPlaceholder: "수정할 매물 선택",
			showCancelButton: true,
			inputValidator: (value) => {
				return new Promise((resolve) => {
					resolve();
				});
			}
		});

		if (room) {
			document.querySelector(".eXbRxD").innerHTML = '';
			selectRoomInfo(room);
			
		}
	}

	function selectRoomInfo(room) {
		$.ajax({
			url : `\${cPath}/room/roomDealingInfo?roomDelngNo=` + room,
			type : 'get',
			dataType : 'json',
			success : function(data) {

				console.log(data.roomDealingVO.roomDelngNo)
				roomParam.roomDealingVO.roomDelngNo = data.roomDealingVO.roomDelngNo;
				roomParam.roomVO.roomNo = data.roomDealingVO.room.roomNo;
				roomParam.roomVO.unityAtchmnflNo = data.roomDealingVO.room.unityAtchmnflNo;
				oldFileList = data.roomDealingVO.room.tbAttachFileList;
				$('input[type="checkbox"], input[type="radio"]').prop('checked', false);
				roomData(data.roomDealingVO);
				roomDealingData(data.roomDealingVO);
			},
			error : function(error) {
				console.log(error)
			}

		})
	}



	function roomData(roomDealingVO) {
		$('input[name=keyword]').val(roomDealingVO.room.bldgAddr);
		$('input[name=dong]').val(roomDealingVO.room.rentDong);
		$('input[name=ho]').val(roomDealingVO.room.roomUnit);
		$('input[name=square]').val(roomDealingVO.room.rentAr);
		$('input[name=square]').trigger('change');
		$('input[name=roomCnt]').val(roomDealingVO.roomCnt);
		$('input[name=floorCnt]').val(roomDealingVO.room.floorCnt);
		$('input[name=roomFloor]').val(roomDealingVO.room.roomFloor);
		$('input[name=roomBtrCnt]').val(roomDealingVO.room.roomBtrCnt);
		if(roomDealingVO.room.roomElvtrYn == 'Y') {
			$('#roomElvtrYn').html(`<p class="styled__TextContent-sc-1y93qlq-2 bHgKAT roomElvtrYn" style="font-size: 20px;margin-top: 16px;">있음</p>`);
		}else {
			$('#roomElvtrYn').html(`<p class="styled__TextContent-sc-1y93qlq-2 bHgKAT roomElvtrYn" style="font-size: 20px;margin-top: 16px;">없음</p>`);
		}
		if(roomDealingVO.room.roomParkngYn == 'Y') {
			$('#roomParkngYn').html('<p class="styled__TextContent-sc-1y93qlq-2 bHgKAT roomParkngYn" style="font-size: 20px;margin-top: 16px;">있음</p>');
		}else{
			$('#roomParkngYn').html('<p class="styled__TextContent-sc-1y93qlq-2 bHgKAT roomParkngYn" style="font-size: 20px;margin-top: 16px;">없음</p>');
		}
		
		$('input[name=roomFloor]').val(roomDealingVO.room.roomFloor);

	}

	function roomDealingData(roomDealingVO) {
		$(`input[type=radio][name=delingType][value=\${roomDealingVO.delngType}]`).prop('checked', true)
		handleRadioClickType(roomDealingVO);
		$(`input[type=radio][name=roomManagectAt][value=\${roomDealingVO.roomManagectAt}]`).prop('checked', true);
		if(roomDealingVO.roomManagectPc) {
			$(`input[name=roomManagectPc]`).val(roomDealingVO.roomManagectPc);
		}
		$(`input[type=radio][name=moveIn][value=\${roomDealingVO.roomAsapYn}]`).prop('checked', true);
		if(roomDealingVO.roomAsapYn = 'N'){
			$(`input[name=moveInDate]`).val(roomDealingVO.roomMvnPosbl);
		}
		$.each(roomDealingVO.room.roomLvlhList, function(i, value) {

			if(value.fcltyCd == 'HEATING'){
				$(`input[name=heatingType][value=\${value.fcltySe}]`).prop('checked', true);
			}else if(value.fcltyCd == 'COOLING') {
				$(`input[name=coolingType][value=\${value.fcltySe}]`).prop('checked', true);
			}else if(value.fcltyCd == 'LIFE') {
				$(`input[name=lifeType][value=\${value.fcltySe}]`).prop('checked', true);
			}else if(value.fcltyCd == 'SECURITY') {
				$(`input[name=securityType][value=\${value.fcltySe}]`).prop('checked', true);
			}else if(value.fcltyCd == 'ETC') {
				$(`input[name=etcType][value=\${value.fcltySe}]`).prop('checked', true);
			}
			
		});

		$('input[name=roomDetailH]').val(roomDealingVO.roomDetailDcSj);
		$('textarea[name=roomDetailS]').val(roomDealingVO.roomDetailDc);
		
		for(let imgFile of roomDealingVO.room.tbAttachFileList) {
			//이미지 만들어주기
			let imgDiv = createImageElement(imgFile);
			document.querySelector(".eXbRxD").appendChild(imgDiv);
		}
		
		
	}

	

	
	
			
			
			/******************** 공통코드 받아오기 ***********************/
			document.addEventListener("DOMContentLoaded",cmmncd());

			//공통코드 전체 리스트 불러오는 function
			function cmmncd(){
				var cdURL = cPath+"/cmmnCode";
			    fetch(cdURL,{
			    	method:'GET',
			    	headers:{
			    		'accept' : 'application/json'
			    	}	
			    }).then(resp=>{
			    	return resp.json();
			    }).then(data=>{
			    	console.log(data);
			    	makeDiv(data);    	
			    })
			 }
			 

			/******************** 방 시설 선택 옵션 공통코드에서 동적으로 가져오기 ***********************/
			
			let heatingTag = document.querySelector('#heating');
			let coolingTag = document.querySelector('#cooling');
			let lifeTag = document.querySelector('#life');
			let securityTag = document.querySelector('#security');
			let etcTag = document.querySelector("#etc");
			
			function makeDiv(cmmnList){
				let heatingStr = "";
				let coolingStr = "";
				let lifeStr = "";
				let securityStr = "";
				let etcStr = "";
	

				for(let option of cmmnList){
					if(option.cmmnParent == "HEATING"){
						heatingStr += `
							<label class="styled__Label-sc-1y93qlq-0 LvuTt"><input
							type="radio" name="heatingType"
							class="styled__Radio-sc-1y93qlq-1 jpAOgG" value="\${option.cmmnCd}">
							<p
								class="styled__TextContent-sc-1y93qlq-2 bHgKAT">\${option.cmmnCdNm}</p>
							</label>
						`;
						
					}else if(option.cmmnParent == "COOLING") {
						coolingStr += `
											<label class="styled__Label-zzioac-0 SlVvm"><input
											type="checkbox"
											name="coolingType"
											class="styled__Checkbox-zzioac-1 jhWycL" value="\${option.cmmnCd}">
											<p class="styled__TextContent-zzioac-2 ieQMOJ">\${option.cmmnCdNm}</p>
											</label>
										`;
					}else if(option.cmmnParent == "LIFE") {
						lifeStr += `
										<label class="styled__Label-zzioac-0 SlVvm"><input
										type="checkbox"
										name="lifeType"
										class="styled__Checkbox-zzioac-1 jhWycL" value="\${option.cmmnCd}">
										<p class="styled__TextContent-zzioac-2 ieQMOJ">\${option.cmmnCdNm}</p>
										</label>
										`;
					}else if(option.cmmnParent == "SECURITY") {
						securityStr += `
										<label class="styled__Label-zzioac-0 SlVvm"><input
										type="checkbox"
										name="securityType"
										class="styled__Checkbox-zzioac-1 jhWycL" value="\${option.cmmnCd}">
										<p class="styled__TextContent-zzioac-2 ieQMOJ">\${option.cmmnCdNm}</p>
										</label>
										`;
					}else if(option.cmmnParent == "ETC") {
						etcStr += `
										<label class="styled__Label-zzioac-0 SlVvm"><input
										type="checkbox"
										name="securityType"
										class="styled__Checkbox-zzioac-1 jhWycL" value="\${option.cmmnCd}">
										<p class="styled__TextContent-zzioac-2 ieQMOJ">\${option.cmmnCdNm}</p>
										</label>
										`;
					}
					
					heatingTag.innerHTML = heatingStr;
					coolingTag.innerHTML = coolingStr;
					lifeTag.innerHTML = lifeStr;
					securityTag.innerHTML = securityStr;
					etcTag.innerHTML = etcStr;
					
				}
			}

			
				
			
			/**************************************/
			//전세, 월세, 매매에 input 나누기
	
			
			// 라디오 버튼 가져오기
			let radios = document.querySelectorAll('input[type=radio][name="delingType"]');
	
			// 전세 월세 매매 입력창 가져오기
			let jeonseInput = document.querySelector('.styled__Container-sc-1pfo4ts-0.ffzJDB.s3Pack__group:nth-of-type(1)');
			let wolseDepositInput = document.querySelector('.styled__Container-sc-1pfo4ts-0.ffzJDB.s3Pack__group:nth-of-type(2)');
			let wolseMonthlyInput = document.querySelector('.styled__Container-sc-1pfo4ts-0.ffzJDB.s3Pack__group:nth-of-type(3)');
			let maemaeInput = document.querySelector('.styled__Container-sc-1pfo4ts-0.ffzJDB.s3Pack__group:nth-of-type(4)');
	
			// input 박스숨기기
			function hideAllInputs() {
				jeonseInput.style.display = 'none';
				wolseDepositInput.style.display = 'none';
				wolseMonthlyInput.style.display = 'none';
				maemaeInput.style.display = 'none';
			}
	
			// input 조건문
			function handleRadioClick(event) {
				hideAllInputs();
				switch(event.target.nextElementSibling.textContent) {
					case '전세':
					jeonseInput.style.display = 'block';
					break;
					case '월세':
					wolseDepositInput.style.display = 'block';
					wolseMonthlyInput.style.display = 'block';
					break;
					case '매매':
					maemaeInput.style.display = 'block';
					break;
				}
			}

			// input 수정 시 값 넣어주기
			function handleRadioClickType(roomDealingVO) {
				hideAllInputs();
				switch(roomDealingVO.delngType) {
					case "CHARTER":
					jeonseInput.style.display = 'block';
					$('input[name=roomLshl]').val(roomDealingVO.roomLshl);
					break;
					case 'MONTHLY':
					wolseDepositInput.style.display = 'block';
					wolseMonthlyInput.style.display = 'block';
					$('input[name=roomDeposit]').val(roomDealingVO.roomDeposit);
					$('input[name=roomMhl]').val(roomDealingVO.roomMhl);
					break;
					case 'SALE':
					maemaeInput.style.display = 'block';
					$('input[name=roomPas]').val(roomDealingVO.roomPas);
					break;
				}
			}
	
			// change이벤트 추가
			radios.forEach(function(radio) {
				radio.addEventListener('change', handleRadioClick);
			});
	
			// 초기 상태 설정
			hideAllInputs(); // 처음 input 숨기기
			radios[0].checked = true; // 기본으로 전세 선택
			jeonseInput.style.display = 'block'; // 전세 보여주기
			/*************************************************************/

			let address = document.getElementById("address");

				
			let dongInput = document.querySelector("input[name=dong]");
			let hoInput = document.querySelector("input[name=ho]");
			let roomModal = document.querySelector("input[name=roomModal]");
			let pyeong = document.querySelector("input[name=pyeong]");
			let square = document.querySelector("input[name=square]");
			let roomCnt = document.querySelector("input[name=roomCnt]");
	
			//평수 계산을 위한 이벤트 강제 생성
			let event = new Event('change', { bubbles: true });
	
	
			//평수계산
			square.addEventListener("change", function() {
				pyeong.value =  this.value * 0.3025;
			});
	
			//제곱미터 계산
			pyeong.addEventListener("change", function() {
				square.value =  this.value * 3.3058;
			});
	
			//방타입 라디오버튼 미리 가져오기
			let roomTypeRadios = document.querySelectorAll(".styled__Label-sc-1y93qlq-0.LvuTt.living input[type=radio]");
	
	
			//input file태그 찾기
			let inputFile = document.all.file;
			function filePreview() {
				inputFile.click();
			}

			function fUpload(target) {
				console.log(target.files);
				let formData = new FormData();
	
				for(let i =0; i < target.files.length; i++) {
					if(target.files[i].type.substr(0,5) == "image") {
						formData.append("hidden", "");
						formData.append("attachFile", target.files[i]);
					}
				}
	
				let url = `${pageContext.request.contextPath}/api/img`
				fetch(url, {
					method : "post",
					headers : {
						"Accept" : "application/json"
					},
					body : formData
				}).then(res => res.json())
				.then(data => {

					let divTag = document.querySelector(".eXbRxD");
	
					
	
					for(let i = 0; i < data.length; i++) {
						attachFileVO = new TbAttachFileVO();
						attachFileVO.atchmnflSn = data[i].atchmnflSn
						attachFileVO.filePath = data[i].filePath
						attachFileVO.webPath = data[i].webPath
						attachFileVO.streFileNm = data[i].streFileNm
						attachFileVO.fileSize = data[i].fileSize
						attachFileVO.fileType = data[i].fileType
						attachFileVO.regUserId = data[i].regUserId
			
						let imgTag =  createImageElement(attachFileVO);
						divTag.appendChild(imgTag);
						roomParam.fileArr.push(attachFileVO);
					}
					
					
				})
			}

			function createImageElement(attachFileVO) {
				// div 요소 생성 및 스타일 설정
				let divTag = document.createElement("div");
				divTag.style.display = "inline-block";
				divTag.style.textAlign = "center";

				// img 요소 생성 및 속성 설정
				let imgTag = document.createElement("img");
				imgTag.src = `\${cPath}\${attachFileVO.webPath}`;
				imgTag.style.width = "150px";
				imgTag.style.height = "100px";
				imgTag.id = "pstCnImg";

				// button 요소 생성 및 속성 설정
				let btnTag = document.createElement("button");
				btnTag.id = "rmbtn";
				btnTag.innerText = "X";

				// button 클릭 이벤트 핸들러 추가
				btnTag.onclick = function() {
					//이미지 배열에서 삭제
					roomParam.fileArr = roomParam.fileArr.filter(file => file.webPath !== attachFileVO.webPath);
					oldFileList = oldFileList.filter(file => file.webPath !== attachFileVO.webPath);
					divTag.remove();
				};

				// div 요소에 img와 button 추가
				divTag.appendChild(imgTag);
				divTag.appendChild(btnTag);

				return divTag;
        	}
	
	
			//관리비여부 감지하기
			let AtLabelN = document.querySelector("label[title=manageN]");
			let AtLabelY = document.querySelector("label[title=manageY]");
			let AtPcInput = document.querySelector("input[name=roomManagectPc]");
			AtLabelY.addEventListener("click", function() {
				AtPcInput.disabled = false;
			});
			AtLabelN.addEventListener("click", function() {
				AtPcInput.disabled = true;
			});
	
			//입주일자 입력하기
			let moveInN = document.querySelector("label[title=moveInN]");
			let moveInY = document.querySelector("label[title=moveInY]");
			let moveInDate = document.querySelector("input[name=moveInDate]");
			moveInY.addEventListener("click", function() {
				moveInDate.disabled = false;
			});
			moveInN.addEventListener("click", function() {
				moveInDate.disabled = true;
			});
			requestSchedule();
			//계약기간설정 
			function requestSchedule() {
				let moveInDateInput = $("#datepicker");

				flatpickr(moveInDateInput, {
					dateFormat: 'Y-m-d',
					minDate: 'today',
					defaultDate: 'today',
					locale: 'ko',
					onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
				});
				
			}
			function handleDateChange(selectedDates, dateStr, instance) {
			}
		
			//매물유형 라디오버튼 가져오기
			function updateRoom() {
				//전세 / 월세 / 매매 라디오버튼 체크된거 가져오기
				let dealingTypeRadio = document.querySelector("input[type=radio][name=delingType]:checked");
				
	
				//전세/월세/매매가격 이랑 코드가져오기
				roomParam.roomDealingVO.delngType = dealingTypeRadio.value;
	
				//가격 input정보 가져오기
				if(roomParam.roomDealingVO.delngType == "CHARTER"){
					roomParam.roomDealingVO.roomLshl = document.querySelector("input[type=text][name=roomLshl]").value;
				}else if(roomParam.roomDealingVO.delngType == "MONTHLY"){
					roomParam.roomDealingVO.roomDeposit = document.querySelector("input[type=text][name=roomDeposit]").value;
					roomParam.roomDealingVO.roomMhl = document.querySelector("input[type=text][name=roomMhl]").value;
				}else if(roomParam.roomDealingVO.delngType == "SALE"){
					roomParam.roomDealingVO.roomPas = document.querySelector("input[type=text][name=roomPas]").value;
				}			
	
				//관리비 여부
				let roomManagectAtRadio = document.querySelector("input[type=radio][name=roomManagectAt]:checked");
				roomParam.roomDealingVO.roomManagectAt = roomManagectAtRadio.value;
	
				//관리비가 있으면
				if(roomManagectAtRadio.value == "Y") roomParam.roomDealingVO.roomManagectPc = document.querySelector("input[type=text][name=roomManagectPc]").value;
				
				//즉시입주여부
				let moveInRadio = document.querySelector("input[type=radio][name=moveIn]:checked");
				roomParam.roomDealingVO.roomAsapYn = moveInRadio.value;
	
				//즉시입주가 아니면?
				if(moveInRadio.value == "N") roomParam.roomDealingVO.roomMvnPosbl = moveInDate.value;
	
				//난방시설
				let heatingVal = document.querySelector("input[type=radio][name=heatingType]:checked");
				
				let roomLvlh = new RoomLvlhVO();
				roomLvlh.fcltyCd = "HEATING";
				roomLvlh.fcltySe = heatingVal.value;
				roomParam.roomLvlhList.push(roomLvlh);
				
				//냉방시설
				let coolingTypes = document.querySelectorAll("input[name=coolingType]:checked");
				if(coolingTypes.length > 0) {
					for(let cooling of coolingTypes) {
						let roomLvlh = new RoomLvlhVO();
						roomLvlh.fcltyCd = "COOLING";
						roomLvlh.fcltySe = cooling.value;
						roomParam.roomLvlhList.push(roomLvlh);
					}
				}
	
				//생활시설
				let lifeTypes = document.querySelectorAll("input[name=lifeType]:checked");
				if(lifeTypes.length > 0) {
					for(let life of lifeTypes) {
						let roomLvlh = new RoomLvlhVO();
						roomLvlh.fcltyCd = "LIFE";
						roomLvlh.fcltySe = life.value;
						roomParam.roomLvlhList.push(roomLvlh);
					}
				}
	
				//보안시설
				let securityTypes = document.querySelectorAll("input[name=securityType]:checked");
				if(securityTypes.length > 0) {
					for(let security of securityTypes) {
						let roomLvlh = new RoomLvlhVO();
						roomLvlh.fcltyCd = "SECURITY";
						roomLvlh.fcltySe = security.value;
						roomParam.roomLvlhList.push(roomLvlh);
					}
				}
	
				//기타시설
				let etcTypes = document.querySelectorAll("input[name=etcType]:checked");
				if(etcTypes.length > 0) {
					for(let etc of etcTypes) {
						let roomLvlh = new RoomLvlhVO();
						roomLvlh.fcltyCd = "ETC";
						roomLvlh.fcltySe = etc.value;
						roomParam.roomLvlhList.push(roomLvlh);
					}
				}
	
	
				//상세설명제목
				let roomDetailH = document.querySelector("input[name=roomDetailH]").value;
				roomParam.roomDealingVO.roomDetailDcSj = roomDetailH;
	
				//상세설명내용
				let roomDetailS = document.querySelector("textarea[name=roomDetailS]").value;
				roomParam.roomDealingVO.roomDetailDc = roomDetailS;
	
				//방등록자 
				roomParam.roomVO.userNo = `${principal.userNo}`;
	
				//첨부파일 등록자
				for(let file of roomParam.fileArr) {
					file.regUserId = `${principal.userNo}`;
				}
				
				roomParam.oldFileList = oldFileList;

				console.log("room : " , roomParam);

				if((!roomParam.fileArr || roomParam.fileArr.length === 0) && 
					(!roomParam.oldFileList || roomParam.oldFileList.length === 0)) {
					Swal.fire({
						title : "수정 실패!",
						text : "이미지를 등록해 주세요!",
						icon : "error"
					}).then(result => {
						console.log(result);
						if(result.isConfirmed) {
							$('#visual_info').focus();
						}
					})
					return;
				}
	
				let url = cPath + "/room/update"
				fetch(url, {
					method : "post",
					headers : {
						'Content-Type' : 'application/json',
						'accept' : 'application/json'
					},
					body : JSON.stringify(roomParam)
	
				}).then(res => {
					return res.json()}
				).then(result => {
					if(result.success) {
						Swal.fire({
				            title: "등록완료",
				            text: "매물수정이 완료되었습니다.",
				            icon: "success"
						}).then(resp => {
							if(resp) {
								Swal.fire({
									title: '추가수정',
							        text: "매물수정을 이어 하시겠습니까?",
							        icon: 'info',
							        showCancelButton: true,
							        confirmButtonText: 'Yes',
							        cancelButtonText: 'No'
								}).then((result) => {
								        if (result.isConfirmed) {
											location.href = window.location.href;
								        } else if (result.dismiss === Swal.DismissReason.cancel) {
								        	location.href = `\${cPath}/`;
								        }
									});
								};
							});
						}else {
							Swal.fire({
								title: "수정실패",
								text: "매물수정이 실패했습니다.",
								icon: "error"
							})
					
						}
				}).catch(() => {
						Swal.fire({
								title: "수정실패",
								text: "매물수정이 실패했습니다.",
								icon: "error"
							})
					})
				
			}
</script>
		


