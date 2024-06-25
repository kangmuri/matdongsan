<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/buildingInfo.css"
	rel="stylesheet">


<!-- *********************************************** 방 정보 등록 모달창 시작 *********************************************** -->

<div data-v-ba243cb2="" class="content-9sq">
	<div data-v-ba243cb2="" class="layer-4nc top-b8v">
		<h2 data-v-ba243cb2="">호실정보 등록</h2>
		<a data-v-ba243cb2=""
			href="https://linkhoushelp.zendesk.com/hc/ko/articles/5735728557207"
			class="btn-f1d oomee">호실정보 등록 가이드</a>
	</div>
	<div data-v-ba243cb2="" class="input-x5v">
		<div data-v-ba243cb2="">
			<div data-v-ba243cb2="" class="title-7t8">
				<div data-v-ba243cb2="" class="title-roe">
					<div data-v-ba243cb2="">호실 정보 (필수)</div>
				</div>
			</div>

			<input type="hidden" name="adddr"
				data-addrr="${buildingOne.bldgAddr}"
				data-addrr1="${buildingOne.region1depthNm}"
				data-addrr2="${buildingOne.region2depthNm}"
				data-addrr3="${buildingOne.region3depthNm}">

			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">해당층/총층</div>
				<div data-v-ba243cb2="" class="input-zg7">
					<div data-v-ba243cb2="" class="input-qeq">
						<input data-v-ba243cb2="" type="text" id="roomFloor"
							name="roomFloor" placeholder="해당층" class="input-wek hal-9x5">
						<span data-v-ba243cb2="" class="uni-xle">층</span>
					</div>
					<div data-v-ba243cb2="" class="input-qeq">
						<input data-v-ba243cb2="" type="text" name="floorCnt"
							data-bldg-no="${buildingOne.rentBldgNo }"
							value="${buildingOne.bldgAllCnt }" disabled
							class="input-wek hal-9x5 pr3-ma5"> <span
							data-v-ba243cb2="" class="uni-xle tra-hsv">층</span>
					</div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">호실번호</div>
				<div data-v-ba243cb2="" class="input-mox">
					<div data-v-ba243cb2="" class="input-qeq">
						<input data-v-ba243cb2="" type="text" placeholder="호실 입력"
							class="input-dbc" id="roomUnit" name="roomUnit"> <span
							data-v-ba243cb2="" class="uni-xle">호</span>
					</div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="title-7t8">
				<div data-v-ba243cb2="" class="title-roe">
					<div data-v-ba243cb2="">부가정보 (선택)</div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">대지/건축/전용면적 (㎡)</div>
				<div data-v-ba243cb2="" class="rel-2ox fle-73t fle-peg">
					<div data-v-ba243cb2="" class="input-zg7">
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="dctladars"
								name="dctladars" placeholder="대지면적" class="input-wek one-idr">
							<span data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
								data-v-ba243cb2="">2</sup></span>
						</div>
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="buildars"
								name="buildars" placeholder="건축면적" class="input-wek one-idr">
							<span data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
								data-v-ba243cb2="">2</sup></span>
						</div>
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="rentars" name="rentars"
								placeholder="전용면적" class="input-wek one-idr"> <span
								data-v-ba243cb2="" class="uni-xle squ-rwk">m<sup
								data-v-ba243cb2="">2</sup></span>
						</div>
					</div>
					<div data-v-ba243cb2="" class="ml1-il1"></div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">대지/건축/전용면적 (평)</div>
				<div data-v-ba243cb2="" class="rel-2ox fle-73t fle-peg">
					<div data-v-ba243cb2="" class="input-zg7">
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="dctladarp"
								name="dctladarp" placeholder="대지면적" class="input-wek one-idr">
							<span data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
						</div>
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="buildarp"
								name="buildarp" placeholder="건축면적" class="input-wek one-idr">
							<span data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
						</div>
						<div data-v-ba243cb2="" class="input-qeq">
							<input data-v-ba243cb2="" type="text" id="rentarp" name="rentarp"
								placeholder="전용면적" class="input-wek one-idr"> <span
								data-v-ba243cb2="" class="uni-xle tra-hsv">평</span>
						</div>
					</div>
					<div data-v-ba243cb2="" class="ml1-il1"></div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">방개수/욕실개수</div>
				<div data-v-ba243cb2="" class="input-zg7">
					<div data-v-ba243cb2="" class="input-qeq">
						<input data-v-ba243cb2="" type="text" placeholder="방개수"
							class="input-wek hal-9x5" id="roomCnt" name="roomCnt"> <span
							data-v-ba243cb2="" class="uni-xle">개</span>
					</div>
					<div data-v-ba243cb2="" class="input-qeq">
						<input data-v-ba243cb2="" id="roomBtrCnt" type="text"
							placeholder="욕실개수" class="input-wek hal-9x5" name="roomBtrCnt">
						<span data-v-ba243cb2="" class="uni-xle">개</span>
					</div>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">주차 가능 여부</div>
				<div data-v-ba243cb2="" class="input-mox">
					<ul data-v-ba243cb2="" class="toggle-tj3">
						<li data-v-ba243cb2="" class="on" id="joochaa" data-park-yn="N"><a
							data-v-ba243cb2="">불가능</a></li>
						<li data-v-ba243cb2="" id="joochab" data-park-yn="Y"><a
							data-v-ba243cb2="">가능</a></li>
					</ul>
				</div>
			</div>
			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">거실유형</div>
				<div data-v-ba243cb2="" class="input-mox">
					<ul data-v-ba243cb2="" class="toggle-tj3">
						<li data-v-ba243cb2="" class="on" data-room-type="R01"><a
							data-v-ba243cb2="">오픈형</a></li>
						<li data-v-ba243cb2="" data-room-type="R02"><a
							data-v-ba243cb2="">분리형</a></li>
					</ul>
				</div>
			</div>
			<a href="#" class="single-cat" id="speedUp3"> <img
				src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
				alt="#" width="25px" height="25px" />
			</a>

			<div data-v-ba243cb2="" class="title-7t8">
				<div data-v-ba243cb2="" class="title-roe">
					<div data-v-ba243cb2="">내부 시설물 (선택)</div>
				</div>
			</div>


			<div data-v-ba243cb2="" class="select-5o8">
				<div data-v-ba243cb2="" class="title-91g">난방시설</div>
				<div data-v-ba243cb2="" class="input-mox">
					<ul data-v-ba243cb2="" class="toggle-tj3">
						<li data-v-ba243cb2="" class="on" data-heating="H01"><a
							data-v-ba243cb2="">개별난방</a></li>
						<li data-v-ba243cb2="" data-heating="H02"><a
							data-v-ba243cb2="">중앙난방</a></li>
						<li data-v-ba243cb2="" data-heating="H03"><a
							data-v-ba243cb2="">지역난방</a></li>
					</ul>
				</div>
			</div>

			<div data-v-ba243cb2="" class="option-2j2">
				<!--  javascript 동적 옵션   -->
			</div>

			<div data-v-ba243cb2="" class="title-7t8">
				<div data-v-ba243cb2="" class="title-roe">
					<div data-v-ba243cb2="">사진 등록 (선택)</div>
				</div>
			</div>

			<div class="styled__BtnWrap-y2osxd-0 eDosqI">
				<input type="file" name="file" id="file" style="display: none"
					accept="image/*" value="" multiple onchange="fUpload(this)" />
				<button type="button" class="btn-f1d oomee" onclick="filePreview()">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
						xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
	                                        						<path fill-rule="evenodd"
							clip-rule="evenodd"
							d="M12.4919 5.91012C12.4496 5.67688 12.2455 5.5 12 5.5C11.7239 5.5 11.5 5.72386 11.5 6V11.5H6L5.91012 11.5081C5.67688 11.5504 5.5 11.7545 5.5 12C5.5 12.2761 5.72386 12.5 6 12.5H11.5V18L11.5081 18.0899C11.5504 18.3231 11.7545 18.5 12 18.5C12.2761 18.5 12.5 18.2761 12.5 18V12.5H18L18.0899 12.4919C18.3231 12.4496 18.5 12.2455 18.5 12C18.5 11.7239 18.2761 11.5 18 11.5H12.5V6L12.4919 5.91012Z"
							fill="#37b4e7"></path>
	                                    							</svg>
					<span class="styled__Text-q6pgzy-1 hnPnIj">사진 추가</span>
				</button>
			</div>

			<div data-v-ba243cb2="" class="img-tm7"></div>
			<div data-v-ba243cb2="" class="btn-23t">

				<div data-v-ba243cb2="" class="btn-tmj">
					<button type="button" data-v-596363a9=""
						class="btn-gea xjlpx close btn-close2" data-bs-dismiss="offcanvas"
						aria-label="Close">취소</button>
					<button type="button" data-v-596363a9="" class="btn-gea xjlpx"
						onclick="createRoom()">저장</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- *********************************************** 방 정보 등록 모달창 끝 *********************************************** -->



