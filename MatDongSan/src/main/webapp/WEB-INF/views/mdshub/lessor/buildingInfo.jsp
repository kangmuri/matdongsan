<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/buildingInfo.css"
	rel="stylesheet">

<div data-v-3a1dceac="" class="cont-3q9 att-r77">
	<div data-v-3a1dceac="" class="tit-8rd">
		<h2 data-v-3a1dceac="" class="amisj">
			건물정보 <a data-v-3a1dceac="" data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"
				class="btn-t37 kefcc btn-sqe" onclick="fMBOpen()"> 건물등록 </a>
		</h2>


<!-- *********************************************** 건물 정보 등록 모달창 시작 *********************************************** -->
		<div class="offcanvas offcanvas-end w-65" tabindex="-1"
			id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
			<div class="offcanvas-header">
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<div id="buildingRegister" style="display: none;">
					<div data-v-596363a9="" class="content-57g">
						<div data-v-596363a9="" class="layer-o82">
							<h2 data-v-596363a9="">건물 등록</h2>
							<a data-v-596363a9=""
								href="https://linkhoushelp.zendesk.com/hc/ko/articles/360049564814-2-1-1"
								class="btn-gea ipmqd">건물등록 가이드</a>
						</div>
						<div data-v-596363a9="" class="layer-e6w">
							<form id="buildingForm" method="post">
								<table data-v-596363a9="" class="list-w67 no-mwf">
									<colgroup data-v-596363a9="">
										<col data-v-596363a9="" width="160">
										<col data-v-596363a9="" width="*">
									</colgroup>
									<tbody data-v-596363a9="">
										<tr data-v-596363a9="">
											<th data-v-596363a9="">건물명</th>
											<td data-v-596363a9=""><input data-v-596363a9=""
												type="text" name="bldgNm"
												placeholder="등기 건물명이 없을 경우 별칭을 입력하세요"
												class="input-g3g wkoft w29-bcx" required></td>
										</tr>
										<tr data-v-596363a9="">
											<th data-v-596363a9="">총 층수</th>
											<td data-v-596363a9="">
												<div data-v-596363a9="" class="input-ngo">
													<input data-v-596363a9="" type="text" name="bldgAllCnt"
														placeholder="총 층수 정보를 입력해주세요.(숫자)"
														class="input-njs w28-rif" ß> <span
														data-v-596363a9="" class="unit-ffo">층</span>
												</div>
											</td>
										</tr>
										<tr data-v-596363a9="">
											<th data-v-596363a9="">동 정보 (선택)</th>
											<td data-v-596363a9="">
												<div data-v-596363a9="" class="input-ngo">
													<input data-v-596363a9="" type="number" name="bldgDong"
														placeholder="동 정보를 입력해주세요." class="input-njs w28-rif">
													<span data-v-596363a9="" class="unit-ffo">동</span>
												</div>
											</td>
										</tr>
										<tr data-v-596363a9="">
											<th data-v-596363a9="">건물주소</th>
											<td data-v-596363a9="">
												<div data-v-596363a9="" class="input-fpd">
													<input data-v-596363a9="" type="text" name="bldgAddr"
														id="sample3_address" placeholder="주소찾기를 통해 건물 주소를 입력해 주세요"
														class="input-g3g wkoft w47-zgn mb1-w3e w29-bcx" required>
													<a data-v-596363a9="" class="btn-gea giebh"
														onclick="sample3_execDaumPostcode()"> 주소찾기 </a>
												</div>
												<div id="wrap"
													style="display: none; border: 1px solid; width: 500px; height: 400px; margin: 5px 0; position: relative">
												</div>
											</td>
										</tr>

										<tr data-v-596363a9="">
											<th data-v-596363a9="" class="ogwto">가구수 총합</th>
											<td data-v-596363a9=""><input data-v-596363a9=""
												type="number" name="bldgHomeCnt"
												placeholder="건물에 관리 중인 가구수를 입력하세요.(숫자만)"
												class="input-g3g wkoft w29-bcx" required>
												<p data-v-596363a9="" class="info-21k wiivs">이 건물에서 관리
													중인 가구수의 합계를 입력하세요. (공실률 산정 시 필수)</p></td>
										</tr>
<!-- 										<tr data-v-596363a9=""> -->
<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
<!-- 												data-v-596363a9="">수납계좌 연동</span></th> -->
<!-- 											<td data-v-596363a9=""> -->
<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-Xtyn9" -->
<!-- 														id="style-Xtyn9"> -->
<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
<!-- 															data-v-596363a9="">연동안함</a></li> -->
<!-- 													</ul> -->
<!-- 													<a data-v-596363a9="" -->
<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360050344613-2-4-2" -->
<!-- 														class="btn-gea ipmqd">자세히 보기</a> -->
<!-- 												</div> -->
<!-- 												<p data-v-596363a9="" class="info-tm9">등록된 수납계좌가 없습니다.</p> -->
<!-- 											</td> -->
<!-- 										</tr> -->

<!-- 										<tr data-v-596363a9=""> -->
<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
<!-- 												data-v-596363a9="">증빙 사업자 연동</span></th> -->
<!-- 											<td data-v-596363a9=""> -->
<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-ybK3o" -->
<!-- 														id="style-ybK3o"> -->
<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
<!-- 															data-v-596363a9="">연동안함</a></li> -->
<!-- 													</ul> -->
<!-- 													<a data-v-596363a9="" -->
<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360049566014-2-5-2" -->
<!-- 														class="btn-gea ipmqd">자세히 보기</a> -->
<!-- 												</div> -->
<!-- 											</td> -->
<!-- 										</tr> -->

<!-- 										<tr data-v-596363a9=""> -->
<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
<!-- 												data-v-596363a9="">가상계좌 연동</span></th> -->
<!-- 											<td data-v-596363a9=""> -->
<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-EU7Hh" -->
<!-- 														id="style-EU7Hh"> -->
<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
<!-- 															data-v-596363a9="">연동안함</a></li> -->
<!-- 													</ul> -->
<!-- 													<a data-v-596363a9="" -->
<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360050345633-2-4-6" -->
<!-- 														class="btn-gea ipmqd"> 자세히 보기 </a> -->
<!-- 												</div> -->
<!-- 												<p data-v-596363a9="" class="info-tm9">등록된 출금계좌 정보가 -->
<!-- 													없습니다.</p> -->
<!-- 											</td> -->
<!-- 										</tr> -->

										<tr data-v-596363a9="">
											<th data-v-596363a9="" class="ogwto">건물구분(택1)</th>
											<td data-v-596363a9="">
												<ul data-v-596363a9="" class="list-wbh">
													<li data-v-596363a9="" class="gksrs" data-bldgSe="VILLA"><a
														data-v-596363a9="">주택</a></li>
													<li data-v-596363a9="" class="gksrs" data-bldgSe="HOUSE"><a
														data-v-596363a9="">다가구 주택</a></li>
													<li data-v-596363a9="" class="gksrs" data-bldgSe="MULTIHOUSE"><a
														data-v-596363a9="">다세대 주택</a></li>
													<li data-v-596363a9="" class="gksrs" data-bldgSe="OFFIECTEL"><a
														data-v-596363a9="">오피스텔</a></li>
													<li data-v-596363a9="" class="gksrs" data-bldgSe="APERTMENT"><a
														data-v-596363a9="">아파트</a></li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<div data-v-596363a9="" class="loading-7s9 style-LVpc9"
									id="style-LVpc9">
									<div data-v-596363a9="" class="loading-pzt"></div>
								</div>
								<div data-v-596363a9="" class="btn-l8n kjvfh mt2-e5v">
									<a data-v-596363a9="" class="btn-gea giebh">취소</a>
									<button type="submit" data-v-596363a9="" class="btn-gea xjlpx">등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- --------end------------ -->
			</div>
		</div>
	</div>
