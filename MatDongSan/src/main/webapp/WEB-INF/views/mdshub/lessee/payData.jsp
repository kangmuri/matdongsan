<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessee/payDataDetail.css"
	rel="stylesheet">
<style>
.yjmodal {
	position:fixed;
	width:100%;
	height:100%;
	left:0; top:0;
	background-color:rgb(255 255 255 / 44%);
	z-index:1000;
	display:none;
}
.modalCont {
	margin:10px auto;
	width:60%;
	height:auto;
	background-color: white;
}
</style>

<!-- 납부관리 상세조회 모달 시작  -->
<div class ="yjmodal">
<div class="modalCont">
    <div class="layer-head-vhe modalCont">
<!--         <h3 id="yj1"></h3> -->
<!--  		<h3 onclick="fCloseModal()">x</h3> -->
    </div>
    <div class="layer-lwt">
        <ul class="user-fk2 w10-ole mb4-o9r">
            <li class="xtseo"><a>기본정보</a></li>
<!--             <li><a>수정내역</a></li> -->
<!--             <li><a>스마트알림 내역</a></li> -->
        </ul>
        <div>
            <div data-v-c967e49e="" class="top-hdo">
                <table data-v-c967e49e="" class="list-emy no-iai pd-rav">
                    <colgroup data-v-c967e49e="">
                        <col data-v-c967e49e="" width="100">
                        <col data-v-c967e49e="" width="200">
                        <col data-v-c967e49e="" width="100">
                        <col data-v-c967e49e="" width="200">
                        <col data-v-c967e49e="" width="150">
                        <col data-v-c967e49e="" width="*">
                    </colgroup>
                    <tbody data-v-c967e49e="">
                        <tr data-v-c967e49e="">
                            <th data-v-c967e49e="">임차인</th>
                            <td data-v-c967e49e="">
                                <div data-v-c967e49e="" class="info-tq9" >
                                    <p data-v-c967e49e="" class="ftibj" id="cntrctrNm"></p>
                                    <p data-v-c967e49e="" class="brhje" id="mbtlnum"></p>
                                </div>
                            </td>
                            <th data-v-c967e49e="">임대호수</th>
                            <td data-v-c967e49e="" id="roomUnit"></td>
                            <th data-v-c967e49e="">임대건물</th>
                            <td data-v-c967e49e="">
                                <div data-v-c967e49e="" class="build-own">
                                    <p data-v-c967e49e="" class="ftibj" id="bldgNm"></p>
                                    <p data-v-c967e49e="" class="brhje" id="bldgAddr"></p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div data-v-934fee78="">
                <div data-v-934fee78="" class="title-twj">
                    <div data-v-934fee78="" class="title-3gx">
                        <div data-v-934fee78="" class="noE-r6t blNm"></div>
                    </div>
                </div>
                <div data-v-934fee78="" class="bri-ayw">
                    <div data-v-934fee78="" class="bri-1y6">
                        <div data-v-934fee78="">월 입금 총액</div>
                        <div data-v-934fee78="" class="fs3-srv">
                            <p data-v-934fee78="" class="text-k23" id="rqestAmt"></p>
                        </div>
                    </div>
                    <div data-v-934fee78="" class="bri-1y6">
                        <div data-v-934fee78="">납부정보</div>
                        <div data-v-934fee78="" class="fs3-srv">
                            <p data-v-934fee78="" class="text-k23" id="payStts"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w10-ole">
                <div class="dep-97m fle-jey fle-wko fle-czy mt3-spx">
                    <div class="fle-19a spa-kov w10-ole mb2-rgn">
                        <ul class="det-et1 w54-aff">
                            <li class="det-2jg tTy-56c bTo-77k">
                                <div> 월입금액 </div>
                                <div>
                                    <p id="allAmt"></p>
                                </div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div >임대료 (과세)</div>
                                <div id="mhlAmt"></div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>관리비 (과세)</div>
                                <div id="managectAmt"></div>
                            </li>  
                            <li class="det-2jg sTy-b67">
                                <div>부가세 (10%) <span class="al0-s4l">(전체 적용)</span></div>
                                <div id="vat"></div>
                            </li>
                        </ul>
                        <ul class="det-et1 w54-aff">
                            <li class="det-2jg tTy-56c bTo-77k">
                                <div>납부 고유번호 </div>
                                <div>1280504 </div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>부과기간 (납기일)</div>
                                <div id="dedtDe"></div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>납부일</div>
                                <div id="payDe">
                                </div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>납부방법</div>
                                <div> </div>
                            </li>
                        </ul>
                    </div>
                    <div class="fle-19a spa-kov w10-ole mb2-rgn">
                        <ul class="det-et1 w54-aff">
                            <li class="det-2jg tTy-56c bTo-77k">
                                <div>증빙 설정</div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>증빙구분</div>
                                <div class="prufNm"></div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>증빙종류</div>
                                <div class="prufKnd"></div>
                            </li>
                            <li class="det-2jg sTy-b67">
                                <div>증빙방식</div>
                                <div class="prufMthd"></div>
                            </li>
                        </ul>
                    </div>
                    <div data-v-0a5d7bee="" class="fle-19a spa-kov w10-ole">
                        <div data-v-0a5d7bee="" class="w54-aff vvtdk bTo-77k"></div>
                        <div data-v-0a5d7bee="" class="w54-aff vvtdk bTo-77k"></div>
                    </div>
                </div>
            </div>
            <div data-v-4822096a="" class="bot-7bs">
                <div data-v-4822096a="" class="btn-4af">
                    <div data-v-4822096a="" class="spl-qv1"></div> 
                    <button data-v-4822096a="" class="btn-9d5 can-req btn-6jx"  onclick="fCloseModal()" type="button"> 닫기 </button> 
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- 납부관리 상세조회 모달 끝  -->
	
