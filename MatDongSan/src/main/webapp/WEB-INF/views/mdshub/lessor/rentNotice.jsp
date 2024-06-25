<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/translations/ko.js"></script>
<style>
.ck-editor__editable {
    min-height: 400px;
}
</style>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentNotice.css"
	rel="stylesheet">
<div class="cont-hcy att-vwv pmc-azm">
	<div class="tit-y5e header-z6d">
		<h2 class="dbqmh">공지관리 목록 </h2>
	</div>
	<div class="content-5vx search-si3">
		<div data-v-99296fd6="" class="search-ojd">
			<div data-v-99296fd6="" class="inBox-space-vn1">
				<div data-v-99296fd6="" class="search-os1 w30-jh7">
					<div data-v-99296fd6="" class="select-7yk">건물명</div>
					<div data-v-99296fd6="" class="select-r91">
						<select data-v-99296fd6="" id="selBuild"
							class="select-z32 select-o27 select-49i sli-293">
							<option data-v-99296fd6="" value="0">전체</option>
							<c:forEach items="${bldg }" var="bldg">
								<option data-v-99296fd6="" value="6227">${bldg.bldgNm }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div data-v-99296fd6="" class="search-os1 w30-jh7">
					<div data-v-99296fd6="" class="select-7yk">작성자</div>
					<input data-v-99296fd6="" placeholder="작성자 이름 입력"
						class="input-s3s sli-293 z-y7s">
				</div>
				<div data-v-99296fd6="" class="search-os1 w30-jh7">
					<div data-v-99296fd6="" class="select-7yk">공지제목</div>
					<input data-v-99296fd6="" placeholder="공지제목 입력"
						class="input-s3s sli-293 z-y7s">
				</div>
			</div>
			<div data-v-99296fd6="" class="inBox-space-vn1">
				<div data-v-99296fd6="" class="fle-z8y spa-wjf">
					<div data-v-99296fd6="" class="search-os1 w36-bbs">
						<div data-v-99296fd6="" class="select-7yk">기간조회</div>
						<div data-v-99296fd6="" class="vdp-fc3 ui-oct">
							<div>
								<input type="text" placeholder="검색 시작일"
									class="input-e7p oxkpo sli-1lg search-rdt zId-jxx">
							</div>
							<div class="vdp-fcn style-RRfH3" id="style-RRfH3">
								<header>
									<span class="pre-sch">&lt;</span> <span class="rgist">2024년
										5월</span> <span class="nex-6je">&gt;</span>
								</header>
								<div>
									<span class="cel-bwo header-kkj">일</span><span
										class="cel-bwo header-kkj">월</span><span
										class="cel-bwo header-kkj">화</span><span
										class="cel-bwo header-kkj">수</span><span
										class="cel-bwo header-kkj">목</span><span
										class="cel-bwo header-kkj">금</span><span
										class="cel-bwo header-kkj">토</span> <span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes select-bwt">1</span><span
										class="cel-bwo ytoes">2</span><span class="cel-bwo ytoes">3</span><span
										class="cel-bwo ytoes">4</span><span class="cel-bwo ytoes">5</span><span
										class="cel-bwo ytoes">6</span><span class="cel-bwo ytoes">7</span><span
										class="cel-bwo ytoes">8</span><span class="cel-bwo ytoes">9</span><span
										class="cel-bwo ytoes">10</span><span class="cel-bwo ytoes">11</span><span
										class="cel-bwo ytoes">12</span><span class="cel-bwo ytoes">13</span><span
										class="cel-bwo ytoes">14</span><span class="cel-bwo ytoes">15</span><span
										class="cel-bwo ytoes">16</span><span class="cel-bwo ytoes">17</span><span
										class="cel-bwo ytoes">18</span><span class="cel-bwo ytoes">19</span><span
										class="cel-bwo ytoes">20</span><span class="cel-bwo ytoes">21</span><span
										class="cel-bwo ytoes">22</span><span class="cel-bwo ytoes">23</span><span
										class="cel-bwo ytoes">24</span><span class="cel-bwo ytoes">25</span><span
										class="cel-bwo ytoes">26</span><span class="cel-bwo ytoes">27</span><span
										class="cel-bwo ytoes">28</span><span class="cel-bwo ytoes">29</span><span
										class="cel-bwo ytoes">30</span><span class="cel-bwo ytoes">31</span>
								</div>
							</div>
							<div class="vdp-fcn style-nodZS" id="style-nodZS">
								<header>
									<span class="pre-sch">&lt;</span> <span class="rgist">2024년</span>
									<span class="nex-6je">&gt;</span>
								</header>
								<span class="cel-bwo mon-8np">1월</span><span
									class="cel-bwo mon-8np">2월</span><span class="cel-bwo mon-8np">3월</span><span
									class="cel-bwo mon-8np">4월</span><span
									class="cel-bwo mon-8np select-bwt">5월</span><span
									class="cel-bwo mon-8np">6월</span><span class="cel-bwo mon-8np">7월</span><span
									class="cel-bwo mon-8np">8월</span><span class="cel-bwo mon-8np">9월</span><span
									class="cel-bwo mon-8np">10월</span><span class="cel-bwo mon-8np">11월</span><span
									class="cel-bwo mon-8np">12월</span>
							</div>
							<div class="vdp-fcn style-4Pedh" id="style-4Pedh">
								<header>
									<span class="pre-sch">&lt;</span> <span>2020 - 2029년</span> <span
										class="nex-6je">&gt;</span>
								</header>
								<span class="cel-bwo yea-zyr">2020</span><span
									class="cel-bwo yea-zyr">2021</span><span
									class="cel-bwo yea-zyr">2022</span><span
									class="cel-bwo yea-zyr">2023</span><span
									class="cel-bwo yea-zyr select-bwt">2024</span><span
									class="cel-bwo yea-zyr">2025</span><span
									class="cel-bwo yea-zyr">2026</span><span
									class="cel-bwo yea-zyr">2027</span><span
									class="cel-bwo yea-zyr">2028</span><span
									class="cel-bwo yea-zyr">2029</span>
							</div>
						</div>
						<span data-v-99296fd6="" class="spa-49x"> ~ </span>
						<div data-v-99296fd6="" class="vdp-fc3 ui-oct">
							<div>
								<input type="text" placeholder="검색 종료일"
									class="input-e7p oxkpo sli-1lg search-rdt">
							</div>
							<div class="vdp-fcn style-cr1ao" id="style-cr1ao">
								<header>
									<span class="pre-sch">&lt;</span> <span class="rgist">2024년
										5월</span> <span class="nex-6je">&gt;</span>
								</header>
								<div>
									<span class="cel-bwo header-kkj">일</span><span
										class="cel-bwo header-kkj">월</span><span
										class="cel-bwo header-kkj">화</span><span
										class="cel-bwo header-kkj">수</span><span
										class="cel-bwo header-kkj">목</span><span
										class="cel-bwo header-kkj">금</span><span
										class="cel-bwo header-kkj">토</span> <span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes bla-5bo"></span><span
										class="cel-bwo ytoes">1</span><span class="cel-bwo ytoes">2</span><span
										class="cel-bwo ytoes">3</span><span class="cel-bwo ytoes">4</span><span
										class="cel-bwo ytoes">5</span><span class="cel-bwo ytoes">6</span><span
										class="cel-bwo ytoes">7</span><span class="cel-bwo ytoes">8</span><span
										class="cel-bwo ytoes">9</span><span class="cel-bwo ytoes">10</span><span
										class="cel-bwo ytoes">11</span><span class="cel-bwo ytoes">12</span><span
										class="cel-bwo ytoes">13</span><span class="cel-bwo ytoes">14</span><span
										class="cel-bwo ytoes">15</span><span class="cel-bwo ytoes">16</span><span
										class="cel-bwo ytoes">17</span><span class="cel-bwo ytoes">18</span><span
										class="cel-bwo ytoes">19</span><span class="cel-bwo ytoes">20</span><span
										class="cel-bwo ytoes">21</span><span class="cel-bwo ytoes">22</span><span
										class="cel-bwo ytoes">23</span><span class="cel-bwo ytoes">24</span><span
										class="cel-bwo ytoes">25</span><span class="cel-bwo ytoes">26</span><span
										class="cel-bwo ytoes">27</span><span class="cel-bwo ytoes">28</span><span
										class="cel-bwo ytoes">29</span><span class="cel-bwo ytoes">30</span><span
										class="cel-bwo ytoes select-bwt">31</span>
								</div>
							</div>
							<div class="vdp-fcn style-CGh2O" id="style-CGh2O">
								<header>
									<span class="pre-sch">&lt;</span> <span class="rgist">2024년</span>
									<span class="nex-6je">&gt;</span>
								</header>
								<span class="cel-bwo mon-8np">1월</span><span
									class="cel-bwo mon-8np">2월</span><span class="cel-bwo mon-8np">3월</span><span
									class="cel-bwo mon-8np">4월</span><span
									class="cel-bwo mon-8np select-bwt">5월</span><span
									class="cel-bwo mon-8np">6월</span><span class="cel-bwo mon-8np">7월</span><span
									class="cel-bwo mon-8np">8월</span><span class="cel-bwo mon-8np">9월</span><span
									class="cel-bwo mon-8np">10월</span><span class="cel-bwo mon-8np">11월</span><span
									class="cel-bwo mon-8np">12월</span>
							</div>
							<div class="vdp-fcn style-csJpe" id="style-csJpe">
								<header>
									<span class="pre-sch">&lt;</span> <span>2020 - 2029년</span> <span
										class="nex-6je">&gt;</span>
								</header>
								<span class="cel-bwo yea-zyr">2020</span><span
									class="cel-bwo yea-zyr">2021</span><span
									class="cel-bwo yea-zyr">2022</span><span
									class="cel-bwo yea-zyr">2023</span><span
									class="cel-bwo yea-zyr select-bwt">2024</span><span
									class="cel-bwo yea-zyr">2025</span><span
									class="cel-bwo yea-zyr">2026</span><span
									class="cel-bwo yea-zyr">2027</span><span
									class="cel-bwo yea-zyr">2028</span><span
									class="cel-bwo yea-zyr">2029</span>
							</div>
						</div>
					</div>
				</div>
				<div data-v-99296fd6="" class="search-os1">
					<div data-v-99296fd6="" class="btn-7td">초기화</div>
					<div data-v-99296fd6="" class="btn-znz">검색</div>
				</div>
			</div>
		</div>
		<div data-v-58f99374="" class="option-x86">
			<div data-v-58f99374="" class="etc-5s7">
				<div data-v-58f99374="" class="search-lep mr1-4y9">
					<select data-v-58f99374="" class="select-z32 select-o27">
						<option data-v-58f99374="" value="10">10개</option>
						<option data-v-58f99374="" value="20">20개</option>
						<option data-v-58f99374="" value="30">30개</option>
						<option data-v-58f99374="" value="40">40개</option>
						<option data-v-58f99374="" value="50">50개</option>
						<option data-v-58f99374="" value="100">100개</option>
					</select>
				</div>