<!-- *********************************************** 건물 정보 등록 모달창 끝 *********************************************** -->


<!-- *********************************************** 건물정보 리스트가 있을때 *********************************************** -->
	<c:if test="${not empty buildingList }">
		<c:set var="build" value="${buildingList}" scope="request"></c:set>

		<div id="reg-ztv" class="find-4hf" data-v-3a1dceac="">
			<div class="list-adk" data-v-3a1dceac="">
				<div class="reg-build-7nx" data-v-3a1dceac="">
					<ul data-v-3a1dceac="">
						<li data-v-3a1dceac="">건물수 <span data-v-3a1dceac="">2채</span></li>
						<li data-v-3a1dceac="">임대중 <span data-v-3a1dceac="">0건</span></li>
						<li data-v-3a1dceac="">총 <span data-v-3a1dceac="">2건</span></li>
					</ul>
				</div>
				<div data-v-3a1dceac="" class="filter-7ww">
					<div data-v-3a1dceac="" class="select-lay">
						<div data-v-3a1dceac="" class="select-o7s">
							<select data-v-3a1dceac="" class="select-x5w select-ltq">
								<option data-v-3a1dceac="" value="">시/도</option>
								<option data-v-3a1dceac="" value="대전">대전</option>
								<option data-v-3a1dceac="" value="경북">경북</option>
							</select>
						</div>
						<div data-v-3a1dceac="" class="select-o7s">
							<select data-v-3a1dceac="" class="select-x5w select-ltq">
								<option data-v-3a1dceac="" value="">전체</option>
							</select>
						</div>
					</div>
					<div data-v-3a1dceac="" class="list-6dn"></div>
				</div>
				<ul data-v-3a1dceac="" id="style-4qNL1" class="style-4qNL1">
					<div data-v-3a1dceac="" class="info-emj hid-9px">
						<p data-v-3a1dceac="">
							등록된 건물 정보가 없습니다.<br data-v-3a1dceac="">'<b
								data-v-3a1dceac="">건물정보 등록</b>'으로 '<b data-v-3a1dceac="">홈버튼</b>'을
							시작해보세요.
						</p>
						<span data-v-3a1dceac="" class="row-a13"><i
							data-v-3a1dceac="" class="edge-zw7"></i> <i data-v-3a1dceac=""
							class="cor-n5o"><i data-v-3a1dceac=""></i></i> <i
							data-v-3a1dceac="" class="edge-23n"></i></span>
					</div>
				</ul>
				
				
				
<!-- *********************************************** 건물 정보 전체 리스트 시작 *********************************************** -->
				<ul class="find-l6z" data-v-3a1dceac="">
					<c:forEach items="${build }" var="building" varStatus="vs">
						<li id="bldgNo" data-v-343d00ce="" data-v-3a1dceac=""
							class="gksrs ${vs.first ? 'on' : '' } " >
							<a data-v-343d00ce="" id="style-mcqNM" class="style-mcqNM"><span
								data-v-343d00ce="" class="tag-oym xwwti">${building.subsNm }</span>
								<div data-v-343d00ce="" class="bui-id2">
									<div data-v-343d00ce="" class="bui-161" data-bldg-no="${building.rentBldgNo }">${building.bldgNm }
									</div>
									<div data-v-343d00ce="" class="bui-ag3">${building.bldgAddr }</div>
									<div data-v-343d00ce="" class="bui-ag3">임대중 0 건 / 총 1 건</div>
								</div> </a> <span data-v-343d00ce="" class="fa-e9w"></span>
						</li>
					</c:forEach>
				</ul>
			</div>
