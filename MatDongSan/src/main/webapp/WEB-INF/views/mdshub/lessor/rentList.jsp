<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <div data-v-0e4dda1c="" class="filter-b28"> -->
<!-- 	<div data-v-0e4dda1c="" class="filter-zks"> -->
<!-- 		<div data-v-0e4dda1c="" class="filter-94h"> -->
<!-- 			<div data-v-0e4dda1c="" class="title-7kn">건물</div> -->
<!-- 			<div data-v-0e4dda1c="" class="select-eto"> -->
<!-- 				<select data-v-0e4dda1c="" class="select-d4y select-yg1"> -->
<!-- 					<option data-v-0e4dda1c="" value="0">전체</option> -->
<%-- 					<c:forEach items="${rentBldgList }" var="bldg"> --%>
<%-- 					<option data-v-0e4dda1c="" value="${bldg.rentBldgNo}">${bldg.bldgNm}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div data-v-0e4dda1c="" class="filter-zks"> -->
<!-- 		<div data-v-0e4dda1c="" class="filter-94h"> -->
<!-- 			<div data-v-0e4dda1c="" class="title-7kn">계약</div> -->
<!-- 			<div data-v-0e4dda1c="" class="select-eto"> -->
<!-- 				<select data-v-0e4dda1c="" class="select-d4y select-yg1"> -->
<!-- 					<option data-v-0e4dda1c="" value="">전체</option> -->
<!-- 					<option data-v-0e4dda1c="" value="20000001">계약중</option> -->
<!-- 					<option data-v-0e4dda1c="" value="20000003">입주예정</option> -->
<!-- 					<option data-v-0e4dda1c="" value="20000004">종료예정</option> -->
<!-- 					<option data-v-0e4dda1c="" value="20000002">계약종료</option> -->
<!-- 				</select> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
<ul data-v-0e4dda1c="" class="find-tig">
	<!-- 입주중 -->
	<c:forEach var="clist" items="${rentContractIngList }">
		<li data-cntrct-rent-no="${clist.cntrctRentNo }" data-v-0e4dda1c="" class="rentList"><a>
				<div>
					<div class="col-od5 kkvqb">${clist.rentRoom.rentBldg.bldgNm}</div>
					<div class="hire-dong-gbc">
						${clist.rentRoom.room.roomFloor }F ${clist.rentRoom.room.roomUnit }호&nbsp;<span id="style-zA5og" class="style-zA5og">(${clist.cntrctStts})</span>
					</div>
					<div class="info-gho">${clist.cntrctrNm } / ${clist.dctBgng } ~ ${clist.dctEnd }</div>
					<div>
						<div class="info-gho">납부일 (${clist.ctpDedtDe }일) / 정상</div>
					</div>
				</div>
		</a></li>
	</c:forEach>
	
	<!-- 입주예정 -->
	<c:forEach var="plist" items="${rentContractPreList }">
	<li data-cntrct-rent-no="${plist.cntrctRentNo }"  data-bldg-no="${plist.rentRoom.rentBldg.rentBldgNo}" data-v-0e4dda1c="" class="rentList"><a>
			<div>
					<div class="col-od5 kkvqb">${plist.rentRoom.rentBldg.bldgNm}</div>
					<div class="hire-dong-gbc">
					${plist.rentRoom.room.roomFloor }F ${plist.rentRoom.room.roomUnit }호&nbsp;<span id="style-ORRmY" class="style-ORRmY">(${plist.cntrctStts})</span>
				</div>
				<div class="info-gho">${plist.cntrctrNm } / ${plist.dctBgng } ~ ${plist.dctEnd }</div>
				<div>
					<div class="info-gho">납부일 (${plist.ctpDedtDe }일) / 정상</div>
				</div>
			</div>
	</a></li>
	</c:forEach>
	
	<!-- 계약종료 -->
	<c:forEach var="elist" items="${rentContractEndList }">
	<li data-cntrct-rent-no="${elist.cntrctRentNo }" data-bldg-no="${plist.rentRoom.rentBldg.rentBldgNo}" data-v-0e4dda1c="" class="rentList"><a>
			<div>
				<div class="col-od5 kkvqb" >${elist.rentRoom.rentBldg.bldgNm}</div>
					<div class="hire-dong-gbc">
					${elist.rentRoom.room.roomFloor }F ${elist.rentRoom.room.roomUnit }호&nbsp;<span id="style-1P6QW" class="style-1P6QW">(${elist.cntrctStts})</span>
				</div>
				<div class="info-gho">${elist.cntrctrNm } / ${elist.dctBgng } ~ ${elist.dctEnd }</div>
				<div>
					<div class="info-gho">납부일 (${elist.ctpDedtDe }일) / 정상</div>
				</div>
			</div>
	</a></li>
	</c:forEach>
	
	
	<!-- 중도퇴실 -->
	<c:forEach var="mlist" items="${rentContractMidList }">
	<li data-cntrct-rent-no="${mlist.cntrctRentNo }" data-bldg-no="${plist.rentRoom.rentBldg.rentBldgNo}" data-v-0e4dda1c="" class="rentList"><a>
			<div>
				<div class="col-od5 kkvqb" >${mlist.rentRoom.rentBldg.bldgNm}</div>
					<div class="hire-dong-gbc">
					${mlist.rentRoom.room.roomFloor }F ${mlist.rentRoom.room.roomUnit }호&nbsp;<span id="style-1P6QW" class="style-1P6QW">(${mlist.cntrctStts})</span>
				</div>
				<div class="info-gho">${mlist.cntrctrNm } / ${mlist.dctBgng } ~ ${mlist.dctEnd }</div>
				<div>
					<div class="info-gho">납부일 (${mlist.ctpDedtDe }일) / 정상</div>
				</div>
			</div>
	</a></li>
	</c:forEach>
	
	
	
	
	
	
	
	<li data-v-0e4dda1c="" class="btn-hiy"></li>
</ul>

<script>

</script>