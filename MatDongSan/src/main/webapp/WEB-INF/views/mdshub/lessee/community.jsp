<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessee/payDataDetail.css"
	rel="stylesheet">
<style>
#bldg{
	border-radius: 5px;
    border: 1px solid #eee;
    height: 35px;
}
#searBox{
	border-radius: 5px;
    border: 1px solid #eee;
    height: 35px;
}
.communityList{
	height:100px;
}

</style>

<div data-v-b94d42f2="" data-v-2691da40="" class="cont-wrap attach pmcSearchWrapper snipcss-JlPhI" id="searchUI">
    <div data-v-b94d42f2="" class="tit-wrap headerBox">
        <h2 data-v-b94d42f2="" class="tp2">커뮤니티</h2>
    </div>
    <div data-v-b94d42f2="" class="user-content searchTb">
        <div data-v-704a40ac="" data-v-b94d42f2="" class="searchBox">
                
            <div data-v-704a40ac="" class="inBox-space-pay inBoxPd searchBtn">
                <div data-v-704a40ac="" class="searchSelectBox">
                    <div data-v-704a40ac="" class="farLeftTitle">작성일조회</div>
                    <div data-v-704a40ac="" class="searchSelectBox ml18">
                        <div data-v-704a40ac="" class="vdp-datepicker ui-date">
                            <div class=""> 
                            	<input type="date" class="input-base tp1 bdPayStatusDatePicker datepicker searchDatePicker" name="minDt">
                            </div>
                        </div> <span data-v-704a40ac="" class="space01"> ~ </span>
                        <div data-v-704a40ac="" class="vdp-datepicker ui-date">
                            <div class=""> 
                            	<input type="date" class="input-base tp1 bdPayStatusDatePicker datepicker searchDatePicker" name="maxDt">
                            </div>
                        </div>
                    </div>
                </div>
                <form data-v-704a40ac="" class="searchSelectBox" id="searchUI" action="<c:url value='/lessee/community/form'/>">
                    <select name="boardDong" id="bldg" class="select-title select-base select-option payOption">
                   			<option value="" selected>행정동선택</option>
	                    <c:forEach items="${bldgList }" var="bldg" varStatus="status">
	                        <c:if test="${status.index == 0}">
	                     		<option value="${bldg}" selected>${bldg}</option>
	                        </c:if>
	                        <c:if test="${status.index != 0}">
	                     		<option value="${bldg}">${bldg}</option>
	                        </c:if>                       
	                     </c:forEach>
                    </select>
                    <input type="text" name="searchWord" id="searBox" placeholder="검색어 입력">
                    <div data-v-704a40ac="" class="last-btn2" id="searchBtn">검색</div>
                    <button data-v-704a40ac="" class="last-btn2" id="createBtn" type="submit">글쓰기</button>
                </form>
            </div>
        	
       
        <div data-v-b94d42f2="" class="mb40">
            <div data-v-b94d42f2="">
                <div data-v-1db704ec="" data-v-b94d42f2="" class="btnSelWrap">
                    <div data-v-1db704ec="" class="guideInfo"></div>
                    <div data-v-1db704ec="" class="btnArea">
                        <div data-v-1db704ec="" class="selectsFrame">
                            <div data-v-1db704ec="" class="selectBox-pmc-search"><select data-v-1db704ec="" class="select-title select-base">
                                    <option data-v-1db704ec="" value="10" selected="selected">10개</option>
                                    <option data-v-1db704ec="" value="20"> 20개 </option>
                                    <option data-v-1db704ec="" value="30"> 30개 </option>
                                    <option data-v-1db704ec="" value="40"> 40개 </option>
                                    <option data-v-1db704ec="" value="50"> 50개 </option>
                                    <option data-v-1db704ec="" value="100"> 100개 </option>
                                </select></div>
<!--                             <div data-v-1db704ec="" class="selectBox-pmc-search"> -->
<!-- 	                            <select data-v-1db704ec="" class="select-title select-base"> -->
<!-- 	                                <option data-v-1db704ec="" value="CHARGE_DESC" selected="selected">납기일 내림차순</option> -->
<!-- 	                                <option data-v-1db704ec="" value="CHARGE_ASC"> 납기일 오름차순 </option> -->
<!-- 	                                <option data-v-1db704ec="" value="DEPOS_DESC"> 납부일 내림차순 </option> -->
<!-- 	                                <option data-v-1db704ec="" value="DEPOS_ASC"> 납부일 오름차순 </option> -->
<!-- 	                            </select> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
                <div data-v-9f022a50="" data-v-b94d42f2="" class="tb-list-wrap pmc-tp2 ">
                    <table data-v-9f022a50="" summary="납부현황표" class="tb-list3 pmc-ptb2 table table-striped">
                        <colgroup data-v-9f022a50="">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                        </colgroup>
                        <thead data-v-9f022a50="">
                            <tr data-v-9f022a50="" class="h60">
                                <th data-v-9f022a50="">게시글번호</th>
                                <th data-v-9f022a50="">게시글제목</th>
                                <th data-v-9f022a50="">게시글내용</th>
                                <th data-v-9f022a50="">조회수</th>
                                <th data-v-9f022a50="">행정동</th>
                                <th data-v-9f022a50="">작성일자</th>
                            </tr>
                        </thead>
                        <tbody data-v-9f022a50="">
                        <c:forEach items="${communityList }" var="communityList">
                        	<c:url value="community/${communityList.pstNo }" var="detailUrl"></c:url>
                            <tr data-v-3d52edd8="" data-v-9f022a50="" class="communityList" onclick="location.href='${detailUrl}'">
                                <td data-v-3d52edd8="">${communityList.pstNo }</td>
                                <td data-v-3d52edd8="">${communityList.pstSj }</td>
                                <td data-v-3d52edd8="">${communityList.pstCn }</td>
                                <td data-v-3d52edd8="">${communityList.pstRdcnt }</td>
                                <td data-v-3d52edd8="">${communityList.boardDong }</td>
                                <td data-v-3d52edd8="">${communityList.pstWrtDe }</td>
                            </tr>
                           </c:forEach>
                        </tbody>
                    </table>
                         
                </div>
            </div>
        </div>
          ${pagingHTML }
        <div data-v-b94d42f2="" class="loading-modal style-1j7Fb" id="style-1j7Fb">
            <div data-v-b94d42f2="" class="loading-img"></div>
        </div>
    </div>
</div>
</div>
<form action="<c:url value='/lessee/community'/>" id="searchForm">
	<input type="hidden" name="boardDong" />
	<input type="hidden" name="searchWord" />
	<input type="hidden" name="minDt" />
	<input type="hidden" name="maxDt" />
	<input type="hidden" name="currentPage" />
</form>

<script>

	$(function() {

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
		$("[name='minDt']").val("${condition.minDt}")
		$("[name='maxDt']").val("${condition.maxDt}")
	})
</script>