<!-- *********************************************** 건물 정보 전체 리스트 끝*********************************************** -->			
			
			
			
			
			
			
			
			<ul data-v-3a1dceac="" class="panel-bxj ySc-1fn">
				<li data-v-3a1dceac="">
					<div data-v-3a1dceac="" class="find-e9w">
						<div data-v-3a1dceac="" class="info-hqe">
							<h3 id="addr1" data-v-3a1dceac="">
								1 (1동) <span data-v-3a1dceac="">(다가구주택)</span>
							</h3>
							<p data-v-3a1dceac="" class="info-aos">대전 중구 어덕마을로 1-6</p>
						</div>
						
						<ul data-v-3a1dceac="" class="user-624 nav nav-tabs" id="myTab"
							role="tablist">
							<li data-v-3a1dceac="" class="jhehj nav-item" role="presentation"><a
								data-v-3a1dceac="" class="nav-link active" id="home-tab"
								data-bs-toggle="tab" data-bs-target="#home" type="button"
								role="tab" aria-controls="home" aria-selected="true">호실 목록</a></li>
							<li data-v-3a1dceac="" class="nav-item" role="presentation"><a
								data-v-3a1dceac="" class="nav-link" id="profile-tab"
								data-bs-toggle="tab" data-bs-target="#profile" type="button"
								role="tab" aria-controls="profile" aria-selected="false">임대계약
									목록</a></li>
							<li data-v-3a1dceac="" class="nav-item" role="presentation"><a
								data-v-3a1dceac="" class="nav-link" id="contact-tab"
								data-bs-toggle="tab" data-bs-target="#contact" role="tab"
								aria-controls="contact" aria-selected="false">변동관리비 일괄청구</a></li>
							<li data-v-3a1dceac="" class="nav-item" role="presentation"><a
								data-v-3a1dceac="" class="nav-link" id="contactt-tab"
								data-bs-toggle="tab" data-bs-target="#contactt" role="tab"
								aria-controls="contact" aria-selected="false">건물 수납관리</a></li>
							<li data-v-3a1dceac="" class="nav-item" role="presentation"><a
								data-v-3a1dceac="" class="nav-link" id="contacttt-tab"
								data-bs-toggle="tab" data-bs-target="#contacttt" role="tab"
								aria-controls="contact" aria-selected="false">건물정보 상세</a></li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<!-- 					  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> -->
							<!-- 					  </div> -->
							<div class="tab-pane fade" id="profile" role="tabpanel"
								aria-labelledby="profile-tab">
								<jsp:include page="/resources/mdshub/contractList.jsp"></jsp:include>
							</div>
							<div class="tab-pane fade" id="contact" role="tabpanel"
								aria-labelledby="contact-tab">
								<jsp:include page="/resources/mdshub/manageCost.jsp"></jsp:include>
							</div>
							<div class="tab-pane fade" id="contactt" role="tabpanel"
								aria-labelledby="contact-tab">
								<jsp:include page="/resources/mdshub/recptManage.jsp"></jsp:include>
							</div>
							<div class="tab-pane fade" id="contacttt" role="tabpanel"
								aria-labelledby="contact-tab">
								<jsp:include page="/resources/mdshub/buildingDetail.jsp"></jsp:include>
							</div>
						</div>

						<ul data-v-3a1dceac="">
							<div data-v-3a1dceac="" class="content-n7d">
								<div data-v-9631a1ac="" class="upper-qhr">
									<div data-v-9631a1ac="" class="lef-w9f">
										<div data-v-9631a1ac="" class="icon-9ny fle-gvv">
											<svg data-v-9631a1ac="" aria-hidden="true" focusable="false"
												data-prefix="fas" data-icon="square" role="img"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
												class="icon-size left svg-inline--fa fa-square filled-icon">
					                                        <path data-v-9631a1ac=""
													fill="currentColor"
													d="M0 96C0 60.7 28.7 32 64 32H384c35.3 0 64 28.7 64 64V416c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V96z"></path>
					                                    </svg>
											<svg data-v-9631a1ac="" aria-hidden="true" focusable="false"
												data-prefix="fas" data-icon="table-cells" role="img"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
												class="icon-size svg-inline--fa fa-table-cells wired-icon">
					                                        <path data-v-9631a1ac=""
													fill="currentColor"
													d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zm88 64v64H64V96h88zm56 0h88v64H208V96zm240 0v64H360V96h88zM64 224h88v64H64V224zm232 0v64H208V224h88zm64 0h88v64H360V224zM152 352v64H64V352h88zm56 0h88v64H208V352zm240 0v64H360V352h88z"></path>
					                                    </svg>
										</div>
										<div data-v-9631a1ac="" class="fle-gvv">
											<div data-v-9631a1ac="" class="select-og1">
												<select data-v-9631a1ac="" class="select-x5w select-ltq">
													<option data-v-9631a1ac="" value="USE">관리중 호실 보기</option>
													<option data-v-9631a1ac="" value="ALL">전체 호실 보기</option>
													<option data-v-9631a1ac="" value="ING">계약중 호실 보기</option>
													<option data-v-9631a1ac="" value="END">종료 호실 보기</option>
													<option data-v-9631a1ac="" value="EMPTY">공실 보기</option>
													<option data-v-9631a1ac="" value="OVERDUE">미납 호실
														보기</option>
													<option data-v-9631a1ac="" value="EXTEND">연장필요 호실
														보기</option>
													<option data-v-9631a1ac="" value="STL_NON">정산미입력</option>
													<option data-v-9631a1ac="" value="STL_A01">
														정산정보(확)</option>
													<option data-v-9631a1ac="" value="STL_A02">
														정산정보(운)</option>
													<option data-v-9631a1ac="" value="STL_A03">
														정산정보(확/운)</option>
													<option data-v-9631a1ac="" value="STL_B00">정산조건</option>
													<option data-v-9631a1ac="" value="STL_C00">정산미연동</option>
													<option data-v-9631a1ac="" value="STL_D00">정산연동</option>
												</select>
											</div>
											<div data-v-9631a1ac="">
												<div data-v-9631a1ac="" class="vdp-8em ui-pei">
													<div>
														<input type="text" placeholder="입실 체크"
															class="input-ol2 easgl ent-ibe">
													</div>
													<div class="vdp-1o6 style-RoxyJ" id="style-RoxyJ">
														<header>
															<span class="pre-pgo dis-x7o">&lt;</span> <span
																class="taggy">2024년 5월</span> <span class="nex-o5c">&gt;</span>
														</header>
														<div>
															<span class="cel-xmi header-824">일</span><span
																class="cel-xmi header-824">월</span><span
																class="cel-xmi header-824">화</span><span
																class="cel-xmi header-824">수</span><span
																class="cel-xmi header-824">목</span><span
																class="cel-xmi header-824">금</span><span
																class="cel-xmi header-824">토</span> <span
																class="cel-xmi wkfpf bla-d8k"></span><span
																class="cel-xmi wkfpf bla-d8k"></span><span
																class="cel-xmi wkfpf bla-d8k"></span><span
																class="cel-xmi wkfpf dis-x7o">1</span><span
																class="cel-xmi wkfpf dis-x7o">2</span><span
																class="cel-xmi wkfpf dis-x7o">3</span><span
																class="cel-xmi wkfpf dis-x7o">4</span><span
																class="cel-xmi wkfpf dis-x7o">5</span><span
																class="cel-xmi wkfpf dis-x7o">6</span><span
																class="cel-xmi wkfpf dis-x7o">7</span><span
																class="cel-xmi wkfpf dis-x7o">8</span><span
																class="cel-xmi wkfpf dis-x7o">9</span><span
																class="cel-xmi wkfpf dis-x7o">10</span><span
																class="cel-xmi wkfpf dis-x7o">11</span><span
																class="cel-xmi wkfpf dis-x7o">12</span><span
																class="cel-xmi wkfpf dis-x7o">13</span><span
																class="cel-xmi wkfpf dis-x7o">14</span><span
																class="cel-xmi wkfpf dis-x7o">15</span><span
																class="cel-xmi wkfpf dis-x7o">16</span><span
																class="cel-xmi wkfpf">17</span><span
																class="cel-xmi wkfpf">18</span><span
																class="cel-xmi wkfpf">19</span><span
																class="cel-xmi wkfpf">20</span><span
																class="cel-xmi wkfpf">21</span><span
																class="cel-xmi wkfpf">22</span><span
																class="cel-xmi wkfpf">23</span><span
																class="cel-xmi wkfpf">24</span><span
																class="cel-xmi wkfpf">25</span><span
																class="cel-xmi wkfpf">26</span><span
																class="cel-xmi wkfpf">27</span><span
																class="cel-xmi wkfpf">28</span><span
																class="cel-xmi wkfpf">29</span><span
																class="cel-xmi wkfpf">30</span><span
																class="cel-xmi wkfpf">31</span>
														</div>
													</div>
													<div class="vdp-1o6 style-H8men" id="style-H8men">
														<header>
															<span class="pre-pgo dis-x7o">&lt;</span> <span
																class="taggy">2024년</span> <span class="nex-o5c">&gt;</span>
														</header>
														<span class="cel-xmi mon-8zk dis-x7o">1월</span><span
															class="cel-xmi mon-8zk dis-x7o">2월</span><span
															class="cel-xmi mon-8zk dis-x7o">3월</span><span
															class="cel-xmi mon-8zk dis-x7o">4월</span><span
															class="cel-xmi mon-8zk">5월</span><span
															class="cel-xmi mon-8zk">6월</span><span
															class="cel-xmi mon-8zk">7월</span><span
															class="cel-xmi mon-8zk">8월</span><span
															class="cel-xmi mon-8zk">9월</span><span
															class="cel-xmi mon-8zk">10월</span><span
															class="cel-xmi mon-8zk">11월</span><span
															class="cel-xmi mon-8zk">12월</span>
													</div>
													<div class="vdp-1o6 style-v7vZa" id="style-v7vZa">
														<header>
															<span class="pre-pgo dis-x7o">&lt;</span> <span>2020
																- 2029년</span> <span class="nex-o5c">&gt;</span>
														</header>
														<span class="cel-xmi yea-oqa dis-x7o">2020</span><span
															class="cel-xmi yea-oqa dis-x7o">2021</span><span
															class="cel-xmi yea-oqa dis-x7o">2022</span><span
															class="cel-xmi yea-oqa dis-x7o">2023</span><span
															class="cel-xmi yea-oqa">2024</span><span
															class="cel-xmi yea-oqa">2025</span><span
															class="cel-xmi yea-oqa">2026</span><span
															class="cel-xmi yea-oqa">2027</span><span
															class="cel-xmi yea-oqa">2028</span><span
															class="cel-xmi yea-oqa">2029</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div data-v-9631a1ac="" class="rig-k1e">
										<div data-v-9631a1ac="" id="roomRegButton"
											class="upp-jh2 typ-i2q" data-bs-toggle="offcanvas"
											data-bs-target="#offcanvasRight2"
											aria-controls="offcanvasRight2" onclick="fMROpen()">호실정보
											등록</div>
											
											