<script>

//================= 자동입력 이벤트 (호실 ) ===================//
var sroomFloor = document.querySelector("#roomFloor"); // 해당 층
var sroomUnit = document.querySelector("#roomUnit"); // 호
var sdctladars = document.querySelector("#dctladars"); // 대지면적
var sbuildars = document.querySelector("#buildars"); // 건축면적
var srentars = document.querySelector("#rentars"); // 전용면적
var sdctladarp = document.querySelector("#dctladarp"); // 대지면적(평)
var sbuildarp = document.querySelector("#buildarp"); // 건축면적(평)
var srentarp = document.querySelector("#rentarp"); // 전용면적(평)
var srentarp = document.querySelector("#rentarp"); // 전용면적(평)
var sroomCnt = document.querySelector("#roomCnt"); // 방개수
var sroomBtrCnt = document.querySelector("#roomBtrCnt"); // 욕실개수
var joochaa = document.querySelector("#joochaa"); // 주차가능여부
var joochab = document.querySelector("#joochab"); // 주차가능여부

let speedUp3 = document.querySelector("#speedUp3");
speedUp3.addEventListener('click',function(e){
	console.log("ddfdfd")
	e.preventDefault();
	
	sroomFloor.value = 4;
	sroomUnit.value = 402;
	sdctladars.value = 512;
	sbuildars.value = 322;
	srentars.value = 1023;
	sdctladarp.value = 155;
	sbuildarp.value = 97;
	srentarp.value = 309;
	sroomCnt.value = 10;
	sroomBtrCnt.value = 4;
	joochaa.classList.remove('on');
	joochab.classList.add('on');
	
})
//=================================================//


