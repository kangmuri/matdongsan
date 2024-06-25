<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<style>
    #keywordLi {
        width: 100%;
        background: #fff;
        border-radius: 6px;
        border: none;
        padding: 0 25px;
        padding-right: 45px;
        font-size: 15px;
        border: 1px solid #eee;
        z-index: 99;
        position: relative;
    }
    #keywordLi>ul>li:hover{
    	filter: brightness(0.5);
    }
     #keywordLi>ul {
     	width: 400px;
     }
</style> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/psm-room2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/psm-map.css" />
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uj41tlm8b7"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script> -->
<form id="searchForm" action="${pageContext.request.contextPath}/search/map" method="get" >
    <input type="hidden" name="x" value="${x}">
    <input type="hidden" name="y" value="${y}">
    <input type="hidden" name="word" value="${word}">
</form>
 
<section class="category-page sectionMap" style="padding-top: 161px;padding-bottom: 0px;">
	<div id="sideRoom">
		<div class="row">            
		   <ul>				
		   </ul>            
		</div>
	</div>
	<div id="map" style="width: 100%; height: 800px;"></div>
	
	<!--상세페이지 툴바-->
	<div class="sc-f98dc6d6-2 gxoAju snipcss-EmVG5">
		<div class="sc-f98dc6d6-3 bALAN">
			
			<div class="sc-52cce343-0 jIDJWW css-1dbjc4n">
				<div class="css-1dbjc4n r-13awgt0" data-testid="빌라매물상세_스크린">
					<div class="css-1dbjc4n r-14lw9ot r-13awgt0">
						<div class="css-1dbjc4n r-150rngu r-eqz5dr r-16y2uox r-1wbh5a2 r-11yh6sk r-1rnoaur r-2eszeu r-1sncvnh">
							<div class="css-1dbjc4n">
								<!--이미지 DIV-->
								<div id="imgDiv"></div>
								<!--정보 요약 DIV-->
								<div id="detailHeader"></div>
								
								<!--세부 정보 DIV-->
								<div id="detailTag"></div>
								<!--관리비 / 옵션 DIV-->
								<div id="option"></div>
								
								<div class="css-1dbjc4n"></div>
								<!--상세정보 내용-->
								<div id="detail"></div>

								
								<div class="css-1dbjc4n"></div>
								<div class="css-1dbjc4n">
									<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-knv0ih">
										<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
											<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
												<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1h0z5md">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-1d4mawv r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">주변 생활 시설</div>
													<div class="zuix2-tp4 css-1dbjc4n r-1loqt21 style-flKyG" tabindex="0" id="style-flKyG">
														<div id="style-StLQh" class="style-StLQh"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" clip-rule="evenodd" d="M12 2.7a9.3 9.3 0 1 0 0 18.6 9.3 9.3 0 0 0 0-18.6Z" stroke="#B3B3B3" stroke-width="1.4"></path>
																<path vector-effect="non-scaling-stroke" fill-rule="evenodd" clip-rule="evenodd" d="M10.25 9.75c0-.266.11-.73.397-1.113C10.909 8.287 11.32 8 12 8c.702 0 1.109.275 1.36.6.274.353.39.81.39 1.15 0 .35-.233.903-.835 1.204-.499.25-.927.575-1.227 1.019-.305.45-.438.967-.438 1.527v.9h1.5v-.9c0-.313.071-.525.181-.688.115-.17.312-.345.654-.516 1.127-.564 1.665-1.646 1.665-2.546a3.47 3.47 0 0 0-.704-2.068C14.016 6.996 13.173 6.5 12 6.5c-1.195 0-2.035.546-2.553 1.237-.495.66-.697 1.446-.697 2.013v.75h1.5v-.75Z" fill="#B3B3B3"></path>
																<path vector-effect="non-scaling-stroke" d="M12 17.563a.937.937 0 1 0 0-1.875.937.937 0 0 0 0 1.874Z" fill="#B3B3B3"></path>
															</svg></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n r-ww80j5 r-bnwqim r-13qz1uu">
										<div class="css-1dbjc4n r-1p0dtai r-1mlwlqe r-z80fyv style-oJBtw" id="style-oJBtw">
											<div class="css-1dbjc4n r-1niwhzg style-pxv6r" id="style-pxv6r"></div><img alt="" draggable="false" src="https://s.zigbang.com/zigbang-www/_next/static/house-icon-e277021755292bbf5b197ac35a6b1efd.png" class="css-9pa8cd">
										</div>
										<div class="css-1dbjc4n r-1p0dtai r-37igu r-1d2f490 r-1ns8kv r-j4vy6k r-u8s1d r-zchlnj">
											<div class="css-1dbjc4n r-1p0dtai r-1mlwlqe r-37igu r-1d2f490 r-1udh08x r-u8s1d r-zchlnj r-ipm5af r-1wyyakw">
												<div class="css-1dbjc4n r-1niwhzg style-WZdsq" id="style-WZdsq"></div><img alt="" draggable="false" src="https://s.zigbang.com/zigbang-www/_next/static/building-shadow-437683b1f9638ba7237f50ad70fcc840.png" class="css-9pa8cd">
											</div>
											<div class="css-1dbjc4n r-mbada r-wgabs5 r-1p0dtai r-u8s1d r-13qz1uu r-mhe3cw"></div>
										</div>
										<div class="css-1dbjc4n r-1p0dtai r-1d2f490 r-1ns8kv r-u8s1d r-zchlnj">
											<div class="facility_root__TdQxz style-tDxCp" id="style-tDxCp">
												<div class="facility_icon-label-box__dmHOL style-atMO1" id="style-atMO1"><span class="facility_label__b60iW">편의점(1분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-22Jt7" id="style-22Jt7"></div>
												<div class="facility_dot__9Tesq style-X3VEc" id="style-X3VEc"></div>
											</div>
											<div class="facility_root__TdQxz style-Ob5ht" id="style-Ob5ht">
												<div class="facility_icon-label-box__dmHOL style-y9hos" id="style-y9hos"><span class="facility_label__b60iW">세탁소(1분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-xiAz4" id="style-xiAz4"></div>
												<div class="facility_dot__9Tesq style-gzsem" id="style-gzsem"></div>
											</div>
											<div class="facility_root__TdQxz style-wZJda" id="style-wZJda">
												<div class="facility_icon-label-box__dmHOL style-Ll4tW" id="style-Ll4tW"><span class="facility_label__b60iW">카페(1분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-E9okV" id="style-E9okV"></div>
												<div class="facility_dot__9Tesq style-US6k5" id="style-US6k5"></div>
											</div>
											<div class="facility_root__TdQxz style-rcWvn" id="style-rcWvn">
												<div class="facility_icon-label-box__dmHOL style-iHTyg" id="style-iHTyg"><span class="facility_label__b60iW">버스정류장(1분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-bRRDq" id="style-bRRDq"></div>
												<div class="facility_dot__9Tesq style-ejoan" id="style-ejoan"></div>
											</div>
											<div class="facility_root__TdQxz style-A3565" id="style-A3565">
												<div class="facility_icon-label-box__dmHOL style-o3x8A" id="style-o3x8A"><span class="facility_label__b60iW">약국(3분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-xjJ9b" id="style-xjJ9b"></div>
												<div class="facility_dot__9Tesq style-WmWmC" id="style-WmWmC"></div>
											</div>
											<div class="facility_root__TdQxz style-CNIvk" id="style-CNIvk">
												<div class="facility_icon-label-box__dmHOL style-a1Q65" id="style-a1Q65"><span class="facility_label__b60iW">대형마트(1분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-UoO14" id="style-UoO14"></div>
												<div class="facility_dot__9Tesq style-Oc6tc" id="style-Oc6tc"></div>
											</div>
											<div class="facility_root__TdQxz style-Fkk6b" id="style-Fkk6b">
												<div class="facility_icon-label-box__dmHOL style-heR8D" id="style-heR8D"><span class="facility_label__b60iW">지하철역(3분)</span></div>
												<div class="facility_orthogonal-line__F4INj style-6HloR" id="style-6HloR"></div>
												<div class="facility_dot__9Tesq style-OlbsF" id="style-OlbsF"></div>
											</div>
										</div>
									</div>
									<div class="legend_root__67U2k">
										<div class="legend_legend__YuUkc legend_legend--first__Nf_eW"><span class="legend_dot__3l4QS style-QbVUP" id="style-QbVUP"></span><span class="legend_text__DDdZM">도보</span></div>
										<div class="legend_legend__YuUkc"><span class="legend_dot__3l4QS style-eYXLp" id="style-eYXLp"></span><span class="legend_text__DDdZM">자동차</span></div>
									</div>
									<div class="css-1dbjc4n r-1awozwy r-14lw9ot r-z2wwpe r-1loqt21 r-1777fci r-6gpygo r-1joea0r r-1mf7evn r-knv0ih style-QN8ac" tabindex="0" id="style-QN8ac">
										<div dir="auto" class="css-1563yu1 css-vcwn7f r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-fdjqy7 r-13wfysu r-3s2u2q r-1ad0z5i r-184en5c">주변 생활 시설 보기</div>
										<div class="css-1dbjc4n r-1dp2std r-z2wwpe r-rs99b7 r-1p0dtai r-1d2f490 r-u8s1d r-zchlnj r-ipm5af"></div>
									</div>

								</div>
								<div class="css-1dbjc4n"></div>
								<div class="css-1dbjc4n">
									<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-1x0uki6">
										<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
											<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
												<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1h0z5md">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-1d4mawv r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">교통 정보</div>
													<div class="zuix2-tp4 css-1dbjc4n r-1loqt21 r-z80fyv r-1otgn73 r-lrvibr r-19wmn03" tabindex="0">
														<div id="style-rvsd2" class="style-rvsd2"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" clip-rule="evenodd" d="M12 2.7a9.3 9.3 0 1 0 0 18.6 9.3 9.3 0 0 0 0-18.6Z" stroke="#B3B3B3" stroke-width="1.4"></path>
																<path vector-effect="non-scaling-stroke" fill-rule="evenodd" clip-rule="evenodd" d="M10.25 9.75c0-.266.11-.73.397-1.113C10.909 8.287 11.32 8 12 8c.702 0 1.109.275 1.36.6.274.353.39.81.39 1.15 0 .35-.233.903-.835 1.204-.499.25-.927.575-1.227 1.019-.305.45-.438.967-.438 1.527v.9h1.5v-.9c0-.313.071-.525.181-.688.115-.17.312-.345.654-.516 1.127-.564 1.665-1.646 1.665-2.546a3.47 3.47 0 0 0-.704-2.068C14.016 6.996 13.173 6.5 12 6.5c-1.195 0-2.035.546-2.553 1.237-.495.66-.697 1.446-.697 2.013v.75h1.5v-.75Z" fill="#B3B3B3"></path>
																<path vector-effect="non-scaling-stroke" d="M12 17.563a.937.937 0 1 0 0-1.875.937.937 0 0 0 0 1.874Z" fill="#B3B3B3"></path>
															</svg></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n">
										<div class="css-1dbjc4n">
											<div class="css-1dbjc4n r-150rngu r-6koalj r-1mlwlqe r-18u37iz r-16y2uox r-1q142lx r-h3s6tt r-1qgeeu r-11yh6sk r-buy8e9 r-2eszeu r-19z077z r-1sncvnh">
												<div class="css-1dbjc4n r-1awozwy r-14lw9ot r-18u37iz r-16y2uox r-b5h31w r-1ah4tor">
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 r-1kb76zh style-Jcz1b" id="style-Jcz1b">
														<div class="css-1dbjc4n r-1awozwy style-MmJRF" tabindex="0" id="style-MmJRF">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">최소시간</div>
														</div>
													</div>
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 r-1kb76zh style-bf2oD" id="style-bf2oD">
														<div class="css-1dbjc4n r-1awozwy r-n2h5ot r-z2wwpe r-1loqt21 r-1mlwlqe r-16y2uox r-1wbh5a2 style-tdXan" tabindex="0" id="style-tdXan">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-1tyxmls r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">지하철</div>
														</div>
													</div>
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 style-9dnmJ" id="style-9dnmJ">
														<div class="css-1dbjc4n r-1awozwy r-n2h5ot r-z2wwpe r-1loqt21 r-1mlwlqe r-16y2uox r-1wbh5a2 style-I5A2x" tabindex="0" id="style-I5A2x">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-1tyxmls r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">버스</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n r-1loqt21 r-5oul0u r-1joea0r r-1mf7evn style-9WOjN" tabindex="0" id="style-9WOjN">
										<div class="css-1dbjc4n r-1awozwy r-1dp2std r-z2wwpe r-rs99b7 style-3N3Ef" aria-disabled="true" tabindex="-1" id="style-3N3Ef">
											<div class="css-1dbjc4n r-1awozwy r-1mlwlqe r-18u37iz r-18kxxzh r-1q142lx r-1kb76zh">
												<div class="css-1dbjc4n r-1kb76zh">
													<div class="zuix2-tp4 css-1dbjc4n style-9WlfZ" aria-disabled="true" tabindex="-1" id="style-9WlfZ">
														<div id="style-6ShAv" class="style-6ShAv"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" d="M19.3 10.056c0 4.21-5.737 9.871-7.04 11.102a.374.374 0 0 1-.52 0c-1.303-1.23-7.04-6.892-7.04-11.102 0-2.313.77-3.911 2.138-5.256A7.367 7.367 0 0 1 12 2.7c1.936 0 3.793.755 5.162 2.1C18.53 6.145 19.3 7.821 19.3 10.056Z" stroke="#808080" stroke-width="1.4" stroke-linecap="round" stroke-linejoin="round"></path>
																<circle vector-effect="non-scaling-stroke" cx="12" cy="10" r="2.8" stroke="#808080" stroke-width="1.4"></circle>
															</svg></div>
													</div>
												</div>
												<div class="css-1dbjc4n">
													<div dir="auto" class="css-1563yu1 r-1143kq9 r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">도착지 검색</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="css-1dbjc4n"></div>
								<div class="css-1dbjc4n">
									<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-1x0uki6">
										<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
											<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
												<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1h0z5md">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-1d4mawv r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학군정보</div>
													<div class="zuix2-tp4 css-1dbjc4n r-1loqt21 r-z80fyv r-1otgn73 r-lrvibr r-19wmn03" tabindex="0" id="animatedComponent">
														<div id="style-GZsUr" class="style-GZsUr"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" clip-rule="evenodd" d="M12 2.7a9.3 9.3 0 1 0 0 18.6 9.3 9.3 0 0 0 0-18.6Z" stroke="#B3B3B3" stroke-width="1.4"></path>
																<path vector-effect="non-scaling-stroke" fill-rule="evenodd" clip-rule="evenodd" d="M10.25 9.75c0-.266.11-.73.397-1.113C10.909 8.287 11.32 8 12 8c.702 0 1.109.275 1.36.6.274.353.39.81.39 1.15 0 .35-.233.903-.835 1.204-.499.25-.927.575-1.227 1.019-.305.45-.438.967-.438 1.527v.9h1.5v-.9c0-.313.071-.525.181-.688.115-.17.312-.345.654-.516 1.127-.564 1.665-1.646 1.665-2.546a3.47 3.47 0 0 0-.704-2.068C14.016 6.996 13.173 6.5 12 6.5c-1.195 0-2.035.546-2.553 1.237-.495.66-.697 1.446-.697 2.013v.75h1.5v-.75Z" fill="#B3B3B3"></path>
																<path vector-effect="non-scaling-stroke" d="M12 17.563a.937.937 0 1 0 0-1.875.937.937 0 0 0 0 1.874Z" fill="#B3B3B3"></path>
															</svg></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n">
										<div class="css-1dbjc4n">
											<div class="css-1dbjc4n r-150rngu r-6koalj r-1mlwlqe r-18u37iz r-16y2uox r-1q142lx r-h3s6tt r-1qgeeu r-11yh6sk r-buy8e9 r-2eszeu r-19z077z r-1sncvnh">
												<div class="css-1dbjc4n r-1awozwy r-14lw9ot r-18u37iz r-16y2uox r-b5h31w r-1ah4tor">
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 r-1kb76zh style-JTfCm" id="style-JTfCm">
														<div class="css-1dbjc4n r-1awozwy style-kS5Ll" tabindex="0" id="animatedComponent">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">초등학교</div>
														</div>
													</div>
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 r-1kb76zh style-Cw3zq" id="style-Cw3zq">
														<div class="css-1dbjc4n r-1awozwy r-n2h5ot r-z2wwpe r-1loqt21 r-1mlwlqe r-16y2uox r-1wbh5a2 style-1MKEN" tabindex="0" id="animatedComponent">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-1tyxmls r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">중학교</div>
														</div>
													</div>
													<div class="css-1dbjc4n r-1mlwlqe r-18kxxzh r-1wbh5a2 style-NO8ri" id="style-NO8ri">
														<div class="css-1dbjc4n r-1awozwy r-n2h5ot r-z2wwpe r-1loqt21 r-1mlwlqe r-16y2uox r-1wbh5a2 style-VZrGr" tabindex="0" id="animatedComponent">
															<div class="css-1dbjc4n r-z2wwpe r-1yadl64 r-1pi2tsx r-u8s1d r-13qz1uu"></div>
															<div dir="auto" class="css-1563yu1 r-1tyxmls r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-q4m81j r-13wfysu r-q42fyq r-1ad0z5i">고등학교</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n">
										<div class="css-1dbjc4n">
											<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-1x0uki6">
												<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
													<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
														<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학군배정 학교</div>
													</div>
													<div class="css-1dbjc4n r-19u6a5r">
														<div dir="auto" class="css-1563yu1 r-1143kq9 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-1ff274t r-13wfysu r-q42fyq r-1ad0z5i">대전용전초통학구역</div>
													</div>
												</div>
											</div>
											<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 style-bDQ2z" id="style-bDQ2z"></div>
											<div class="zuix2-tp-top12 zuix2-tp-right20 zuix2-tp-bottom12 zuix2-tp-left20 css-1dbjc4n r-1awozwy r-1loqt21 r-18u37iz r-6gpygo r-1joea0r r-1mf7evn r-1s2bzr4 r-1otgn73 r-lrvibr" tabindex="0" id="animatedComponent">
												<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-majxgm r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">대전용전초등학교</div>
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학교까지 거리</span><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"> 392m</span></div>
													<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-n6v787 r-16dba41 r-14yzgew style-jVcPA" id="style-jVcPA">공립/공학</div>
												</div>
												<div class="css-1dbjc4n r-1kihuf0 r-19u6a5r">
													<div class="zuix2-tp4 css-1dbjc4n style-CMiUC" aria-disabled="true" tabindex="-1" id="animatedComponent">
														<div id="style-Itwlt" class="style-Itwlt"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" d="m7.3 21 9.325-8.927a.1.1 0 0 0 0-.145L7.3 3" stroke="#808080" stroke-width="1.4"></path>
															</svg></div>
													</div>
												</div>
											</div>
										</div>
										<div class="css-1dbjc4n">
											<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-1x0uki6">
												<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
													<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
														<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학군배정 예외학교</div>
													</div>
												</div>
											</div>
											<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 style-ckxKx" id="style-ckxKx"></div>
											<div class="zuix2-tp-top12 zuix2-tp-right20 zuix2-tp-bottom12 zuix2-tp-left20 css-1dbjc4n r-1awozwy r-1loqt21 r-18u37iz r-6gpygo r-1joea0r r-1mf7evn r-1s2bzr4 r-1otgn73 r-lrvibr" tabindex="0" id="animatedComponent">
												<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-majxgm r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">대전대양초등학교</div>
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학교까지 거리</span><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"> 736m</span></div>
													<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-n6v787 r-16dba41 r-14yzgew style-6Tc39" id="style-6Tc39">공립/공학</div>
												</div>
												<div class="css-1dbjc4n r-1kihuf0 r-19u6a5r">
													<div class="zuix2-tp4 css-1dbjc4n style-ovtFB" aria-disabled="true" tabindex="-1" id="animatedComponent">
														<div id="style-CI8QS" class="style-CI8QS"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" d="m7.3 21 9.325-8.927a.1.1 0 0 0 0-.145L7.3 3" stroke="#808080" stroke-width="1.4"></path>
															</svg></div>
													</div>
												</div>
											</div>
											<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 style-Bo14d" id="style-Bo14d"></div>
											<div class="zuix2-tp-top12 zuix2-tp-right20 zuix2-tp-bottom12 zuix2-tp-left20 css-1dbjc4n r-1awozwy r-1loqt21 r-18u37iz r-6gpygo r-1joea0r r-1mf7evn r-1s2bzr4 r-1otgn73 r-lrvibr" tabindex="0" id="animatedComponent">
												<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-majxgm r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">대전양지초등학교</div>
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">학교까지 거리</span><span class="css-1563yu1 css-16my406 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"> 1km</span></div>
													<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-n6v787 r-16dba41 r-14yzgew style-WWtZN" id="style-WWtZN">공립/공학</div>
												</div>
												<div class="css-1dbjc4n r-1kihuf0 r-19u6a5r">
													<div class="zuix2-tp4 css-1dbjc4n style-bk6Vj" aria-disabled="true" tabindex="-1" id="animatedComponent">
														<div id="style-iXvPy" class="style-iXvPy"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path vector-effect="non-scaling-stroke" d="m7.3 21 9.325-8.927a.1.1 0 0 0 0-.145L7.3 3" stroke="#808080" stroke-width="1.4"></path>
															</svg></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 style-hPjoU" id="style-hPjoU"></div>
									<div class="css-1dbjc4n r-18u37iz">
										<div class="css-1dbjc4n r-13awgt0"></div>
										<div class="css-1dbjc4n r-1awozwy r-18u37iz r-17s6mgv r-5oul0u r-1joea0r r-1mf7evn r-knv0ih">
											<div class="zuix2-tp4 css-1dbjc4n r-1awozwy r-1loqt21 r-18u37iz r-1otgn73 r-lrvibr" tabindex="0" id="animatedComponent">
<!-- 												<div dir="auto" class="css-1563yu1 r-ajo9tl r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-majxgm r-rjixqe r-1ff274t r-13wfysu r-q42fyq r-1ad0z5i">더보기</div> -->
											</div>
										</div>
									</div>
									<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 r-117bsoe r-1joea0r r-1mf7evn r-1x0uki6"></div>
								</div>
								<div class="css-1dbjc4n"></div>
								<div class="css-1dbjc4n">
									<div class="css-1dbjc4n">
										<div class="css-1dbjc4n r-6gpygo r-1joea0r r-1mf7evn r-1s2bzr4">
											<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
												<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">중개사무소의 다른 집</div>
												</div>
											</div>
										</div>
										<div>
											<div class="css-1dbjc4n r-6koalj r-16y2uox r-1wbh5a2">
												<div class="sc-b8a07ae4-0 hcnkPV css-1dbjc4n r-150rngu r-14lw9ot r-18u37iz r-16y2uox r-1wbh5a2 r-lltvgl r-buy8e9 r-1mi0q7o r-b5h31w r-1ah4tor r-1h8ys4a r-2eszeu r-1sncvnh r-13qz1uu">
													<div class="css-1dbjc4n r-18u37iz">
														<div class="css-1dbjc4n">
															<div class="css-1dbjc4n r-18u37iz style-F48e8" id="style-F48e8">
																<div class="css-1dbjc4n r-f727ji r-ttdzmv">
																	<div class="css-1dbjc4n r-14lw9ot r-z2wwpe style-TAxLm" tabindex="0" id="animatedComponent">
																		<div class="css-1dbjc4n r-kicko2 r-notknq r-1udh08x">
																			<div class="css-1dbjc4n style-2TeBd" id="style-2TeBd">
																				<div class="css-1dbjc4n r-1mlwlqe style-jYPTP" id="style-jYPTP">
																					<div class="css-1dbjc4n r-1niwhzg style-Jioyo" id="style-Jioyo"></div><img alt="" draggable="false" src="https://ic.zigbang.com/ic/items/40908335/1.jpg?w=400&amp;h=300&amp;q=70&amp;a=1" class="css-9pa8cd" style="margin:0px;">
																				</div>
																			</div>
																		</div>
																		<div class="css-1dbjc4n r-1l7z4oj r-1qhn6m8 r-i023vh r-ttdzmv">
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">월세 500/40</div>
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">동구 용전동</div>
																			<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">빌라・투룸</div>
																		</div>
																	</div>
																</div>
																<div class="css-1dbjc4n r-f727ji r-ttdzmv">
																	<div class="css-1dbjc4n r-14lw9ot r-z2wwpe style-3rPai" tabindex="0" id="animatedComponent">
																		<div class="css-1dbjc4n r-kicko2 r-notknq r-1udh08x">
																			<div class="css-1dbjc4n style-mnhL9" id="style-mnhL9">
																				<div class="css-1dbjc4n r-1mlwlqe style-zXYs2" id="style-zXYs2">
																					<div class="css-1dbjc4n r-1niwhzg style-AEowl" id="style-AEowl"></div><img alt="" draggable="false" src="https://ic.zigbang.com/ic/items/40444842/1.jpg?w=400&amp;h=300&amp;q=70&amp;a=1" class="css-9pa8cd" style="margin:0px;">
																				</div>
																			</div>
																		</div>
																		<div class="css-1dbjc4n r-1l7z4oj r-1qhn6m8 r-i023vh r-ttdzmv">
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">월세 1,000/55</div>
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">중구 용두동</div>
																			<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">빌라・투룸</div>
																		</div>
																	</div>
																</div>
																<div class="css-1dbjc4n r-f727ji r-ttdzmv">
																	<div class="css-1dbjc4n r-14lw9ot r-z2wwpe style-A2eq9" tabindex="0" id="animatedComponent">
																		<div class="css-1dbjc4n r-kicko2 r-notknq r-1udh08x">
																			<div class="css-1dbjc4n style-wFEbr" id="style-wFEbr">
																				<div class="css-1dbjc4n r-1mlwlqe style-RvAgp" id="style-RvAgp">
																					<div class="css-1dbjc4n r-1niwhzg style-QX1Eo" id="style-QX1Eo"></div><img alt="" draggable="false" src="https://ic.zigbang.com/ic/items/40937032/1.jpg?w=400&amp;h=300&amp;q=70&amp;a=1" class="css-9pa8cd">
																				</div>
																			</div>
																		</div>
																		<div class="css-1dbjc4n r-1l7z4oj r-1qhn6m8 r-i023vh r-ttdzmv">
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">월세 1,000/37</div>
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">대덕구 중리동</div>
																			<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">빌라・투룸</div>
																		</div>
																	</div>
																</div>
																<div class="css-1dbjc4n r-f727ji r-ttdzmv">
																	<div class="css-1dbjc4n r-14lw9ot r-z2wwpe style-fBloA" tabindex="0" id="animatedComponent">
																		<div class="css-1dbjc4n r-kicko2 r-notknq r-1udh08x">
																			<div class="css-1dbjc4n style-HetY9" id="style-HetY9">
																				<div class="css-1dbjc4n r-1mlwlqe style-JVGdo" id="style-JVGdo">
																					<div class="css-1dbjc4n r-1niwhzg style-ocgXZ" id="style-ocgXZ"></div><img alt="" draggable="false" src="https://ic.zigbang.com/ic/items/40820594/1.jpg?w=400&amp;h=300&amp;q=70&amp;a=1" class="css-9pa8cd">
																				</div>
																			</div>
																		</div>
																		<div class="css-1dbjc4n r-1l7z4oj r-1qhn6m8 r-i023vh r-ttdzmv">
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">월세 1,500/65</div>
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">동구 홍도동</div>
																			<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">빌라・투룸</div>
																		</div>
																	</div>
																</div>
																<div class="css-1dbjc4n r-f727ji r-ttdzmv">
																	<div class="css-1dbjc4n r-14lw9ot r-z2wwpe style-WEM6I" tabindex="0" id="animatedComponent">
																		<div class="css-1dbjc4n r-kicko2 r-notknq r-1udh08x">
																			<div class="css-1dbjc4n style-gweJc" id="style-gweJc">
																				<div class="css-1dbjc4n r-1mlwlqe style-Y9npI" id="style-Y9npI">
																					<div class="css-1dbjc4n r-1niwhzg style-vZ2SZ" id="style-vZ2SZ"></div><img alt="" draggable="false" src="https://ic.zigbang.com/ic/items/40875018/1.jpg?w=400&amp;h=300&amp;q=70&amp;a=1" class="css-9pa8cd">
																				</div>
																			</div>
																		</div>
																		<div class="css-1dbjc4n r-1l7z4oj r-1qhn6m8 r-i023vh r-ttdzmv">
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-b88u0q r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">월세 300/35</div>
																			<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">중구 유천동</div>
																			<div dir="auto" class="css-1563yu1 r-1dnsj32 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">빌라・투룸</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--여기부터 div footer-->
					<div id="detailFooter"></div>
					<div class="sc-47788df0-0 fYAqfZ css-1dbjc4n"></div>
				</div>
				<div>
					<div id="style-l7QlD" class="style-l7QlD"></div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 채팅 DIV -->
			<div class="col-md-3 col-12 chat">
                    <div class="main-content">
                        <div class="dashboard-block mt-0 pb-0">
                            <h3 class="block-title mb-0">채팅<button id="exitBtn" style="position: relative; height: 20px; width: 20px; float: right;">X</button></h3>
                            <!-- Start Messages Body -->
                            <div class="messages-body">
                                <div class="row">

                                    <div class="col-12">
                                        <!-- Start Chat List -->
                                        <div class="chat-list">
                                            <ul class="single-chat-head">
                                                
                                            </ul>
                                            <div class="reply-block">
                                                <ul class="add-media-list">
                                                    <li><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#schedule"><i class="lni lni-pencil-alt"></i></a></li>
                                                </ul>
                                                <input name="reply" type="text" placeholder="메시지를 입력해주새요...">
                                                <button class="reply-btn"><img
                                                        src="${pageContext.request.contextPath}\resources\classigrids-full\Template Main\assets\images\messages\send.svg" alt="#"></button>
                                            </div>
                                        </div>
                                        <!-- End Chat List -->
                                    </div>
                                </div>
                            </div>
                            <!-- End Messages Body -->
                        </div>
                    </div>
                </div>
                
                
</section>
<div class="modal fade" id="schedule" tabindex="-1" aria-labelledby="schedule" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title">방문 예약</h5>
		  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<div class="modal-body">
		  <form id="visitForm">
			<div class="mb-3">
				<label for="datepicker" class="form-label">방문 일</label>
				<input type="text" id="datepicker" name="schdulBgnde" placeholder="날짜 선택" class="form-control">
			</div>
			<div class="mb-3">
				<label for="schdulSj" class="form-label">방문 목적</label>
				<input type="text" id="schdulSj" name="schdulSj" placeholder="방문 목적" class="form-control">
			</div>
			<input type="hidden" name="chttRoomNo" value="">
		  </form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		  <button type="button" class="btn btn-primary" id="visitSub">방문예약 신청</button>
		</div>
	  </div>
	</div>
  </div>
  
  
<!-- ===================================  건축물 정보 불러오기 =================================== -->

<!-- 건축물대장 조회 확인 모달 -->
	<div class="styled__Overlay-sc-7c31ti-1 jxsuuD snipcss-NlHvt tether-element-attached-top tether-element-attached-center tether-target-attached-top tether-target-attached-center" id="room1">
	    <div class="styled__Content-sc-7c31ti-0 klCMkC" id="room1Modal">
	        <div class="styled__Header-ne402s-0 gUNYAF">
	            <h1>건축물대장 정보 확인</h1>
	            <ul class="styled__StepList-ne402s-1 kTwnRz">
	                <li title="건물 조회" class="styled__Step-ne402s-2 GHMMi"></li>
	                <li title="건축물 대장 정보 조회" class="styled__Step-ne402s-2 eGzsxf"></li>
	            </ul>
	        </div>
	        <div class="styled__Content-ne402s-4 ftVtBt">
	            <p class="styled__Desc-ne402s-7 iwMVvP" style="">건축물대장 정보를 조회하면 면적 정보를 실시간으로 확인할 수 있습니다.</p>
	            <p class="styled__Desc-ne402s-7 iwMVvP">건축물대장 정보를 조회하시겠습니까?</p>
	            <div class="styled__BtnWrap-ne402s-12 cXmyUB">
	            <button id="room1Close" type="button" class="styled__LineButton-q6pgzy-0 iBfHBc" style="display:none;"><span class="styled__Text-q6pgzy-1 jWDOWn">아니요, 직접 입력할게요</span></button>
	            <button type="button" id="room1Next" class="styled__SolidButton-sc-18tw3zz-0 dWlvKn"><span class="styled__Text-sc-18tw3zz-1 kivQQY">네, 조회할게요</span></button></div>
	        </div>
	    </div>
	</div>

<!-- 건중물 대장 정보 확인 모달 -->
<div class="styled__Overlay-sc-7c31ti-1 jxsuuD snipcss0-0-0-1 snipcss-PwYl8" id="room2">
    <div class="styled__Content-sc-7c31ti-0 klCMkC snipcss0-1-1-2" id="room2Modal">
        <div class="styled__Header-ne402s-0 gUNYAF snipcss0-2-2-3">
            <h1 class="snipcss0-3-3-4">건축물대장 정보 확인</h1>
            <ul class="styled__StepList-ne402s-1 kTwnRz">
                <li title="건물 조회" class="styled__Step-ne402s-2 GHMMi"></li>
                <li title="건축물대장 정보 조회" class="styled__Step-ne402s-2 eGzsxf"></li>
            </ul>
        </div>
        <div class="styled__Content-ne402s-4 ftVtBt">
            <div class="styled__InfoWrap-ne402s-5 fUvfQQ">
                <p class="styled__Desc-ne402s-7 iwMVvP">제공되는 정보는 공공API 데이터 입니다.</p>
                <p class="styled__Desc-ne402s-7 iwMVvP">실제와 정보가 상이하다면 반드시 확인 바랍니다.</p>
                <ul class="styled__LinkList-ne402s-8 aMpiK">
                    <li><a href="https://cloud.eais.go.kr/moct/awp/ada03/AWPADA03L01" font-weight="regular" target="_blank" rel="noopener noreferrer" class="styled__Link-ne402s-9 dJmNpx">
                            <div>세움터 확인</div>
                        </a></li>
                    <li><a href="https://www.gov.kr/main?a=AA020InfoCappViewApp&amp;CappBizCD=15000000098&amp;HighCtgCD=A02004002&amp;Mcode=11121" font-weight="regular" target="_blank" rel="noopener noreferrer" class="styled__Link-ne402s-9 dJmNpx">
                            <div>정부24 확인</div>
                        </a></li>
                </ul>
            </div>
            <div>
                <p class="styled__Desc-ne402s-7 iwMVvP">건물 조회를 위해, 매물이 위치한 건물과 층을 정확하게 선택해주세요.</p>
                <div class="styled__FormWrap-ne402s-10 keRHpS">
                    <div class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group">
                        <header class="styled__TitleWrap-g5hn7a-0 fXMIGe">
                            <h1 class="styled__Title-g5hn7a-1 eimkUU">건물 선택</h1>
                        </header>
                        <div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
                            <div>
                            	<select class="styled__Select-sc-1fv8nm2-0 joKhQR" id="room2Select1">
                                    <option value="">선택</option>
                                </select>
                           </div>
                        </div>
                    </div>
                    <div class="styled__Container-sc-1pfo4ts-0 ibDUiF s3Pack__group style-OWsok" id="style-OWsok">
                        <header class="styled__TitleWrap-g5hn7a-0 fXMIGe">
                            <h1 class="styled__Title-g5hn7a-1 eimkUU">층 선택</h1>
                        </header>
                        <div class="styled__Content-sc-1pfo4ts-1 fRJcqv">
                            <div><select class="styled__Select-sc-1fv8nm2-0 hvoKgv" id="room2Select2">
                                    <option value="">선택</option>

                                </select></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="styled__BtnWrap-ne402s-12 cXmyUB"><button id="room2Close" type="button" class="styled__LineButton-q6pgzy-0 wFCoq"><span class="styled__Text-q6pgzy-1 jWDOWn">닫기</span></button>
            <button id="room2Next" type="button" class="styled__SolidButton-sc-18tw3zz-0 dWlvKn"><span class="styled__Text-sc-18tw3zz-1 kivQQY">조회하기</span></button>
            </div>
        </div>
    </div>
</div>

<!-- 전용면적 확인 모달 -->

    <div class="styled__Overlay-sc-7c31ti-1 jxsuuD snipcss0-0-0-1" id="room3" >
        <div class="styled__Content-sc-7c31ti-0 klCMkC snipcss0-1-1-2" id="room3Modal">
            <div class="styled__Header-ne402s-0 gUNYAF snipcss0-2-2-3" >
                <h1 class="snipcss0-3-3-4">건축물대장 정보 확인</h1>
                <ul class="styled__StepList-ne402s-1 kTwnRz snipcss0-3-3-5">
                    <li title="건물 조회" class="styled__Step-ne402s-2 esxTXo"></li>
                    <li title="주소 확인 및 면적 입력" class="styled__Step-ne402s-2 cyoGjC"></li>
                </ul>
            </div>
            <div class="styled__Content-ne402s-4 ftVtBt"><button type="button" class="styled__LineButton-q6pgzy-0 fhqUCh"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M11.846 7.13901C11.6466 6.94794 11.3301 6.95468 11.139 7.15405L6.79272 11.6893L11.1544 15.8613L11.2249 15.9176C11.4227 16.0483 11.6917 16.023 11.8613 15.8456L11.9176 15.7751C12.0483 15.5773 12.023 15.3083 11.8456 15.1387L8.206 11.658L11.861 7.84595L11.9174 7.77549C12.0482 7.57779 12.0232 7.30884 11.846 7.13901ZM15.846 7.13901C15.6466 6.94794 15.3301 6.95468 15.139 7.15405L10.7927 11.6893L15.1544 15.8613L15.2249 15.9176C15.4227 16.0483 15.6917 16.023 15.8613 15.8456L15.9176 15.7751C16.0483 15.5773 16.023 15.3083 15.8456 15.1387L12.206 11.658L15.861 7.84595L15.9174 7.77549C16.0482 7.57779 16.0232 7.30884 15.846 7.13901Z" fill="#222222"></path>
                    </svg><span class="styled__Text-q6pgzy-1 hnPnIj">이전 화면에서 다시 조회</span></button>
                <div class="styled__DescWrap-ne402s-6 gzBWKh">
                    <p class="styled__Desc-ne402s-7 iwMVvP">입력하신 공급면적, 전용면적이 매물등록 화면에 적용됩니다. ‘건축물대장’상 조회된 기타 항목은 자동으로 반영됩니다.</p>
                </div>
                <table class="styled__Table-ne402s-11 jcuVwx">
                    <colgroup>
                        <col width="150px">
                        <col>
                    </colgroup>
                    <tbody id="tbd">
                        
                    </tbody>
                </table>
                <div class="styled__BtnWrap-ne402s-12 cXmyUB" >
                <button id="room3Close" type="button" class="styled__LineButton-q6pgzy-0 wFCoq"><span class="styled__Text-q6pgzy-1 jWDOWn">닫기</span></button>
                <button id="room3Next" type="button" class="styled__SolidButton-sc-18tw3zz-0 kfUURg" style="display:none;"><span class="styled__Text-sc-18tw3zz-1 kivQQY">적용하기</span></button>
                </div>
            </div>
        </div>
    </div>


<!-- 조회 실패 모달 -->
<div class="styled__Overlay-sc-7c31ti-1 jxsuuD snipcss-PzLkO" id="roomfail">
    <div class="styled__Content-sc-7c31ti-0 klCMkC" id="roomfailModal">
        <div class="styled__Header-ne402s-0 gUNYAF">
            <h1>건축물대장 조회 실패</h1>
        </div>
        <div class="styled__Content-ne402s-4 ftVtBt">
            <p class="styled__Desc-ne402s-7 iwMVvP">해당 주소의 건축물대장 정보가 존재하지 않습니다.</p>
            <p class="styled__Desc-ne402s-7 iwMVvP">다른 주소로 다시 조회하거나 면적정보를 알고 있는 경우 직접 입력해주세요.</p>
            <ul class="styled__LinkList-ne402s-8 aMpiK">
                <li><a href="https://cloud.eais.go.kr/moct/awp/ada03/AWPADA03L01" font-weight="regular" target="_blank" rel="noopener noreferrer" class="styled__Link-ne402s-9 dJmNpx">
                        세움터 확인
                    </a></li>
                <li><a href="https://www.gov.kr/main?a=AA020InfoCappViewApp&amp;CappBizCD=15000000098&amp;HighCtgCD=A02004002&amp;Mcode=11121" font-weight="regular" target="_blank" rel="noopener noreferrer" class="styled__Link-ne402s-9 dJmNpx">
                        정부24 확인
                    </a></li>
            </ul>
            <div class="styled__BtnWrap-ne402s-12 cXmyUB"><button type="button" class="styled__LineButton-q6pgzy-0 wFCoq roomfailClose"><span class="styled__Text-q6pgzy-1 jWDOWn">닫기</span></button><button type="button" class="styled__SolidButton-sc-18tw3zz-0 dWlvKn roomfailClose"><span class="styled__Text-sc-18tw3zz-1 kivQQY">조회하기</span></button>
        </div>
    </div>
</div>

<!-- ===================================  건축물 정보 불러오기 END =================================== -->
  
  
  
  
  
  
<script>
function RoomParam() {
	//주소검색시 받아야함
	this.roomVO = new RoomVO();
	//room_dealing테이블
	this.roomDealingVO = new RoomDealingVO();

	
	return this;
}



function RoomVO() {
	//room테이블 정보
	this.bldgAddr =null;			//도로명주소
	this.hCode =null;			//시군구코드
	this.bCode =null;			//법정동코드
	this.dctLadLndcgr =null;	//대지구분코드
	this.bun =null;				//번
	this.ji =null;				//지
	this.region1depthNm =null;	//시도
	this.region2depthNm =null;	//구군
	this.region3depthNm =null;	//동
	this.x =null;				//x좌표
	this.y =null;				//y좌표
	this.floorCnt = null;		//전체층수
	this.rentDong = null;		//해당 동
	this.roomFloor = null;		//해당 층
	this.roomUnit = null;		//해당 호수
	this.roomBtrCnt = null; 	//욕실수
	this.dctLadAr = null;		//토지면적
	this.buldAr = null; 		//건물면적
	this.buldPrpos = null;		//건물용도
	this.buldMprpos = null;	//건물 주용도
	this.rentAr = null; 		//전용면적
	this.roomTy = null;			//방유형
	this.roomParkngYn = null; 	//주차가능여부
	this.roomElvtrYn = null; 	//엘리베이터여부
	this.unityAtchmnflNo = null;//통합첨부파일번호
	this.userNo = null; 		//방등록자번호

	return this;
}

function RoomDealingVO() {
	this.roomDelngNo = null;      
	this.roomSize = null;                 
	this.roomCnt = null;                 
	this.livingType = null;      
	this.delngType = null;       
	this.roomLshl = null;       
	this.roomMhl = null;      
	this.roomDeposit= null;      
	this.roomManagectPc = null;      
	this.roomManagectAt = null;      
	this.roomDetailDcSj= null;      
	this.roomDetailDc = null;      
	this.roomMvnPosbl = null;      
	this.roomDelngDe = null;      
	this.roomDealingStts = null;      
	this.roomOthbcYn = null;
	this.roomAsapYn = null;      
	this.roomNo = null;      
	this.roomPas = null;  

	return this;
}


let roomParam = new RoomParam();
// ===================================  건축물 정보 불러오기 =================================== //
let Hcode = "";
let Bcode = "";
let bun = "";
let ji = "";


let room1 = document.querySelector("#room1");
let room2 = document.querySelector("#room2");
let room3 = document.querySelector("#room3");
let roomfail = document.querySelector("#roomfail");
// let dongInput = document.querySelector("input[name=dong]");
// let hoInput = document.querySelector("input[name=ho]");
// let roomModal = document.querySelector("input[name=roomModal]");
// let pyeong = document.querySelector("input[name=pyeong]");
// let square = document.querySelector("input[name=square]");
// let roomCnt = document.querySelector("input[name=roomCnt]");

//평수 계산을 위한 이벤트 강제 생성
let event = new Event('change', { bubbles: true });

document.querySelector("#room1Close").addEventListener("click", function () {
	room1.style.display = "none";
});
document.querySelector("#room2Close").addEventListener("click", function () {
	room2.style.display = "none";
});
document.querySelector("#room3Close").addEventListener("click", function () {
	room3.style.display = "none";
});
document.querySelectorAll(".roomfailClose").forEach(button => button.addEventListener("click", function () {
	roomfail.style.display = "none";
}));
document.querySelector("#room1Next").addEventListener("click", function () {
	room1.style.display = "none";
	room2Open();
});
document.querySelector("#room2Next").addEventListener("click", function () {
	room2.style.display = "none";
	room3.style.display = "block";
});
document.querySelector("#room3Next").addEventListener("click", function () {
	room3.style.display = "none";
	let roomModal = document.querySelector("input[name=roomModal]");
	square.value = roomModal.value;

	//change이벤트 강제 발생
	square.dispatchEvent(event);

	dongInput.disabled = false;
	hoInput.disabled = false;

});


//room2폼 셀렉트 태그 받아오기
let room2Select1 = document.querySelector("#room2Select1");
let room2Select2 = document.querySelector("#room2Select2");
// tbody 찾기
let tbody = document.querySelector('#tbd');
let newPlatPlc;
//건축물대장 정보 배열
let result;
function room2Open() {
	
	room2.style.display = "block";
	let url = `http://apis.data.go.kr/1613000/BldRgstService_v2/getBrTitleInfo?sigunguCd=\${Hcode}&bjdongCd=\${Bcode}&bun=\${bun}&ji=\${ji}&ServiceKey=CaENeMZXtb%2Fjj4qNqp9nAuYZGlv%2FzXrHfRTUvI457RAGVhs9netdeLz%2BYh6zu02Kjaq5HnA2TyHcKoqbaYwVZw%3D%3D&_type=json`;
	fetch(url)
	  .then(response => response.json())
	  .then(data => {
		//기존 태그 삭제
		while (room2Select1.options.length > 0) {
			room2Select1.remove(0);
		}

		// room2Select2의 기존 옵션을 모두 제거
		while (room2Select2.options.length > 0) {
			room2Select2.remove(0);
		}

		
		// 기존의 tbody 삭제
		while (tbody.firstChild) {
			tbody.removeChild(tbody.firstChild);
		}


	    console.log("data", data.response.body.items.item); // 받은 데이터를 콘솔에 출력하거나 필요한 작업 수행
		result = data.response.body.items.item;

		/*
			result.forEach(([mkey, mVal]) => {

			})
		*/

		if(!Array.isArray(result)) {
			buildOne();
		}else {
			room2.style.display = "none";
			roomfail.style.display = "block";
		}
			
        
	  })
	  .catch(error => {
	    console.error('Error:', error);
		room2.style.display = "none";
		roomfail.style.display = "block";
	  });
}

//건축물대장 정보 배열일때(아파트/오피스텔)
function buildList() {
	mainPurpsCdNm = result.mainPurpsCdNm;
	mgmBldrgstPk = result.mgmBldrgstPk;	
			
			
	// room2Select1에 새로운 옵션 추가
	const newOption = document.createElement('option');
	newOption.value = "aoN_mJVA03BBdrpOELYAL";
	newOption.textContent = newPlatPlc; 
	room2Select1.appendChild(newOption);

		

	// room2Select2에 지하 옵션 추가
	for (let i = 1; i <= ugrndFlrCnt; i++) {
		const option = document.createElement('option');
		option.value = `under\${i}`;
		option.textContent = `\지${i}`;
		room2Select2.appendChild(option);
	}

	// room2Select2에 지상 옵션 추가
	for (let i = 1; i <= grndFlrCnt; i++) {
		const option = document.createElement('option');
		option.value = `upper\${i}`;
		option.textContent = `\${i}층`;
		room2Select2.appendChild(option);
	}

	// room2Select2에 전체 옵션 추가
	const allOption = document.createElement('option');
	allOption.value = "all";
	allOption.textContent = "전체";
	room2Select2.appendChild(allOption);

		

	// 새로운 행들 tbody에 추가
	let newRow1 = document.createElement('tr');
	let th1 = document.createElement('th');
	th1.textContent = '주소';
	let td1 = document.createElement('td');
	td1.textContent = newPlatPlc;
	newRow1.appendChild(th1);
	newRow1.appendChild(td1);
	
	let newRow2 = document.createElement('tr');
	let th2 = document.createElement('th');
	th2.textContent = '연면적';
	let td2 = document.createElement('td');
	td2.textContent = totArea + "㎡";
	newRow2.appendChild(th2);
	newRow2.appendChild(td2);
	
	let newRow3 = document.createElement('tr');
	let th3 = document.createElement('th');
	th3.textContent = '대지면적';
	let td3 = document.createElement('td');
	td3.textContent = platArea + "㎡";
	newRow3.appendChild(th3);
	newRow3.appendChild(td3);
	
	let newRow4 = document.createElement('tr');
	let th4 = document.createElement('th');
	th4.textContent = '건축면적';
	let td4 = document.createElement('td');
	td4.textContent = archArea + "㎡";
	newRow4.appendChild(th4);
	newRow4.appendChild(td4);
	
	let newRow5 = document.createElement('tr');

// 	let th5 = document.createElement('th');
// 	th5.textContent = '전용면적';
// 	let td5 = document.createElement('td');
// 	let inputWrapDiv = document.createElement('div');
// 	inputWrapDiv.className = 'styled__InputWrap-sc-1kc3qak-0 krvYDZ';

	// input 요소 생성
// 	let inputElement = document.createElement('input');
// 	inputElement.setAttribute('autocomplete', 'off');
// 	inputElement.setAttribute('type', 'text');
// 	inputElement.setAttribute('name', 'roomModal');
// 	inputElement.className = 'styled__Input-sc-1kc3qak-1 bOWdrS';

	// p 요소 생성
	let unitP = document.createElement('p');
	unitP.className = 'styled__Unit-sc-1kc3qak-6 itaQQb unit';
	unitP.textContent = '㎡';

	// div에 input과 p 요소 추가
// 	inputWrapDiv.appendChild(inputElement);
	inputWrapDiv.appendChild(unitP);

	// td에 div를 추가
// 	td5.appendChild(inputWrapDiv);
	newRow5.appendChild(th5);
	newRow5.appendChild(td5);
	
	//tbody에 추가
	tbody.appendChild(newRow1);
	tbody.appendChild(newRow2);
	tbody.appendChild(newRow3);
	tbody.appendChild(newRow4);
	tbody.appendChild(newRow5);
}

let grndFlrCnt;
let ugrndFlrCnt;
let etcStrct;
let totArea;

//건축물대장정보 배열 아닐때 셀렉트 만들기
function buildOne() {
	roomParam.roomVO.buldMprpos = result.mainPurpsCdNm;
	roomParam.roomVO.buldPrpos = result.etcPurps;
	etcStrct = result.etcStrct;
	grndFlrCnt = result.grndFlrCnt;
	ugrndFlrCnt = result.ugrndFlrCnt;
	totArea = result.totArea;
	roomParam.roomVO.dctLadAr = result.platArea;
	roomParam.roomVO.buldAr = result.archArea;
	newPlatPlc = result.newPlatPlc;
	mgmBldrgstPk = result.mgmBldrgstPk;	

	// room2Select1에 새로운 옵션 추가
	const newOption = document.createElement('option');
	newOption.value = "aoN_mJVA03BBdrpOELYAL";
	newOption.textContent = newPlatPlc; 
	newOption.dataset.bldPk = mgmBldrgstPk;
	room2Select1.appendChild(newOption);

	// room2Select2에 지하 옵션 추가
	for (let i = 1; i <= ugrndFlrCnt; i++) {
		const option = document.createElement('option');
		option.value = `under\${i}`;
		option.textContent = `\지${i}`;
		room2Select2.appendChild(option);
	}

	// room2Select2에 지상 옵션 추가
	for (let i = 1; i <= grndFlrCnt; i++) {
		const option = document.createElement('option');
		option.value = `upper\${i}`;
		option.textContent = `\${i}층`;
		room2Select2.appendChild(option);
	}

	// room2Select2에 전체 옵션 추가
	const allOption = document.createElement('option');
	allOption.value = "all";
	allOption.textContent = "전체";
	room2Select2.appendChild(allOption);

		

	// 새로운 행들 tbody에 추가
	let newRow1 = document.createElement('tr');
	let th1 = document.createElement('th');
	th1.textContent = '주소';
	let td1 = document.createElement('td');
	td1.textContent = newPlatPlc;
	newRow1.appendChild(th1);
	newRow1.appendChild(td1);
	
	let newRow2 = document.createElement('tr');
	let th2 = document.createElement('th');
	th2.textContent = '연면적';
	let td2 = document.createElement('td');
	td2.textContent = totArea + "㎡";
	newRow2.appendChild(th2);
	newRow2.appendChild(td2);
	
	let newRow3 = document.createElement('tr');
	let th3 = document.createElement('th');
	th3.textContent = '대지면적';
	let td3 = document.createElement('td');
	td3.textContent = roomParam.roomVO.dctLadAr + "㎡";
	newRow3.appendChild(th3);
	newRow3.appendChild(td3);
	
	let newRow4 = document.createElement('tr');
	let th4 = document.createElement('th');
	th4.textContent = '건축면적';
	let td4 = document.createElement('td');
	td4.textContent = roomParam.roomVO.buldAr + "㎡";
	newRow4.appendChild(th4);
	newRow4.appendChild(td4);
	
	let newRow5 = document.createElement('tr');
	let th5 = document.createElement('th');
	th5.textContent = '주용도';
	let td5 = document.createElement('td');
	td5.textContent = result.mainPurpsCdNm;
	newRow5.appendChild(th5);
	newRow5.appendChild(td5);
	
	let newRow6 = document.createElement('tr');
	let th6 = document.createElement('th');
	th6.textContent = '부용도';
	let td6 = document.createElement('td');
	td6.textContent = result.etcPurps;
	newRow6.appendChild(th6);
	newRow6.appendChild(td6);
	
	let newRow7 = document.createElement('tr');
	let th7 = document.createElement('th');
	th7.textContent = '사용승인일';
	let td7 = document.createElement('td');
	
	//날짜 포멧형식 바꾸기
	let useDay = result.useAprDay;
	if (typeof useDay !== 'string') {
		useDay = String(useDay);
	}
// 	console.log("자른 데이터==>",useDay.slice(0,5));
	let date = useDay.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
	td7.textContent = date;
	newRow7.appendChild(th7);
	newRow7.appendChild(td7);

	// p 요소 생성
	let unitP = document.createElement('p');
	unitP.className = 'styled__Unit-sc-1kc3qak-6 itaQQb unit';
	unitP.textContent = '㎡';
	
	//tbody에 추가
	tbody.appendChild(newRow1);
	tbody.appendChild(newRow5);
	tbody.appendChild(newRow6);
	tbody.appendChild(newRow2);
	tbody.appendChild(newRow3);
	tbody.appendChild(newRow4);
	tbody.appendChild(newRow7);
}
// ===================================  건축물 정보 불러오기 END =================================== //





	
	
	let form = document.forms['searchForm'];
	//동네검색창 가져오기
	let keyword = document.querySelector("#keyword");
	//검색결과 알려줄 ul 가져오기
	let addressUl = document.querySelector("#keywordLi>ul");
	//검색결과 리스트 div
	let addressDiv = document.querySelector("#keywordLi");
	//처음에 안보이게하기
	addressDiv.style.display = "none";	

	//지도 검색 버튼 찾기
	let searchButton = document.querySelector(".search-btn>button");
	//버튼 클릭이벤트 주기
	searchButton.addEventListener("click", submit);
	document.addEventListener("DOMContentLoaded", submit);

	$(function() {
		$('.chat').hide();

		//상담일정 달력
		requestVisitSchedule();
		$('#visitSub').on('click', visitSub);
	})

	/******************채팅방 x 버튼 누르면 채팅 종료********************/
	$("#exitBtn").on("click", function() {
		$('.chat').hide();
	})

	/******************** 공통코드 받아오기 ***********************/
	document.addEventListener("DOMContentLoaded",cmmncd());

	//공통코드 전체 리스트 불러오는 function
	function cmmncd(){
		var cdURL = cPath+"/cmmnCode";
		fetch(cdURL,{
			method:'GET',
			headers:{
				'accept' : 'application/json'
			}	
		}).then(resp=>{
			return resp.json();
		}).then(data=>{
			console.log(data);
			makeOption(data);    	
		})
	}

	//공통코드 만들어주기
	function makeOption(data) {
		let buildingType = document.querySelector(".buildingType");
		let dealingType = document.querySelector(".dealingType");
		let roomTy = document.querySelector(".roomTy");

		let build = [];
		let dealing = [];
		let roomT = [];
		for(let col of data) {
			if(col.cmmnParent == "BUILDING") {
				build.push(col);
			}
			if(col.cmmnParent == "SALES") {
				dealing.push(col);
			}
			if(col.cmmnParent == "ROOMTYPE") {
				roomT.push(col);
			}

		}
		buildingType.innerHTML = `
								<div class="checkbox-wrap">
                                    <input type="checkbox" class="checkbox-button" id="check01" name="\${build[0].cmmnParent}" value="\${build[0].cmmnCd}">
                                    <label class="checkbox-label" for="check01">
                                        <span>\${build[0].cmmnCdNm}</span>
                                    </label>
                                </div>
                                <div class="checkbox-wrap">
                                    <input type="checkbox" class="checkbox-button" id="check02" name="\${build[1].cmmnParent}" value="\${build[1].cmmnCd}">
                                    <label class="checkbox-label" for="check02">
                                        <span>\${build[1].cmmnCdNm}</span>
                                    </label>
                                </div>
                                <div class="checkbox-wrap">
                                    <input type="checkbox" class="checkbox-button" id="check03" name="\${build[0].cmmnParent}" value="\${build[2].cmmnCd}">
                                    <label class="checkbox-label" for="check03">
                                        <span>\${build[2].cmmnCdNm}</span>
                                    </label>
                                </div>
                                <div class="checkbox-wrap">
                                    <input type="checkbox" class="checkbox-button" id="check04" name="\${build[0].cmmnParent}" value="\${build[3].cmmnCd}">
                                    <label class="checkbox-label" for="check04">
                                        <span>\${build[3].cmmnCdNm}</span>
                                    </label>
                                </div>
                                <div class="checkbox-wrap">
                                    <input type="checkbox" class="checkbox-button" id="check05" name="\${build[0].cmmnParent}" value="\${build[4].cmmnCd}">
                                    <label class="checkbox-label" for="check04">
                                        <span>\${build[4].cmmnCdNm}</span>
                                    </label>
                                </div>
								`;

		dealingType.innerHTML = `
								<div class="checkbox-wrap">
									<input type="checkbox" class="checkbox-button" id="check01" name="\${dealing[0].cmmnParent}" value="\${dealing[0].cmmnCd}">
									<label class="checkbox-label" for="check01">
										<span>\${dealing[0].cmmnCdNm}</span>
									</label>
								</div>
								<div class="checkbox-wrap">
									<input type="checkbox" class="checkbox-button" id="check02" name="\${dealing[1].cmmnParent}" value="\${dealing[1].cmmnCd}">
									<label class="checkbox-label" for="check02">
										<span>\${dealing[1].cmmnCdNm}</span>
									</label>
								</div>
								<div class="checkbox-wrap">
									<input type="checkbox" class="checkbox-button" id="check03" name="\${dealing[2].cmmnParent}" value="\${dealing[2].cmmnCd}">
									<label class="checkbox-label" for="check03">
										<span>\${dealing[2].cmmnCdNm}</span>
									</label>
								</div>`;
		roomTy.innerHTML = `
								<div class="checkbox-wrap">
									<input type="checkbox" class="checkbox-button" id="check01" name="\${roomT[0].cmmnParent}" value="\${roomT[0].cmmnCd}">
									<label class="checkbox-label" for="check01">
										<span>\${roomT[0].cmmnCdNm}</span>
									</label>
								</div>
								<div class="checkbox-wrap">
									<input type="checkbox" class="checkbox-button" id="check02" name="\${roomT[1].cmmnParent}" value="\${roomT[1].cmmnCd}">
									<label class="checkbox-label" for="check02">
									 	<span>\${roomT[1].cmmnCdNm}</span>
									</label>
								</div>
							`;
		
		
	}

	/*********************체크된 옵션 가져오기**************************/
	function getCkecked() {
		let checkedOptions = document.querySelectorAll("input:checked");
		let optionArr = {
			buildingType : [],
			dealingType : [],
			roomType : [],
			parkingYn : null,
			elvtrYn : null
		};
		for(let opt of checkedOptions) {
			if(opt.name == "BUILDING") optionArr.buildingType.push(opt.value);
			if(opt.name == "SALES") optionArr.dealingType.push(opt.value);
			if(opt.name == "ROOMTYPE") optionArr.roomType.push(opt.value);
			if(opt.name == "roomParkingYn") optionArr.parkingYn = opt.value;
			if(opt.name == "roomElvirYn") optionArr.elvtrYn = opt.value;
		}

		return optionArr;
	}


	/******************상세 페이지 div*******************/
	let detailDiv = document.querySelector(".sc-f98dc6d6-2.gxoAju.snipcss-EmVG5");
	detailDiv.style.display = "none"

	/**********************검색 필터 UI**************************/
	$(document).ready(function(){
		dropdownActive();
		formDisabled();

		
		$(".chat").draggable({
			handle: ".main-content"
		});
		
	});

	function dropdownActive(){
		$('.dropdown-frame').on('click', function() {


			// 클릭한 항목에만 active 클래스 추가
			$(this).toggleClass('active');
			// 클릭한 항목을 제외한 나머지 항목의 active 클래스 제거
			$('.dropdown-frame').not(this).removeClass('active');
		});
	}

	function formDisabled(){
		$('.form-disabled input').attr('disabled', true);
	}

	/******************지도 렌더링*********************/
	function mapInit(x, y) {
		console.log(x,y);
		
		mapOptions = {
			center: new naver.maps.LatLng(y,x),
			zoom: 15
		};

		map = new naver.maps.Map('map', mapOptions);
		mapMapkerRender();
		/*****************지도 이동시에 미커 출력 및 매물 리스트 조회*********************/
		map.addListener('idle', mapMapkerRender);
		
	}

	function mapMapkerRender() {
		// 지도 이동이 완료되었을 때 호출되는 함수
		const center = map.getCenter(); // 현재 지도 중심 좌표
		console.log(center)
	    // 중심 좌표를 활용하여 매물 조회 로직 수행
	 	findPropertiesAround(center.lat(), center.lng());
	}
	
	function findPropertiesAround(lat, lng) {
		
		let minX = lng - 0.01;
		let minY = lat - 0.01;
		let maxX = lng + 0.01;
		let maxY = lat + 0.01;
		let coordinateVO = getCkecked();
		coordinateVO.minX = minX;
		coordinateVO.minY = minY;
		coordinateVO.maxX = maxX;
		coordinateVO.maxY = maxY;
		let params = new URLSearchParams(coordinateVO).toString();
		console.log("checkedOptions ==>",new URLSearchParams(coordinateVO).toString());
		let url = `\${cPath}/search/room?\${params}`;
 	  $.ajax({
		url : url,
		method : 'get',
		headers : {
			"accept" : "application/json" 
		},
		success : function(resp) {
 			console.log(resp);
			// 검색된 매물 정보 활용 (예: 목록 표시, 마커 생성)
 		    displayMarkers(resp.roomDealingVOList);
			displayPropList(resp.roomDealingVOList);
		  },
 		  error : function(error) {
 			console.log(error);
		}
		  
 	  });
	}     	
	//마커 배열
	let markers = [];
	/*******************마커 출력하기*********************/
	function displayMarkers(properties) {
		//기존 마커 지우기
		if(markers != null) {
			for(let m of markers) {
				m.setMap(null);
			}
		}

	  for (const property of properties) {
			console.log(property);
			let position = new naver.maps.LatLng(property.room.y, property.room.x)
			console.log("asda" ,position);
			const marker = new naver.maps.Marker({
				position: position,
				map: map // 지도에 표시할 지도 객체
			});
			markers.push(marker);
			// 마커 클릭 이벤트 설정 
			marker.addListener('click', () => {
			
			});
	    }
	}
	
	let ultag = document.querySelector(".row>ul");
	/*****************매물 리스트 보여주기*******************/
	function displayPropList(properties) {
		let str = "";
		let roomCharge = "";
		let roomTy = "";
		for (const property of properties) {
			if(property.delngType == '전세'){ roomCharge = property.roomLshl;} 
			else if(property.delngType == '월세') {roomCharge = property.roomDeposit+ "/" + property.roomMhl;}
			else if(property.delngType == '매매') {roomCharge = property.roomPas;}

			str += `<li class="\${property.roomDelngNo}">
			   <div class="col-lg-12 col-md-12 col-12">
						<!-- Start Single Item -->
				   <div class="single-item-grid">
					   <div class="row align-items-center">
						   <div class="col-lg-5 col-md-7 col-12">
							   <div class="image">
								   <img src="\${cPath}\${property.room.tbAttachFileList[0].webPath}">
							   </div>
						   </div>
						   <div class="col-lg-7 col-md-5 col-12">
							   <div class="content">
									<a href="javascript:void(0)" class="tag">\${property.room.roomTy}</a>
								   <h3 class="title">
										\${property.delngType}
								   </h3>
								   <p class="location">\${property.room.rentAr} ㎡</p>
								   <ul class="info">
									   <li class="price">\${roomCharge}</li>
									   <li class="like"><a href="javascript:void(0)">
										<i class="lni lni-heart"></i></a>
									   </li>
								   </ul>
							   </div>
						   </div>
					   </div>
				   </div>
			   </div>
				</li>			
			`;
			

		}
		ultag.innerHTML = str;

		//li찾기
		let liTags = document.querySelectorAll(".row>ul>li");
		if(liTags.length > 0) {
			for(let liTag of liTags) {
				liTag.addEventListener("click", roomDetail.bind(null, liTag));
			}
		}
	}

	/**************************상세 페이지 데이터 조회*****************************/
	function roomDetail(target) {
		let roomDealingNo = target.className;
		let url = cPath + "/search/room/" + roomDealingNo;
		fetch(url, {
			method : "get",
			headers : {
				"contentType" : "application/json;charset=UTF-8",
				"accept" : "application/json;charset=UTF-8"
			}
		}).then(resp => {
			return resp.json();
		}).then(data => {
			console.log("상세데이터==>",data.roomDealingVO.room);
			
			//H코드, B코드 ,번, 지 값 저장하기.
			Hcode = data.roomDealingVO.room.hCode;
			Bcode = data.roomDealingVO.room.bCode;
			bun = data.roomDealingVO.room.bun;
			ji = data.roomDealingVO.room.ji;
			
			console.log("Hcde값==>",Hcode);
			console.log("Bcode값==>",Bcode);
			console.log("bun값==>",bun);
			console.log("ji값==>",ji);
			
			detailDiv.style.display = "block";
			document.querySelector("#imgDiv").innerHTML = makeImgDiv(data);
			document.querySelector("#detailHeader").innerHTML = makeDetailHeader(data);
			document.querySelector("#detailTag").innerHTML = makeTagDiv(data);
			document.querySelector("#option").innerHTML = makeOptionDiv(data);
			document.querySelector("#detail").innerHTML = makeDetailDiv(data);
			document.querySelector("#detailFooter").innerHTML = makeDivFooter(data);

			document.querySelector("#confirmDoc").addEventListener("click", confirmDoc);
			/*********************문의하기 버튼 클릭이벤트 추가***********************/			
			$(".css-1dbjc4n.r-1awozwy.style-HpDf1").on("click", function() {
				
				let guest = this.dataset.userNo;
				//사용자 번호로 채팅방 개설
				requestChat(guest).then(roomId => {
					$('.chat').show();
					console.log(roomId)
					if($('.chat').data('roomId') != roomId) {
						//방 아이디 저장
						$('.chat').data('roomId',roomId);
					}
					console.log($('.chat').data('roomId'));
					$('.main-content').data('guest',guest);

					newChat(roomId);
				}).catch(error => {
					console.log(error)
					Swal.fire({
						icon: 'error',
						title: '문의 실패!',
						text: "로그인 해주세요"
					}).then(result => {
						location.href = cPath+"/login";
					})
				});
			});
			
			
		})
	}

	function newChat(roomId) {
		// 현재 채팅방 로그를 로컬 스토리지에 저장
		if (currentChat) {
			const chatLog = $('.chat-list>ul').html();
			localStorage.setItem(currentChat, chatLog);
		}

		// 새로운 채팅방을 초기화
		currentChat = roomId;
		//$('.main-content').data('guest',guest);

		// 로컬 스토리지에서 채팅 로그 불러오기
		const savedLog = localStorage.getItem(currentChat);
		if (savedLog) {
			$('.chat-list>ul').html(savedLog);
		} else {
			$('.chat-list>ul').empty();
		}
	} 

	/****************이미지 Div만들기*********************/
	//이미지 div찾기
	let ImgDiv = document.querySelector(".css-1dbjc4n.r-13awgt0.r-18u37iz.r-1udh08x")

	function makeImgDiv(data) {
		let divStr = 
		`<div class="css-1dbjc4n">
						<div class="css-1dbjc4n style-cp7YB" data-testid="매물기본정보_사진프레임" id="style-cp7YB">
							<div class="">
								<div class="css-1dbjc4n r-1p0dtai r-1d2f490 r-u8s1d r-zchlnj r-ipm5af">
									<div class="css-1dbjc4n r-13awgt0 r-18u37iz r-1udh08x">
		`;

		for(let imgSrc of data.roomDealingVO.room.tbAttachFileList) {
			
			divStr += `					
								<div class="css-1dbjc4n style-EsHMQ" id="style-EsHMQ">
									<div class="css-1dbjc4n r-1pi2tsx r-1udh08x r-u8s1d r-13qz1uu">
										<div class="css-1dbjc4n r-1mlwlqe r-1pi2tsx r-1udh08x r-13qz1uu r-417010" data-testid="매물기본정보_사진프레임_사진_19">
											<div class="css-1dbjc4n r-1niwhzg style-n4aJi" id="style-n4aJi"></div><img alt="" draggable="false" src="\${cPath}\${imgSrc.webPath}?w=800&h=600&q=70&a=1" class="css-9pa8cd">
										</div>
										<div class="css-1dbjc4n r-1pi2tsx r-u8s1d r-13qz1uu">
											<div class="css-1dbjc4n r-633pao style-d2Iz7" id="style-d2Iz7">
												<div class="css-1dbjc4n style-mThch" id="style-mThch">
													<div class="css-1dbjc4n r-1mlwlqe style-OvIMG" id="style-OvIMG">
														<div class="css-1dbjc4n r-1niwhzg style-J21RA" id="style-J21RA"></div><img alt="" draggable="false" src="\${cPath}\${imgSrc.webPath}" class="css-9pa8cd">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>						
		`;
		}
		//<div dir="auto" class="css-1563yu1 r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-1gkfh8e r-16dba41 r-1f529hi r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i"></div>
		divStr += `
					</div>
								<div class="css-1dbjc4n r-1awozwy r-k200y r-1en2toy r-y47klf style-BOFsS" id="style-BOFsS">
									<div class="like"><a href="javascript:void(0)">
										<i class="lni lni-heart"></i></a>
									   </div>
								</div>
								<div class="sc-16af64ce-1 hVGivj css-1dbjc4n r-12vffkv"></div>
							</div>
						</div>
					</div>
				</div>
				`;
				
		return divStr;
	}

	/***************************상세정보 요약 헤더 div 만들기*****************************/
	function makeDetailHeader(data) {
		let divStr = `
		<div class="css-1dbjc4n">
			<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4"></div>
			<div class="css-1dbjc4n r-14lw9ot r-b5h31w r-1ah4tor style-TUWD3" id="style-TUWD3">
				<div class="css-1dbjc4n r-1awozwy r-18u37iz r-17s6mgv">
					<div class="css-1dbjc4n r-1awozwy r-k200y r-1che71a r-y47klf r-1777fci r-iphfwy r-1m04atk r-1pyaxff r-1h8ys4a">
						<div dir="auto" class="css-1563yu1 r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-1enofrn r-majxgm r-1cwl3u0 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i" id="confirmDoc">공적장부 확인</div>
					</div>
					<div dir="auto" class="css-1563yu1 r-1dnsj32 r-13awgt0 r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-13hce6t r-1ff274t r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.roomDelngDe}</div>
				</div>
				<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe style-QAL7K" id="style-QAL7K">\${data.roomDealingVO.room.region1depthNm} \${data.roomDealingVO.room.region2depthNm} \${data.roomDealingVO.room.region3depthNm}</div>
		`;
				
				if(data.roomDealingVO.delngType == "전세")	{
					divStr += `
					<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType} \${data.roomDealingVO.roomLshl}</div>
					`;
				}else if(data.roomDealingVO.delngType == "월세") {
					divStr += `
					<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType}  \${data.roomDealingVO.roomDeposit} / \${data.roomDealingVO.roomMhl}</div>
					`;
				}else if(data.roomDealingVO.delngType == "매매") {
					divStr += `
					<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType}  \${data.roomDealingVO.pas}</div>
					`;
				}
				if(data.roomDealingVO.roomManagectPc != null) {
					divStr +=	`
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">관리비 \${data.roomDealingVO.roomManagectPc}만원</div>
								`;
				}else {
					divStr +=	`
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1b43r93 r-16dba41 r-rjixqe r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">관리비 없음</div>
								`;
				}
				divStr += `	</div>
			<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 r-5oul0u r-1joea0r r-1mf7evn r-1x0uki6"></div>
		</div>
		`;

		return divStr;
	}

	/***********************세부정보 태그 DIV************************/
	function makeTagDiv(data) {
		let divStr = `
					<div class="css-1dbjc4n">
						<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-bBeeV" aria-disabled="true" tabindex="-1" id="style-bBeeV">
							<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.roomDetailDcSj}</div>
							</div>
						</div>
						<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-4bPah" aria-disabled="true" tabindex="-1" id="style-4bPah">
							<div class="css-1dbjc4n r-1b7u577">
								<div class="zuix2-tp4 css-1dbjc4n style-JWMdy" aria-disabled="true" tabindex="-1" id="style-JWMdy">
									<div id="style-drN6C" class="style-drN6C"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect vector-effect="non-scaling-stroke" x="2.7" y="2.7" width="18.6" height="18.6" rx=".1" stroke="#1A1A1A" stroke-width="1.4"></rect>
											<path vector-effect="non-scaling-stroke" d="M6.7 11V6.7H11m6.3 6.3v4.3H13" stroke="#1A1A1A" stroke-width="1.4" stroke-linejoin="round"></path>
										</svg></div>
								</div>
							</div>
							<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-b88u0q r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">전용 \${data.roomDealingVO.roomSize} m2</div>
							</div>
						</div>
						<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-WjQLo" aria-disabled="true" tabindex="-1" id="style-WjQLo">
							<div class="css-1dbjc4n r-1b7u577">
								<div class="zuix2-tp4 css-1dbjc4n style-diWHm" aria-disabled="true" tabindex="-1" id="style-diWHm">
									<div id="style-eY9wi" class="style-eY9wi"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<rect vector-effect="non-scaling-stroke" x="2.7" y="2.7" width="18.6" height="18.6" rx=".1" stroke="#1A1A1A" stroke-width="1.4"></rect>
											<path vector-effect="non-scaling-stroke" d="M2.5 16H15" stroke="#1A1A1A" stroke-width="1.4"></path>
											<path vector-effect="non-scaling-stroke" d="M15 2.7v18.6" stroke="#1A1A1A" stroke-width="1.4" stroke-linejoin="round"></path>
										</svg></div>
								</div>
							</div>
							<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-b88u0q r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">방 수 `; if(data.roomDealingVO.roomCnt > 0) {divStr += `\${data.roomDealingVO.roomCnt}개 `;}
																																														else {divStr += `없음 `;}    
																																														if(data.roomDealingVO.room.roomBtrCnt > 0) {divStr += `(욕실 \${data.roomDealingVO.room.roomBtrCnt}개)</div>`}
																																														else {divStr += `없음 </div>`;}
				divStr += `
							</div>
						</div>
						<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-xGMfc" aria-disabled="true" tabindex="-1" id="style-xGMfc">
							<div class="css-1dbjc4n r-1b7u577">
								<div class="zuix2-tp4 css-1dbjc4n style-OqyQy" aria-disabled="true" tabindex="-1" id="style-OqyQy">
									<div id="style-FUVGF" class="style-FUVGF"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<circle vector-effect="non-scaling-stroke" cx="12" cy="12" r="9.3" stroke="#1A1A1A" stroke-width="1.4"></circle>
											<path vector-effect="non-scaling-stroke" d="M9.5 16V8H13a2.5 2.5 0 0 1 0 5H9.5" stroke="#1A1A1A" stroke-width="1.4" stroke-linecap="square"></path>
										</svg></div>
								</div>
							</div>`;
							if(data.roomDealingVO.room.roomParkngYn == 'Y') {
								divStr += `
											<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
												<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">주차 가능</div>
											</div>`
							}else {
								divStr += `
											<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
												<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">주차 불가</div>
											</div>`
							}
							
							divStr += `
										</div>
										<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-izlLi" aria-disabled="true" tabindex="-1" id="style-izlLi">
											<div class="css-1dbjc4n r-1b7u577">
												<div class="zuix2-tp4 css-1dbjc4n style-zjlNj" aria-disabled="true" tabindex="-1" id="style-zjlNj">
													<div id="style-TDZ55" class="style-TDZ55"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path vector-effect="non-scaling-stroke" d="M19.3 21.5V2.8a.1.1 0 0 0-.1-.1H4.8a.1.1 0 0 0-.1.1v18.7" stroke="#1A1A1A" stroke-width="1.4" stroke-linejoin="round"></path>
															<path vector-effect="non-scaling-stroke" d="M2 21.3h20M8 7h3m2 0h3m-8 4h3m2 0h3m-8 4h3m2 0h3" stroke="#1A1A1A" stroke-width="1.4"></path>
														</svg></div>
												</div>
											</div>
											<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
												<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.room.roomFloor}층/\${data.roomDealingVO.room.floorCnt}층</div>
											</div>
										</div>
										<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-m8zoX" aria-disabled="true" tabindex="-1" id="style-m8zoX">
											<div class="css-1dbjc4n r-1b7u577">
												<div class="zuix2-tp4 css-1dbjc4n style-WzqER" aria-disabled="true" tabindex="-1" id="style-WzqER">
													<div id="style-WNVXk" class="style-WNVXk"><svg style="width:100%;height:100%;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path vector-effect="non-scaling-stroke" d="M17 2v4.4M7 2v4.4" stroke="#1A1A1A" stroke-width="1.4" stroke-linejoin="bevel"></path>
															<path vector-effect="non-scaling-stroke" d="M2.7 4.4a.1.1 0 0 1 .1-.1h18.4a.1.1 0 0 1 .1.1v15.8a.1.1 0 0 1-.1.1H2.8a.1.1 0 0 1-.1-.1V4.4Z" stroke="#1A1A1A" stroke-width="1.4"></path>
															<path vector-effect="non-scaling-stroke" d="M2.5 9h19" stroke="#1A1A1A" stroke-width="1.4" stroke-linejoin="bevel"></path>
														</svg></div>
												</div>
											</div>`;
								if(data.roomDealingVO.roomAsapYn == "Y") {
									divStr += `
												<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">즉시 입주 가능</div>
												</div>
												`
								}
								else {
									divStr += `
												<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-16dba41 r-135wba7 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">입주 가능일 : \${data.roomDealingVO.roomMvnPosbl}</div>
												</div>
												`
								}
							
							
								divStr +=  `</div>
											<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 r-117bsoe r-1joea0r r-1mf7evn r-1x0uki6"></div>`;
			return divStr;
	}
	
	function makeOptionDiv(data) {
		let divStr = `
		<div class="css-1dbjc4n">
			<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-knv0ih">
				<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
					<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">`;
						if(data.roomDealingVO.roomManagectPc != null) {
							divStr +=	`
											<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">옵션</div>
											`;
							}else {
								divStr +=	`
								<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">관리비 없음</div>
											`;
							}
						
							divStr += `</div>
				</div>
			</div>
				<div class="container">
				`;
				for(let op of data.roomDealingVO.room.roomLvlhList) {
					divStr +=	`
					<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy box" aria-disabled="true" tabindex="-1" id="style-x3WfH">
					<div class="css-1dbjc4n r-1awozwy r-k200y r-1che71a r-y47klf r-1777fci r-iphfwy r-1m04atk r-1pyaxff r-1h8ys4a">
						<div dir="auto" class="css-1563yu1 r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-1enofrn r-majxgm r-1cwl3u0 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${op.fcltySe}</div>
					</div>
				</div>		
						`;
				}
				
				divStr +=	`
						
							</div>
							<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 r-117bsoe r-1joea0r r-1mf7evn r-1x0uki6"></div>
						</div>
						`;
			return divStr;
	}

	function makeDetailDiv(data) {
		let divStr = `
						<div class="css-1dbjc4n">
							<div class="css-1dbjc4n r-5oul0u r-1joea0r r-1mf7evn r-knv0ih">
								<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1wtj0ep">
									<div class="css-1dbjc4n r-1mlwlqe r-16y2uox r-1wbh5a2">
										<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1i10wst r-b88u0q r-vrz42v r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">상세 설명</div>
									</div>
								</div>
							</div>
							<div class="zuix2-tp-top16 zuix2-tp-right20 zuix2-tp-bottom16 zuix2-tp-left20 css-1dbjc4n r-1awozwy style-LJaGh" aria-disabled="true" tabindex="-1" id="style-LJaGh">
								<div class="css-1dbjc4n r-1mlwlqe r-eqz5dr r-16y2uox r-1wbh5a2 r-1777fci">
									<div dir="auto" class="css-1563yu1 css-cens5h style-2nkyq" id="style-2nkyq">\${data.roomDealingVO.roomDetailDc}</div>
									<div class="css-1dbjc4n r-1awozwy r-18u37iz r-1h0z5md style-isiYs" id="style-isiYs">
										<div class="zuix2-tp4 css-1dbjc4n r-1awozwy r-1loqt21 r-18u37iz r-1otgn73 r-lrvibr" tabindex="0">
										</div>
									</div>
								</div>
							</div>
							<div class="css-1dbjc4n r-1pz39u2 r-n2h5ot r-109y4c4 r-117bsoe r-1joea0r r-1mf7evn r-1x0uki6"></div>
						</div>
						`;

		return divStr;
	}

	function makeDivFooter(data) {
		let divStr = `
					<div class="css-1dbjc4n r-14lw9ot r-1udh08x r-1mdbw0j">
									<div class="css-1dbjc4n r-1pz39u2 style-gXP5C" id="style-gXP5C"></div>
									<div class="css-1dbjc4n r-18u37iz r-6gpygo r-1joea0r r-1mf7evn r-1s2bzr4">
										<div class="css-1dbjc4n r-13awgt0 r-18u37iz">
											<div class="css-1dbjc4n r-kgf08f r-eqz5dr r-1777fci r-1b7u577">`;

												if(data.roomDealingVO.delngType == "전세")	{
												divStr += `
												<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType} \${data.roomDealingVO.roomLshl}</div>
													`;
												}else if(data.roomDealingVO.delngType == "월세") {
													divStr += `
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType}  \${data.roomDealingVO.roomDeposit}/\${data.roomDealingVO.roomMhl}</div>
													`;
												}else if(data.roomDealingVO.delngType == "매매") {
													divStr += `
													<div dir="auto" class="css-1563yu1 r-aw03qq r-1wbh5a2 r-1w6e6rj r-159m18f r-1x35g6 r-b88u0q r-ueyrd6 r-fdjqy7 r-13wfysu r-q42fyq r-1ad0z5i">\${data.roomDealingVO.delngType}  \${data.roomDealingVO.pas}</div>
													`;
												}
				
											
											
											divStr += `</div>
											<div class="css-1dbjc4n r-1awozwy style-HpDf1" tabindex="0" id="animatedComponent" data-user-no="\${data.roomDealingVO.room.userNo}">
												<div dir="auto" class="css-1563yu1 css-vcwn7f r-jwli3a r-1wbh5a2 r-1w6e6rj r-159m18f r-ubezar r-b88u0q r-135wba7 r-fdjqy7 r-13wfysu r-3s2u2q r-1ad0z5i r-184en5c" >문의하기</div>
												<div class="css-1dbjc4n r-z2wwpe r-1p0dtai r-1d2f490 r-u8s1d r-zchlnj r-ipm5af"></div>
											</div>
										</div>
									</div>
								</div>
					`;

		return divStr;
	}
	
	
	function confirmDoc() {
		//alert("공적장부 확인");
		room1.style.display = "block";
	}
	    
    /*******************지도 검색 클릭 이벤트******************/
    function submit() {
        mapInit(form.x.value, form.y.value);
    }

    /*******************li 클릭이벤트 input태그에 값 넣기********************/
    function liClick(addressLi) {
        addressLi.forEach(element => {
            element.addEventListener("click", function() {
                form.x.value = this.dataset.x;
                form.y.value = this.dataset.y;
                form.word.value = this.innerText;

                keyword.value = this.innerText;
				addressDiv.style.display = "none";
            })
        });

		
    }
    
	/***********주소 자동완성 로직***********/
	keyword.addEventListener("input", debounce(addrList, 300));
    
    function addrList(event) {
        let query = event.target.value;
        //div 검색어 있으면 보이게하기
        if(!query) {
            addressDiv.style.display = "none";
        }else {
            addressDiv.style.display = "block";
        }

        fetchAddress(query)
        .then(addresses => {
            console.log(addresses);
            let ulStr = "";
            for(let addr of addresses.addr) {
            	
                //let address = addr.address_name;
                let address = addr.address_name;
                let x = addr.x;
                let y = addr.y;

                if(address.includes(addresses.keyword)) {
                    let styleKey = address.replace(addresses.keyword, `<span style="color: #8b00ff; font-weight: bold;">\${addresses.keyword}</span>`);
                    ulStr += `<li data-x="\${x}" data-y="\${y}">\${styleKey}</li>`;
                }else {
                    ulStr += `<li data-x="\${x}" data-y="\${y}">\${address}</li>`;
                }
            }
          	
            addressUl.innerHTML = ulStr;

            //li클릭이벤트 주기
            liClick(document.querySelectorAll("#keywordLi>ul>li"));
        })
        .catch(error => {
            console.error('주소를 가져오는 중 오류 발생:', error);
        });
    }

    function fetchAddress(keyword) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                if (keyword) {
                    let url = `https://dapi.kakao.com/v2/local/search/address.json?query=\${keyword}`;
                    
                    fetch(url, {
                        method : 'get',
                        headers : {
                            "Authorization" : "KakaoAK 5c27392c744631964a44683090bb3a0e"
                        }
                    }).then(resp => {
                        return resp.json();
                    }).then(data => {
                        let result  = {};
                        result.keyword = keyword;
                        result.addr = data.documents;
                        console.log(result)
                        resolve(result);
                    })
                   
                } else {
                    reject('유효한 키워드를 입력하세요');
                }
            }, 500); // 1초 후에 응답
        });
    }

    //입력지연시키는 debounce함수 
    function debounce(func, delay) {
        let debounceTimer;
        return function() {
            const context = this;
            const args = arguments;
            clearTimeout(debounceTimer);
            debounceTimer = setTimeout(() => func.apply(context, args), delay);
        };
    }

	mapMapkerRender();
	
</script>