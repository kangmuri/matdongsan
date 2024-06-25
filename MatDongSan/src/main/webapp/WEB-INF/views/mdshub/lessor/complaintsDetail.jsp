<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentNoticeDetail.css"
	rel="stylesheet">
<!-- 달력선택을 위한 flatpickr -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/translations/ko.js"></script>
<style>
.comment {
	margin-top: 20px; /* 버튼과 생성된 요소 사이의 간격 추가 */
}

.ck-editor__editable {
	min-height: 200px;
}

.comment>* {
	display: none;
}
</style>
<div data-v-bd6faeac="" class="cont-4bx att-4bh pmc-l74">
	<div data-v-bd6faeac="" class="tit-smv header-fbp">
		<h2 data-v-bd6faeac="" class="bbdno">민원상세조회</h2>
	</div>
	<div data-v-bd6faeac="" class="set-c71 w84-5g7">
		<h4>민원정보</h4>
		<div data-v-bd6faeac="" class="fle-neb spa-e6h w10-z51">
			<div data-v-bd6faeac=""></div>
		</div>
		<table data-v-bd6faeac="" class="list-y7w mt2-5ax">
			<colgroup data-v-bd6faeac="">
				<col data-v-bd6faeac="" width="200">
				<col data-v-bd6faeac="" width="*">
			</colgroup>
			<tbody data-v-bd6faeac="">
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">건물정보</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${comp.rentBldg.bldgNm}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">임차인정보</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${comp.users.userNm} / ${comp.rentRoom.room.roomUnit}호</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">처리희망일시</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${comp.cvlcpHopeDt}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">민원종류</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">${comp.cvlcpKnd}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">처리상태</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">${comp.cvlcpStts}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">처리일시</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">${comp.cvlcpOkDt}</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div data-v-bd6faeac="" class="w10-z51">
			<div data-v-33e25de6="" data-v-bd6faeac="" class="not-s5c w10-z51">
				<br> <br> <br>
				<h4>민원내용</h4>
				<div data-v-33e25de6="" class="not-s8e">
					<div data-v-7cb2bca4="" data-v-33e25de6="" class="image-container">
						<div style="height: 100%">
							<br>${comp.cvlcpCn}</div>
					</div>
					<div data-v-33e25de6=""></div>
				</div>

				<div data-v-33e25de6="" class="button-svc rea-ab9">
					<button data-v-33e25de6="" class="can-i8w hov-jy7 hover-gjr"
						onclick="location.href='${pageContext.request.contextPath}/lessor/complaints'">목록으로</button>

					<c:if test="${comp.cvlcpStts eq '처리중'}">
						<button data-v-33e25de6="" class="sav-ql9 hov-jy7 hover-gjr"
							id="comments">답변생성</button>
					</c:if>
					<br>


					<div data-v-33e25de6="" class="box-o8j"></div>
				</div>
				<h4>처리답변</h4>
				<c:if test="${not empty comp.cvlcpAns}">
					<div data-v-33e25de6="" class="not-s8e a">
						<div data-v-7cb2bca4="" data-v-33e25de6="" class="image-container">
							<div style="height: 100%">
								<br>${comp.cvlcpAns }
							</div>
						</div>
						<div data-v-33e25de6=""></div>
					</div>
					<div data-v-33e25de6="" class="button-svc rea-ab9 b">
						<div data-v-33e25de6="" class="box-o8j">
							<c:url value="modifyForm/${notice.noticeNo }" var="modifyForm" />
							<c:if test="${principal.userNo == comp.lessorNo}">
								<button data-v-33e25de6="" class="can-i8w hov-jy7 hover-gjr"
									onclick="detBtn(this)">답변삭제</button>
								<button data-v-33e25de6="" class="sav-ql9 hov-jy7 hover-gjr"
									id="upBtn" >답변수정</button>
							</c:if>
						</div>
					</div>
				</c:if>
				<c:if test="${empty comp.cvlcpAns}">
					<div data-v-33e25de6="" class="not-s8e a">
						<div data-v-7cb2bca4="" data-v-33e25de6="" class="image-container">
							<div style="height: 100%">
								<br>답변 내용이 없습니다.
							</div>
						</div>
						<div data-v-33e25de6=""></div>
					</div>
				</c:if>
				<div class="comment">
					<form id="cvlcp">
						<table data-v-bd6faeac="" class="list-y7w mt2-5ax">
							<tr data-v-bd6faeac="">
								<th data-v-bd6faeac="">처리일자 선택</th>
								<td data-v-bd6faeac="">
									<div data-v-bd6faeac="" class="list-mdl">
										<input type="text" data-id="datetime" id="datepicker" name="cvlcpOk"
											placeholder="날짜 선택" class="form-control">
									</div>
								</td>
							</tr>
							<tr data-v-bd6faeac="">
								<th data-v-bd6faeac="">처리결과 선택</th>
								<td data-v-bd6faeac=""><select id="cvlcpStts"
									name="cvlcpStts" data-v-99296fd6=""
									class="select-z32 select-o27 insert select-49i sli-293">
										<option data-v-99296fd6="" value="COMSTTR02">처리완료</option>
										<option data-v-99296fd6="" value="COMSTTR03">처리불가</option>
								</select></td>
							</tr>
							<tr>
								<th data-v-bd6faeac="">처리내용 작성 <a href="#" class="single-cat" id="speedUp"> <img
								src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
								alt="#" width="25px" height="25px" />
							</a></th>
								<td><textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요"
										id="ckEditor" name="cvlcpAns">${comp.cvlcpAns }</textarea></td>
							</tr>
							<tr>
								<td colspan="2">
									<div data-v-33e25de6="" class="button-svc rea-ab9">
										<button data-v-33e25de6="" class="sav-ql9 hov-jy7 hover-gjr"
											id="replyBtn">작성</button>
										<button data-v-33e25de6="" class="sav-ql9 hov-jy7 hover-gj"
											id="updateBtn" style="display:none;">수정완료</button>
									</div>
									
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script>
        let content; //ckeditor 전역변수
        let dateInput; 
        var aa =  document.querySelectorAll('.not-s8e.a, .not-s8e.a > *'); //답변 생성 눌렀을때 답변없습니다 내용 없애기
        var commentChildren = document.querySelectorAll('.comment > *'); // 답변생성 버튼 눌렀을때 다보이기
        document.addEventListener("click", function(event) {
            if (event.target && event.target.id == "comments") {
//     document.getElementById("comments").addEventListener("click", function() {
       
        aa.forEach(function(child) {
        	child.style.display='none';
        });
        
        commentChildren.forEach(function(child) {
            child.style.display = 'block';
        });

        // CKEditor 초기화
		ClassicEditor
		    .create(document.querySelector('#ckEditor'), {
		        language: "ko"
		    })
		    .then(newEditor => {
		        content = newEditor;
		    });

        // 달력 초기화
        if (!document.querySelector('.flatpickr-calendar')) {
            flatpickr("#datepicker", {
            	dateFormat: "Y-m-d H:i",
                defaultDate: 'today',
                locale: 'ko',
                enableTime: true
            });
        }
    function handleDateChange(selectedDates, dateStr, instance) {
     }
     dateInput = document.forms['cvlcp'].cvlcpOk.value;
}
            })
            

var speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	
	content.setData(`
			현재 놀이터의 상태를 즉시 확인하고, 
			필요한 수리와 교체 작업을 빠르게 진행하여
			어린이 놀이터 시설의 정기적인 
			점검과 보수를 통해 안전성을 강화하겠습니다. 
	`);
})
  //************************ 답변 등록 *****************************
  let rBtn = document.querySelector("#replyBtn");
  let cvlcpStts;
  console.log("처리상태?",cvlcpStts)
	rBtn.addEventListener('click',function(e){
		e.preventDefault();
		dateInput = document.forms['cvlcp'].cvlcpOk.value;
		
		let cmt = content.getData();
		cvlcpStts = $("#cvlcpStts option:selected").val();
	 	console.log("입력된 댓글 정보==>",cmt);

	let url = `\${cPath}/lessor/complaints`;

	let data = {
		cvlcpAns : cmt,
		cvlcpNo : `${comp.cvlcpNo}`,
		cvlcpStts : cvlcpStts,
		cvlcpOkDt : dateInput,
		lessorNo : `${principal.userNo}`
	};
	
  	console.log("data값=>",data); 

	fetch(url,{
		method:'post',
		headers:{
        'Content-Type' : 'application/json',
		},
		body : JSON.stringify(data)
	})
	.then(resp=>resp.text())
	.then(resp=>{
		console.log("반환값==>",resp);
		if(resp == "ok"){
			Swal.fire({
				title: '민원처리가 완료 되었습니다.',
				text: '',
				icon: 'success'
			}).then(result => {
				 location.reload(true);
			});
		}
	})
});
  //************************ 답변 등록 끝 *****************************
  
  //************************ 답변 삭제 ***************************** 
