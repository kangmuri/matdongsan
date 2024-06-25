<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/buildingInfo.css"
	rel="stylesheet">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- *********************************************** 건물 정보 등록 모달창 시작 *********************************************** -->
<!-- <div class="offcanvas offcanvas-end w-65" tabindex="-1" -->
<!-- 	id="offcanvasRight" aria-labelledby="offcanvasRightLabel"> -->
<!-- 	<div class="offcanvas-header"> -->
<!-- 		<button type="button" class="btn-close" data-bs-dismiss="offcanvas" -->
<!-- 			aria-label="Close"></button> -->
<!-- 	</div> -->
<!-- 	<div class="offcanvas-body"> -->
<!-- 		<div id="buildingRegister" style="display: none;"> -->
<div id="buildingRegister">
	<div data-v-596363a9="" class="content-57g">
		<div data-v-596363a9="" class="layer-o82">
			<h2 data-v-596363a9="">건물 등록</h2>
			<a data-v-596363a9=""
				href="https://linkhoushelp.zendesk.com/hc/ko/articles/360049564814-2-1-1"
				class="btn-gea ipmqd">건물등록 가이드</a>
		</div>
		<div data-v-596363a9="" class="layer-e6w">
			<form id="buildingForm" method="post">
				<table data-v-596363a9="" class="list-w67 no-mwf">
					<colgroup data-v-596363a9="">
						<col data-v-596363a9="" width="160">
						<col data-v-596363a9="" width="*">
					</colgroup>
					<tbody data-v-596363a9="">
						<tr data-v-596363a9="">
							<th data-v-596363a9="">건물명</th>
							<td data-v-596363a9=""><input data-v-596363a9="" type="text"
								id="bldgNm" name="bldgNm" placeholder="등기 건물명이 없을 경우 별칭을 입력하세요"
								class="input-g3g wkoft w29-bcx" required></td>
						</tr>
						<tr data-v-596363a9="">
							<th data-v-596363a9="">총 층수</th>
							<td data-v-596363a9="">
								<div data-v-596363a9="" class="input-ngo">
									<input data-v-596363a9="" type="text" id="bldgAllCnt" name="bldgAllCnt"
										placeholder="총 층수 정보를 입력해주세요.(숫자)" class="input-njs w28-rif" ß>
									<span data-v-596363a9="" class="unit-ffo">층</span>
								</div>
							</td>
						</tr>
						<tr data-v-596363a9="">
							<th data-v-596363a9="">동 정보 (선택)</th>
							<td data-v-596363a9="">
								<div data-v-596363a9="" class="input-ngo">
									<input data-v-596363a9="" type="text" name="bldgDong" id="bldgDong"
										placeholder="동 정보를 입력해주세요." class="input-njs w28-rif">
									<span data-v-596363a9="" class="unit-ffo">동</span>
								</div>
							</td>
						</tr>
						<tr data-v-596363a9="">
							<th data-v-596363a9="">건물주소</th>
							<td data-v-596363a9="">
								<div data-v-596363a9="" class="input-fpd">
									<input data-v-596363a9="" type="text" name="bldgAddr"
										id="sample3_address" placeholder="주소찾기를 통해 건물 주소를 입력해 주세요"
										class="input-g3g wkoft w47-zgn mb1-w3e w29-bcx" required>
									<a data-v-596363a9="" class="btn-gea giebh"
										onclick="sample3_execDaumPostcode()"> 주소찾기 </a>
								</div>
								<div id="wrap"
									style="display: none; border: 1px solid; width: 500px; height: 400px; margin: 5px 0; position: relative">
								</div>
							</td>
						</tr>

						<tr data-v-596363a9="">
							<th data-v-596363a9="" class="ogwto">가구수 총합</th>
							<td data-v-596363a9=""><input data-v-596363a9=""
								type="number" name="bldgHomeCnt"
								placeholder="건물에 관리 중인 가구수를 입력하세요.(숫자만)"
								id="bldgHomeCnt"
								class="input-g3g wkoft w29-bcx" required>
								<p data-v-596363a9="" class="info-21k wiivs">이 건물에서 관리 중인
									가구수의 합계를 입력하세요. (공실률 산정 시 필수)</p></td>
						</tr>
						<!-- 										<tr data-v-596363a9=""> -->
						<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
						<!-- 												data-v-596363a9="">수납계좌 연동</span></th> -->
						<!-- 											<td data-v-596363a9=""> -->
						<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
						<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-Xtyn9" -->
						<!-- 														id="style-Xtyn9"> -->
						<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
						<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
						<!-- 															data-v-596363a9="">연동안함</a></li> -->
						<!-- 													</ul> -->
						<!-- 													<a data-v-596363a9="" -->
						<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360050344613-2-4-2" -->
						<!-- 														class="btn-gea ipmqd">자세히 보기</a> -->
						<!-- 												</div> -->
						<!-- 												<p data-v-596363a9="" class="info-tm9">등록된 수납계좌가 없습니다.</p> -->
						<!-- 											</td> -->
						<!-- 										</tr> -->

						<!-- 										<tr data-v-596363a9=""> -->
						<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
						<!-- 												data-v-596363a9="">증빙 사업자 연동</span></th> -->
						<!-- 											<td data-v-596363a9=""> -->
						<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
						<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-ybK3o" -->
						<!-- 														id="style-ybK3o"> -->
						<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
						<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
						<!-- 															data-v-596363a9="">연동안함</a></li> -->
						<!-- 													</ul> -->
						<!-- 													<a data-v-596363a9="" -->
						<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360049566014-2-5-2" -->
						<!-- 														class="btn-gea ipmqd">자세히 보기</a> -->
						<!-- 												</div> -->
						<!-- 											</td> -->
						<!-- 										</tr> -->

						<!-- 										<tr data-v-596363a9=""> -->
						<!-- 											<th data-v-596363a9="" class="ogwto"><span -->
						<!-- 												data-v-596363a9="">가상계좌 연동</span></th> -->
						<!-- 											<td data-v-596363a9=""> -->
						<!-- 												<div data-v-596363a9="" class="rel-mm3"> -->
						<!-- 													<ul data-v-596363a9="" class="tab-lbz tab-pc3 style-EU7Hh" -->
						<!-- 														id="style-EU7Hh"> -->
						<!-- 														<li data-v-596363a9=""><a data-v-596363a9="">연동</a></li> -->
						<!-- 														<li data-v-596363a9="" class="otrpq"><a -->
						<!-- 															data-v-596363a9="">연동안함</a></li> -->
						<!-- 													</ul> -->
						<!-- 													<a data-v-596363a9="" -->
						<!-- 														href="https://linkhoushelp.zendesk.com/hc/ko/articles/360050345633-2-4-6" -->
						<!-- 														class="btn-gea ipmqd"> 자세히 보기 </a> -->
						<!-- 												</div> -->
						<!-- 												<p data-v-596363a9="" class="info-tm9">등록된 출금계좌 정보가 -->
						<!-- 													없습니다.</p> -->
						<!-- 											</td> -->
						<!-- 										</tr> -->

						<tr data-v-596363a9="">
							<th data-v-596363a9="" class="ogwto">건물구분(택1)</th>
							<td data-v-596363a9="">
								<ul data-v-596363a9="" class="list-wbh">
									<li data-v-596363a9="" class="gksrs" data-bldgSe="VILLA"><a
										data-v-596363a9="">주택</a></li>
									<li data-v-596363a9="" id="dagagoo" class="gksrs" data-bldgSe="HOUSE"><a
										data-v-596363a9="">다가구 주택</a></li>
									<li data-v-596363a9="" class="gksrs" data-bldgSe="MULTIHOUSE"><a
										data-v-596363a9="">다세대 주택</a></li>
									<li data-v-596363a9="" class="gksrs" data-bldgSe="OFFIECTEL"><a
										data-v-596363a9="">오피스텔</a></li>
									<li data-v-596363a9="" class="gksrs" data-bldgSe="APERTMENT"><a
										data-v-596363a9="">아파트</a></li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<a href="#" class="single-cat" id="speedUp"> <img
					src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
					alt="#" width="25px" height="25px" />
				</a>
				<div data-v-596363a9="" class="loading-7s9 style-LVpc9"
					id="style-LVpc9">
					<div data-v-596363a9="" class="loading-pzt"></div>
				</div>
				<div data-v-596363a9="" class="btn-l8n kjvfh mt2-e5v">
					<a data-v-596363a9="" class="btn-gea giebh">취소</a>
					<button type="submit" data-v-596363a9="" class="btn-gea xjlpx">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- --------end------------ -->