function RoomParam() {
	//주소검색시 받아야함
	this.roomVO = new RoomVO();
	this.rentRoomVO = new RentRoomVO();
	//roomLvlh 테이블
	this.roomLvlhList = [];
	this.fileArr =[];	//첨부파일 정보
	
	return this;
}

function RoomLvlhVO() {
	this.fcltySe = null;	//시설구분
	this.fcltyCd = null;	//시설코드
	this.roomNo = null;		//방고유번호

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

function RentRoomVO() {
	this.roomUngrYn = null;
	this.roomCnt = null;
	this.livingType = null;
	this.rentRoomNo = null;
	this.rentRoomDe = null;
	this.roomDelYn = null;
	this.userNo = null;
	this.rentBldgNo = null;
	this.roomNo = null; 

	return this;
}

function TbAttachFileVO() {
	 
	 this.atchmnflSn = null;    //첨부파일 순번    
	 this.filePath = null;      //파일경로
	 this.webPath = null;       //웹경로 
	 this.fileNm = null;        //원본파일명 
	 this.streFileNm = null;    //저장파일명  
	 this.fileSize = null;      //파일크기    
	 this.fivarype = null;      //파일유형 
	 this.regUserId = null;     //등록자ID  
	  
	 
	 return this;
}
var roomParam = new RoomParam();


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
    	makeDiv(data);    	
    })
 }
 
/******************** 방 시설 선택 옵션 공통코드에서 동적으로 가져오기 ***********************/
var ulTag = document.querySelector('.list-v2q');
var divTag = document.querySelector('.option-8tq');
var parentTag = document.querySelector('.option-2j2');
function makeDiv(cmmnList){
	var parentStr="";
	var cdNm="";
	for(var option of cmmnList){
		if(option.cmmnCdDc=="시설구분코드" && option.cmmnCd != "HEATING"){
			cd = option.cmmnCd;
			parentStr += `
				<div data-v-ba243cb2="" class="option-d3r">
					<div data-v-ba243cb2="" class="option-8tq">\${option.cmmnCdNm}시설</div>
				</div>

				<div data-v-ba243cb2="" class="option-krz">
					<ul data-v-ba243cb2="" class="list-v2q ">
			`;
			parentStr += makeli(cd, cmmnList);
			parentStr += `</ul></div>`;
			parentTag.innerHTML = parentStr;
		}
	}
}

function makeli(cd, cmmnList){
var listr = "";
		for(var life of cmmnList) {
			if(life.cmmnParent==cd){
				listr += `
					<li data-v-ba243cb2="">
					<input data-v-ba243cb2="" data-parent="\${life.cmmnParent}" cmmn type="checkbox" value="\${life.cmmnCd}">
					<label data-v-ba243cb2="" >\${life.cmmnCdNm}</label></li>
				`;
			}
		}
		return listr;
}