<div data-v-b94d42f2="" data-v-2691da40="" class="cont-wrap attach pmcSearchWrapper snipcss-JlPhI">
    <div data-v-b94d42f2="" class="tit-wrap headerBox">
        <h2 data-v-b94d42f2="" class="tp2">납부데이터 조회</h2>
    </div>
    <div data-v-b94d42f2="" class="user-content searchTb">
        <div data-v-704a40ac="" data-v-b94d42f2="" class="searchBox">
        <div id="searchUI">
        
            <div data-v-704a40ac="" class="inBox-space-pay inBoxPd">
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="farLeftTitle">납부상태</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption" name="payStts">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="PAY01"> 납부완료 </option>
                            <option data-v-704a40ac="" value="PAY02"> 납부예정 </option>
                            <option data-v-704a40ac="" value="PAY03"> 연체 </option>
                            <option data-v-704a40ac="" value="can"> 미납부(연체+납부예정) </option>
                            <option data-v-704a40ac="" value="today"> 오늘입금 </option>
                            <option data-v-704a40ac="" value="part_ing"> 분납중 </option>
                            <option data-v-704a40ac="" value="paid_part"> 분납완료 </option>
                        </select></div>
                </div>
               
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle">납부방법</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="passive"> 수동납부 </option>
                            <option data-v-704a40ac="" value="autochk"> 계좌이체 </option>
                            <option data-v-704a40ac="" value="virtual_main"> 전용계좌(가상계좌) </option>
                            <option data-v-704a40ac="" value="virtual_once"> 일회용계좌(가상계좌) </option>
                            <option data-v-704a40ac="" value="creditCard"> 신용카드 </option>
                            <option data-v-704a40ac="" value="sunnap"> 선납납부완료 </option>
                            <option data-v-704a40ac="" value="excel"> 엑셀수동납부 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle">청구서 유형</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="CONT"> 계약금 </option>
                            <option data-v-704a40ac="" value="60400001"> 임대료 </option>
                            <option data-v-704a40ac="" value="60400002"> (개별)변동관리비 </option>
                            <option data-v-704a40ac="" value="60400005"> (일괄)변동관리비 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle">조정여부</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" selected="selected" value="">선택</option>
                            <option data-v-704a40ac="" value="TUNE"> 조정전체 </option>
                            <option data-v-704a40ac="" value="UNCLEAR"> 미처리 </option>
                            <option data-v-704a40ac="" value="TAKE"> 귀속 </option>
                            <option data-v-704a40ac="" value="GIVE"> 지급 </option>
                            <option data-v-704a40ac="" value="HOLD"> 보류 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle">할인여부</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="N"> 할인미적용 </option>
                            <option data-v-704a40ac="" value="Y"> 할인적용 </option>
                        </select></div>
                </div>
            </div>
            <div data-v-704a40ac="" class="inBox-space-pay inBoxPd">
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="farLeftTitle">증빙종류</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="N"> 미설정 </option>
                            <option data-v-704a40ac="" value="60700001"> 세금계산서 </option>
                            <option data-v-704a40ac="" value="60700002"> 계산서 </option>
                            <option data-v-704a40ac="" value="60700003"> 현금영수증 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle titleWrap">증빙발행방식</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="60750001"> 영수 </option>
                            <option data-v-704a40ac="" value="60750002"> 청구 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle titleWrap">증빙발행상태</div>
                    <div data-v-704a40ac="" class="selectBox"><select data-v-704a40ac="" class="select-title select-base select-option payOption">
                            <option data-v-704a40ac="" value="" selected="selected">전체</option>
                            <option data-v-704a40ac="" value="none"> 미발행 </option>
                            <option data-v-704a40ac="" value="success"> 성공 </option>
                            <option data-v-704a40ac="" value="fail"> 실패 </option>
                            <option data-v-704a40ac="" value="reserve"> 발행예약 </option>
                            <option data-v-704a40ac="" value="expect"> 발행예정 </option>
                            <option data-v-704a40ac="" value="except"> 발행제외 </option>
                            <option data-v-704a40ac="" value="send"> 전송중 </option>
                            <option data-v-704a40ac="" value="republ"> 취소발행 </option>
                            <option data-v-704a40ac="" value="cancel"> 발행취소 </option>
                        </select></div>
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle titleWrap">납부고유번호</div> <input data-v-704a40ac="" type="number" placeholder="납부고유번호 입력" class="pmc-input payOption z-idx0">
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="selectTitle">건물명</div>
					<div data-v-704a40ac="" class="selectBox">
						<select data-v-704a40ac=""
							class="select-title select-base select-option payOption" name="rentBldgNo">
							<option data-v-704a40ac="" value="">전체</option>
							<c:forEach items="${rentBldgList }" var="bldg">
								<option data-v-704a40ac="" value="${bldg.cntrctRent.rentRoom.rentBldg.rentBldgNo }">${bldg.cntrctRent.rentRoom.rentBldg.bldgNm }</option>
							</c:forEach>
						</select>
					</div>
				</div>
            </div>
            <div data-v-704a40ac="" class="inBox-space-pay inBoxPd">
                <div data-v-704a40ac="" class="searchSelectBox w260">
                    <div data-v-704a40ac="" class="farLeftTitle">임차인</div> <input data-v-704a40ac="" placeholder="임차인 이름 입력" class="pmc-input payOption z-idx0">
                </div>
                <div data-v-704a40ac="" class="searchSelectBox w260" style="margin-right: 124px;">
                    <div data-v-704a40ac="" class="selectTitle">호실</div> <input data-v-704a40ac="" placeholder="'호'를 제외하고 입력" class="pmc-input payOption z-idx0">
                </div>
                <div data-v-704a40ac="" class="flexBase spaceBetween w783"></div>
            </div>
                
            <div data-v-704a40ac="" class="inBox-space-pay inBoxPd searchBtn" >
                <div data-v-704a40ac="" class="searchSelectBox">
                    <div data-v-704a40ac="" class="farLeftTitle">기간조회</div>
                    <div data-v-704a40ac="" class="selectBox">
	                    <select data-v-704a40ac="" class="select-title select-base select-option payOption" name="payData">
	                        <option data-v-704a40ac="" value=""> 납기/납부 선택 </option>
	                        <option data-v-704a40ac="" value="dedtDe"> 납기일 </option>
	                        <option data-v-704a40ac="" value="payDe"> 납부일 </option>
	                    </select>
                    </div>
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
                	<div data-v-704a40ac="" class="searchSelectBox w260" style="margin-right: -101px;">
                   		<input data-v-704a40ac="" placeholder="검색어를 입력하세요" class="pmc-input payOption z-idx0 searchBox" name="searchWord">
                	