function detBtn(e){
    Swal.fire({
        title: '정말 삭제하시겠습니까?',
        text: '',
        icon: 'warning',
        showCancelButton: true, 
        confirmButtonColor: '#6528b5', 
        confirmButtonText: '삭제', 
        cancelButtonText: '취소',
    })
    .then(result => {
        if (result.isConfirmed) { 
            fDel();
        }
    });
}

function fDel(){
    let data = {
    	cvlcpNo : `${comp.cvlcpNo}`,
        lessorNo : `${principal.userNo}`
    }
    let url = `\${cPath}/lessor/complaints/remove`;
    fetch(url,{
        method: 'post',
        headers : {
            'Content-Type' : 'application/json'
        },
        body : JSON.stringify(data)
    })
    .then(response=>response.text())
    .then(data=>{
        console.log(data);
        if(data == "ok"){
            Swal.fire({
                title: '삭제가 완료되었습니다.',
                text: '',
                icon: 'success',
                confirmButtonColor: '#6528b5'
            }).then(result => {
            	location.reload(true);
            });
        }
    })
    .catch(error=>{
        console.log("error=>",error);
    })
}
//************************ 답변 삭제  ***************************** 

//************************ 답변 수정  ***************************** 
$(document).on('click', '[id^=upBtn]', function(e) {
	console.log("여긴와써?")
	//답변 생성 눌렀을때 답변없습니다 내용 없애기
    aa.forEach(function(child) {
    	child.style.display='none';
    });
    
    commentChildren.forEach(function(child) {
        child.style.display = 'block';
    });
    
    document.querySelector('.rea-ab9.b').style.display='none'
    document.querySelector('#replyBtn').style.display='none'
    document.querySelector('#updateBtn').style.display='block'
    
    
//CKEditor 초기화
ClassicEditor
    .create(document.querySelector('#ckEditor'), {
        language: "ko"
    })
    .then(newEditor => {
        content = newEditor;
    });
});
// 달력 초기화
if (!document.querySelector('.flatpickr-calendar')) {
    flatpickr("#datepicker", {
    	dateFormat: "Y-m-d H:i",
        defaultDate: 'today',
        locale: 'ko',
        enableTime: true
    });
}
function handleDateChange(selectedDates, dateStr, instance) {
}

$(document).on('click','#updateBtn',function(event){
	event.preventDefault();
	var dateInput = document.forms['cvlcp'].cvlcpOk.value;
	console.log("날짜 잘찍혀?",dateInput)

	let upcmt = content.getData();
	cvlcpStts = $("#cvlcpStts option:selected").val();
 	console.log("입력된 댓글 정보==>",upcmt);

let url = `\${cPath}/lessor/complaints`;

let data = {
	cvlcpAns : upcmt,
	cvlcpNo : `${comp.cvlcpNo}`,
	cvlcpStts : cvlcpStts,
	cvlcpOkDt : dateInput,
	lessorNo : `${principal.userNo}`
};

	console.log("data값=>",data); 

fetch(url,{
	method:'post',
	headers:{
    'Content-Type' : 'application/json',
	},
	body : JSON.stringify(data)
})
.then(resp=>resp.text())
.then(resp=>{
	console.log("반환값==>",resp);
	if(resp == "ok"){
		Swal.fire({
			title: '답변 수정이 완료 되었습니다.',
			text: '',
			icon: 'success'
		}).then(result => {
			 location.reload(true);
		});
	}
})
});

//************************ 답변 수정 끝 ***************************** 
    
</script>