<!-- 				<div data-v-58f99374="" class="search-lep mr1-4y9"> -->
<!-- 					<select data-v-58f99374="" class="select-z32 select-o27"> -->
<!-- 						<option data-v-58f99374="" value="REG_DESC">등록일 내림차순</option> -->
<!-- 						<option data-v-58f99374="" value="REG_ASC">등록일 오름차순</option> -->
<!-- 						<option data-v-58f99374="" value="CNT_DESC">조회수 내림차순</option> -->
<!-- 						<option data-v-58f99374="" value="CNT_ASC">조회수 오름차순</option> -->
<!-- 					</select> -->
<!-- 				</div> -->
			</div>








			<div data-v-58f99374="" class="etc-5s7">
				<div data-v-58f99374="" class="btn-7td btn-4os btn-opz">
					<a data-v-58f99374="" data-bs-toggle="offcanvas"
						data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"
						class="btn-t37 kefcc btn-sqe"> 공지사항 등록 </a>
				</div>

				<div class="offcanvas offcanvas-end w-65" tabindex="-1"
					id=offcanvasRight aria-labelledby="offcanvasRightLabel">
					<div class="offcanvas-header">
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">



						
						<!-- 공지사항 등록 시작 -->
						<form name="noticeForm" enctype="multipart/form-data"
							method="post"
							action="${pageContext.request.contextPath}/lessor/rentNotice">
							<div class="inB-tgl">
								<div data-v-abe864cc="" class="cont-gpj att-og6 pmc-6c3">
									<div data-v-abe864cc="" class="tit-p3g header-jv9">
										<h2 data-v-abe864cc="" class="mymgk">공지등록</h2>
									</div>
									<div data-v-abe864cc="" class="set-bo3 w84-rid">
										<div data-v-abe864cc="" class="text-4o3">공지사항 대상 선택</div>
										<div data-v-abe864cc="" class="tar-gcy w10-waw mt1-7za">
											<div data-v-abe864cc="" class="select-dv8 w10-waw pd2-fwq">
												<div data-v-abe864cc="" class="w15-evi">건물선택</div>

												<div data-v-abe864cc="" class="w43-riq">
													<div data-v-abe864cc="" class="select-i5t">
														<div class="select-e8t style-5pKkC" id="style-5pKkC"></div>
														<div class="spinner-r3l style-WKVTh" id="style-WKVTh"></div>

														<select id="rentBldgNo" name="rentBldgNo"
															data-v-99296fd6=""
															class="select-z32 select-o27 insert select-49i sli-293">
															<option data-v-99296fd6="" value="0">선택</option>
															<c:forEach items="${bldg}" var="bldg">
																<option data-v-99296fd6="" value="${bldg.rentBldgNo}">${bldg.bldgNm}</option>
															</c:forEach>
														</select>

													</div>
												</div>
											</div>
										</div>
										<div data-v-abe864cc="" class="mt3-yan w10-waw">
											<div data-v-abe864cc="" class="text-4o3">제목 작성 (30자 이내)</div>
											<div data-v-abe864cc="" class="mt1-7za w10-waw">
												<input data-v-abe864cc="" type="text"
													class="w10-waw title-cw8" id="noticeSj" name="noticeSj">
											</div>
										</div>
										<div data-v-abe864cc="" class="mt3-yan w10-waw">
											<div data-v-abe864cc="" class="main-voi w10-waw">
												<div data-v-abe864cc="" class="text-4o3">본문 작성 <a href="#" class="single-cat" id="speedUp"> <img
					src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
					alt="#" width="25px" height="25px" />
				</a></div>
											</div>
											<div data-v-33e25de6="" data-v-abe864cc=""
												class="not-dsr w10-waw">
												<div data-v-33e25de6="" class="not-kni">
													<div data-v-7cb2bca4="" data-v-33e25de6="">
														<textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요"
															id="ckEditor"  name="noticeCn"  style="display: none;"></textarea>
													</div>
													<div data-v-33e25de6="" class="pho-h5z mt1-7za">
