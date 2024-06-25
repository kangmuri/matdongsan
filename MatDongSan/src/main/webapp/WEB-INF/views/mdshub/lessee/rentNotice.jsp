
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/rentNotice.css" rel="stylesheet">
<style>
#main{
	background-color: white;
}
.borderBottom{
	height:100px;
}
</style>
<div class="cont-hcy att-vwv pmc-azm">
    <div class="tit-y5e header-z6d">
        <h2 class="dbqmh">공지관리</h2>
    </div>
    <div class="content-5vx search-si3">
        <div data-v-99296fd6="" class="search-ojd">
        <form id="searchUI">
            <div data-v-99296fd6="" class="inBox-space-vn1">
                <div data-v-99296fd6="" class="search-os1 w30-jh7">
                    <div data-v-99296fd6="" class="select-7yk">건물명</div>
                    <div data-v-99296fd6="" class="select-r91">
                    	<select data-v-99296fd6="" class="select-z32 select-o27 select-49i sli-293" name="rentBldgNo">
                    		 <option data-v-99296fd6="" value="">건물선택</option>
                    		<c:forEach items="${rentBldgList }" var="rentBldg">
                           	 <option data-v-99296fd6="" value="${rentBldg.bldgs.rentBldgNo }">${rentBldg.bldgs.bldgNm }</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div data-v-99296fd6="" class="fle-z8y spa-wjf">
                    <div data-v-99296fd6="" class="search-os1 w36-bbs">
                        <div data-v-99296fd6="" class="select-7yk">기간조회</div>
                        <div data-v-99296fd6="" class="vdp-fc3 ui-oct">
                            <div> 
                            	<input type="date" placeholder="검색 시작일" class="input-e7p oxkpo sli-1lg search-rdt zId-jxx" name="minDt">
                            </div>
                        </div> <span data-v-99296fd6="" class="spa-49x"> ~ </span>
                        <div data-v-99296fd6="" class="vdp-fc3 ui-oct">
                            <div>
                             	<input type="date" placeholder="검색 종료일" class="input-e7p oxkpo sli-1lg search-rdt" name="maxDt">
                            </div>
                        </div>
                    </div>
                </div>
                <div data-v-99296fd6="" class="search-os1 w30-jh7">
                    <div data-v-99296fd6="" class="select-7yk">공지제목</div> 
                    <input data-v-99296fd6="" placeholder="공지제목 입력" class="input-s3s sli-293 z-y7s" name="noticeSj">
                </div>
            </div>
            <div data-v-99296fd6="" class="inBox-space-vn1">
                
                <div data-v-99296fd6="" class="search-os1 btnArray">
                    <button data-v-99296fd6="" class="btn-7td" type="reset">초기화</button>
                    <button data-v-99296fd6="" class="btn-znz" id="searchBtn">검색</button>
                </div>
            </div>
            </form>
        </div>
        <div data-v-58f99374="" class="option-x86">
            <div data-v-58f99374="" class="etc-5s7">
                <div data-v-58f99374="" class="search-lep mr1-4y9"><select data-v-58f99374="" class="select-z32 select-o27">
                        <option data-v-58f99374="" value="10"> 10개 </option>
                        <option data-v-58f99374="" value="20"> 20개 </option>
                        <option data-v-58f99374="" value="30"> 30개 </option>
                        <option data-v-58f99374="" value="40"> 40개 </option>
                        <option data-v-58f99374="" value="50"> 50개 </option>
                        <option data-v-58f99374="" value="100"> 100개 </option>
                    </select></div>
                <div data-v-58f99374="" class="search-lep mr1-4y9"><select data-v-58f99374="" class="select-z32 select-o27">
                        <option data-v-58f99374="" value="REG_DESC"> 등록일 내림차순 </option>
                        <option data-v-58f99374="" value="REG_ASC"> 등록일 오름차순 </option>
                        <option data-v-58f99374="" value="CNT_DESC"> 조회수 내림차순 </option>
                        <option data-v-58f99374="" value="CNT_ASC"> 조회수 오름차순 </option>
                    </select></div>
            </div>
        </div>
        <div class="list-m52 pmc-3lz">
            <table class="list-pwg pmc-ccj table table-striped">
                <colgroup>
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr class="jhoax">
                        <th>공지번호</th>
                        <th>공지제목</th>
                        <th>공지내용</th>
                        <th>공지작성일시</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
               	<c:forEach items="${noticeList }" var="notice">
               		<c:url value="rentNotice/${notice.noticeNo }/${notice.rentBldgNo }" var="detailUrl">
               		</c:url>
	               		<tr onclick="location.href='${detailUrl}'" style="cursor:pointer" class="borderBottom">
	                        <td class="noB-62h">
	                        ${notice.noticeNo }
	                        </td>
	                        <td class="noB-62h">
	                        ${notice.noticeSj }
	                        </td>
	                        <td class="noB-62h">
	                        ${notice.noticeCn }
	                        </td>
	                        <td class="noB-62h">
	                        ${notice.noticeDt }
	                        </td>
	                        <td class="noB-62h">
	                        ${notice.users.userId }
	                        </td>
	                    </tr>
                 </c:forEach>
                </tbody>
            </table>
             ${pagingHTML }
        </div>
        <div class="mb3-h3z"></div>
    </div>
</div>
<%--detailCondition --%>
<form action="<c:url value='/lessee/rentNotice'/>" id="searchForm">
	<input type="hidden" name="rentBldgNo" value="${detailConditions.rentBldgNo }"/>
	<input type="hidden" name="noticeSj" />
	<input type="hidden" name="minDt" />
	<input type="hidden" name="maxDt" />
	<input type="hidden" name="currentPage" />
</form>
<script>
$(function(){
	//입력한 값이 input창에 계속 보이도록하기 위해 detailCondition에서 보낸값을 준다.
	$('[name="rentBldgNo"]').val('${detailConditions.rentBldgNo }')
	$('[name="noticeSj"]').val('${detailConditions.noticeSj }')
	$('[name="minDt"]').val('${detailConditions.minDt }')
	$('[name="maxDt"]').val('${detailConditions.maxDt }')
	$('[name="currentPage"]').val('${detailConditions.currentPage }')
	
	//페이지 번호가 표시된 버튼이나 링크에 data-page 속성을 추가하여 사용자가 해당 요소를 클릭할 때 어떤 페이지 번호로 이동해야 하는지를 나타내는 데 사용
	$(document).on("click", "[data-page]", function(){
		let page = $(this).data('page');//클릭된 요소의 data-page 속성 값을 가져온다
		searchForm.currentPage.value = page;
		$searchForm.submit();
	});
	
// 	searchBtn 을 클릭하면, searchUI 가 가진 모든 입력값을 searchForm 으로 복사하고, searchForm을 전송
	const $searchForm = $("#searchForm");
    $("#searchBtn").on("click", function(event){
    	let $searchUI = $(this).parents("#searchUI");
    	$searchUI.find(":input[name]").each(function(idx, ipt){
    		let name = this.name;
    		let value = $(this).val();
    		searchForm[name].value = value;
    	});
    	$searchForm.submit();
    });
    
    
    $("[name='rentBldgNo']").val("${detailConditions.rentBldgNo}")
    $("[name='noticeSj']").val("${detailConditions.noticeSj}")
    
});
</script>