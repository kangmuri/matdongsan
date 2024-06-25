<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/contractManage.css" rel="stylesheet">

<div data-v-0e4dda1c="" class="cont-hon att-k8k">
    <div data-v-0e4dda1c="" class="tit-5d6">
        <h2 data-v-0e4dda1c="" class="yxfje">임차현황</h2>
    </div>
    <div data-v-0e4dda1c="" class="find-yyf">
        <div data-v-0e4dda1c="" class="list-wza">
            <div data-v-0e4dda1c="" class="filter-kyy">
                <div data-v-0e4dda1c="" class="filter-er3">
                    <div data-v-0e4dda1c="" class="filter-9wt">
                        <div data-v-0e4dda1c="" class="title-dc9">건물</div>
                        <form data-v-0e4dda1c="" class="select-3vn" id="searchUI">
                        	<select data-v-0e4dda1c="" class="select-a7p select-bks" id="rentBldgNo" name="rentBldgNo">
          	                    	<option data-v-0e4dda1c="" value="">건물 선택</option>
                        		<c:forEach items="${bldgList }" var="bldg">
                               		 <option data-v-0e4dda1c="" value="${bldg.rentRoom.rentBldg.rentBldgNo }">${bldg.rentRoom.rentBldg.bldgNm }</option>
                                </c:forEach>
                            </select>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 계약 리스트 -->
            <ul data-v-0e4dda1c="" class="find-3pb">
                <li data-v-0e4dda1c="" class="jekgm">
                	<c:forEach items="${contractRentList }" var="contract">
                	<div class="sideList" onclick="fDetail('${contract.cntrctRentNo}')">
                        <div> 
                            <div class="col-3g9 rotmv">${contract.rentRoom.rentBldg.bldgNm }</div>
                            <div class="hire-dong-cgk">${contract.rentRoom.room.roomUnit }&nbsp;<span>호</span></div>
                            <div class="info-zit">
                            <span>${contract.cntrctrNm}&nbsp;</span>
                            <span>${contract.dctBgng}</span>
                            <span>~</span>
                            <span>${contract.dctEnd}</span>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </li>
                <li data-v-0e4dda1c="" class="btn-pqk"></li>
            </ul>
        </div>
        <ul data-v-0e4dda1c="" class="panel-1cn panel-wqn">
            <li data-v-0e4dda1c="">
                <div data-v-0e4dda1c="" class="find-ked">
                    <div data-v-0e2dbda9="" data-v-0e4dda1c="" class="info-zew mt1-l1y">
                        <div data-v-0e2dbda9="" class="fa-d9k bas-265"></div>
                        <div data-v-0e2dbda9="" class="info-ess">
                            <div data-v-0e2dbda9="" class="per-ps4">
                                <p data-v-0e2dbda9="" class="jqtbe only-ks3 bldgNm"></p>
                                <p data-v-0e2dbda9="" class="jqtbe only-ks3"></p>
                                <p data-v-0e2dbda9="" class="lewmp mbtlnum"></p>
                            </div>
                            <div data-v-0e2dbda9="" class="ovetq">
                                <div data-v-0e2dbda9="" class="info-v72">
                                    <div data-v-0e2dbda9="" class="only-ks3"></div>
                                    <div data-v-0e2dbda9="" class="only-ks3" id="buldPrpos"></div>
                                    <div data-v-0e2dbda9="" class="item-5ss" class="roomUnit"></div>
                                </div>
                                <div data-v-0e2dbda9="">
                                    <div data-v-0e2dbda9=""><span class="dctBgng"></span> <span>~</span> <span class="dctEnd"></span></div>
                                    <div data-v-0e2dbda9=""><span>월입금액</span> <span class="mtRcpmnyAmt"></span><span>원</span> / 납부일 매월 <span class="ctpDedtDe"></span>일</div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <ul data-v-0e4dda1c="">
                        <li data-v-0e4dda1c=""></li>
                        <li data-v-45a748fb="" data-v-0e4dda1c="">
                            <div data-v-45a748fb="" class="content-6ol">
                                <div data-v-45a748fb="">
                                    <div data-v-45a748fb="" class="section-lxo">
                                        <h3 data-v-45a748fb="">임차인 정보</h3>
                                        <ul data-v-45a748fb="" class="btn-kzo">
                                            <li data-v-45a748fb=""></li>
                                        </ul>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="270">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="*">
                                            </colgroup>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">계약자</th>
                                                    <td data-v-45a748fb="" class="pdt-oqi" id="cntrctrNm"></td>
                                                    <th data-v-45a748fb="">계약고유번호</th>
                                                    <td data-v-45a748fb="" id="cntrctRentNo"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">휴대폰 번호</th>
                                                    <td data-v-45a748fb="" class="fle-i3k fle-bd2">
                                                        <div data-v-45a748fb="" class="fle-i3k jus-4s4 abfpr mbtlnum"></div>
                                                    </td>
                                                    <th data-v-45a748fb="">이메일</th>
                                                    <td data-v-45a748fb="" id="emailAdres"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">차량보유</th>
                                                    <td data-v-45a748fb="">
                                                        <p data-v-45a748fb="" class="vhcleYn"></p>
                                                    </td>
                                                    <th data-v-45a748fb="">반려동물</th>
                                                    <td data-v-45a748fb="">
                                                        <p data-v-45a748fb="" class="animalYn"></p>
                                                    </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="" >계약담당자명</th>
                                                    <td data-v-45a748fb="" id="ctpPicName"></td>
                                                    <th data-v-45a748fb="" >계약담당자 휴대폰</th>
                                                    <td data-v-45a748fb="" id="ctpPicMbtlnum"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">계약담당자 이메일</th>
                                                    <td data-v-45a748fb="" id="ctpPicEmail"></td>
                                                    <th data-v-45a748fb="">태그</th>
                                                    <td data-v-45a748fb="" class="fle-i3k spa-goz">
                                                        <div data-v-45a748fb="" class="tag-23z fle-i3k jus-4s4">  </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div data-v-45a748fb="" class="section-lxo mt6-c39">
                                        <h3 data-v-45a748fb=""> 계약정보 </h3>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="270">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="*">
                                            </colgroup>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">계약 등록일</th>
                                                    <td data-v-45a748fb="" id="cntrctDe"></td>
                                                    <th data-v-45a748fb="" >최종 수정일</th>
                                                    <td data-v-45a748fb="" class="ctpUpddeDt"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">건물명</th>
                                                    <td data-v-45a748fb="">
                                                        <p data-v-45a748fb="" class="bd-b58 bldgNm"></p>
                                                    </td>
                                                    <th data-v-45a748fb="">동/호수 (공급면적)</th>
                                                    <td data-v-45a748fb=""> <span class="roomUnit"></span><span>호</span> / 공급면적 : <span class="rentAr"></span> (㎡) </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">계약기간 (청구서 개수)</th>
                                                    <td data-v-45a748fb=""><span class="dctBgng"></span><span>~</span><span class="dctEnd"></span> <span>(기간별 생성)</span> </td>
                                                    <th data-v-45a748fb="" >계약형태 (선불/후불)</th>
                                                    <td data-v-45a748fb="">
                                                        <p data-v-45a748fb="" class="dctClsf"></p>
                                                    </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">청구서명 시작월/부과기간</th>
                                                    <td data-v-45a748fb="">당월 / 계약시작일 기준</td>
                                                    <th data-v-45a748fb=""></th>
                                                    <td data-v-45a748fb=""></td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                    <div data-v-45a748fb="" class="section-lxo mt6-c39">
                                        <h3 data-v-45a748fb="">임대료 정보</h3>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="270">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="*">
                                            </colgroup>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">보증금 (보증금 잔액)</th>
                                                    <td data-v-45a748fb="" id="grnteAmt" class="money"></td>
                                                    <th data-v-45a748fb="">납기일 (청구일자 기준)</th>
                                                    <td data-v-45a748fb="" > <span class="ctpDedtDe"></span><span>일 (계약일기준)</span> </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb=""> 부가세 적용여부 </th>
                                                    <td data-v-45a748fb="">전체 적용</td>
                                                    <th data-v-45a748fb="">부가세 (10%)</th>
                                                    <td data-v-45a748fb="" class="vat money"> </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb=""> 임대료 (과세) </th>
                                                    <td data-v-45a748fb="" class="mhlAmt money"></td>
                                                    <th data-v-45a748fb=""> 관리비 (과세) </th>
                                                    <td data-v-45a748fb="" class="managectAmt money"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">월 입금액</th>
                                                    <td data-v-45a748fb="" class="bol-m4n mtRcpmnyAmt"></td>
                                                    <th data-v-45a748fb="">현 연체료 총액 (부과방식)</th>
                                                    <td data-v-45a748fb=""> 0 원 (미설정) </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                    <div data-v-45a748fb="" class="section-lxo mt6-c39">
                                        <h3 data-v-45a748fb="">수납 정보</h3>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="270">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="*">
                                            </colgroup>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">
                                                        <div data-v-196315a9="" data-v-45a748fb="" class="fle-i3k fle-cho">
                                                            <div data-v-196315a9="">입금자</div>
                                                            <div data-v-196315a9="" class="flo-xks fle-i3k fle-cho "><span data-v-196315a9="" class="icon-m56 behgc">?</span> </div>
                                                        </div>
                                                    </th>
                                                    <td data-v-45a748fb="" class="ctpRcpmnyer"></td>
                                                    <th data-v-45a748fb="">
                                                        <div data-v-196315a9="" data-v-45a748fb="" class="fle-i3k fle-cho">
                                                            <div data-v-196315a9="">추가 입금자</div>
                                                            <div data-v-196315a9="" class="flo-xks fle-i3k fle-cho"><span data-v-196315a9="" class="icon-m56 behgc">?</span> </div>
                                                        </div>
                                                    </th>
                                                    <td data-v-45a748fb=""> 미등록 </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">
                                                        <div data-v-196315a9="" data-v-45a748fb="" class="fle-i3k fle-cho">
                                                            <div data-v-196315a9="">자동입금확인</div>
                                                            <div data-v-196315a9="" class="flo-xks fle-i3k fle-cho"><span data-v-196315a9="" class="icon-m56 behgc">?</span> </div>
                                                        </div>
                                                    </th>
                                                    <td data-v-45a748fb="">0개 계좌 연동</td>
                                                    <th data-v-45a748fb="">직접등록계좌</th>
                                                    <td data-v-45a748fb=""> 미등록 </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">
                                                        <div data-v-196315a9="" data-v-45a748fb="" class="fle-i3k fle-cho">
                                                            <div data-v-196315a9="">가상계좌 (입금 가능액)</div>
                                                            <div data-v-196315a9="" class="flo-xks fle-i3k fle-cho"><span data-v-196315a9="" class="icon-m56 behgc">?</span> </div>
                                                        </div>
                                                    </th>
                                                    <td data-v-45a748fb="" class="pdt-oqi">
                                                        <div data-v-45a748fb="" class="toggle-3li">
                                                            <div data-v-45a748fb=""></div>
                                                            <div data-v-45a748fb="">
                                                                <p data-v-45a748fb="">없음</p>
                                                                <p data-v-45a748fb=""></p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <th data-v-45a748fb="">신용카드 수납</th>
                                                    <td data-v-45a748fb="">미설정</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div data-v-45a748fb="" class="section-lxo mt6-c39">
                                        <div data-v-45a748fb="" class="toggle-3li">
                                            <h3 data-v-45a748fb="">증빙 정보</h3>
                                        </div>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="190">
                                                <col data-v-45a748fb="" width="190">
                                                <col data-v-45a748fb="" width="190">
                                                <col data-v-45a748fb="" width="190">
                                            </colgroup>
                                            <thead data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb=""></th>
                                                    <th data-v-45a748fb="" class="text-d46">임대료 과세</th>
                                                    <th data-v-45a748fb="" class="text-d46 bLe-l5o bRi-mp1">임대료 비과세</th>
                                                    <th data-v-45a748fb="" class="text-d46 bRi-mp1">변동관리비 과세</th>
                                                    <th data-v-45a748fb="" class="text-d46">변동관리비 비과세</th>
                                                </tr>
                                            </thead>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">증빙종류</th>
                                                    <td data-v-45a748fb="" class="text-24b">미발행</td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1">미발행</td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1">미발행</td>
                                                    <td data-v-45a748fb="" class="text-24b">미발행</td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">
                                                        <div data-v-196315a9="" data-v-45a748fb="" class="fle-i3k fle-cho">
                                                            <div data-v-196315a9="">증빙설정일자</div>
                                                            <div data-v-196315a9="" class="flo-xks fle-i3k fle-cho"><span data-v-196315a9="" class="icon-m56 behgc">?</span> </div>
                                                        </div>
                                                    </th>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">발행여부</th>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">공급받는자 유형</th>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">증빙발행 방식</th>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">현금영수증 발행방식</th>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                    <td data-v-45a748fb="" class="text-24b bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="text-24b"></td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">발행일정</th>
                                                    <td data-v-45a748fb=""></td>
                                                    <td data-v-45a748fb="" class="bLe-l5o bRi-mp1"></td>
                                                    <td data-v-45a748fb="" class="bRi-mp1"></td>
                                                    <td data-v-45a748fb=""></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div data-v-45a748fb="" class="section-lxo mt6-c39">
                                        <h3 data-v-45a748fb="">알림 설정</h3>
                                        <table data-v-45a748fb="" class="list-sh9 mt2-9hj">
                                            <colgroup data-v-45a748fb="">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="270">
                                                <col data-v-45a748fb="" width="170">
                                                <col data-v-45a748fb="" width="*">
                                            </colgroup>
                                            <tbody data-v-45a748fb="">
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">납부고지 알림</th>
                                                    <td data-v-45a748fb="" class="toggle-lm2">
                                                        <div data-v-45a748fb="" class="toggle-5ci">
                                                            <div data-v-45a748fb="" class="tab-1h7 tab-wkx">
                                                                <div data-v-45a748fb="" class="tab-eaw"> 발송 </div>
                                                                <div data-v-45a748fb="" class="tab-eaw act-fk4"> 미발송 </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <th data-v-45a748fb="">계약만료 알림</th>
                                                    <td data-v-45a748fb="" class="toggle-lm2">
                                                        <div data-v-45a748fb="" class="toggle-5ci">
                                                            <div data-v-45a748fb="" class="tab-1h7 tab-wkx">
                                                                <div data-v-45a748fb="" class="tab-eaw"> 발송 </div>
                                                                <div data-v-45a748fb="" class="tab-eaw act-fk4"> 미발송 </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-v-45a748fb="">
                                                    <th data-v-45a748fb="">연체내역 알림</th>
                                                    <td data-v-45a748fb="" class="toggle-lm2">
                                                        <div data-v-45a748fb="" class="toggle-5ci">
                                                            <div data-v-45a748fb="" class="tab-1h7 tab-wkx">
                                                                <div data-v-45a748fb="" class="tab-eaw"> 발송 </div>
                                                                <div data-v-45a748fb="" class="tab-eaw act-fk4"> 미발송 </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <th data-v-45a748fb=""></th>
                                                    <td data-v-45a748fb=""></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <div data-v-0e4dda1c="" class="loading-ijk style-zIyjc" id="style-zIyjc">
        <div data-v-0e4dda1c="" class="loading-rg3"></div>
    </div>
