<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/complaints.css"
	rel="stylesheet">

<div class="cont-gjk att-bom pmc-rj7">
	<div class="tit-cy5 header-fvb">
		<h2 class="swbpt">민원관리 목록</h2>
	</div>
	<div class="content-wih search-7hx">
		<div data-v-ee436e2c="" class="search-gih">
			<div data-v-ee436e2c="" class="inBox-space-qvr">
				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="select-wrl">민원제목</div>
					<div data-v-ee436e2c="" class="select-ex8">
						<select data-v-ee436e2c=""
							class="select-ldr select-7h5 select-h3f option-q5x">
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="COMN_REP">공용 시설물 유지보수
								문의</option>
							<option data-v-ee436e2c="" value="FACI_USE">시설이용 문의</option>
							<option data-v-ee436e2c="" value="HIRE_QUE">계약정보 관련 문의</option>
							<option data-v-ee436e2c="" value="INDI_REP">개별세대 시설물
								유지보수 문의</option>
							<option data-v-ee436e2c="" value="MOVE_IN">입주문의</option>
							<option data-v-ee436e2c="" value="MOVE_OUT">퇴실문의</option>
							<option data-v-ee436e2c="" value="RENT_FEE">임대료(관리비) 문의
							</option>
						</select>
					</div>
				</div>
				<div data-v-ee436e2c="" class="search-4yb w26-8ch">
					<div data-v-ee436e2c="" class="select-wrl">처리상태</div>
					<div data-v-ee436e2c="" class="select-ex8">
						<select data-v-ee436e2c=""
							class="select-ldr select-7h5 select-h3f option-q5x">
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="ING">처리중</option>
							<option data-v-ee436e2c="" value="DONE">처리완료</option>
						</select>
					</div>
				</div>
				<!--                 <div data-v-ee436e2c="" class="search-4yb w26-8ch"> -->
				<!--                     <div data-v-ee436e2c="" class="select-wrl">협력업체</div> -->
				<!--                     <div data-v-ee436e2c="" class="select-ex8"><select data-v-ee436e2c="" class="select-ldr select-7h5 select-h3f option-q5x"> -->
				<!--                             <option data-v-ee436e2c="" value="">전체</option> -->
				<!--                             <option data-v-ee436e2c="" value="ING"> 처리중 </option> -->
				<!--                             <option data-v-ee436e2c="" value="DONE"> 처리완료 </option> -->
				<!--                         </select></div> -->
				<!--                 </div> -->
				<div data-v-ee436e2c="" class="search-4yb w26-8ch">
					<div data-v-ee436e2c="" class="select-wrl">건물명</div>
					<div data-v-ee436e2c="" class="select-ex8">
						<select data-v-ee436e2c=""
							class="select-ldr select-7h5 select-h3f option-q5x">
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="6231">아가페</option>
						</select>
					</div>
				</div>
				<div data-v-ee436e2c="" class="search-4yb w26-8ch">
					<div data-v-ee436e2c="" class="select-wrl">임차인</div>
					<input data-v-ee436e2c="" placeholder="입차인 이름입력"
						class="input-omr z-if3">
				</div>
			</div>
			<div data-v-ee436e2c="" class="inBox-space-qvr">
				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="select-wrl">호실</div>
					<input data-v-ee436e2c="" placeholder="'호'를 제외하고 입력"
						class="input-omr z-if3">
				</div>
				<!--                 <div data-v-ee436e2c="" class="search-4yb"> -->
				<!--                     <div data-v-ee436e2c="" class="select-wrl">담당자</div> <input data-v-ee436e2c="" placeholder="담당자 이름 입력" class="input-omr z-if3"> -->
				<!--                 </div> -->
				<div data-v-ee436e2c="" class="search-4yb w26-8ch">
					<div data-v-ee436e2c="" class="select-wrl">처리자</div>
					<input data-v-ee436e2c="" placeholder="처리자 이름 입력"
						class="input-omr z-if3">
				</div>
				<!--                 <div data-v-ee436e2c="" class="search-4yb"> -->
				<!--                     <div data-v-ee436e2c="" class="select-wrl">민원번호</div> <input data-v-ee436e2c="" placeholder="민원번호 입력" class="input-omr z-if3"> -->
				<!--                 </div> -->