<!--                    <input type="text" name="searchWord"> -->
                  <button data-v-704a40ac="" class="last-btn2" id="searchBtn" type="submit">검색</button>
                	</div>
            </div>
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
                            <div data-v-1db704ec="" class="selectBox-pmc-search"><select data-v-1db704ec="" class="select-title select-base">
                                    <option data-v-1db704ec="" value="CHARGE_DESC" selected="selected">납기일 내림차순</option>
                                    <option data-v-1db704ec="" value="CHARGE_ASC"> 납기일 오름차순 </option>
                                    <option data-v-1db704ec="" value="DEPOS_DESC"> 납부일 내림차순 </option>
                                    <option data-v-1db704ec="" value="DEPOS_ASC"> 납부일 오름차순 </option>
                                </select></div>
                        </div>
                    </div>
                </div>
                <div data-v-9f022a50="" data-v-b94d42f2="" class="tb-list-wrap pmc-tp2">
                    <table data-v-9f022a50="" summary="납부현황표" class="tb-list3 pmc-ptb2 table table-striped">
                        <colgroup data-v-9f022a50="">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                            <col data-v-9f022a50="" width="100">
                        </colgroup>
                        <thead data-v-9f022a50="">
                            <tr data-v-9f022a50="" class="h60">
                                <th data-v-9f022a50="">건물명</th>
                                <th data-v-9f022a50="">층/호수</th>
                                <th data-v-9f022a50="">임차인명</th>
                                <th data-v-9f022a50="">청구서명</th>
                                <th data-v-9f022a50="">청구금액</th>
                                <th data-v-9f022a50="">납부상태</th>
                                <th data-v-9f022a50="">납기일</th>
                                <th data-v-9f022a50="">납부일</th>
                            </tr>
                        </thead>
