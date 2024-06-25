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
</style>
<form action="${pageContext.request.contextPath}/search/map" method="get" >
    <input type="hidden" name="x" value="">
    <input type="hidden" name="y" value="">
    <input type="hidden" name="word" value="">
</form>
<!-- 로그인 여부(authMember)를 판단하고,  -->
<!-- 로그인 된 경우, 해당 사용자의 이름을 출력. -->
<!-- 로그인 전인 경우, 로그인 페이지로 이동할 수 있는 a 태그 출력. -->
     <!-- Start Hero Area -->
    <section class="hero-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                    <div class="hero-text text-center">
                        <!-- Start Hero Text -->
                        <div class="section-heading">
                            <h2 class="wow fadeInUp" data-wow-delay=".3s">MATDONGSAN</h2>
                            <p class="wow fadeInUp" data-wow-delay=".5s">당신이 찾는 모든 방 바로 이곳에.</p>
                        </div>
                        <!-- End Search Form -->
                        <!-- Start Search Form -->
                        <div class="search-form wow fadeInUp keywordLi" data-wow-delay=".7s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12 p-0">
                                    <div class="search-input">
                                        <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                        <input type="text" name="keyword" id="keyword" placeholder="원하는 동네 입력">

                                    </div>
                                    <div id="keywordLi">
                                        <ul>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-12 p-0">
                                    <div class="search-input">
                                        <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                        <select name="category" id="category">
                                            <option value="none" selected disabled>방종류선택</option>
                                            <option value="none">아파트</option>
                                            <option value="none">빌라.투룸+</option>
                                            <option value="none">원룸</option>
                                            <option value="none">오피스텔</option>
                                            <option value="none">창업/사무실</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-12 p-0">
                                    <div class="search-input">
                                        <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                                        <select name="location" id="location">
                                            <option value="none" selected disabled>지역</option>
                                            <option value="none">서울특별시</option>
                                            <option value="none">부산광역시</option>
                                            <option value="none">대구광역시</option>
                                            <option value="none">인천광역시</option>
                                            <option value="none">대전광역시</option>
                                            <option value="none">울산광역시</option>
                                            <option value="none">세종특별자치시</option>
                                            <option value="none">경기도</option>
                                            <option value="none">강원도</option>
                                            <option value="none">충청북도</option>
                                            <option value="none">충청남도</option>
                                            <option value="none">전라북도</option>
                                            <option value="none">전라남도</option>
                                            <option value="none">경상북도</option>
                                            <option value="none">경상남도</option>
                                            <option value="none">제주특별자치도</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-12 p-0">
                                    <div class="search-btn button">
                                        <button class="btn"><i class="lni lni-search-alt"></i> Search</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Search Form -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Area -->
  <script>
	    //동네검색창 가져오기
		let keyword = document.querySelector("#keyword");
		//검색결과 알려줄 ul 가져오기
	    let addressUl = document.querySelector("#keywordLi>ul");
	    //검색결과 리스트 div
	    let addressDiv = document.querySelector("#keywordLi");
	    //처음에 안보이게하기
	    addressDiv.style.display = "none";
	    //지도 검색에 필요한 폼찾기
	    let form = document.forms[0];
	
	    //지도 검색 버튼 찾기
	    let searchButton = document.querySelector(".search-btn>button");
	    //버튼 클릭이벤트 주기
	    searchButton.addEventListener("click", submit);
	
	   
	    
	    /*******************지도 검색 클릭 이벤트******************/
	    function submit() {
	        form.submit();
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
    </script>