<!-- 														<div data-v-33e25de6="" class="noF-iip">아래 파일첨부 버튼을 -->
<!-- 															눌러 파일을 첨부해주세요.</div> -->
													</div>
													<div class="eXbRxD"></div>
												</div>
												<div data-v-33e25de6=""></div>
												<div data-v-33e25de6="" class="button-mns">
													<div data-v-33e25de6="" class="box-mfz">
<!-- 														<div data-v-33e25de6="" class="select-gd1"> -->
<!-- 															<label data-v-33e25de6="" for="fileAdd"><span -->
<!-- 																data-v-33e25de6="">파일첨부</span></label> <input data-v-33e25de6="" -->
<!-- 																type="file" id="fileAdd" class="input-c9y" -->
<!-- 																name="uploadFiles" accept="image/*" multiple -->
<!-- 																onchange="fUpload(this)"> -->
<!-- 														</div> -->
													</div>
													
													<div data-v-33e25de6="" class="box-kr7">
														<button data-v-33e25de6=""
															class="can-g98 hov-d3q hover-vom">취소</button>
														<button data-v-33e25de6=""
															class="sav-evz hov-d3q hover-vom" type="submit">등록</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
						<!-- 공지사항 등록 끝 -->
					</div>
				</div>





			</div>
		</div>
		<div class="list-m52 pmc-3lz">
			<table class="list-pwg pmc-ccj">
				<colgroup>
					<col width="30">
					<col width="130">
					<col width="50">
					<col width="200">
					<col width="90">
					<col width="100">
					<col width="90">
					<col width="60">
				</colgroup>
				<thead>
					<tr class="jhoax">
						<th></th>
						<th>건물명</th>
						<th></th>
						<th>공지제목</th>