<!-- 	</div> -->
<!-- </div> -->
<!-- *********************************************** 건물 정보 등록 모달창 끝 *********************************************** -->

<script>
//================= 자동입력 이벤트 ===================//
let bldgNm = document.querySelector("#bldgNm"); // 건물 이름 
let bldgAllCnt = document.querySelector("#bldgAllCnt"); // 총 층수
let bldgDong = document.querySelector("#bldgDong"); // 동
let bldgHomeCnt = document.querySelector("#bldgHomeCnt"); // 가구수
let dagagoo = document.querySelector("#dagagoo"); // 건물분류 선택 (다가구)

let speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	
	bldgNm.value = "대덕인재하우스";
	bldgAllCnt.value = 4;
	bldgDong.value = "C";
	bldgHomeCnt.value = 24;
	dagagoo.classList.add('active');
	
})
//=================================================//



/********************* 주소 검색(daum주소찾기 api) ***********************/
//우편번호 찾기 찾기 화면을 넣을 element
 	var element_wrap = document.getElementById('wrap');
	var isshow = false;
	var region1depthNm;
	var region2depthNm;
	var region3depthNm;
 function sample3_execDaumPostcode() {
 	
     // 현재 scroll 위치를 저장해놓는다.
     var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
     new daum.Postcode({
         oncomplete: function(data) {
        	 console.log("주소데이터:",data);
        	 region1depthNm = data.sido;
        	 region2depthNm = data.sigungu;
        	 region3depthNm = data.bname; 
             // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

             // 각 주소의 노출 규칙에 따라 주소를 조합한다.
             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
             var addr = ''; // 주소 변수
             var extraAddr = ''; // 참고항목 변수

             //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
             if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                 addr = data.roadAddress;
             } else { // 사용자가 지번 주소를 선택했을 경우(J)
                 addr = data.jibunAddress;
             }

             // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
             if(data.userSelectedType === 'R'){
                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                     extraAddr += data.bname;
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' && data.apartment === 'Y'){
                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                 if(extraAddr !== ''){
                     extraAddr = ' (' + extraAddr + ')';
                 }
                 // 조합된 참고항목을 해당 필드에 넣는다.
//                  document.getElementById("sample3_extraAddress").value = extraAddr;
             
             } else {
//                  document.getElementById("sample3_extraAddress").value = '';
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
//              document.getElementById('sample3_postcode').value = data.zonecode;
             document.getElementById("sample3_address").value = addr;
             // 커서를 상세주소 필드로 이동한다.
//              document.getElementById("sample3_detailAddress").focus();

             // iframe을 넣은 element를 안보이게 한다.
             // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
             element_wrap.style.display = 'none';

             // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
             document.body.scrollTop = currentScroll;
         },
         // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
         onresize : function(size) {
             element_wrap.style.height = size.height+'px';
         },
         width : '100%',
         height : '100%'
     }).embed(element_wrap);

     // iframe을 넣은 element를 보이게 한다.
     // 토글
     if(!isshow){
     	element_wrap.style.display = 'block';
     	isshow = true;
     }else{
      	element_wrap.style.display = 'none';
     	isshow = false;
     }
 }
 
 /*********************건물구분 버튼 선택***********************/
   //선택지를 모두 가져온다
   const items = document.querySelectorAll(".list-wbh li");
   //배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
   items.forEach((item)=>{
       item.addEventListener('click',function(){
     	  console.log(this.innerText);
           items.forEach((e)=>{
             //하나만 선택되도록 기존의 효과를 지워준다.
               e.classList.remove('active');
           })
         // 선택한 그 아이만 효과를 추가해준다.
           item.classList.add('active');
       })
   })
 
   
   /*********************건물 form 데이터 전송***********************/
