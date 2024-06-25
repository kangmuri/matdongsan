<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!--dropdown UI 그룹-->
    <div class="dropdown-form-container" style="width: 969px;height: 158px;">
        <!--dropdown UI-->
        <div class="dropdown-form">
            <button class="dropdown-frame">
                <p class="select-data">건물유형</p>
            </button>
            <!--dropdown box 세로형-->
            <div class="dropdown-box dropdown-box--ver">
                <div class="box-inner">
                    
                    <!--그룹2-->
                    <div class="option-content">
                        <!--그룹 내 콘텐츠 1 : 제목 있음 / 체크박스 -->
                        <div class="option-content-wrap">
                            <!--타이틀 박스 : 제외 가능-->
                            <div class="option-title-wrap">
                                <h2 class="option-title">건물유형</h2>
                                <p class="guide-text">중복선택이 가능합니다.</p>
                            </div>
                            <!--매물 유형-->
                            <div class="checkbox-group buildingType">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--------1------------------------------------------------->
                <!--dropdown UI-->
                <div class="dropdown-form">
                    <button class="dropdown-frame">
                        <p class="select-data">거래유형</p>
                    </button>
                    <!--dropdown box 세로형-->
                    <div class="dropdown-box dropdown-box--ver">
                        <div class="box-inner">
                            
                            <!--그룹2-->
                            <div class="option-content">
                                <!--그룹 내 콘텐츠 1 : 제목 있음 / 체크박스 -->
                                <div class="option-content-wrap">
                                    <!--타이틀 박스 : 제외 가능-->
                                    <div class="option-title-wrap">
                                        <h2 class="option-title">거래유형</h2>
                                        <p class="guide-text">중복선택이 가능합니다.</p>
                                    </div>
                                    <!--거래 유형-->
                                    <div class="checkbox-group dealingType">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!---2----------------------------------------------->
        <!--dropdown UI-->
        <div class="dropdown-form">
            <button class="dropdown-frame">
                <p class="select-data">기타 옵션
                </p>
            </button>
            <!--dropdown box 세로형-->
            <div class="dropdown-box dropdown-box--ver">
                <div class="box-inner">
                    <!--그룹1-->
                    <div class="option-content">
                        <!--타이틀 박스 : 제외 가능-->
                        <div class="option-title-wrap">
                            <h2 class="option-title">방 유형</h2>
                        </div>
                        <!--타이틀 박스 끝-->
                        <div class="checkbox-group roomTy">
                        </div>
                    </div>

                    <div class="option-content">
                        <!--타이틀 박스 : 제외 가능-->
                        <div class="option-title-wrap">
                            <h2 class="option-title etc">기타옵션</h2>
                        </div>
                        <!--타이틀 박스 끝-->
                        <div class="checkbox-group etcTy">
                            <div class="checkbox-wrap">
                                <input type="checkbox" class="checkbox-button" id="check01" name="roomParkingYn" value="Y" checked>
                                <label class="checkbox-label" for="check01">
                                    <span>주차가능 여부</span>
                                </label>
                            </div>
                            <div class="checkbox-wrap">
                                <input type="checkbox" class="checkbox-button" id="check02" name="roomElvirYn" value="Y">
                                <label class="checkbox-label" for="check02">
                                    <span>엘리베이터 여부</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>   
        <!----------------------------->

        <!--dropdown UI-->
        <div class="dropdown-form">
            <div class="search-form wow fadeInUp option-content-wrap searchFormMap" data-wow-delay=".7s" style="background: none;"> 
				<div class="rowBtn" >
					<div class="col-lg-8 col-md-8 col-12 p-0">
						<div class="search-input" >
							<label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
							<input type="text" name="keyword" id="keyword" placeholder="원하는 동네 입력" style="height: 34px;margin: 10px;">
						</div>
						<div id="keywordLi">
							<ul>
							</ul>
						</div>   
					</div>                            
					<div class="col-lg-2 col-md-2 col-12 p-0">
						<div class="search-btn button" >
							<button class="btn" style=" margin: 11px -2px -53px 41px;height: 33px;width: 51px;display: flex;justify-content: center;align-items: center;">
								<i class="lni lni-search-alt" style="margin-right: -2px;"></i>
							</button>
						</div>
					</div>
				</div>
	    	</div>
        </div>
    </div>
    <!-- 검색 UI 끝 -->