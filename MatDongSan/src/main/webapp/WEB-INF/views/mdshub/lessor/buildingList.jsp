<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
	
		
		
<!-- 			<div class="list-adk" data-v-3a1dceac=""> -->
<!-- 				<div class="reg-build-7nx" data-v-3a1dceac=""> -->
<!-- 					<ul data-v-3a1dceac=""> -->
<!-- 						<li data-v-3a1dceac="">건물수 <span data-v-3a1dceac="">2채</span></li> -->
<!-- 						<li data-v-3a1dceac="">임대중 <span data-v-3a1dceac="">0건</span></li> -->
<!-- 						<li data-v-3a1dceac="">총 <span data-v-3a1dceac="">2건</span></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 				<div data-v-3a1dceac="" class="filter-7ww"> -->
<!-- 					<div data-v-3a1dceac="" class="select-lay"> -->
<!-- 						<div data-v-3a1dceac="" class="select-o7s"> -->
<!-- 							<select data-v-3a1dceac="" class="select-x5w select-ltq"> -->
<!-- 								<option data-v-3a1dceac="" value="">시/도</option> -->
<!-- 								<option data-v-3a1dceac="" value="대전">대전</option> -->
<!-- 								<option data-v-3a1dceac="" value="경북">경북</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 						<div data-v-3a1dceac="" class="select-o7s"> -->
<!-- 							<select data-v-3a1dceac="" class="select-x5w select-ltq"> -->
<!-- 								<option data-v-3a1dceac="" value="">전체</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div data-v-3a1dceac="" class="list-6dn"></div> -->
<!-- 				</div> -->
<!-- 				<ul data-v-3a1dceac="" id="style-4qNL1" class="style-4qNL1"> -->
<!-- 					<div data-v-3a1dceac="" class="info-emj hid-9px"> -->
<!-- 						<p data-v-3a1dceac=""> -->
<!-- 							등록된 건물 정보가 없습니다.<br data-v-3a1dceac="">'<b -->
<!-- 								data-v-3a1dceac="">건물정보 등록</b>'으로 '<b data-v-3a1dceac="">홈버튼</b>'을 -->
<!-- 							시작해보세요. -->
<!-- 						</p> -->
<!-- 						<span data-v-3a1dceac="" class="row-a13"><i -->
<!-- 							data-v-3a1dceac="" class="edge-zw7"></i> <i data-v-3a1dceac="" -->
<!-- 							class="cor-n5o"><i data-v-3a1dceac=""></i></i> <i -->
<!-- 							data-v-3a1dceac="" class="edge-23n"></i></span> -->
<!-- 					</div> -->
<!-- 				</ul> -->
			<!--	</div>   -->
				
				
<!-- *********************************************** 건물 정보 전체 리스트 시작 *********************************************** -->
<c:if test="${not empty buildingList }">
			<c:set var="building" value="${buildingList}" scope="request"></c:set>
				<ul class="find-l6z" data-v-3a1dceac="">
					<c:forEach items="${building }" var="building" varStatus="var">
						<li data-bldg-no="${building.rentBldgNo}" id="bldgNo" data-v-343d00ce="" data-v-3a1dceac=""
							class="gksrs ${var.first ? 'on' : ''} " >
							<a data-v-343d00ce="" id="style-mcqNM" class="style-mcqNM"><span
								data-v-343d00ce="" class="tag-oym xwwti">${building.subsNm}</span>
								<div data-v-343d00ce="" class="bui-id2">
									<div data-v-343d00ce="" class="bui-161" >${building.bldgNm}
									</div>
									<div data-v-343d00ce="" class="bui-ag3">${building.bldgAddr}</div>
<%-- 									<div data-v-343d00ce="" class="bui-ag3">임대중 ${building.roomCount} 건 / 총 ${building.bldgHomeCnt} 건</div> --%>
								</div> </a> <span data-v-343d00ce="" class="fa-e9w"></span>
						</li>
					</c:forEach>
				</ul>
</c:if>
<!-- *********************************************** 건물 정보 전체 리스트 끝*********************************************** -->			
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
