<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/chit.css" rel="stylesheet">
<div class="cont-1ax att-7do pmc-ltn">
    <div class="tit-8yn header-5dk">
        <h2 class="yvbpr">전표관리 (협력업체)</h2>
    </div>
    <div class="content-ztb search-9g8">
        <div data-v-df07fe1e="" class="search-anz">
            <div data-v-df07fe1e="" class="inBox-space-rsb">
                <div data-v-df07fe1e="" class="search-vha w25-37x">
                    <div data-v-df07fe1e="" class="select-gic title-kjd">협력업체</div>
                    <div data-v-df07fe1e="" class="select-omw"><select data-v-df07fe1e="" class="select-yr5 select-y26 select-76b sli-7iy">
                            <option data-v-df07fe1e="" value="">전체</option>
                            <option data-v-df07fe1e="" value="5"> 222 </option>
                        </select></div>
                </div>
                <div data-v-df07fe1e="" class="search-vha w25-37x">
                    <div data-v-df07fe1e="" class="select-gic title-kjd">지급상태</div>
                    <div data-v-df07fe1e="" class="select-omw"><select data-v-df07fe1e="" class="select-yr5 select-y26 select-76b sli-7iy">
                            <option data-v-df07fe1e="" value="">전체</option>
                            <option data-v-df07fe1e="" value="NONESEND"> 미지급 </option>
                            <option data-v-df07fe1e="" value="COMPSEND"> 지급완료 </option>
                            <option data-v-df07fe1e="" value="HOLDSEND"> 지급보류 </option>
                        </select></div>
                </div>
                <div data-v-df07fe1e="" class="search-vha w25-37x">
                    <div data-v-df07fe1e="" class="select-gic">생성자</div> <input data-v-df07fe1e="" placeholder="생성자 이름 입력" class="input-8s1 sli-7iy z-hxp">
                </div>
                <div data-v-df07fe1e="" class="search-vha w25-37x">
                    <div data-v-df07fe1e="" class="select-gic">처리자</div> <input data-v-df07fe1e="" placeholder="지급완료/보류 처리자 이름 입력" class="input-8s1 sli-7iy z-hxp">
                </div>
                <div data-v-df07fe1e="" class="search-vha w25-37x">
                    <div data-v-df07fe1e="" class="select-gic">민원번호</div> <input data-v-df07fe1e="" placeholder="민원번호 입력" class="input-8s1 sli-7iy z-hxp">
                </div>
            </div>
            <div data-v-df07fe1e="" class="inBox-space-rsb">
                <div data-v-df07fe1e="" class="per-sg7">
                    <div data-v-df07fe1e="" class="search-vha w25-37x">
                        <div data-v-df07fe1e="" class="select-gic title-kjd">기간조회</div>
                        <div data-v-df07fe1e="" class="select-omw"><select data-v-df07fe1e="" class="select-yr5 select-y26 select-76b sli-7iy">
                                <option data-v-df07fe1e="" value="">전체</option>
                                <option data-v-df07fe1e="" value="CHARGE_DT"> 지급기일 </option>
                                <option data-v-df07fe1e="" value="SEND_DT"> 지급일 </option>
                            </select></div>
                    </div>
                    <div data-v-df07fe1e="" class="search-vha ml1-gnb">
                        <div data-v-df07fe1e="" class="vdp-hel ui-1vh">
                            <div> <input type="text" placeholder="검색 시작일" class="input-lj7 ofccq sli-jlg search-o7y"> </div>
                            <div class="vdp-yoi style-k3DOY" id="style-k3DOY">
                                <header><span class="pre-q56">&lt;</span> <span class="wxafp">2024년 5월</span> <span class="nex-sza">&gt;</span></header>
                                <div><span class="cel-o9o header-2wr">일</span><span class="cel-o9o header-2wr">월</span><span class="cel-o9o header-2wr">화</span><span class="cel-o9o header-2wr">수</span><span class="cel-o9o header-2wr">목</span><span class="cel-o9o header-2wr">금</span><span class="cel-o9o header-2wr">토</span> <span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco select-38k">1</span><span class="cel-o9o xgsco">2</span><span class="cel-o9o xgsco">3</span><span class="cel-o9o xgsco">4</span><span class="cel-o9o xgsco">5</span><span class="cel-o9o xgsco">6</span><span class="cel-o9o xgsco">7</span><span class="cel-o9o xgsco">8</span><span class="cel-o9o xgsco">9</span><span class="cel-o9o xgsco">10</span><span class="cel-o9o xgsco">11</span><span class="cel-o9o xgsco">12</span><span class="cel-o9o xgsco">13</span><span class="cel-o9o xgsco">14</span><span class="cel-o9o xgsco">15</span><span class="cel-o9o xgsco">16</span><span class="cel-o9o xgsco">17</span><span class="cel-o9o xgsco">18</span><span class="cel-o9o xgsco">19</span><span class="cel-o9o xgsco">20</span><span class="cel-o9o xgsco">21</span><span class="cel-o9o xgsco">22</span><span class="cel-o9o xgsco">23</span><span class="cel-o9o xgsco">24</span><span class="cel-o9o xgsco">25</span><span class="cel-o9o xgsco">26</span><span class="cel-o9o xgsco">27</span><span class="cel-o9o xgsco">28</span><span class="cel-o9o xgsco">29</span><span class="cel-o9o xgsco">30</span><span class="cel-o9o xgsco">31</span></div>
                            </div>
                            <div class="vdp-yoi style-d5q3x" id="style-d5q3x">
                                <header><span class="pre-q56">&lt;</span> <span class="wxafp">2024년</span> <span class="nex-sza">&gt;</span></header> <span class="cel-o9o mon-xhh">1월</span><span class="cel-o9o mon-xhh">2월</span><span class="cel-o9o mon-xhh">3월</span><span class="cel-o9o mon-xhh">4월</span><span class="cel-o9o mon-xhh select-38k">5월</span><span class="cel-o9o mon-xhh">6월</span><span class="cel-o9o mon-xhh">7월</span><span class="cel-o9o mon-xhh">8월</span><span class="cel-o9o mon-xhh">9월</span><span class="cel-o9o mon-xhh">10월</span><span class="cel-o9o mon-xhh">11월</span><span class="cel-o9o mon-xhh">12월</span>
                            </div>
                            <div class="vdp-yoi style-XV9O3" id="style-XV9O3">
                                <header><span class="pre-q56">&lt;</span> <span>2020 - 2029년</span> <span class="nex-sza">&gt;</span></header> <span class="cel-o9o yea-d94">2020</span><span class="cel-o9o yea-d94">2021</span><span class="cel-o9o yea-d94">2022</span><span class="cel-o9o yea-d94">2023</span><span class="cel-o9o yea-d94 select-38k">2024</span><span class="cel-o9o yea-d94">2025</span><span class="cel-o9o yea-d94">2026</span><span class="cel-o9o yea-d94">2027</span><span class="cel-o9o yea-d94">2028</span><span class="cel-o9o yea-d94">2029</span>
                            </div>
                        </div> <span data-v-df07fe1e="" class="spa-jko"> ~ </span>
                        <div data-v-df07fe1e="" class="vdp-hel ui-1vh">
                            <div> <input type="text" placeholder="검색 종료일" class="input-lj7 ofccq sli-jlg search-o7y"> </div>
                            <div class="vdp-yoi style-mZDtz" id="style-mZDtz">
                                <header><span class="pre-q56">&lt;</span> <span class="wxafp">2024년 5월</span> <span class="nex-sza">&gt;</span></header>
                                <div><span class="cel-o9o header-2wr">일</span><span class="cel-o9o header-2wr">월</span><span class="cel-o9o header-2wr">화</span><span class="cel-o9o header-2wr">수</span><span class="cel-o9o header-2wr">목</span><span class="cel-o9o header-2wr">금</span><span class="cel-o9o header-2wr">토</span> <span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco bla-vok"></span><span class="cel-o9o xgsco">1</span><span class="cel-o9o xgsco">2</span><span class="cel-o9o xgsco">3</span><span class="cel-o9o xgsco">4</span><span class="cel-o9o xgsco">5</span><span class="cel-o9o xgsco">6</span><span class="cel-o9o xgsco">7</span><span class="cel-o9o xgsco">8</span><span class="cel-o9o xgsco">9</span><span class="cel-o9o xgsco">10</span><span class="cel-o9o xgsco">11</span><span class="cel-o9o xgsco">12</span><span class="cel-o9o xgsco">13</span><span class="cel-o9o xgsco">14</span><span class="cel-o9o xgsco">15</span><span class="cel-o9o xgsco">16</span><span class="cel-o9o xgsco">17</span><span class="cel-o9o xgsco">18</span><span class="cel-o9o xgsco">19</span><span class="cel-o9o xgsco">20</span><span class="cel-o9o xgsco">21</span><span class="cel-o9o xgsco">22</span><span class="cel-o9o xgsco">23</span><span class="cel-o9o xgsco">24</span><span class="cel-o9o xgsco">25</span><span class="cel-o9o xgsco">26</span><span class="cel-o9o xgsco">27</span><span class="cel-o9o xgsco">28</span><span class="cel-o9o xgsco">29</span><span class="cel-o9o xgsco">30</span><span class="cel-o9o xgsco select-38k">31</span></div>
                            </div>
                            <div class="vdp-yoi style-QJhqV" id="style-QJhqV">
                                <header><span class="pre-q56">&lt;</span> <span class="wxafp">2024년</span> <span class="nex-sza">&gt;</span></header> <span class="cel-o9o mon-xhh">1월</span><span class="cel-o9o mon-xhh">2월</span><span class="cel-o9o mon-xhh">3월</span><span class="cel-o9o mon-xhh">4월</span><span class="cel-o9o mon-xhh select-38k">5월</span><span class="cel-o9o mon-xhh">6월</span><span class="cel-o9o mon-xhh">7월</span><span class="cel-o9o mon-xhh">8월</span><span class="cel-o9o mon-xhh">9월</span><span class="cel-o9o mon-xhh">10월</span><span class="cel-o9o mon-xhh">11월</span><span class="cel-o9o mon-xhh">12월</span>
                            </div>
                            <div class="vdp-yoi style-4dcXb" id="style-4dcXb">
                                <header><span class="pre-q56">&lt;</span> <span>2020 - 2029년</span> <span class="nex-sza">&gt;</span></header> <span class="cel-o9o yea-d94">2020</span><span class="cel-o9o yea-d94">2021</span><span class="cel-o9o yea-d94">2022</span><span class="cel-o9o yea-d94">2023</span><span class="cel-o9o yea-d94 select-38k">2024</span><span class="cel-o9o yea-d94">2025</span><span class="cel-o9o yea-d94">2026</span><span class="cel-o9o yea-d94">2027</span><span class="cel-o9o yea-d94">2028</span><span class="cel-o9o yea-d94">2029</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-v-df07fe1e="" class="w22-77s"></div>
                <div data-v-df07fe1e="" class="search-vha">
                    <div data-v-df07fe1e="" class="btn-6y1">초기화</div>
                    <div data-v-df07fe1e="" class="btn-kc9">검색</div>
                </div>
            </div>
        </div>
        <div class="status-h78">
            <ul class="row-kwl">
                <li data-v-6ba9f16f="" class="bui-b3c">
                    <div data-v-6ba9f16f="" class="fle-cm5">
                        <div data-v-6ba9f16f="" class="fle-7wi fle-1ew fle-3xs tibox">
                            <div data-v-6ba9f16f="" class="row-ric w10-16i header-zmh header-aat tibox">
                                <div data-v-6ba9f16f="" class="text-yeq fle-7wi fle-3xs fle-oy3">
                                    <p data-v-6ba9f16f="">전표현황 </p>
                                    <p data-v-6ba9f16f="" class="ml1-cvz">▼</p>
                                </div>
                                <div data-v-6ba9f16f="" class="text-9a5 fle-cm5"> 1 건 </div>
                                <div data-v-6ba9f16f="" class="fle-4k3 text-9a5"> 1,000,000 원 </div>
                            </div>
                            <div data-v-6ba9f16f="" class="row-ric w10-16i fle-cm5 style-cZoAZ" id="style-cZoAZ">
                                <div data-v-6ba9f16f="" class="text-yeq fle-7wi fle-3xs fle-oy3">
                                    <p data-v-6ba9f16f="">지급완료 </p>
                                </div>
                                <div data-v-6ba9f16f="" class="text-9a5 fle-cm5"> 0 건 </div>
                                <div data-v-6ba9f16f="" class="fle-4k3 text-9a5"> 0 원 </div>
                            </div>
                            <div data-v-6ba9f16f="" class="row-ric w10-16i fle-cm5 style-HeCvF" id="style-HeCvF">
                                <div data-v-6ba9f16f="" class="text-yeq fle-7wi fle-3xs fle-oy3">
                                    <p data-v-6ba9f16f="">미지급 </p>
                                </div>
                                <div data-v-6ba9f16f="" class="text-9a5 fle-cm5"> 1 건 </div>
                                <div data-v-6ba9f16f="" class="fle-4k3 text-9a5"> 1,000,000 원 </div>
                            </div>
                            <div data-v-6ba9f16f="" class="row-ric w10-16i fle-cm5 style-TFILB" id="style-TFILB">
                                <div data-v-6ba9f16f="" class="text-yeq fle-7wi fle-3xs fle-oy3">
                                    <p data-v-6ba9f16f="">지급보류 </p>
                                </div>
                                <div data-v-6ba9f16f="" class="text-9a5 fle-cm5"> 0 건 </div>
                                <div data-v-6ba9f16f="" class="fle-4k3 text-9a5"> 0 원 </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div data-v-475bc8d0="" class="option-dhf">
            <div data-v-475bc8d0="" class="etc-6e5">
                <div data-v-475bc8d0="" class="search-zfl mr1-fe5"><select data-v-475bc8d0="" class="select-yr5 select-y26">
                        <option data-v-475bc8d0="" value="10"> 10개 </option>
                        <option data-v-475bc8d0="" value="20"> 20개 </option>
                        <option data-v-475bc8d0="" value="30"> 30개 </option>
                        <option data-v-475bc8d0="" value="40"> 40개 </option>
                        <option data-v-475bc8d0="" value="50"> 50개 </option>
                        <option data-v-475bc8d0="" value="100"> 100개 </option>
                    </select></div>
                <div data-v-475bc8d0="" class="search-zfl mr1-fe5"><select data-v-475bc8d0="" class="select-yr5 select-y26">
                        <option data-v-475bc8d0="" value="REG_DESC"> 등록일 내림차순 </option>
                        <option data-v-475bc8d0="" value="REG_ASC"> 등록일 오름차순 </option>
                    </select></div>
            </div>
            <div data-v-475bc8d0="" class="etc-6e5">
                <div data-v-475bc8d0="" class="btn-6y1 btn-f5s"> 전표 자체생성 </div>
                <div data-v-475bc8d0="" class="btn-6y1"> 정보 다운로드 </div>
            </div>
        </div>
        <div class="list-a9p pmc-jdh">
            <table class="list-3dk pmc-6an">
                <colgroup>
                    <col width="30">
                    <col width="90">
                    <col width="100">
                    <col width="160">
                    <col width="120">
                    <col width="90">
                    <col width="90">
                    <col width="90">
                    <col width="120">
                    <col width="90">
                    <col width="90">
                </colgroup>
                <thead>
                    <tr class="cbxbh">
                        <th></th>
                        <th>생성일</th>
                        <th>협력업체</th>
                        <th>전표명</th>
                        <th>잔액총액(부가세 포함)</th>
                        <th>지급기일</th>
                        <th>지급일</th>
                        <th>지급상태</th>
                        <th>대상 민원번호</th>
                        <th>생성자</th>
                        <th>완료/보류 처리자</th>
                    </tr>
                </thead>
                <tbody>
                    <tr data-v-094861ae="" class="item-5wl">
                        <td data-v-094861ae="">
                            <p data-v-094861ae="" class="row-kkh">1</p>
                        </td>
                        <td data-v-094861ae="">24.05.01</td>
                        <td data-v-094861ae="">222</td>
                        <td data-v-094861ae="">
                            <div data-v-094861ae="" class="list-fd1"><span class="underline-rcm btn-izf"> 2024년 01월ee </span> </div>
                        </td>
                        <td data-v-094861ae="">
                            <p data-v-094861ae="" class="kewga">1,000,000 원</p>
                        </td>
                        <td data-v-094861ae="">24.05.01</td>
                        <td data-v-094861ae=""></td>
                        <td data-v-094861ae="">미지급</td>
                        <td data-v-094861ae="">
                            <p data-v-094861ae=""><span data-v-094861ae="" class="underline-rcm btn-izf"></span></p>
                        </td>
                        <td data-v-094861ae="">이성경</td>
                        <td data-v-094861ae=""></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="mb3-m7c">
            <div data-v-7136ea58="" class="paging-ymm mt3-osj"><a data-v-7136ea58="" class="btn-4lc ini-kxz"></a> <a data-v-7136ea58="" class="btn-4lc pre-q56"></a> <a data-v-7136ea58="" class="haxly act-ofo">1</a> <a data-v-7136ea58="" class="btn-4lc nex-sza"></a> <a data-v-7136ea58="" class="btn-4lc dattw"></a></div>
        </div>
    </div>
    <div class="loading-emo style-68WeS" id="style-68WeS">
        <div class="loading-5f3"></div>
    </div>
</div>