<!-- *********************************************** 방 정보 등록 모달창 시작 *********************************************** -->
										<div class="offcanvas offcanvas-end w-65" tabindex="-1"
											id="offcanvasRight2" aria-labelledby="offcanvasRightLabel2">
											<div class="offcanvas-header">
												<button type="button" class="btn-close"
													data-bs-dismiss="offcanvas" aria-label="Close"></button>
											</div>
											<div class="offcanvas-body2">
												<div id="roomRegister" style="display: none;">
													<div data-v-ba243cb2="" class="content-9sq">
														<div data-v-ba243cb2="" class="layer-4nc top-b8v">
															<h2 data-v-ba243cb2="">호실정보 등록</h2>
															<a data-v-ba243cb2=""
																href="https://linkhoushelp.zendesk.com/hc/ko/articles/5735728557207"
																class="btn-f1d oomee">호실정보 등록 가이드</a>
														</div>
														<div data-v-ba243cb2="" class="input-x5v">
															<div data-v-ba243cb2="">
																<div data-v-ba243cb2="" class="title-7t8">
																	<div data-v-ba243cb2="" class="title-roe">
																		<div data-v-ba243cb2="">호실 정보 (필수)</div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">해당층/총층</div>
																	<div data-v-ba243cb2="" class="input-zg7">
																		<div data-v-ba243cb2="" class="input-qeq">
																			<input data-v-ba243cb2="" type="text"
																				placeholder="해당층" class="input-wek hal-9x5">
																			<span data-v-ba243cb2="" class="uni-xle">층</span>
																		</div>
																		<div data-v-ba243cb2="" class="input-qeq">
																			<input data-v-ba243cb2="" type="text"
																				value="${buildingOne.bldgAllCnt }" disabled class="input-wek hal-9x5 pr3-ma5">
																			<span data-v-ba243cb2="" class="uni-xle tra-hsv">${buildingOne.bldgAllCnt }층</span>
																		</div>
																	</div>
																	<div data-v-ba243cb2="" class="ml1-il1">
																		<ul data-v-ba243cb2="" class="list-q5g">
																			<li data-v-ba243cb2=""><input data-v-ba243cb2=""
																				type="checkbox" id="udg-sn1"> <label
																				data-v-ba243cb2="" for="udg-chk">지하층</label></li>
																		</ul>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">호실번호</div>
																	<div data-v-ba243cb2="" class="input-mox">
																		<div data-v-ba243cb2="" class="input-qeq">
																			<input data-v-ba243cb2="" type="text"
																				placeholder="호실 입력" class="input-dbc"> <span
																				data-v-ba243cb2="" class="uni-xle">호</span>
																		</div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="title-7t8">
																	<div data-v-ba243cb2="" class="title-roe">
																		<div data-v-ba243cb2="">부가정보 (선택)</div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">
																		대지/건축/전용면적 (㎡)</div>
																	<div data-v-ba243cb2="" class="rel-2ox fle-73t fle-peg">
																		<div data-v-ba243cb2="" class="input-zg7">
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text"
																					name="dctladars" placeholder="대지면적"
																					class="input-wek one-idr"> <span
																					data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
																					data-v-ba243cb2="">2</sup></span>
																			</div>
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text"
																					name="buildars" placeholder="건축면적"
																					class="input-wek one-idr"> <span
																					data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
																					data-v-ba243cb2="">2</sup></span>
																			</div>
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text" name="rentars"
																					placeholder="전용면적" class="input-wek one-idr">
																				<span data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
																					data-v-ba243cb2="">2</sup></span>
																			</div>
																		</div>
																		<div data-v-ba243cb2="" class="ml1-il1"></div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">
																		대지/건축/전용면적 (평)</div>
																	<div data-v-ba243cb2="" class="rel-2ox fle-73t fle-peg">
																		<div data-v-ba243cb2="" class="input-zg7">
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text"
																					name="dctladarp" placeholder="대지면적"
																					class="input-wek one-idr"> <span
																					data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
																			</div>
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text"
																					name="buildarp" placeholder="건축면적"
																					class="input-wek one-idr"> <span
																					data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
																			</div>
																			<div data-v-ba243cb2="" class="input-qeq">
																				<input data-v-ba243cb2="" type="text" name="rentarp"
																					placeholder="전용면적" class="input-wek one-idr">
																				<span data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
																			</div>
																		</div>
																		<div data-v-ba243cb2="" class="ml1-il1"></div>
																	</div>
																</div>