</div>
<%-- <form action="<c:url value='/lessee/contractRent'/>" id="searchForm"> --%>
<!-- 	<input type="text" name="rentBldgNo" /> -->
<!-- </form> -->
<script>
	document.querySelector(".sideList").click();
//함수안의 값이름과 담을 공간의 이름이 같을 경우 이클립스가 혼동될수있듬 이름 다르게 줘야함
	const cntrctRentNoEL = document.querySelector("#cntrctRentNo");
	const grnteAmt = document.querySelector("#grnteAmt");
	const cntrctrNm = document.querySelector("#cntrctrNm");
	const ctpPicName = document.querySelector("#ctpPicName");
	const ctpPicMbtlnum = document.querySelector("#ctpPicMbtlnum");
	const emailAdres = document.querySelector("#emailAdres");
	const ctpPicEmail = document.querySelector("#ctpPicEmail");
	const cntrctDe = document.querySelector("#cntrctDe");
	const ctpUpddeDt = document.querySelector("#ctpUpddeDt");
	const ctpDedtDe = document.querySelectorAll(".ctpDedtDe");
	const bldgNm = document.querySelectorAll(".bldgNm");
	const dctBgng = document.querySelectorAll(".dctBgng");
	const dctEnd = document.querySelectorAll(".dctEnd");
	const mhlAmt = document.querySelectorAll(".mhlAmt");
	const managectAmt = document.querySelectorAll(".managectAmt");
	const ctpRcpmnyer = document.querySelectorAll(".ctpRcpmnyer");
	const mtRcpmnyAmt = document.querySelectorAll(".mtRcpmnyAmt");
	const roomUnit = document.querySelectorAll(".roomUnit");
	const dctClsf = document.querySelector(".dctClsf");
	const rentAr = document.querySelector(".rentAr");
	const vat = document.querySelector(".vat");
	const vhcleYn = document.querySelector(".vhcleYn");
	const animalYn = document.querySelector(".animalYn");

	const mbtlnums = document.querySelectorAll(".mbtlnum");