/****************** 평수계산 ************************/
var dctladarp = document.querySelector("input[name=dctladarp]");
var dctladars = document.querySelector("input[name=dctladars]");
var buildarp = document.querySelector("input[name=buildarp]");
var buildars = document.querySelector("input[name=buildars]");
var rentarp = document.querySelector("input[name=rentarp]");
var rentars = document.querySelector("input[name=rentars]");

	//대지면적 평수계산
	dctladars.addEventListener("change", function() {
		dctladarp.value =  Math.round(this.value * 0.3025);
		});

	//대지면적 제곱미터 계산
	dctladarp.addEventListener("change", function() {
		dctladars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});

	//건축면적 평수계산
	buildars.addEventListener("change", function() {
		buildarp.value =  Math.round(this.value * 0.3025);
		});

	//건축면적 제곱미터 계산
	buildarp.addEventListener("change", function() {
		buildars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});

	//전용면적 평수계산
	rentars.addEventListener("change", function() {
		rentarp.value =  Math.round(this.value * 0.3025);
		});

	//전용면적 제곱미터 계산
	rentarp.addEventListener("change", function() {
		rentars.value =  Math.round(this.value * 3.3058 * 100)/100;
	});

	

/********************* 방 form toggle-tj3 li태그 선택 ***********************/
// 모든 .toggle-tj3 요소를 가져온다.
var toggleLists = document.querySelectorAll(".toggle-tj3");
//배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
 
  toggleLists.forEach((list) => {
   // 각 .toggle-tj3 내의 li 요소들을 가져온다.
	   var ritems = list.querySelectorAll("li");
	   ritems.forEach((item)=>{
			item.addEventListener('click',function(){
			   	 ritems.forEach((e)=>{
			           //하나만 선택되도록 기존의 효과를 지워준다.
			             e.classList.remove('on');
			     })
			    // 선택한 그 아이만 효과를 추가해준다.
			    this.classList.add('on');
			})
	   })
  })
	 