<!-- 																<div data-v-ba243cb2="" class="select-5o8"> -->
<!-- 																	<div data-v-ba243cb2="" class="title-91g">보증금</div> -->
<!-- 																	<div data-v-ba243cb2="" class="input-mox"> -->
<!-- 																		<div data-v-ba243cb2="" class="input-qeq"> -->
<!-- 																			<input data-v-ba243cb2="" type="text" -->
<!-- 																				placeholder="보증금을 입력해주세요." -->
<!-- 																				class="input-dbc lef-ll7 text-kvt"> <span -->
<!-- 																				data-v-ba243cb2="" class="uni-xle">원</span> -->
<!-- 																		</div> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div data-v-ba243cb2="" class="select-5o8"> -->
<!-- 																	<div data-v-ba243cb2="" class="title-91g">임대료</div> -->
<!-- 																	<div data-v-ba243cb2="" class="input-mox"> -->
<!-- 																		<div data-v-ba243cb2="" class="input-qeq"> -->
<!-- 																			<input data-v-ba243cb2="" id="number" type="text" -->
<!-- 																				name = placeholder="임대료를 입력해주세요." -->
<!-- 																				class="input-dbc lef-ll7 text-kvt"> <span -->
<!-- 																				data-v-ba243cb2="" class="uni-xle">원</span> -->
<!-- 																		</div> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div data-v-ba243cb2="" class="select-5o8"> -->
<!-- 																	<div data-v-ba243cb2="" class="title-91g">관리비</div> -->
<!-- 																	<div data-v-ba243cb2="" class="input-mox"> -->
<!-- 																		<div data-v-ba243cb2="" class="input-qeq"> -->
<!-- 																			<input data-v-ba243cb2="" type="text" -->
<!-- 																				placeholder="관리비를 입력해주세요." -->
<!-- 																				class="input-dbc lef-ll7 text-kvt"> <span -->
<!-- 																				data-v-ba243cb2="" class="uni-xle">원</span> -->
<!-- 																		</div> -->
<!-- 																	</div> -->
<!-- 																</div> -->
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">방개수/욕실개수</div>
																	<div data-v-ba243cb2="" class="input-zg7">
																		<div data-v-ba243cb2="" class="input-qeq">
																			<input data-v-ba243cb2="" type="text"
																				placeholder="방개수" class="input-wek hal-9x5">
																			<span data-v-ba243cb2="" class="uni-xle">개</span>
																		</div>
																		<div data-v-ba243cb2="" class="input-qeq">
																			<input data-v-ba243cb2="" type="text"
																				placeholder="욕실개수" class="input-wek hal-9x5">
																			<span data-v-ba243cb2="" class="uni-xle">개</span>
																		</div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">주차 가능
																		여부</div>
																	<div data-v-ba243cb2="" class="input-mox">
																		<ul data-v-ba243cb2="" class="toggle-tj3">
																			<li data-v-ba243cb2="" class="on"><a
																				data-v-ba243cb2="">불가능</a></li>
																			<li data-v-ba243cb2=""><a data-v-ba243cb2="">가능</a></li>
																		</ul>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">거실유형</div>
																	<div data-v-ba243cb2="" class="input-mox">
																		<ul data-v-ba243cb2="" class="toggle-tj3">
																			<li data-v-ba243cb2="" class="on"><a
																				data-v-ba243cb2="">오픈형</a></li>
																			<li data-v-ba243cb2=""><a data-v-ba243cb2="">분리형</a></li>
																		</ul>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="title-7t8">
																	<div data-v-ba243cb2="" class="title-roe">
																		<div data-v-ba243cb2="">내부 시설물 (선택)</div>
																	</div>
																</div>


																<div data-v-ba243cb2="" class="select-5o8">
																	<div data-v-ba243cb2="" class="title-91g">난방시설</div>
																	<div data-v-ba243cb2="" class="input-mox">
																		<ul data-v-ba243cb2="" class="toggle-tj3">
																			<li data-v-ba243cb2="" class="on"><a
																				data-v-ba243cb2="">개별난방</a></li>
																			<li data-v-ba243cb2=""><a data-v-ba243cb2="">중앙난방</a></li>
																			<li data-v-ba243cb2=""><a data-v-ba243cb2="">지역난방</a></li>
																		</ul>
																	</div>
																</div>

																<div data-v-ba243cb2="" class="option-2j2">
																	<!--  javascript 동적 옵션   -->
																</div>


																<div data-v-ba243cb2="" class="option-2j2">
																	<div data-v-ba243cb2="" class="option-d3r">
																		<div data-v-ba243cb2="" class="option-8tq">- 시설물
																			상세정보</div>
																	</div>
																	<div data-v-ba243cb2=""
																		class="list-pkw depos-dfy style-vslht"
																		id="style-vslht">
																		<table data-v-ba243cb2="" class="list-qpg">
																			<colgroup data-v-ba243cb2="">
																				<col data-v-ba243cb2="" width="100">
																				<col data-v-ba243cb2="" width="150">
																				<col data-v-ba243cb2="" width="100">
																				<col data-v-ba243cb2="" width="100">
																			</colgroup>
																			<thead data-v-ba243cb2="">
																				<tr data-v-ba243cb2="">
																					<th data-v-ba243cb2="">
																						<p data-v-ba243cb2="" class="row-hgs">구분</p>
																					</th>
																					<th data-v-ba243cb2="">시설물 명</th>
																					<th data-v-ba243cb2="">수량</th>
																					<th data-v-ba243cb2="">삭제</th>
																				</tr>
																			</thead>
																		</table>
																	</div>
																	<div data-v-ba243cb2="" class="table-ifd">선택된
																		시설물이 없습니다.</div>
																</div>
																<div data-v-ba243cb2="" class="title-7t8">
																	<div data-v-ba243cb2="" class="title-roe">
																		<div data-v-ba243cb2="">사진 등록 (선택)</div>
																	</div>
																</div>

																<div class="styled__BtnWrap-y2osxd-0 eDosqI">
																<input type="file" name="file" id="file"
																	style="display: none" accept="image/*" value=""
																	multiple onchange="fUpload(this)" />
																<button type="button" class="btn-f1d oomee" onclick="filePreview()">
																	<svg width="24" height="24" viewBox="0 0 24 24"
																		fill="none" xmlns="http://www.w3.org/2000/svg"
																		style="flex: 0 0 auto;">
	                                        						<path fill-rule="evenodd" clip-rule="evenodd"
																	d="M12.4919 5.91012C12.4496 5.67688 12.2455 5.5 12 5.5C11.7239 5.5 11.5 5.72386 11.5 6V11.5H6L5.91012 11.5081C5.67688 11.5504 5.5 11.7545 5.5 12C5.5 12.2761 5.72386 12.5 6 12.5H11.5V18L11.5081 18.0899C11.5504 18.3231 11.7545 18.5 12 18.5C12.2761 18.5 12.5 18.2761 12.5 18V12.5H18L18.0899 12.4919C18.3231 12.4496 18.5 12.2455 18.5 12C18.5 11.7239 18.2761 11.5 18 11.5H12.5V6L12.4919 5.91012Z"
																	fill="#37b4e7"></path>
	                                    							</svg>
																	<span class="styled__Text-q6pgzy-1 hnPnIj">사진 추가</span>
																</button>
															</div>



																<div class="eXbRxD"></div>


															<div data-v-ba243cb2="" class="img-tm7">
																	<div data-v-ba243cb2="">
																		<div data-v-ba243cb2="" class="box-k8j btn-nws">
																			<img data-v-ba243cb2=""
																				src="https://app.homebutton.co.kr/images/upImg.png"
																				class="btn-nws"> <input data-v-ba243cb2=""
																				type="file" name="file" accept = "image/*" id="upI-a3i" class="img-x1h btn-nws" onchange="fUpload(this)">
																		</div>
																	</div>
																	<div data-v-ba243cb2="">
																		<div data-v-ba243cb2="" class="box-k8j btn-nws">
																			<img data-v-ba243cb2=""
																				src="https://app.homebutton.co.kr/images/upImg.png"
																				class="btn-nws"> <input data-v-ba243cb2=""
																				type="file" id="upI-x29" class="img-x1h btn-nws">
																		</div>
																	</div>
																	<div data-v-ba243cb2="">
																		<div data-v-ba243cb2="" class="box-k8j btn-nws">
																			<img data-v-ba243cb2=""
																				src="https://app.homebutton.co.kr/images/upImg.png"
																				class="btn-nws"> <input data-v-ba243cb2=""
																				type="file" id="upI-gfb" class="img-x1h btn-nws">
																		</div>
																	</div>
																	<div data-v-ba243cb2="">
																		<div data-v-ba243cb2="" class="box-k8j btn-nws">
																			<img data-v-ba243cb2=""
																				src="https://app.homebutton.co.kr/images/upImg.png"
																				class="btn-nws"> <input data-v-ba243cb2=""
																				type="file" id="upI-zlc" class="img-x1h btn-nws">
																		</div>
																	</div>
																	<div data-v-ba243cb2="">
																		<div data-v-ba243cb2="" class="box-k8j btn-nws">
																			<img data-v-ba243cb2=""
																				src="https://app.homebutton.co.kr/images/upImg.png"
																				class="btn-nws"> <input data-v-ba243cb2=""
																				type="file" id="upI-61w" class="img-x1h btn-nws">
																		</div>
																	</div>
																</div>
																<div data-v-ba243cb2="" class="btn-23t">
																	<div data-v-ba243cb2="" class="btn-tmj">
																		<div data-v-ba243cb2=""
																			class="btn-8tl can-kyn btn-nws">취소</div>
																		<div data-v-ba243cb2=""
																			class="btn-8tl con-n82 btn-nws">저장</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
<!-- *********************************************** 방 정보 등록 모달창 끝 *********************************************** -->

										<div data-v-9631a1ac="" class="upp-jh2 typ-vqi">엑셀 일괄등록
										</div>
										<div data-v-9631a1ac="" class="upp-jh2 typ-vqi">정보 다운로드
										</div>
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
											data-v-26e57b98="" class="edge-zw7"></i> <i
											data-v-26e57b98="" class="cor-n5o"><i data-v-26e57b98=""></i></i>
											<i data-v-26e57b98="" class="edge-23n"></i></span>
									</div>
								</div>
								
								
								<div data-v-32545c74="">
									<div data-v-32545c74="" class="layer-excel-hao"></div>
									<div data-v-32545c74="" class="popup-y7r">
										<h3 data-v-32545c74="">호실 엑셀 일괄 등록</h3>
										<div data-v-32545c74="" class="info-o2i">
											<div data-v-32545c74="" class="box-2fz">
												<p data-v-32545c74="" class="jrdhx">주의사항</p>
												<p data-v-32545c74="" class="con-f8p">- 호실 일괄 등록 시 사전에
													건물 정보를 등록해야 합니다.</p>
												<p data-v-32545c74="">- 신규 호실 등록 양식에 호실 정보를 작성하신 후에 파일을
													업로드 하시기 바랍니다.</p>
												<p data-v-32545c74="">- 호실 일괄 등록은 건물에 등록된 관리 호수 이상은 등록할
													수 없습니다.</p>
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
							</div>
						</ul>
					</div>
				</li>
			</ul>
		</div>


	
		</c:if>
		
		
		