<%--                         <h1>${payDataList}</h1> --%>
                        <tbody data-v-9f022a50="">
                        <c:forEach items="${payDataList }" var="payData">
                            <tr data-v-3d52edd8="" data-v-9f022a50="" class="payDataList" onclick="fshowModal('${payData.payNo}')" style="height:100px;">
                                <td data-v-3d52edd8="">${payData.cntrctRent.rentRoom.rentBldg.bldgNm }</td>
                                <td data-v-3d52edd8="">${payData.cntrctRent.rentRoom.room.roomFloor }F/${payData.cntrctRent.rentRoom.room.roomUnit }호</td>
                                <td data-v-3d52edd8="">${payData.cntrctRent.cntrctrNm }</td>
                                <td data-v-3d52edd8="">${payData.blNm }</td>
                                <td data-v-3d52edd8="">${payData.rqestAmt }</td>
                                <td data-v-3d52edd8="">${payData.payStts }</td>
                                <td data-v-3d52edd8="">${payData.dedtDe }</td>
                                <td data-v-3d52edd8="">${payData.payDe }</td>
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
<form action="<c:url value='/lessee/payData'/>" id="searchForm">
<!-- 	<input type="text" name="searchType" /> -->
	<input type="hidden" name="searchWord" />
	<input type="hidden" name="rentBldgNo" />
	<input type="hidden" name="currentPage" />
	<input type="hidden" name="payData" /><!-- 납부일/납기일 선택 -->
	<input type="hidden" name="minDt" /><!-- 설정한 기간의 최소날짜 -->
	<input type="hidden" name="maxDt" /><!-- 설정한 기간의 최대날짜 -->
	<input type="hidden" name="payStts" />
