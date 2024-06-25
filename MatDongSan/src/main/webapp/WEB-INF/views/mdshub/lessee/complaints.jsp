<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath }/resources/NiceAdmin/assets/vendor/complaints.css" rel="stylesheet">

<div class="snipcss-flex">
    <div class="inB-rsr">
        <div class="cont-1i4 att-xv9 pmc-ho7">
            <div class="tit-crs header-vd1">
                <h2 class="wofor">민원관리 목록</h2>
            </div>
            <div class="content-52a search-bq3">
                <form data-v-ee436e2c="" class="search-l81" id="searchUI">
                    <div data-v-ee436e2c="" class="inBox-space-oid">
                        <div data-v-ee436e2c="" class="search-owv">
                            <div data-v-ee436e2c="" class="select-4lt">민원종류</div>
                            <div data-v-ee436e2c="" class="select-m7h">
                            	<select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha" name="cvlcpKnd">
                                    <option data-v-ee436e2c="" value="">전체</option>
                                    <option data-v-ee436e2c="" value="COMKND01"> 공용 시설물 유지보수 문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND02"> 시설이용 문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND03"> 계약정보 관련 문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND04"> 개별세대 시설물 유지보수 문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND05"> 입주문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND06"> 퇴실문의 </option>
                                    <option data-v-ee436e2c="" value="COMKND07"> 임대료(관리비) 문의 </option>
                                </select>
                              </div>
                        </div>
                        <div data-v-ee436e2c="" class="search-owv w26-lpx">
                            <div data-v-ee436e2c="" class="select-4lt">처리상태</div>
                            <div data-v-ee436e2c="" class="select-m7h">
                            	<select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha" name="cvlcpStts">
                                    <option data-v-ee436e2c="" value="">전체</option>
                                    <option data-v-ee436e2c="" value="COMSTTR01"> 처리중 </option>
                                    <option data-v-ee436e2c="" value="COMSTTR02"> 처리완료 </option>
                                    <option data-v-ee436e2c="" value="COMSTTR03"> 처리불가 </option>
                                </select>
                            </div>
                        </div>
                        <div data-v-ee436e2c="" class="search-owv w26-lpx">
                            <div data-v-ee436e2c="" class="select-4lt">건물명</div>
                            <div data-v-ee436e2c="" class="select-m7h">
	                            <select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha" name="rentBldgNo">
	                            <option data-v-ee436e2c="" value="">건물 선택</option>
	                            		<c:forEach items="${bldgList}" var="bldg">
	                                    	<option data-v-ee436e2c="" value="${bldg.rentBldg.rentBldgNo }">${bldg.rentBldg.bldgNm }</option>
	                            		</c:forEach>
	                            </select>
                            </div>
                        </div>
                    </div>
                    <div data-v-ee436e2c="" class="inBox-space-oid">
                        <div data-v-ee436e2c="" class="search-owv">
                            <div data-v-ee436e2c="" class="select-4lt">기간조회</div>
                            <div data-v-ee436e2c="" class="select-m7h"><select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha">
                                    <option data-v-ee436e2c="" value="">전체</option>
                                    <option data-v-ee436e2c="" value=""> 전체 </option>
                                    <option data-v-ee436e2c="" value="REG"> 요청일시 </option>
                                    <option data-v-ee436e2c="" value="MOD"> 처리일시 </option>
                                </select></div>
                            <div data-v-ee436e2c="" class="search-owv ml1-t7e">
                                <div data-v-ee436e2c="" class="vdp-sds">
                                    <div> <input type="text" placeholder="검색 시작일" class="input-h8b qqjmq cus-4oh search-zto"> </div>
                                    <div class="vdp-6pl style-dc4ol" id="style-dc4ol">
                                        <header><span class="pre-o5g">&lt;</span> <span class="ftcdr">2024년 5월</span> <span class="nex-1zz">&gt;</span></header>
                                        <div><span class="cel-h24 header-5k5">일</span><span class="cel-h24 header-5k5">월</span><span class="cel-h24 header-5k5">화</span><span class="cel-h24 header-5k5">수</span><span class="cel-h24 header-5k5">목</span><span class="cel-h24 header-5k5">금</span><span class="cel-h24 header-5k5">토</span> <span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh select-6gn">1</span><span class="cel-h24 kploh">2</span><span class="cel-h24 kploh">3</span><span class="cel-h24 kploh">4</span><span class="cel-h24 kploh">5</span><span class="cel-h24 kploh">6</span><span class="cel-h24 kploh">7</span><span class="cel-h24 kploh">8</span><span class="cel-h24 kploh">9</span><span class="cel-h24 kploh">10</span><span class="cel-h24 kploh">11</span><span class="cel-h24 kploh">12</span><span class="cel-h24 kploh">13</span><span class="cel-h24 kploh">14</span><span class="cel-h24 kploh">15</span><span class="cel-h24 kploh">16</span><span class="cel-h24 kploh">17</span><span class="cel-h24 kploh">18</span><span class="cel-h24 kploh">19</span><span class="cel-h24 kploh">20</span><span class="cel-h24 kploh">21</span><span class="cel-h24 kploh">22</span><span class="cel-h24 kploh">23</span><span class="cel-h24 kploh">24</span><span class="cel-h24 kploh">25</span><span class="cel-h24 kploh">26</span><span class="cel-h24 kploh">27</span><span class="cel-h24 kploh">28</span><span class="cel-h24 kploh">29</span><span class="cel-h24 kploh">30</span><span class="cel-h24 kploh">31</span></div>
                                    </div>
                                    <div class="vdp-6pl style-ea4Y5" id="style-ea4Y5">
                                        <header><span class="pre-o5g">&lt;</span> <span class="ftcdr">2024년</span> <span class="nex-1zz">&gt;</span></header> <span class="cel-h24 mon-z62">1월</span><span class="cel-h24 mon-z62">2월</span><span class="cel-h24 mon-z62">3월</span><span class="cel-h24 mon-z62">4월</span><span class="cel-h24 mon-z62 select-6gn">5월</span><span class="cel-h24 mon-z62">6월</span><span class="cel-h24 mon-z62">7월</span><span class="cel-h24 mon-z62">8월</span><span class="cel-h24 mon-z62">9월</span><span class="cel-h24 mon-z62">10월</span><span class="cel-h24 mon-z62">11월</span><span class="cel-h24 mon-z62">12월</span>
                                    </div>
                                    <div class="vdp-6pl style-HTIOi" id="style-HTIOi">
                                        <header><span class="pre-o5g">&lt;</span> <span>2020 - 2029년</span> <span class="nex-1zz">&gt;</span></header> <span class="cel-h24 yea-oif">2020</span><span class="cel-h24 yea-oif">2021</span><span class="cel-h24 yea-oif">2022</span><span class="cel-h24 yea-oif">2023</span><span class="cel-h24 yea-oif select-6gn">2024</span><span class="cel-h24 yea-oif">2025</span><span class="cel-h24 yea-oif">2026</span><span class="cel-h24 yea-oif">2027</span><span class="cel-h24 yea-oif">2028</span><span class="cel-h24 yea-oif">2029</span>
                                    </div>
                                </div> <span data-v-ee436e2c="" class="spa-ofr"> ~ </span>
                                <div data-v-ee436e2c="" class="vdp-sds">
                                    <div> <input type="text" placeholder="검색 종료일" class="input-h8b qqjmq cus-4oh search-zto"> </div>
                                    <div class="vdp-6pl style-Cj61W" id="style-Cj61W">
                                        <header><span class="pre-o5g">&lt;</span> <span class="ftcdr">2024년 5월</span> <span class="nex-1zz">&gt;</span></header>
                                        <div><span class="cel-h24 header-5k5">일</span><span class="cel-h24 header-5k5">월</span><span class="cel-h24 header-5k5">화</span><span class="cel-h24 header-5k5">수</span><span class="cel-h24 header-5k5">목</span><span class="cel-h24 header-5k5">금</span><span class="cel-h24 header-5k5">토</span> <span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh bla-shc"></span><span class="cel-h24 kploh">1</span><span class="cel-h24 kploh">2</span><span class="cel-h24 kploh">3</span><span class="cel-h24 kploh">4</span><span class="cel-h24 kploh">5</span><span class="cel-h24 kploh">6</span><span class="cel-h24 kploh">7</span><span class="cel-h24 kploh">8</span><span class="cel-h24 kploh">9</span><span class="cel-h24 kploh">10</span><span class="cel-h24 kploh">11</span><span class="cel-h24 kploh">12</span><span class="cel-h24 kploh">13</span><span class="cel-h24 kploh">14</span><span class="cel-h24 kploh">15</span><span class="cel-h24 kploh">16</span><span class="cel-h24 kploh">17</span><span class="cel-h24 kploh">18</span><span class="cel-h24 kploh">19</span><span class="cel-h24 kploh">20</span><span class="cel-h24 kploh">21</span><span class="cel-h24 kploh">22</span><span class="cel-h24 kploh">23</span><span class="cel-h24 kploh">24</span><span class="cel-h24 kploh">25</span><span class="cel-h24 kploh">26</span><span class="cel-h24 kploh">27</span><span class="cel-h24 kploh">28</span><span class="cel-h24 kploh">29</span><span class="cel-h24 kploh">30</span><span class="cel-h24 kploh select-6gn">31</span></div>
                                    </div>
                                    <div class="vdp-6pl style-AxQqE" id="style-AxQqE">
                                        <header><span class="pre-o5g">&lt;</span> <span class="ftcdr">2024년</span> <span class="nex-1zz">&gt;</span></header> <span class="cel-h24 mon-z62">1월</span><span class="cel-h24 mon-z62">2월</span><span class="cel-h24 mon-z62">3월</span><span class="cel-h24 mon-z62">4월</span><span class="cel-h24 mon-z62 select-6gn">5월</span><span class="cel-h24 mon-z62">6월</span><span class="cel-h24 mon-z62">7월</span><span class="cel-h24 mon-z62">8월</span><span class="cel-h24 mon-z62">9월</span><span class="cel-h24 mon-z62">10월</span><span class="cel-h24 mon-z62">11월</span><span class="cel-h24 mon-z62">12월</span>
                                    </div>
                                    <div class="vdp-6pl style-F5Pc5" id="style-F5Pc5">
                                        <header><span class="pre-o5g">&lt;</span> <span>2020 - 2029년</span> <span class="nex-1zz">&gt;</span></header> <span class="cel-h24 yea-oif">2020</span><span class="cel-h24 yea-oif">2021</span><span class="cel-h24 yea-oif">2022</span><span class="cel-h24 yea-oif">2023</span><span class="cel-h24 yea-oif select-6gn">2024</span><span class="cel-h24 yea-oif">2025</span><span class="cel-h24 yea-oif">2026</span><span class="cel-h24 yea-oif">2027</span><span class="cel-h24 yea-oif">2028</span><span class="cel-h24 yea-oif">2029</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div data-v-ee436e2c="" class="search-owv">
                            <div data-v-ee436e2c="" class="select-4lt"></div>
                        </div>
                        <div data-v-ee436e2c="" class="search-owv">
                            <div data-v-ee436e2c="" class="select-4lt"></div>
                        </div>
                        <div data-v-ee436e2c="" class="search-owv">
                        	<input type="text" value="" name="cvlcpCn" class="input-h8b qqjmq cus-4oh search-zto complaintSearch" placeholder="검색어입력">
                            <div data-v-ee436e2c="" class="btn-dds">초기화</div>
                            <div data-v-ee436e2c="" class="btn-bgd" id="searchBtn">검색</div>
                            <a href="${pageContext.request.contextPath}/lessee/complaints/form" data-v-ee436e2c="" class="btn-bgd">민원신청</a>
                        </div>
                    </div>
                </form>
                <div class="status-qrw">
                    <ul class="row-cjm">
                        <li data-v-6ba9f16f="" class="bui-lyv">
                            <div data-v-6ba9f16f="" class="fle-hew">
                                <div data-v-6ba9f16f="" class="fle-6om fle-ei3 fle-7cj njces">
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro header-t5c header-y1l njces">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-7so">
                                            <p data-v-6ba9f16f="">민원현황 </p>
                                            <p data-v-6ba9f16f="" class="ml1-8jp">▼</p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-iy4"> 0 건 </div>
                                    </div>
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro fle-hew style-XdmbA" id="style-XdmbA">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-7so">
                                            <p data-v-6ba9f16f="">처리중 </p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-iy4"> 0 건 </div>
                                    </div>
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro fle-hew style-67hoH" id="style-67hoH">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-7so">
                                            <p data-v-6ba9f16f="">처리완료(평균 완료 경과일) </p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-iy4"> 0 건 (0 일) </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-v-6ba9f16f="" class="bui-lyv">
                            <div data-v-6ba9f16f="" class="fle-hew">
                                <div data-v-6ba9f16f="" class="fle-6om fle-ei3 fle-7cj njces">
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro header-7y9 header-y1l njces">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-9oi">
                                            <p data-v-6ba9f16f="">전표현황 </p>
                                            <p data-v-6ba9f16f="" class="ml1-8jp">▼</p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-hew"> 0 건 </div>
                                        <div data-v-6ba9f16f="" class="fle-7so text-xyt"> 0 원 </div>
                                    </div>
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro fle-hew style-XCFR4" id="style-XCFR4">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-9oi">
                                            <p data-v-6ba9f16f="">지급완료 </p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-hew"> 0 건 </div>
                                        <div data-v-6ba9f16f="" class="fle-7so text-xyt"> 0 원 </div>
                                    </div>
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro fle-hew style-TGGIr" id="style-TGGIr">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-9oi">
                                            <p data-v-6ba9f16f="">미지급 </p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-hew"> 0 건 </div>
                                        <div data-v-6ba9f16f="" class="fle-7so text-xyt"> 0 원 </div>
                                    </div>
                                    <div data-v-6ba9f16f="" class="row-86l w10-7ro fle-hew style-BGkjk" id="style-BGkjk">
                                        <div data-v-6ba9f16f="" class="text-6km fle-6om fle-7cj fle-9oi">
                                            <p data-v-6ba9f16f="">지급보류 </p>
                                        </div>
                                        <div data-v-6ba9f16f="" class="text-xyt fle-hew"> 0 건 </div>
                                        <div data-v-6ba9f16f="" class="fle-7so text-xyt"> 0 원 </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div data-v-056d2dc6="" class="option-czn">
                    <div data-v-056d2dc6="" class="etc-k3f">
                        <div data-v-056d2dc6="" class="search-n1r mr1-3pw"><select data-v-056d2dc6="" class="select-xto select-bie">
                                <option data-v-056d2dc6="" value="10"> 10개 </option>
                                <option data-v-056d2dc6="" value="20"> 20개 </option>
                                <option data-v-056d2dc6="" value="30"> 30개 </option>
                                <option data-v-056d2dc6="" value="40"> 40개 </option>
                                <option data-v-056d2dc6="" value="50"> 50개 </option>
                                <option data-v-056d2dc6="" value="100"> 100개 </option>
                            </select></div>
                        <div data-v-056d2dc6="" class="search-n1r mr1-3pw"><select data-v-056d2dc6="" class="select-xto select-bie">
                                <option data-v-056d2dc6="" value="REG_DESC"> 요청일시 내림차순 </option>
                                <option data-v-056d2dc6="" value="REG_ASC"> 요청일시 오름차순 </option>
                                <option data-v-056d2dc6="" value="MOD_DESC"> 처리일시 내림차순 </option>
                                <option data-v-056d2dc6="" value="MOD_ASC"> 처리일시 오름차순 </option>
                            </select></div>
                    </div>
                    <div data-v-056d2dc6="" class="option-xow"></div>
                </div>
                <div data-v-8b0afffe="" class="list-xdm pmc-poy cus-7ps">
                    <table data-v-8b0afffe="" class="list-iwx pmc-ykh table table-striped">
                        <colgroup data-v-8b0afffe="">
                            <col data-v-8b0afffe="" width="17%">
                            <col data-v-8b0afffe="" width="17%">
                            <col data-v-8b0afffe="" width="17%">
                            <col data-v-8b0afffe="" width="17%">
                            <col data-v-8b0afffe="" width="17%">
                            <col data-v-8b0afffe="" width="17%">
                        </colgroup>
                        <thead data-v-8b0afffe="">
                            <tr data-v-8b0afffe="" class="bvxrl">
                                <th data-v-8b0afffe="">민원번호</th>
                                <th data-v-8b0afffe="">민원종류</th>
                                <th data-v-8b0afffe="">민원내용</th>
                                <th data-v-8b0afffe="">처리상태</th>
                                <th data-v-8b0afffe="">민원처리자</th>
                                <th data-v-8b0afffe="">처리희망일시</th>
                            </tr>
                        </thead>
                        <tbody data-v-8b0afffe="">
                             <c:forEach items="${complaintsList }" var="complaints" >
                             <c:url value="complaints/${complaints.cvlcpNo }" var="detailUrl"></c:url>
	                            <tr onclick="location.href='${detailUrl }'">
	                                <td data-v-8b0afffe="" class="noB-5q3">
	                                    ${complaints.cvlcpNo }
	                                </td>
	                                <td data-v-8b0afffe="" class="noB-5q3">
	                                    ${complaints.cvlcpKnd }
	                                </td>
	                                <td data-v-8b0afffe="" class="noB-5q3 complaintsTitle">
	                                    ${complaints.cvlcpCn }
	                                </td>
	                                <td data-v-8b0afffe="" class="noB-5q3">
	                                    ${complaints.cvlcpStts }
	                                </td>
	                                <td data-v-8b0afffe="" class="noB-5q3">
	                                    ${complaints.users.userId }
	                                </td>
	                                <td data-v-8b0afffe="" class="noB-5q3">
	                                    ${complaints.cvlcpHopeDt }
	                                </td>
	                            </tr>
	                        </c:forEach>
                        </tbody>
                    </table>
                    ${pagingHTML }
                </div>
                <div class="mb3-5o2"></div>
            </div>
        </div>
    </div>
</div>
<form action="<c:url value='/lessee/complaints'/>" id="searchForm">
	<input type="hidden" name="rentBldgNo" />
	<input type="hidden" name="cvlcpCn" />
	<input type="hidden" name="cvlcpKnd" />
	<input type="hidden" name="cvlcpStts" />
	<input type="hidden" name="currentPage" />
</form>
<script>
$(function(){
	
	$(document).on("click", "[data-page]", function(){
		let page = $(this).data('page');
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
    $("[name='cvlcpCn']").val("${detailConditions.cvlcpCn}")
    $("[name='cvlcpKnd']").val("${detailConditions.cvlcpKnd}")
    $("[name='cvlcpStts']").val("${detailConditions.cvlcpStts}")

});   

</script>