<!-- *********************************************** 방 정보가 있을 경우 *********************************************** -->
	<c:if test="${not empty rentRoomList }">
		<div>
			<div data-v-26061652="" class="bri-l78">
				<div data-v-30e6de21="" data-v-26061652="" class="bri-31y gre-682">
					<p data-v-30e6de21="">
						<span data-v-30e6de21="" class="big-w6e">0</span> <span
							data-v-30e6de21="" class="bol-cx7">호</span> <span
							data-v-30e6de21="" class="big-w6e"> / 1</span> <span
							data-v-30e6de21="" class="bol-cx7">호</span>
					</p>
					<p data-v-30e6de21="" class="fs1-opa">계약중 호실수 / 전체 호실수</p>
				</div>
				<div data-v-30e6de21="" data-v-26061652="" class="bri-31y yel-bne">
					<p data-v-30e6de21="">
						<span data-v-30e6de21="" class="big-w6e">0</span> <span
							data-v-30e6de21="" class="bol-cx7">건</span> <span
							data-v-30e6de21="" class="big-w6e"> / 0</span> <span
							data-v-30e6de21="" class="bol-cx7">호</span>
					</p>
					<p data-v-30e6de21="" class="fs1-opa">미납계약 / 미납호실</p>
				</div>
				<div data-v-30e6de21="" data-v-26061652="" class="bri-31y pur-xra">
					<p data-v-30e6de21="">
						<span data-v-30e6de21="" class="big-w6e">0</span> <span
							data-v-30e6de21="" class="bol-cx7">건</span> <span
							data-v-30e6de21="" class="big-w6e"> / 0</span> <span
							data-v-30e6de21="" class="bol-cx7">호</span>
					</p>
					<p data-v-30e6de21="" class="fs1-opa">종료예정 계약 / 종료예정 호실</p>
				</div>
				<div data-v-30e6de21="" data-v-26061652="" class="bri-31y y-z5l">
					<p data-v-30e6de21="">
						<span data-v-30e6de21="" class="big-w6e">100</span> <span
							data-v-30e6de21="" class="bol-cx7">%</span> <span
							data-v-30e6de21="" class="big-w6e"> / 1</span> <span
							data-v-30e6de21="" class="bol-cx7">호</span>
					</p>
					<p data-v-30e6de21="" class="fs1-opa">공실률 / 공실수</p>
				</div>
			</div>
			<div data-v-4e46e8b0="">
				<div data-v-4e46e8b0="" class="floor-vkt">
					<div data-v-4e46e8b0="" class="lef-8o4">
						<div data-v-4e46e8b0="" class="left-vqh">
							<div data-v-4e46e8b0="">1F</div>
							<div data-v-4e46e8b0="" class="room-pfw">(1개 호실)</div>
						</div>
					</div>
					<div data-v-4e46e8b0="" class="rig-jcz">
						<div data-v-4e46e8b0="" class="large-dl5">
							<ul data-v-4e46e8b0="">
								<li data-v-53ae6165="" data-v-4e46e8b0=""
									class="card-7o4 emp-q83">
									<div data-v-53ae6165="">
										<div data-v-53ae6165="" class="upp-hfd"></div>
										<div data-v-53ae6165="" class="mid-p1a">
											<p data-v-53ae6165="" class="room-sqn">11호</p>
											<p data-v-53ae6165="" class="hire-s8d ell-hxe">공실 1일차</p>
										</div>
										<div data-v-53ae6165="" class="low-qac"></div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	
	<!-- 건물 리스트 있을때 if태그 end -->
	</c:if>




	<!-- *********************************************** 건물정보 리스트가 없을때 *********************************************** -->
	<c:if test="${empty buildingList }">
		<div data-v-3a1dceac="" class="cont-bsl att-ahb">
			<div data-v-3a1dceac="" id="reg-2on" class="find-tqt">
				<div data-v-3a1dceac="" class="list-242">
					<div data-v-3a1dceac="" class="reg-build-pqf">
						<ul data-v-3a1dceac="">
							<li data-v-3a1dceac="">건물수 <span data-v-3a1dceac="">0채</span></li>
							<li data-v-3a1dceac="">임대중 <span data-v-3a1dceac="">0건</span></li>
							<li data-v-3a1dceac="">총 <span data-v-3a1dceac="">0건</span></li>
						</ul>
					</div>

					<div data-v-3a1dceac="" class="filter-5zn">
						<div data-v-3a1dceac="" class="select-gfo">
							<div data-v-3a1dceac="" class="select-lyx">
								<select data-v-3a1dceac="" class="select-4dd select-e2o">
									<option data-v-3a1dceac="" value="">시/도</option>
								</select>
							</div>
							<div data-v-3a1dceac="" class="select-lyx">
								<select data-v-3a1dceac="" class="select-4dd select-e2o">
									<option data-v-3a1dceac="" value="">전체</option>
								</select>
							</div>
						</div>
						<div data-v-3a1dceac="" class="list-qtp"></div>
					</div>
					<ul class="find-f6p">
					</ul>
				</div>
				<ul data-v-3a1dceac="" class="panel-pi7 ySc-ose">
					<li data-v-3a1dceac="">
						<div data-v-3a1dceac="">
							<div data-v-3a1dceac="" class="info-g4n">
								<h3 data-v-3a1dceac="">
									등록필요 <span data-v-3a1dceac="">(등록필요)</span>
								</h3>
								<p data-v-3a1dceac="" class="info-n1w">등록필요</p>
							</div>
							<ul data-v-3a1dceac="" class="user-psw style-Lbc2P"
								id="style-Lbc2P">
								<li data-v-3a1dceac="" class="rxvtk"><a data-v-3a1dceac=""
									href="/lease/build-list/room-list">호실 목록</a></li>
								<li data-v-3a1dceac=""><a data-v-3a1dceac=""
									href="/lease/build-list/hire-list">임대계약 목록</a></li>
								<li data-v-3a1dceac=""><a data-v-3a1dceac=""
									href="/lease/build-list/manage-batch/manage-batch-list">변동관리비
										일괄청구</a></li>
								<li data-v-3a1dceac=""><a data-v-3a1dceac=""
									href="/lease/build-list/pay-list">건물 수납관리</a></li>
								<li data-v-3a1dceac=""><a data-v-3a1dceac=""
									href="/lease/build-list/build-info">건물정보 상세</a></li>
							</ul>
							<ul data-v-3a1dceac="" style="">
								<div data-v-3a1dceac="" class="info-xpf">
									<p data-v-3a1dceac="">
										등록된 건물 정보가 없습니다.<br data-v-3a1dceac="">'<b
											data-v-3a1dceac="">건물정보 등록</b>'으로 '<b data-v-3a1dceac="">홈버튼</b>'을
										시작해보세요.
									</p>
									<span data-v-3a1dceac="" class="row-cgx"><i
										data-v-3a1dceac="" class="edge-3p9"></i> <i data-v-3a1dceac=""
										class="cor-f1h"><i data-v-3a1dceac=""></i></i> <i
										data-v-3a1dceac="" class="edge-bdr"></i></span>
								</div>
							</ul>
							<ul data-v-3a1dceac=""></ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</c:if>
</div>


<!-- 건물정보 상세 (미리 가져옴) -->