</form>
<script>

const yjModal = document.querySelector(".yjmodal")
// const yj1 = document.querySelector("#yj1");
const cntrctrNm = document.querySelector("#cntrctrNm");
const mbtlnum = document.querySelector("#mbtlnum");
const bldgNm = document.querySelector("#bldgNm");
const bldgAddr = document.querySelector("#bldgAddr");
const managectAmt = document.querySelector("#managectAmt");
const mhlAmt = document.querySelector("#mhlAmt");
const roomUnit = document.querySelector("#roomUnit");
const payStts = document.querySelector("#payStts");
const vat = document.querySelector("#vat");
const rqestAmt = document.querySelector("#rqestAmt");
const allAmt = document.querySelector("#allAmt");
const dedtDe = document.querySelector("#dedtDe");
const payDe = document.querySelector("#payDe");
const blNm = document.querySelector(".blNm");
const prufNm = document.querySelector(".prufNm");
const prufKnd = document.querySelector(".prufKnd");
const prufMthd = document.querySelector(".prufMthd");

function fshowModal(payNo){
// 	alert("클릭한넘버:" + curNo);
	yjModal.style.display="block";
		
	let url = cPath+`/lessee/payData/\${payNo}`;
	
	$.ajax({
		url: url,
		type:"GET",
		dataType:"json",
		success:function(resp){
			console.log("서버에서 받은값",resp)
// 			yj1.innerHTML = resp.payNo;
			cntrctrNm.innerHTML = resp.cntrctRent.cntrctrNm;
			mbtlnum.innerHTML = resp.cntrctRent.mbtlnum;
			bldgNm.innerHTML = resp.cntrctRent.rentRoom.rentBldg.bldgNm;
			bldgAddr.innerHTML = resp.cntrctRent.rentRoom.room.bldgAddr;
			mhlAmt.innerHTML = resp.cntrctRent.mhlAmt;
			managectAmt.innerHTML = resp.cntrctRent.managectAmt;
			roomUnit.innerHTML = resp.cntrctRent.rentRoom.room.roomUnit;
			payStts.innerHTML = resp.payStts;
			vat.innerHTML = (resp.cntrctRent.mhlAmt + resp.cntrctRent.managectAmt)*0.1;
			dedtDe.innerHTML = resp.dedtDe;
			payDe.innerHTML = resp.payDe;
			rqestAmt.innerHTML = resp.cntrctRent.mhlAmt + resp.cntrctRent.managectAmt + ((resp.cntrctRent.mhlAmt + resp.cntrctRent.managectAmt)*0.1);
			blNm.innerHTML = resp.blNm;
			prufNm.innerHTML = resp.cntrctRent.prufNm;
			prufKnd.innerHTML = resp.cntrctRent.prufKnd;
			prufMthd.innerHTML = resp.cntrctRent.prufMthd;
		}
	})
	
}

function fCloseModal(){
	yjModal.style.display="none";
}

$(function(){
	
	$(document).on("click", "[data-page]", function(){
		let page = $(this).data('page');
		searchForm.currentPage.value = page;
		$searchForm.submit();
	});

//	searchBtn 을 클릭하면, searchUI 가 가진 모든 입력값을 searchForm 으로 복사하고, searchForm을 전송
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
$("[name='searchWord']").val("${detailConditions.searchWord}")
$("[name='payData']").val("${detailConditions.payData}")
$("[name='minDt']").val("${detailConditions.minDt}")
$("[name='maxDt']").val("${detailConditions.maxDt}")
$("[name='payStts']").val("${detailConditions.payStts}")

});
</script>


