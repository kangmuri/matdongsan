<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/ccpy.css" rel="stylesheet">

<div class="cont-6hv att-tqw pmc-ezr">
    <div class="tit-ky6 header-psn">
        <h2 class="lcmdp">협력업체 목록</h2>
    </div>
    <div class="content-as3 search-rar">
        <div class="fle-97d fle-mj9 mb2-1ee">
            <div class="btn-o7v btn-oqk"> 협력업체 등록 </div>
        </div>
        <div data-v-5458d672="" class="search-k7h">
            <div data-v-5458d672="" class="inBox-space-xcm">
                <div data-v-5458d672="" class="search-jww w30-qke">
                    <div data-v-5458d672="" class="select-ppe title-fro">사업자 구분</div>
                    <div data-v-5458d672="" class="select-mx9"><select data-v-5458d672="" class="select-xqs select-11x select-8x1 sli-jqn">
                            <option data-v-5458d672="" value="">전체</option>
                            <option data-v-5458d672="" value="N"> 비사업자 </option>
                            <option data-v-5458d672="" value="C"> 법인사업자 </option>
                            <option data-v-5458d672="" value="P"> 개인사업자 </option>
                        </select></div>
                </div>
                <div data-v-5458d672="" class="search-jww w30-qke">
                    <div data-v-5458d672="" class="select-ppe">사업자명</div> <input data-v-5458d672="" placeholder="사업자명 입력" class="input-nd3 sli-jqn z-aof">
                </div>
                <div data-v-5458d672="" class="search-jww w30-qke">
                    <div data-v-5458d672="" class="select-ppe">주요분야</div> <input data-v-5458d672="" placeholder="주요분야 입력" class="input-nd3 sli-jqn z-aof">
                </div>
                <div data-v-5458d672="" class="search-jww w30-qke">
                    <div data-v-5458d672="" class="select-ppe">대표 연락처</div> <input data-v-5458d672="" placeholder="대표 연락처 입력" class="input-nd3 sli-jqn z-aof">
                </div>
            </div>
            <div data-v-5458d672="" class="inBox-space-xcm fle-mj9">
                <div data-v-5458d672="" class="search-jww">
                    <div data-v-5458d672="" class="btn-o7v">초기화</div>
                    <div data-v-5458d672="" class="btn-f9q">검색</div>
                </div>
            </div>
        </div>
        <div data-v-15e30fd4="" class="option-mzo">
            <div data-v-15e30fd4="" class="etc-lam">
                <div data-v-15e30fd4="" class="search-5si mr1-wgg"><select data-v-15e30fd4="" class="select-xqs select-11x">
                        <option data-v-15e30fd4="" value="10"> 10개 </option>
                        <option data-v-15e30fd4="" value="20"> 20개 </option>
                        <option data-v-15e30fd4="" value="30"> 30개 </option>
                        <option data-v-15e30fd4="" value="40"> 40개 </option>
                        <option data-v-15e30fd4="" value="50"> 50개 </option>
                        <option data-v-15e30fd4="" value="100"> 100개 </option>
                    </select></div>
                <div data-v-15e30fd4="" class="search-5si mr1-wgg"><select data-v-15e30fd4="" class="select-xqs select-11x">
                        <option data-v-15e30fd4="" value="NAME_DESC"> 회사명 내림차순 </option>
                        <option data-v-15e30fd4="" value="NAME_ASC"> 회사명 오름차순 </option>
                        <option data-v-15e30fd4="" value="REG_DESC"> 등록일 내림차순 </option>
                        <option data-v-15e30fd4="" value="REG_ASC"> 등록일 오름차순 </option>
                    </select></div>
            </div>
            <div data-v-15e30fd4="" class="etc-lam">
                <div data-v-15e30fd4="" class="btn-o7v"> 정보 다운로드 </div>
            </div>
        </div>
        <div class="list-lrm pmc-wdi">
            <table class="list-f9p pmc-42h">
                <colgroup>
                    <col width="30">
                    <col width="120">
                    <col width="120">
                    <col width="80">
                    <col width="80">
                    <col width="120">
                    <col width="120">
                </colgroup>
                <thead>
                    <tr class="yxmps">
                        <th></th>
                        <th>회사명(이름)</th>
                        <th>주요분야</th>
                        <th>대표 연락처</th>
                        <th>대표 이메일</th>
                        <th>사업자여부</th>
                        <th>사업자 구분</th>
                    </tr>
                </thead>
                <tbody>
                    <tr data-v-c0def620="" class="item-lki">
                        <td data-v-c0def620="">
                            <p data-v-c0def620="" class="row-fbo"></p>1
                        </td>
                        <td data-v-c0def620="">
                            <div data-v-c0def620="" class="list-8l7"><span class="underline-r5f btn-obk"> 222 </span> </div>
                        </td>
                        <td data-v-c0def620=""></td>
                        <td data-v-c0def620="">01012341234</td>
                        <td data-v-c0def620="">22@naver.com</td>
                        <td data-v-c0def620="">비사업자</td>
                        <td data-v-c0def620=""></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="mb3-zt6">
            <div data-v-7136ea58="" class="paging-aq9 mt3-92x"><a data-v-7136ea58="" class="btn-nop ini-wao"></a> <a data-v-7136ea58="" class="btn-nop pre-pa8"></a> <a data-v-7136ea58="" class="ekxqa act-jrq">1</a> <a data-v-7136ea58="" class="btn-nop nex-lyb"></a> <a data-v-7136ea58="" class="btn-nop htijw"></a></div>
        </div>
    </div>
    <div class="loading-36q style-Z4ILs" id="style-Z4ILs">
        <div class="loading-2d9"></div>
    </div>
</div>