<!-- 						<th>상태</th> -->
						<th>작성일</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<c:if test="${empty notice }">
					<tbody>

						<tr data-v-15af6418="" class="item-ws2">
							<td data-v-15af6418="">
								<p data-v-15af6418="" class="row-8ph"></p>
							</td>
							<td data-v-15af6418="">
								<div data-v-15af6418="" class="w10-qrr rel-lbm">
									<div data-v-15af6418="" class="list-azf">
										<span> </span>
									</div>
								</div>
							</td>
							<td data-v-15af6418=""></td>
							<td data-v-15af6418="">
								<div data-v-15af6418="" class="list-azf">
									<span class="underline-ihf btn-j75"> 공지관리 목록이 존재하지 않습니다.
									</span>
								</div>
							</td>
							<td data-v-15af6418=""></td>
							<td data-v-15af6418=""></td>
							<td data-v-15af6418="" style=""></td>
							<td data-v-15af6418=""></td>
						</tr>
					</tbody>
				</c:if>
				<c:if test="${not empty notice }">
					<c:forEach items="${notice}" var="notice" varStatus="status">
						<tbody>
							<c:if test="${status.count % 2 eq 0}">
								<tr data-v-3d52edd8="">
							</c:if>
							<c:if test="${status.count % 2 ne 0}">
								<tr data-v-3d52edd8="" class="bg-color">
							</c:if>
							<td data-v-15af6418="">
								<p data-v-15af6418="" class="row-8ph">${notice.knum }</p>
							</td>
							<td data-v-15af6418="">
								<div data-v-15af6418="" class="w10-qrr rel-lbm">
									<div data-v-15af6418="" class="list-azf">
										<span>${notice.rentBldg.bldgNm}</span>
									</div>
								</div>
							</td>
							<td data-v-15af6418=""></td>
							<td data-v-15af6418="">
								<div data-v-15af6418="" class="list-azf">
									<span data-notice-no="${notice.noticeNo}" 
									id="noticeOne" class="underline-4ax btn-j75"><a>${notice.noticeSj}</a> 
									</span>
								</div>
							</td>