const bdform = document.getElementById("buildingForm");
bdform.onsubmit = function(e) {
   	e.preventDefault();
   	let activeLi = document.querySelector(".list-wbh> .gksrs.active");
   	let bldgse = activeLi.dataset.bldgse;
    console.log(e);
    
    let data = {
        bldgNm: bdform.bldgNm.value,
        bldgAddr: bdform.bldgAddr.value,
        bldgHomeCnt: bdform.bldgHomeCnt.value,
        bldgSe: bldgse,
        bldgAllCnt: bdform.bldgAllCnt.value,
        bldgDong: bdform.bldgDong.value,
        region1depthNm : region1depthNm,
	    region2depthNm : region2depthNm,
	    region3depthNm : region3depthNm
    }
    	
    console.log("data ===>",data)
    let url = cPath + "/lessor/buildingInfo";
    // AJAX 요청
    
    
    Swal.fire({
                title: `건물 등록을 완료하시겠습니까?`,
                icon: 'warning',
				showCancelButton: true,
                confirmButtonText: '네',
                cancelButtonText: '아니요'
            }).then((result) => {
                if (result.isConfirmed) {
    
    $.ajax({
        url: url,
        type: 'POST',
		contentType:"application/json",
        data: JSON.stringify(data),
        dataType: 'json',
        success: function(resp) {
//         	let res = JSON.parse(resp);
            console.log('반환값 ===>', resp);
            console.log('반환값 ===>', resp.success);
            if(resp.success){
            	console.log("ㅎㅇ")
            	Swal.fire({
            		  title: "등록완료",
            		  text: "건물등록이 완료되었습니다.",
            		  icon: "success"
            	}).then((res)=>{
            	location.href = url  // + "/" + resp.bldgNo;
            	});
            }
        },
        error: function(xhr, status, error) {
            console.error('Error:', status, error);
        	Swal.fire({
      		  title: "등록실패",
      		  text: "건물등록에 실패하였습니다.",
      		  icon: "error"
      	})
        }
    });
    
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    Swal.fire(
                        '취소되었습니다',
                        '등록 작업이 취소되었습니다',
                        'error'
                    );
                }
            })
    
};





 </script>