<!-- <li data-v-0e840ab4=""> -->
<!-- 						<div data-v-0e840ab4="" class="content-zyy"> -->
<!-- 							<div data-v-0e840ab4="" class="info-gv4 style-Vb8m6" -->
<!-- 								id="style-Vb8m6"> -->
<!-- 								<ul data-v-0e840ab4=""> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<table data-v-0e840ab4="" class="list-qp7 mt2-7ib"> -->
<%-- 								<colgroup data-v-0e840ab4=""> --%>
<%-- 									<col data-v-0e840ab4="" width="140"> --%>
<%-- 									<col data-v-0e840ab4="" width="317"> --%>
<%-- 									<col data-v-0e840ab4="" width="140"> --%>
<%-- 									<col data-v-0e840ab4="" width="*"> --%>
<%-- 								</colgroup> --%>
<!-- 								<tbody data-v-0e840ab4=""> -->
<!-- 									<tr data-v-0e840ab4=""> -->
<!-- 										<th data-v-0e840ab4="" style="">건물 고유번호</th> -->
<!-- 										<td data-v-0e840ab4="">6253</td> -->
<!-- 										<th data-v-0e840ab4="">미납금 총액</th> -->
<!-- 										<td data-v-0e840ab4="">0원</td> -->
<!-- 									</tr> -->
<!-- 									<tr data-v-0e840ab4=""> -->
<!-- 										<th data-v-0e840ab4="">수납계좌</th> -->
<!-- 										<td data-v-0e840ab4="">총 0개의 수납계좌 연동 중&nbsp; <a -->
<!-- 											data-v-0e840ab4="">자세히보기&gt;</a></td> -->
<!-- 										<th data-v-0e840ab4="">가상계좌</th> -->
<!-- 										<td data-v-0e840ab4="">총 0개의 출금계좌 연동 중&nbsp; <a -->
<!-- 											data-v-0e840ab4="">자세히보기&gt;</a></td> -->
<!-- 									</tr> -->
<!-- 									<tr data-v-0e840ab4=""> -->
<!-- 										<th data-v-0e840ab4="">문의접수 연락처</th> -->
<!-- 										<td data-v-0e840ab4="">총 0개의 문의접수 연락처 연동 중&nbsp; <a -->
<!-- 											data-v-0e840ab4="">설정&gt;</a></td> -->
<!-- 										<th data-v-0e840ab4="">증빙 사업자정보</th> -->
<!-- 										<td data-v-0e840ab4="" class="evd-rzb">없음</td> -->
<!-- 									</tr> -->
<!-- 									<tr data-v-0e840ab4=""> -->
<!-- 										<th data-v-0e840ab4="">민원관리</th> -->
<!-- 										<td data-v-0e840ab4="">미사용</td> -->
<!-- 										<th data-v-0e840ab4=""></th> -->
<!-- 										<td data-v-0e840ab4=""></td> -->
<!-- 									</tr> -->
<!-- 								</tbody> -->
<!-- 							</table> -->
<!-- 							<table data-v-0e840ab4="" class="list-qp7 mt2-7ib"> -->
<%-- 								<colgroup data-v-0e840ab4=""> --%>
<%-- 									<col data-v-0e840ab4="" width="140"> --%>
<%-- 									<col data-v-0e840ab4="" width="160"> --%>
<%-- 									<col data-v-0e840ab4="" width="140"> --%>
<%-- 									<col data-v-0e840ab4="" width="160"> --%>
<%-- 									<col data-v-0e840ab4="" width="140"> --%>
<%-- 									<col data-v-0e840ab4="" width="*"> --%>
<%-- 								</colgroup> --%>
<!-- 								<tbody data-v-0e840ab4=""> -->
<!-- 									<tr data-v-0e840ab4=""> -->
<!-- 										<th data-v-0e840ab4="">총 가구수</th> -->
<!-- 										<td data-v-0e840ab4="">1</td> -->
<!-- 										<th data-v-0e840ab4="">임대중 / 공실</th> -->
<!-- 										<td data-v-0e840ab4="">0 / 1</td> -->
<!-- 										<th data-v-0e840ab4="">공실률</th> -->
<!-- 										<td data-v-0e840ab4="">100 %</td> -->
<!-- 									</tr> -->
<!-- 								</tbody> -->
<!-- 							</table> -->
<!-- 						</div> -->
<!-- 						<div data-v-0e840ab4="" class="footer-v4v"> -->
<!-- 							<div data-v-0e840ab4=""> -->
<!-- 								<div data-v-0e840ab4="" class="text-dz1">건물 메모관리 (0 )</div> -->
<!-- 							</div> -->
<!-- 							<div data-v-0e840ab4="" class="box-xfw"> -->
<!-- 								<div data-v-0e840ab4="" class="btn-1yh btn-i5n"> -->
<!-- 									<div data-v-0e840ab4="" class="btn-fpk btn-gto btn-pvl">정보삭제</div> -->
<!-- 									<div data-v-0e840ab4="" class="btn-fpk btn-v11 btn-pvl">정보수정</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</li> -->













<script>

/************************ 숫자 세자리단위로 콤마 넣기 ***********************/
//모든 입력 필드를 선택합니다
 const inputs = document.querySelectorAll('.input-dbc.lef-ll7.text-kvt');

 // 각 입력 필드에 이벤트 리스너를 추가합니다
 inputs.forEach((input) => {
	 input.addEventListener('keyup', function(e) {
 		 let value = e.target.value;
  		 value = Number(value.replaceAll(',', ''));
  	     if(isNaN(value)) {         //NaN인지 판별
	  		e.target.value = 0;   
  		 }else {                   //NaN이 아닌 경우
	  		  const formatValue = value.toLocaleString('ko-KR');
	  		  e.target.value = formatValue;
  		 }
	 })
 })

/************************ 건물등록, 방등록 모달창 관련 ***********************/	
function fMBOpen() {
	buildingRegister.style.display = "block";
}
function fMROpen() {
	roomRegister.style.display = "block";
}

/************************ 건물 리스트 선택 ***********************/	
const bdList = document.querySelectorAll(".list-adk .find-l6z li");
//배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
bdList.forEach((bd)=>{
	bd.addEventListener('click',()=>{
    	bdList.forEach((e)=>{
          //하나만 선택되도록 기존의 효과를 지워준다.
            e.classList.remove('on');
        })
      // 선택한 그 아이만 효과를 추가해준다.
        bd.classList.add('on');
    	const value = bd.querySelector('.bui-161').dataset.bldgNo;
        console.log(value);
        
//	        const url = cPath+'/lessor/buildingInfo/';
        const url = `\${cPath}/lessor/buildingInfo/\${value}`;
        $.ajax({
	        url: url,
	        type: 'GET',
	        data: value,
	        dataType: 'json',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	        },
	        error: function(xhr, status, error) {
	            console.error('Error:', status, error);
	        }
	    });
	});
})


/********************* 주소 검색(daum주소찾기 api) ***********************/
// 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');
	var isshow = false;
    function sample3_execDaumPostcode() {
    	
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
//                     document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
//                     document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
//                 document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        // 토글
        if(!isshow){
        	element_wrap.style.display = 'block';
        	isshow = true;
        }else{
         	element_wrap.style.display = 'none';
        	isshow = false;
        }
    }
    
    
    
/*********************건물구분 버튼 선택***********************/
  //선택지를 모두 가져온다
  const items = document.querySelectorAll(".list-wbh li");
  //배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
  items.forEach((item)=>{
      item.addEventListener('click',function(){
    	  console.log(this.innerText);
          items.forEach((e)=>{
            //하나만 선택되도록 기존의 효과를 지워준다.
              e.classList.remove('active');
          })
        // 선택한 그 아이만 효과를 추가해준다.
          item.classList.add('active');
      })
  })
  
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
let ulTag = document.querySelector('.list-v2q');
let divTag = document.querySelector('.option-8tq');
let parentTag = document.querySelector('.option-2j2');
function makeDiv(cmmnList){
	let parentStr="";
	let cdNm="";
	for(let option of cmmnList){
		if(option.cmmnCdDc=="시설구분코드" && option.cmmnCd != "HEATING"){
			cd = option.cmmnCd;
			console.log("ㅎㅇ",cd)
			parentStr += `
				<div data-v-ba243cb2="" class="option-d3r">
					<div data-v-ba243cb2="" class="option-8tq">\${option.cmmnCdNm}시설</div>
				</div>

				<div data-v-ba243cb2="" class="option-krz">
					<ul data-v-ba243cb2="" class="list-v2q ">
			`;
			parentStr += makeli(cd, cmmnList);
			
// 			for(let life of cmmnList) {
// 				if(life.cmmnParent=="LIFE"){
// 					parentStr += `
// 						<li data-v-ba243cb2="">
// 						<input data-v-ba243cb2="" data-parent="\${life.cmmnParent}" type="checkbox" id="ROO-7fv" value="\${life.cmmnCd}">
// 						<label data-v-ba243cb2="" >\${life.cmmnCdNm}</label></li>
// 					`;
// 				}else if(life.cmmnParent=="")
// 			}
			
			parentStr += `</ul></div>`;
			parentTag.innerHTML = parentStr;
		}
	}
}