<!-- 				<div data-v-ee436e2c="" class="search-4yb w26-8ch"> -->
<!-- 					<div data-v-ee436e2c="" class="select-wrl"></div> -->
<!-- 				</div> -->
				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="select-wrl">기간조회</div>
					<div data-v-ee436e2c="" class="select-ex8">
						<select data-v-ee436e2c=""
							class="select-ldr select-7h5 select-h3f option-q5x">
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="REG">요청일시</option>
							<option data-v-ee436e2c="" value="MOD">처리일시</option>
						</select>
					</div>
					<div data-v-ee436e2c="" class="search-4yb ml1-4gi">
						<div data-v-ee436e2c="" class="vdp-9dn">
							<div>
								<input type="text" placeholder="검색 시작일"
									class="input-orc ojmtd cus-99l search-ssp">
							</div>
							<div class="vdp-edt style-cC6Ii" id="style-cC6Ii">
								<header>
									<span class="pre-6ax">&lt;</span> <span class="fffxe">2024년
										5월</span> <span class="nex-dce">&gt;</span>
								</header>
								<div>
									<span class="cel-r46 header-5qd">일</span><span
										class="cel-r46 header-5qd">월</span><span
										class="cel-r46 header-5qd">화</span><span
										class="cel-r46 header-5qd">수</span><span
										class="cel-r46 header-5qd">목</span><span
										class="cel-r46 header-5qd">금</span><span
										class="cel-r46 header-5qd">토</span> <span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv select-tvs">1</span><span
										class="cel-r46 pcapv">2</span><span class="cel-r46 pcapv">3</span><span
										class="cel-r46 pcapv">4</span><span class="cel-r46 pcapv">5</span><span
										class="cel-r46 pcapv">6</span><span class="cel-r46 pcapv">7</span><span
										class="cel-r46 pcapv">8</span><span class="cel-r46 pcapv">9</span><span
										class="cel-r46 pcapv">10</span><span class="cel-r46 pcapv">11</span><span
										class="cel-r46 pcapv">12</span><span class="cel-r46 pcapv">13</span><span
										class="cel-r46 pcapv">14</span><span class="cel-r46 pcapv">15</span><span
										class="cel-r46 pcapv">16</span><span class="cel-r46 pcapv">17</span><span
										class="cel-r46 pcapv">18</span><span class="cel-r46 pcapv">19</span><span
										class="cel-r46 pcapv">20</span><span class="cel-r46 pcapv">21</span><span
										class="cel-r46 pcapv">22</span><span class="cel-r46 pcapv">23</span><span
										class="cel-r46 pcapv">24</span><span class="cel-r46 pcapv">25</span><span
										class="cel-r46 pcapv">26</span><span class="cel-r46 pcapv">27</span><span
										class="cel-r46 pcapv">28</span><span class="cel-r46 pcapv">29</span><span
										class="cel-r46 pcapv">30</span><span class="cel-r46 pcapv">31</span>
								</div>
							</div>
							<div class="vdp-edt style-sZVhi" id="style-sZVhi">
								<header>
									<span class="pre-6ax">&lt;</span> <span class="fffxe">2024년</span>
									<span class="nex-dce">&gt;</span>
								</header>
								<span class="cel-r46 mon-8sm">1월</span><span
									class="cel-r46 mon-8sm">2월</span><span class="cel-r46 mon-8sm">3월</span><span
									class="cel-r46 mon-8sm">4월</span><span
									class="cel-r46 mon-8sm select-tvs">5월</span><span
									class="cel-r46 mon-8sm">6월</span><span class="cel-r46 mon-8sm">7월</span><span
									class="cel-r46 mon-8sm">8월</span><span class="cel-r46 mon-8sm">9월</span><span
									class="cel-r46 mon-8sm">10월</span><span class="cel-r46 mon-8sm">11월</span><span
									class="cel-r46 mon-8sm">12월</span>
							</div>
							<div class="vdp-edt style-MRUe2" id="style-MRUe2">
								<header>
									<span class="pre-6ax">&lt;</span> <span>2020 - 2029년</span> <span
										class="nex-dce">&gt;</span>
								</header>
								<span class="cel-r46 yea-rpp">2020</span><span
									class="cel-r46 yea-rpp">2021</span><span
									class="cel-r46 yea-rpp">2022</span><span
									class="cel-r46 yea-rpp">2023</span><span
									class="cel-r46 yea-rpp select-tvs">2024</span><span
									class="cel-r46 yea-rpp">2025</span><span
									class="cel-r46 yea-rpp">2026</span><span
									class="cel-r46 yea-rpp">2027</span><span
									class="cel-r46 yea-rpp">2028</span><span
									class="cel-r46 yea-rpp">2029</span>
							</div>
						</div>
						<span data-v-ee436e2c="" class="spa-o2h"> ~ </span>
						<div data-v-ee436e2c="" class="vdp-9dn">
							<div>
								<input type="text" placeholder="검색 종료일"
									class="input-orc ojmtd cus-99l search-ssp">
							</div>
							<div class="vdp-edt style-kseiy" id="style-kseiy">
								<header>
									<span class="pre-6ax">&lt;</span> <span class="fffxe">2024년
										5월</span> <span class="nex-dce">&gt;</span>
								</header>
								<div>
									<span class="cel-r46 header-5qd">일</span><span
										class="cel-r46 header-5qd">월</span><span
										class="cel-r46 header-5qd">화</span><span
										class="cel-r46 header-5qd">수</span><span
										class="cel-r46 header-5qd">목</span><span
										class="cel-r46 header-5qd">금</span><span
										class="cel-r46 header-5qd">토</span> <span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv bla-ado"></span><span
										class="cel-r46 pcapv">1</span><span class="cel-r46 pcapv">2</span><span
										class="cel-r46 pcapv">3</span><span class="cel-r46 pcapv">4</span><span
										class="cel-r46 pcapv">5</span><span class="cel-r46 pcapv">6</span><span
										class="cel-r46 pcapv">7</span><span class="cel-r46 pcapv">8</span><span
										class="cel-r46 pcapv">9</span><span class="cel-r46 pcapv">10</span><span
										class="cel-r46 pcapv">11</span><span class="cel-r46 pcapv">12</span><span
										class="cel-r46 pcapv">13</span><span class="cel-r46 pcapv">14</span><span
										class="cel-r46 pcapv">15</span><span class="cel-r46 pcapv">16</span><span
										class="cel-r46 pcapv">17</span><span class="cel-r46 pcapv">18</span><span
										class="cel-r46 pcapv">19</span><span class="cel-r46 pcapv">20</span><span
										class="cel-r46 pcapv">21</span><span class="cel-r46 pcapv">22</span><span
										class="cel-r46 pcapv">23</span><span class="cel-r46 pcapv">24</span><span
										class="cel-r46 pcapv">25</span><span class="cel-r46 pcapv">26</span><span
										class="cel-r46 pcapv">27</span><span class="cel-r46 pcapv">28</span><span
										class="cel-r46 pcapv">29</span><span class="cel-r46 pcapv">30</span><span
										class="cel-r46 pcapv select-tvs">31</span>
								</div>
							</div>
							<div class="vdp-edt style-FcAid" id="style-FcAid">
								<header>
									<span class="pre-6ax">&lt;</span> <span class="fffxe">2024년</span>
									<span class="nex-dce">&gt;</span>
								</header>
								<span class="cel-r46 mon-8sm">1월</span><span
									class="cel-r46 mon-8sm">2월</span><span class="cel-r46 mon-8sm">3월</span><span
									class="cel-r46 mon-8sm">4월</span><span
									class="cel-r46 mon-8sm select-tvs">5월</span><span
									class="cel-r46 mon-8sm">6월</span><span class="cel-r46 mon-8sm">7월</span><span
									class="cel-r46 mon-8sm">8월</span><span class="cel-r46 mon-8sm">9월</span><span
									class="cel-r46 mon-8sm">10월</span><span class="cel-r46 mon-8sm">11월</span><span
									class="cel-r46 mon-8sm">12월</span>
							</div>
							<div class="vdp-edt style-QqKOk" id="style-QqKOk">
								<header>
									<span class="pre-6ax">&lt;</span> <span>2020 - 2029년</span> <span
										class="nex-dce">&gt;</span>
								</header>
								<span class="cel-r46 yea-rpp">2020</span><span
									class="cel-r46 yea-rpp">2021</span><span
									class="cel-r46 yea-rpp">2022</span><span
									class="cel-r46 yea-rpp">2023</span><span
									class="cel-r46 yea-rpp select-tvs">2024</span><span
									class="cel-r46 yea-rpp">2025</span><span
									class="cel-r46 yea-rpp">2026</span><span
									class="cel-r46 yea-rpp">2027</span><span
									class="cel-r46 yea-rpp">2028</span><span
									class="cel-r46 yea-rpp">2029</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-v-ee436e2c="" class="inBox-space-qvr">

				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="select-wrl"></div>
				</div>
				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="select-wrl"></div>
				</div>
				<div data-v-ee436e2c="" class="search-4yb">
					<div data-v-ee436e2c="" class="btn-8qm">초기화</div>
					<div data-v-ee436e2c="" class="btn-km8">검색</div>
				</div>
			</div>
		</div>
		        <div class="status-r2r">
		            <ul class="row-r98">
		                <li data-v-6ba9f16f="" class="bui-f36">
		                    <div data-v-6ba9f16f="" class="fle-85d">
		                        <div data-v-6ba9f16f="" class="fle-f7o fle-y23 fle-hyl kynkw">
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h header-c2b header-gc9 kynkw">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-jqo">
		                                    <p data-v-6ba9f16f="">민원현황 </p>
		                                    <p data-v-6ba9f16f="" class="ml1-ekw">▼</p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-2d4"> 0 건 </div>
		                            </div>
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h fle-85d style-gvSmd" id="style-gvSmd">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-jqo">
		                                    <p data-v-6ba9f16f="">처리중 </p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-2d4"> 0 건 </div>
		                            </div>
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h fle-85d style-nX9MO" id="style-nX9MO">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-jqo">
		                                    <p data-v-6ba9f16f="">처리완료(평균 완료 경과일) </p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-2d4"> 0 건 (0 일) </div>
		                            </div>
		                        </div>
		                    </div>
		                </li>
		                <li data-v-6ba9f16f="" class="bui-f36">
		                    <div data-v-6ba9f16f="" class="fle-85d">
		                        <div data-v-6ba9f16f="" class="fle-f7o fle-y23 fle-hyl kynkw">
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h header-b17 header-gc9 kynkw">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-p4r">
		                                    <p data-v-6ba9f16f="">전표현황 </p>
		                                    <p data-v-6ba9f16f="" class="ml1-ekw">▼</p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-85d"> 0 건 </div>
		                                <div data-v-6ba9f16f="" class="fle-jqo text-df1"> 0 원 </div>
		                            </div>
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h fle-85d style-6IUB4" id="style-6IUB4">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-p4r">
		                                    <p data-v-6ba9f16f="">지급완료 </p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-85d"> 0 건 </div>
		                                <div data-v-6ba9f16f="" class="fle-jqo text-df1"> 0 원 </div>
		                            </div>
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h fle-85d style-A1KMT" id="style-A1KMT">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-p4r">
		                                    <p data-v-6ba9f16f="">미지급 </p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-85d"> 0 건 </div>
		                                <div data-v-6ba9f16f="" class="fle-jqo text-df1"> 0 원 </div>
		                            </div>
		                            <div data-v-6ba9f16f="" class="row-q2b w10-f4h fle-85d style-zMiDG" id="style-zMiDG">
		                                <div data-v-6ba9f16f="" class="text-fn8 fle-f7o fle-hyl fle-p4r">
		                                    <p data-v-6ba9f16f="">지급보류 </p>
		                                </div>
		                                <div data-v-6ba9f16f="" class="text-df1 fle-85d"> 0 건 </div>
		                                <div data-v-6ba9f16f="" class="fle-jqo text-df1"> 0 원 </div>
		                            </div>
		                        </div>
		                    </div>
		                </li>
		            </ul>
		        </div>
		<div data-v-056d2dc6="" class="option-oco">
			<div data-v-056d2dc6="" class="etc-jk9">
				<div data-v-056d2dc6="" class="search-gt9 mr1-5wc">
					<select data-v-056d2dc6="" class="select-ldr select-7h5">
						<option data-v-056d2dc6="" value="10">10개</option>
						<option data-v-056d2dc6="" value="20">20개</option>
						<option data-v-056d2dc6="" value="30">30개</option>
						<option data-v-056d2dc6="" value="40">40개</option>
						<option data-v-056d2dc6="" value="50">50개</option>
						<option data-v-056d2dc6="" value="100">100개</option>
					</select>
				</div>
				<!--                 <div data-v-056d2dc6="" class="search-gt9 mr1-5wc"><select data-v-056d2dc6="" class="select-ldr select-7h5"> -->
				<!--                         <option data-v-056d2dc6="" value="REG_DESC"> 요청일시 내림차순 </option> -->
				<!--                         <option data-v-056d2dc6="" value="REG_ASC"> 요청일시 오름차순 </option> -->
				<!--                         <option data-v-056d2dc6="" value="MOD_DESC"> 처리일시 내림차순 </option> -->
				<!--                         <option data-v-056d2dc6="" value="MOD_ASC"> 처리일시 오름차순 </option> -->
				<!--                     </select></div> -->
			</div>
			<div data-v-056d2dc6="" class="option-aaa"></div>
		</div>
		<div data-v-8b0afffe="" class="list-o21 pmc-in6 cus-3ww">
			<table data-v-8b0afffe="" class="list-a8a pmc-l58">
				<colgroup data-v-8b0afffe="">
					<col data-v-8b0afffe="" width="50">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="80">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="110">
					<col data-v-8b0afffe="" width="50">
					<col data-v-8b0afffe="" width="60">
					<col data-v-8b0afffe="" width="140">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="70">
					<col data-v-8b0afffe="" width="100">
					<col data-v-8b0afffe="" width="80">
				</colgroup>
				<thead data-v-8b0afffe="">
					<tr data-v-8b0afffe="" class="vwhbj">
						<th data-v-8b0afffe=""></th>
						<th data-v-8b0afffe="">임차인 / 호수</th>
						<th data-v-8b0afffe="">건물명</th>
						<th data-v-8b0afffe="">처리상태</th>
						<th data-v-8b0afffe="">민원번호</th>
						<!--                         <th data-v-8b0afffe=""> -->
						<!--                             <p data-v-8b0afffe=""></p> -->
						<!--                             <p data-v-8b0afffe=""></p> -->
						<!--                         </th> -->
						<!--                         <th data-v-8b0afffe=""></th> -->
						<!--                         <th data-v-8b0afffe=""></th> -->
						<th data-v-8b0afffe="" colspan="3">민원명</th>
						<th data-v-8b0afffe="">처리희망일시</th>
						<th data-v-8b0afffe="">처리일시</th>
						<th data-v-8b0afffe=""></th>
						<th data-v-8b0afffe="">처리자</th>
						<th data-v-8b0afffe=""></th>
					</tr>
				</thead>
				<!--*******************민원 없을 경우 시작*******************-->
				<c:if test="${empty lessorComplaints}">
					<tbody data-v-8b0afffe="">
						<tr data-v-8b0afffe="">
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix"><p data-v-8b0afffe=""
									class="noD-vo6">민원 목록이 존재하지 않습니다.</p></td>
						</tr>
					</tbody>
					<!--*******************민원 없을 경우 끝*******************-->
				</c:if>
				<!--*******************민원 존재시 리스트 시작*******************-->
				<c:if test="${not empty lessorComplaints}">
					<c:forEach items="${lessorComplaints}" var="comp"
						varStatus="status">
						<tbody>
							<c:if test="${status.count % 2 eq 0}">
								<tr data-v-3d52edd8="">
							</c:if>
							<c:if test="${status.count % 2 ne 0}">
								<tr data-v-3d52edd8="" class="bg-color">
							</c:if>

							<td data-v-8b0afffe="">
								<p data-v-8b0afffe="" class="row-8ph">${comp.rnum}</p>
							</td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.users.userNm}
								/ ${comp.rentRoom.room.roomUnit}호</td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.rentBldg.bldgNm}</td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.cvlcpStts}</td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.cvlcpNo}</td>
							<td data-v-8b0afffe="" class="noB-bix" colspan="3"><span
								data-cvlcp-no="${comp.cvlcpNo}" id="noticeOne"
								class="underline-4ax btn-j75"><a>${comp.cvlcpCn}</a></span></td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.cvlcpHopeDt}</td>
							<td data-v-8b0afffe="" class="noB-bix">${comp.cvlcpOkDt}</td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							<td data-v-8b0afffe="" class="noB-bix">${principal.userNm}</td>
							<td data-v-8b0afffe="" class="noB-bix"></td>
							</tr>
						</tbody>
					</c:forEach>


					<!--                         <td data-v-8b0afffe="" class="noB-bix"><p data-v-8b0afffe="" class="noD-vo6">민원 목록이 존재하지롱</p></td> -->
				</c:if>
				<!--*******************민원 존재시 리스트 끝*******************-->

			</table>
		</div>
		<div class="mb3-h3z"></div>
		${pagingHTML }
		<form action="<c:url value='/lessor/complaints'/>" id="searchForm">
			<!-- 	<input type="text" name="boardDong" /> -->
			<!-- 	<input type="text" name="searchWord" /> -->
			<input type="hidden" name="currentPage" />
		</form>
	</div>
</div>


<script>

$(document).on("click",".underline-4ax.btn-j75",function(){
	console.log("ㅎ")
	var cvlcpNo = $(this).data("cvlcpNo");
	var ntUrl = `\${cPath}/lessor/complaints/\${cvlcpNo}`
	location.href= ntUrl
});

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
</script>