<!-- 							<td data-v-15af6418="">비공개</td> -->
							<td data-v-15af6418="">${notice.noticeDt }</td>
							<td data-v-15af6418="" style="">${notice.users.userNm }</td>
							<td data-v-15af6418="">${notice.noticeCnt }</td>
							</tr>
						</tbody>
					</c:forEach>
				</c:if>
			</table>
		</div>
		<div class="mb3-h3z"></div>
		${pagingHTML }
		<form action="<c:url value='/lessor/rentNotice'/>" id="searchForm">
			<!-- 	<input type="text" name="boardDong" /> -->
			<!-- 	<input type="text" name="searchWord" /> -->
			<input type="hidden" name="currentPage" />
		</form>
	</div>
</div>

<script>
//================= 자동입력 이벤트 ===================//
var noticeSj = document.querySelector("#noticeSj");

var speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	
	noticeSj.value = "[대덕인재하우스] 분리수거 배출방법 안내";
	content.setData(`
			안녕하세요, 주민 여러분.

			<br><br>

			쓰레기 배출 방법에 대한 안내를 드립니다. 원활한 쓰레기 수거 및 깨끗한 환경 유지를 위해 아래 지침을 준수해주시기 바랍니다.

			<br><br>

			일반 쓰레기
			<br>- 일반 쓰레기는 반드시 지정된 종량제 봉투에 담아 배출해 주세요.
			<br>- 배출 시간: 매일 오후 8시부터 자정까지.
			<br>- 배출 장소: 각 동별 지정된 쓰레기 배출 장소.
			<br><br>

			음식물 쓰레기
			<br>- 음식물 쓰레기는 전용 봉투에 담아 배출해 주세요.
			<br>- 물기를 최대한 제거한 후 배출해 주세요.
			<br>- 배출 시간: 매일 오후 8시부터 자정까지.
			<br>- 배출 장소: 음식물 쓰레기 전용 수거함.
			<br><br>

			재활용 쓰레기
			<br>- 재활용 가능 품목: 종이, 플라스틱, 유리병, 캔 등.
			<br>- 품목별로 분리하여 배출해 주세요.
			<br>- 배출 시간: 매주 화요일, 금요일 오후 8시부터 자정까지.
			<br>- 배출 장소: 재활용 쓰레기 배출 장소.
			<br><br>

			대형 폐기물
			<br>- 대형 폐기물(가구, 가전제품 등)은 별도의 수거 신청이 필요합니다.
			<br>- 수거 신청 방법: 관리사무소(전화번호: 123-456-7890)로 문의해 주세요.
			<br>- 수거 일정 및 비용은 신청 시 안내해 드립니다.
			<br><br>

			유의사항
			<br>- 쓰레기는 반드시 지정된 시간에 배출해 주세요.
			<br>- 배출 장소 외의 곳에 쓰레기를 버리지 마세요.
			<br>- 재활용 쓰레기는 이물질을 제거한 후 배출해 주세요.
			<br><br>

			주민 여러분의 협조가 깨끗하고 쾌적한 주거 환경을 만드는데 큰 도움이 됩니다. 감사합니다.

			<br><br>

			문의사항이 있으시면 관리사무소(전화번호: 123-456-7890)로 연락해 주세요.

			<br><br>
	`);
})
//=================================================//
$(document).on("click",".underline-4ax.btn-j75",function(){
	console.log("ㅎ")
	var noticeNo = $(this).data("noticeNo");
	var ntUrl = `\${cPath}/lessor/rentNotice/\${noticeNo}`
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


// function TbAttachFileVO() {
// 	 this.atchmnflSn = null;    //첨부파일 순번    
// 	 this.filePath = null;      //파일경로
// 	 this.webPath = null;       //웹경로 
// 	 this.streFileNm = null;    //저장파일명  
// 	 this.fileSize = null;      //파일크기    
// 	 this.fileType = null;      //파일유형 
// 	 this.regUserId = null;     //등록자ID  
// 	 return this;
// }
// let file = [];
const noticeForm = document.noticeForm;

noticeForm.onsubmit  =  function(e) {
	e.preventDefault(); 
	
	let url = cPath + "/lessor/rentNotice";
	let formData = new FormData(noticeForm);
	$.ajax({
		url: url,
		type:'POST',
		processData: false,
		contentType: false,
       data: formData,
       dataType: 'text',
       success: function(resp) {
           if(resp =="success"){
           	Swal.fire({
      			title: '등록완료',
           		   text: '공지등록이 완료되었습니다.',
           		   icon: 'success',
           		}).then((result=>{
           	location.href = cPath + "/lessor/rentNotice";
           		}))
           }
       },
       error: function(xhr) {
           console.log('Error:', xhr.status);
       }
	})
}


//input file태그 찾기
// let inputFile = document.all.file;
// let skNum = 1; // skDiv id를 구분하기 위한 전역변수

// function filePreview() {
//     inputFile.click();
// }

// function fUpload(target) {
//     console.log(target.files);
//     let formData = new FormData();

//     for (let i = 0; i < target.files.length; i++) {
//         if (target.files[i].type.substr(0, 5) === "image") {
//             formData.append("attachFile", target.files[i]);
//         }
//     }

//     if (formData.has("attachFile")) {  // 파일이 있는 경우에만 업로드 진행
//         let url = `${pageContext.request.contextPath}/api/img`;
//         fetch(url, {
//             method: "post",
//             headers: {
//                 "Accept": "application/json"
//             },
//             body: formData
//         }).then(res => res.json())
//           .then(data => {
//               console.log("file", data);
//               let divTag = document.querySelector(".eXbRxD");

//               for (let i = 0; i < data.length; i++) {
//                   let attachFileVO = new TbAttachFileVO();
//                   attachFileVO.atchmnflSn = data[i].atchmnflSn;
//                   attachFileVO.filePath = data[i].filePath;
//                   attachFileVO.webPath = data[i].webPath;
//                   attachFileVO.streFileNm = data[i].streFileNm;
//                   attachFileVO.fileSize = data[i].fileSize;
//                   attachFileVO.fileType = data[i].fileType;
//                   attachFileVO.regUserId = data[i].regUserId;

//                   let skDiv = document.createElement("div"); // 이미지와 버튼을 담을 박스
//                   let btnTag = document.createElement("button");
//                   btnTag.innerHTML = "X";
//                   btnTag.onclick = function() { // 누르면 포함하는 skDiv를 삭제
//                       this.parentElement.parentElement.removeChild(this.parentElement);
//                   };

//                   let imgTag = document.createElement("img");
//                   imgTag.src = `${pageContext.request.contextPath}` + attachFileVO.webPath;
//                   imgTag.width = 150;
//                   imgTag.height = 150;
//                   skDiv.appendChild(imgTag);
//                   skDiv.appendChild(btnTag);
//                   skDiv.id = `sk${skNum}`;
//                   skDiv.style.textAlign = "center";
//                   skDiv.style.display = "inline-block";
//                   skDiv.style.width = imgTag.width + "px";
//                   divTag.appendChild(skDiv);

//                   file.push(attachFileVO);
//               }

//               inputFile.value = ""; // 파일 입력 요소 초기화
//           });
//     }
// }

var content = "";
ClassicEditor
    .create(document.querySelector('#ckEditor'), {
        language: "ko"
    })
    .then(newEditor => {
        content = newEditor;
    });

</script>