function createRoom() {
	/*********************데이터 받아오기****************************/
	 var roomFloor = document.querySelector("input[name=roomFloor]"); //해당층
	 var floorCnt = document.querySelector("input[name=floorCnt]"); //전체
// 	 var roomUngrYn = document.querySelector("input[name=ungrYn]");//지하여부
	 var roomUnit = document.querySelector("input[name=roomUnit]"); //방 호수
	 var dctladar = document.querySelector("input[name=dctladars]"); //대지면적
	 var buildar = document.querySelector("input[name=buildars]"); //건축면적
	 var rentar = document.querySelector("input[name=rentars]");//전용면적
	 var roomCnt = document.querySelector("input[name=roomCnt]"); //방개수
	 var roomBtrCnt = document.querySelector("input[name=roomBtrCnt]"); //욕실개수
	 var roomParkngYn = document.querySelectorAll(".toggle-tj3>.on")[0].dataset.parkYn; //주차여부
	 var livingType = document.querySelectorAll(".toggle-tj3>.on")[1].dataset.roomType; //거실유형
	 var heating = document.querySelectorAll(".toggle-tj3>.on")[2]; //난방시설
	 var rentBldgNo = floorCnt.dataset.bldgNo; //건물번호
	
	 var region1depthNm = document.querySelector("input[name=adddr]").dataset.addrr1;
	 var region2depthNm = document.querySelector("input[name=adddr]").dataset.addrr2;
	 var region3depthNm = document.querySelector("input[name=adddr]").dataset.addrr3;
	 var bldgAddr = document.querySelector("input[name=adddr]").dataset.addrr;
	/*********************데이터 roomParamVO에 넣기****************************/
	roomParam.roomVO.roomFloor = roomFloor.value; //해당층
	roomParam.rentRoomVO.roomUngrYn = "N";
	roomParam.roomVO.roomUnit = roomUnit.value; //방 호수
	roomParam.roomVO.dctLadAr = dctladar.value;//대지면적
	roomParam.roomVO.buldAr = buildar.value;//건축면적
	roomParam.roomVO.rentAr = rentar.value;//전용면적
	roomParam.rentRoomVO.roomCnt = roomCnt.value;//방개수
	roomParam.roomVO.roomBtrCnt = roomBtrCnt.value;//욕실개수
	roomParam.roomVO.roomParkngYn = roomParkngYn; //주차여부
	roomParam.rentRoomVO.livingType = livingType;//거실유형
	roomParam.rentRoomVO.rentBldgNo = rentBldgNo;//건물번호
	
	roomParam.roomVO.region1depthNm = region1depthNm; //시
	roomParam.roomVO.region2depthNm = region2depthNm; //구 
	roomParam.roomVO.region3depthNm = region3depthNm; //동
	roomParam.roomVO.bldgAddr = bldgAddr; //동
	

	
	var cks = document.querySelectorAll("[cmmn]:checked");
	   for(var ck of cks){
	   	var roomLvlh = new RoomLvlhVO();
	   	roomLvlh.fcltyCd = ck.dataset.parent;
		roomLvlh.fcltySe = ck.value;       	
		roomParam.roomLvlhList.push(roomLvlh);   
	   }
	   


	var roomLvlh = new RoomLvlhVO();
	roomLvlh.fcltyCd = "HEATING";
	roomLvlh.fcltySe = heating.dataset.heating;  
	
	console.log("room : " , roomParam);
		
	var url = cPath + "/lessor/roomInfo"
	
	
	 Swal.fire({
         title: `호실 등록을 완료하시겠습니까?`,
         icon: 'warning',
			showCancelButton: true,
         confirmButtonText: '네',
         cancelButtonText: '아니요'
     }).then((result) => {
         if (result.isConfirmed) {
        	 
	fetch(url, {
		method : "post",
		headers : {
			'Content-Type' : 'application/json',
			'accept' : 'application/json'
		},
		body : JSON.stringify(roomParam)

	}).then(res => {
		return res.json()}
	).then(result => {
			console.log('반환값 ===>', result);
		if(result.success) {
			Swal.fire({
      		  title: "등록완료",
      		  text: "방 등록이 완료되었습니다.",
      		  icon: "success"
      	}).then((resp)=>{
      	location.href = cPath + "/lessor/buildingInfo";
      	});
		}else {
			Swal.fire({
	      		  title: "등록실패",
	      		  text: "방 등록에 실패하였습니다.",
	      		  icon: "error"
	      	})
		}
	})
	
         } else if (result.dismiss === Swal.DismissReason.cancel) {
             Swal.fire(
                 '취소되었습니다',
                 '등록 작업이 취소되었습니다',
                 'error'
             );
         }
     })
		 
}		 
	/*********************방등록 이미지 파일등록 ***********************/
	//input file태그 찾기
		var inputFile = document.all.file;
			function filePreview() {
				inputFile.click();
			}
		
			
		function fUpload(target) {
			console.log(target.files);
			
			var formData = new FormData();
	
			for(var i =0; i < target.files.length; i++) {
				if(target.files[i].type.substr(0,5) == "image") {
					formData.append("hidden", "");
					formData.append("attachFile", target.files[i]);
				}
			}
			
// 			var imageCnt = document.querySelectorAll('.box-k8j .btn-nws').length)/2 ;
// 			if(imageCnt > 5){
// 				Swal.fire({
// 					title: '사진은 최대 5개까지 등록이 가능합니다.',
// 					text: '',
// 					icon: 'error'
// 				 });
// 			}else{
			
// 			divTag.innerHTML = "";
			var imgTag = "";
			var url = `${pageContext.request.contextPath}/api/img`
			fetch(url, {
				method : "post",
				headers : {
					"Accept" : "application/json"
				},
				body : formData
			}).then(res => res.json())
			.then(data => {
				console.log(data);
				var divTag2 = document.querySelector(".img-tm7");
				
									
				for(var i = 0; i < data.length; i++) {
					attachFileVO = new TbAttachFileVO();
					attachFileVO.atchmnflSn = data[i].atchmnflSn
					attachFileVO.filePath = data[i].filePath
					attachFileVO.webPath = data[i].webPath
					attachFileVO.fileNm = data[i].fileNm
					attachFileVO.streFileNm = data[i].streFileNm
					attachFileVO.fileSize = data[i].fileSize
					attachFileVO.fivarype = data[i].fivarype
					attachFileVO.regUserId = data[i].regUserId
	
					
					imgTag += `
						<div data-v-ba243cb2="">
							<div data-v-ba243cb2="" class="box-k8j btn-nws">
								<img data-v-ba243cb2=""
									src="\${cPath}\${attachFileVO.webPath}"
									class="btn-nws"> <input data-v-ba243cb2="" type="file"
									name="file" accept="image/*" id="upI-\${i}" class="img-x1h btn-nws"
									onchange="fUpload(this)">
							</div>
						</div>
						
					`;
// 					var imgTag = document.createElement("img");
// 					imgTag.src = `${pageContext.request.contextPath}` + attachFileVO.webPath;
// 					imgTag.width = 150;
// 					imgTag.height = 100;
// 					divTag.appendChild(imgTag);
					roomParam.fileArr.push(attachFileVO);
				}
				divTag2.innerHTML += imgTag;
			})
// 				imgTag += "</div>";
		}
// 		}

</script>