function makeli(cd, cmmnList){
let listr = "";
console.log("ㅎㅇㅇㅇㅇ",cd)
		for(let life of cmmnList) {
			if(life.cmmnParent==cd){
				listr += `
					<li data-v-ba243cb2="">
					<input data-v-ba243cb2="" data-parent="\${life.cmmnParent}" type="checkbox" id="ROO-7fv" value="\${life.cmmnCd}">
					<label data-v-ba243cb2="" >\${life.cmmnCdNm}</label></li>
				`;
			}
		console.log("dfdfd",listr);
		}
		return listr;
	}
	
	
	
	
	
	
	
 
/******************** 방등록 시설물 목록 ***********************/ 


// 	<div data-v-ba243cb2="" class="option-d3r">
// 		<div data-v-ba243cb2="" class="option-8tq">- 냉방 시설</div>
// 	</div>
	
// 	<div data-v-ba243cb2="" class="option-krz">
// 		<ul data-v-ba243cb2="" class="list-v2q">
// 		<!--동적 옵션 생성 -->																				
// 		</ul>
// 	</div>
 
 
/*********************건물 form 데이터 전송***********************/
const bdform = document.forms[1];
bdform.onsubmit = function(e) {
   	e.preventDefault();
   	let activeLi = document.querySelector(".list-wbh> .gksrs.active");
   	let bldgse = activeLi.dataset.bldgse;
    console.log(e);
    
    let data = {
        bldgNm: bdform.bldgNm.value,
        bldgAddr: bdform.bldgAddr.value,
        bldgHomeCnt: bdform.bldgHomeCnt.value,
        userNo:'U240515002', //하드코딩
        bldgSe: bldgse,
        bldgAllCnt: bdform.bldgAllCnt.value,
        bldgDong: bdform.bldgDong.value
    }
    	
    console.log("data ===>",data)
    let url = cPath + "/lessor/buildingInfo";
    // AJAX 요청
    $.ajax({
        url: url,
        type: 'POST',
		contentType:"application/json",
        data: JSON.stringify(data),
        dataType: 'text',
        success: function(resp) {
            console.log('반환값 ===>', resp);
            if(resp == "success"){
            	Swal.fire({
            		  title: "등록완료",
            		  text: "건물등록이 완료되었습니다.",
            		  icon: "success"
            	}).then(()=>{
            	location.href = url;
            	});
            }
        },
        error: function(xhr, status, error) {
            console.error('Error:', status, error);
        }
    });
};





/****************** 평수계산 ************************/
 let dctladarp = document.querySelector("input[name=dctladarp]");
 let dctladars = document.querySelector("input[name=dctladars]");
 let buildarp = document.querySelector("input[name=buildarp]");
 let buildars = document.querySelector("input[name=buildars]");
 let rentarp = document.querySelector("input[name=rentarp]");
 let rentars = document.querySelector("input[name=rentars]");
 
	//대지면적 평수계산
	dctladars.addEventListener("change", function() {
		dctladarp.value =  Math.round(this.value * 0.3025);
		});

	//대지면적 제곱미터 계산
	dctladarp.addEventListener("change", function() {
		dctladars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});
 
	//건축면적 평수계산
	buildars.addEventListener("change", function() {
		buildarp.value =  Math.round(this.value * 0.3025);
		});

	//건축면적 제곱미터 계산
	buildarp.addEventListener("change", function() {
		buildars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});
 
	//전용면적 평수계산
	rentars.addEventListener("change", function() {
		rentarp.value =  Math.round(this.value * 0.3025);
		});

	//전용면적 제곱미터 계산
	rentarp.addEventListener("change", function() {
		rentars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});

	

/********************* 방 form toggle-tj3 li태그 선택 ***********************/
 // 모든 .toggle-tj3 요소를 가져온다.
 const toggleLists = document.querySelectorAll(".toggle-tj3");
 //배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
  
   toggleLists.forEach((list) => {
    // 각 .toggle-tj3 내의 li 요소들을 가져온다.
    const ritems = list.querySelectorAll("li");
	 ritems.forEach((item)=>{
	     item.addEventListener('click',function(){
	   	 console.log(this.innerText);
	   	 ritems.forEach((e)=>{
	           //하나만 선택되도록 기존의 효과를 지워준다.
	             e.classList.remove('on');
	         })
	       // 선택한 그 아이만 효과를 추가해준다.
	         this.classList.add('on');
	     })
	 })
	})
	
	

/*********************방 form 데이터 전송***********************/
   const roomform = document.forms[1];
   bdform.onsubmit = function(e) {
      	e.preventDefault();
      	let activeLi = document.querySelector(".list-wbh> .gksrs.active");
      	let bldgse = activeLi.dataset.bldgse;
       console.log(e);
       
       let data = {
           bldgNm: bdform.bldgNm.value,
           bldgAddr: bdform.bldgAddr.value,
           bldgHomeCnt: bdform.bldgHomeCnt.value,
           bldgSe: bldgse,
           bldgAllCnt: bdform.bldgAllCnt.value,
           bldgDong: bdform.bldgDong.value
       }
       	
       console.log("data ===>",data)
       let url = cPath + "/lessor/buildingInfo";
       // AJAX 요청
       $.ajax({
           url: url,
           type: 'POST',
   		contentType:"application/json",
           data: JSON.stringify(data),
           dataType: 'text',
           success: function(resp) {
               console.log('반환값 ===>', resp);
               if(resp == "success"){
               	Swal.fire({
               		  title: "등록완료",
               		  text: "건물등록이 완료되었습니다.",
               		  icon: "success"
               	}).then(()=>{
               	location.href = url;
               	});
               }
           },
           error: function(xhr, status, error) {
               console.error('Error:', status, error);
           }
       });
   };
 
/********************방등록을 위한 생성자***********************/
//첨부파일 정보
	function TbAttachFileVO() {
		 this.atchmnflSn = null;    //첨부파일 순번    
		 this.filePath = null;      //파일경로
		 this.webPath = null;       //웹경로 
		 this.fileNm = null;        //원본파일명 
		 this.streFileNm = null;    //저장파일명  
		 this.fileSize = null;      //파일크기    
		 this.fileType = null;      //파일유형 
		 this.regUserId = null;     //등록자ID  
		 
		 return this;
	}

//room테이블 정보
	function RoomVO() {
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
		this.buildAr = null; 		//건물면적
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
	
//rentRoom테이블 정보
	function RentRoomVO(){
		this.roomUngrYn=null; //임대관리방등록번호
		this.rentRoomNo=null; //임대관리방등록일자
		this.rentRoomDe=null; //임대관리방삭제여부
		this.roomDelYn=null; //임대관리방등록자번호
		this.userNo=null; //임대관리건물등록번호
		this.rentBldgNo=null; //방고유번호
		this.roomNo=null; //지하여부
		
		return this;
	}


/*********************방등록 이미지 파일등록 ***********************/
//input file태그 찾기
	let inputFile = document.all.file[0];
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

		let url = cPath +`${pageContext.request.contextPath}/api/img`
		fetch(url, {
			method : "post",
			headers : {
				"Accept" : "application/json"
			},
			body : formData
		}).then(res => res.json())
		.then(data => {
			console.log(data);
			let divTag = document.querySelector(".eXbRxD");

			

			for(let i = 0; i < data.length; i++) {
				attachFileVO = new TbAttachFileVO();
				attachFileVO.atchmnflSn = data[i].atchmnflSn
				attachFileVO.filePath = data[i].filePath
				attachFileVO.webPath = data[i].webPath
				attachFileVO.fileNm = data[i].fileNm
				attachFileVO.streFileNm = data[i].streFileNm
				attachFileVO.fileSize = data[i].fileSize
				attachFileVO.fileType = data[i].fileType
				attachFileVO.regUserId = data[i].regUserId

				let imgTag = document.createElement("img");
				imgTag.src = `${pageContext.request.contextPath}` + attachFileVO.webPath;
				imgTag.width = 150;
				imgTag.height = 100;
				divTag.appendChild(imgTag);
// 				roomParam.fileArr.push(attachFileVO);
			}
			
			
		})
	}
 
</script>