// 	console.log("체킁",mbtlnums);
// 	const cntrctDe = document.query.Selector("#cntrctDe");
	
	function fDetail(cntrctRentNo){
// 		alert("클릭한 넘버"+ cntrctRentNo);
		
		
		let url = cPath + `/lessee/contractRent/\${cntrctRentNo}`;

		$.ajax({
			url: url,
			type:"GET",
			dataType:"json",
			success:function(resp){
				console.log("진짜확인", resp.rentRoom.rentBldg.bldgNm);
				console.log("서버에서 받은 값 ", resp);
				cntrctRentNoEL.innerHTML = resp.cntrctRentNo;
				grnteAmt.innerHTML = resp.grnteAmt;
				cntrctrNm.innerHTML = resp.cntrctrNm;
				ctpPicName.innerHTML = resp.ctpPicName;
				ctpPicMbtlnum.innerHTML = resp.ctpPicMbtlnum;
				emailAdres.innerHTML = resp.emailAdres;
				ctpPicEmail.innerHTML = resp.ctpPicEmail;
				cntrctDe.innerHTML = resp.cntrctDe;
				dctClsf.innerHTML = resp.dctClsf;
				rentAr.innerHTML = resp.rentRoom.room.rentAr;
				vhcleYn.innerHTML = resp.vhcleYn;
				animalYn.innerHTML = resp.animalYn;
				vat.innerHTML = (parseInt(resp.mhlAmt)+parseInt(resp.managectAmt))*0.1;
				bldgNm.forEach(bldgNm => bldgNm.innerHTML=resp.rentRoom.rentBldg.bldgNm )
				dctBgng.forEach(dctBgng => dctBgng.innerHTML=resp.dctBgng )
				dctEnd.forEach(dctEnd => dctEnd.innerHTML=resp.dctEnd )
				mhlAmt.forEach(mhlAmt => mhlAmt.innerHTML=resp.mhlAmt )
				managectAmt.forEach(managectAmt => managectAmt.innerHTML=resp.managectAmt )
				ctpRcpmnyer.forEach(ctpRcpmnyer => ctpRcpmnyer.innerHTML=resp.ctpRcpmnyer )
				mtRcpmnyAmt.forEach(mtRcpmnyAmt => mtRcpmnyAmt.innerHTML=parseInt(resp.mhlAmt)+parseInt(resp.managectAmt)+(parseInt(resp.mhlAmt)+parseInt(resp.managectAmt))*0.1)
				roomUnit.forEach(roomUnit => roomUnit.innerHTML=resp.rentRoom.room.roomUnit )
				ctpDedtDe.forEach(ctpDedtDe => ctpDedtDe.innerHTML=resp.ctpDedtDe )
				
				
				//같은값을 여러곳에 뿌려줘야할때
                mbtlnums.forEach(mbtlnum => mbtlnum.innerHTML=resp.mbtlnum )
                console.log("정말확인",resp.mbtlnum);
//				mbtlnum.innerHTML = resp.mbtlnum;
// 				cntrctDe.innerHTML = resp.cntrctDe;
			}
		})
	}
	
	//셀렉트값이 변경되었을때 강제 서밋 건물 선택에따른 호실리스트 출력
		const $searchUI = $("#searchUI"); //자바스크립트로 하려면  var searchUI = document.getElementById('searchUI'); 이렇게 
	     document.addEventListener('DOMContentLoaded', function() {
            var selectElement = document.getElementById('rentBldgNo');
            selectElement.addEventListener('change', function() {
//             	alert("강무리");
            	let $searchUI = $(this).parents("#searchUI");
            	$searchUI.submit();
        });
           $("[name='rentBldgNo']").val("${detailConditions.rentBldgNo}")
	    })
	

</script>