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
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentNoticeDetail.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentNotice.css"
	rel="stylesheet">
	
<form name="noticeEdit" enctype="multipart/form-data">
	<div data-v-bd6faeac="" class="cont-4bx att-4bh pmc-l74">
		<div data-v-bd6faeac="" class="tit-smv header-fbp">
			<h2 data-v-bd6faeac="" class="bbdno">공지수정</h2>
		</div>
		<div data-v-bd6faeac="" class="set-c71 w84-5g7">
			<div data-v-abe864cc="" class="text-4o3">제목 작성 (30자 이내)</div>
			<div data-v-abe864cc="" class="mt1-7za w10-waw">
				<input data-v-abe864cc="" type="text" class="w10-waw title-cw8"
					id="noticeSj" name="noticeSj" value="${notice.noticeSj}">
			</div>
			<div data-v-bd6faeac="" class="text-7yy mb1-5qv"></div>
			<div data-v-bd6faeac="" class="fle-neb spa-e6h w10-z51">
				<div data-v-bd6faeac="">${notice.users.userNm} |
					${notice.noticeDt} | 조회수 ${notice.noticeCnt}</div>
			</div>
			<table data-v-bd6faeac="" class="list-y7w mt2-5ax">
				<colgroup data-v-bd6faeac="">
					<col data-v-bd6faeac="" width="200">
					<col data-v-bd6faeac="" width="*">
				</colgroup>
				<tbody data-v-bd6faeac="">
					<tr data-v-bd6faeac="">

						<div data-v-abe864cc="" class="tar-gcy w10-waw mt1-7za">
							<div data-v-abe864cc="" class="select-dv8 w10-waw pd2-fwq">
								<div data-v-abe864cc="" class="w15-evi">건물선택</div>

								<div data-v-abe864cc="" class="w43-riq">
									<div data-v-abe864cc="" class="select-i5t">
										<div class="select-e8t style-5pKkC" id="style-5pKkC"></div>
										<div class="spinner-r3l style-WKVTh" id="style-WKVTh"></div>

										<select id="rentBldgNo" name="rentBldgNo" data-v-99296fd6=""
											class="select-z32 select-o27 insert select-49i sli-293" >
											<option id="opt" data-v-99296fd6="" value="${notice.rentBldg.rentBldgNo}">${notice.rentBldg.bldgNm}</option>
											<c:forEach items="${bldg}" var="bldg">
												<option data-v-99296fd6="" value="${bldg.rentBldgNo}">${bldg.bldgNm}</option>
											</c:forEach>
										</select>

									</div>
								</div>
							</div>
						</div>
						<!--                     <th data-v-bd6faeac="">건물정보</th> -->
						<!--                     <td data-v-bd6faeac=""> -->
						<%--                         <div data-v-bd6faeac="" class="list-mdl"> ${notice.rentBldg.bldgNm} </div> --%>
						<!--                     </td> -->
					</tr>
				</tbody>
			</table>

			<div data-v-33e25de6="" data-v-abe864cc="" class="not-dsr w10-waw">
				<div data-v-33e25de6="" class="not-kni">
					<div data-v-7cb2bca4="" data-v-33e25de6="">
						<textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요"
							id="ckEditor" name="noticeCn"  style="display: none;">${notice.noticeCn}</textarea>
					</div>
					<div data-v-33e25de6="" class="pho-h5z mt1-7za">
<!-- 						<div data-v-33e25de6="" class="noF-iip">아래 파일첨부 버튼을 눌러 파일을 -->
<!-- 							첨부해주세요.</div> -->
					</div>
					<div class="eXbRxD">
					<c:if test="${not empty notice.attachFileList}">
					<c:forEach items="${notice.attachFileList}" var="file">
								<div style="display: inline-block; textAlign: center;">
									<img class="original" style="width: 150px; height: 150px"
										src="${pageContext.request.contextPath}${file.webPath}">
									<button id="rmbtn">X</button>
								</div>
					</c:forEach>
					</c:if>
					</div>
				</div>
				<div data-v-33e25de6=""></div>
				<div data-v-33e25de6="" class="button-mns">
					<div data-v-33e25de6="" class="box-mfz">
						<div data-v-33e25de6="" class="select-gd1">
<!-- 							<label data-v-33e25de6="" for="fileAdd"><span -->
<!-- 								data-v-33e25de6="">파일첨부</span></label> <input data-v-33e25de6="" -->
<!-- 								type="file" id="fileAdd" class="input-c9y" name="uploadFiles" -->
<!-- 								accept="*" multiple onchange="fUpload(this)"> -->
						</div>
					</div>
					<div data-v-33e25de6="" class="box-kr7">
					<c:url value="/lessor/rentNotice/${notice.noticeNo }" var="detailpage" />
						<button data-v-33e25de6="" class="can-g98 hov-d3q hover-vom"  onclick="location.href='${detailpage}'">취소</button>
						<button data-v-33e25de6=""
							data-attach-no="${notice.unityAtchmnflNo}"
							class="sav-evz hov-d3q hover-vom" type="submit">수정</button>
<!-- 						<input type="hidden" name="unityAtchmnflNo" -->
<%-- 							value="${notice.unityAtchmnflNo}" /> --%>
					</div>
				</div>
			</div>



			<div data-v-bd6faeac="" class="w10-z51">
				<div data-v-33e25de6="" data-v-bd6faeac="" class="not-s5c w10-z51">
<!-- 					<div data-v-33e25de6="" class="not-s8e"> -->
<!-- 						<div data-v-7cb2bca4="" data-v-33e25de6=""> -->
<%-- 							<c:forEach items="${notice.attachFileList }" var="file" --%>
<%-- 								varStatus=""> --%>
<!-- 								<div style="display: inline-block; textAlign: center;"> -->
<!-- 									<img style="width: 150px; height: 150px" -->
<%-- 										src="${pageContext.request.contextPath}${file.webPath}" --%>
<!-- 										id="pstCnImg"> -->
<!-- 									<button id="rmbtn">X</button> -->
<!-- 								</div> -->
<%-- 							</c:forEach> --%>

<!-- 						</div> -->
<!-- 						<div data-v-33e25de6=""></div> -->
<!-- 					</div> -->
					<div data-v-33e25de6="" class="button-svc rea-ab9">
						<div data-v-33e25de6="" class="box-o8j">
							<c:url value="modifyForm/${notice.noticeNo }" var="modifyForm" />
							<c:if test="${principal.userNo == notice.userNo}">
								<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<script>
//사진 삭제
$(document).on("click", "#rmbtn", function(){
            this.parentElement.parentElement.removeChild(this.parentElement);
});


		const noticeEdit = document.noticeEdit;
		noticeEdit.onsubmit  =  function(e) {
		e.preventDefault(); 
		const submitButton = e.submitter;
		const unityAtchmnflNo = submitButton.getAttribute('data-attach-no');
		
		let purl = cPath + "/lessor/rentNotice/modify";
		let formData = new FormData(noticeEdit);
// 		let data = {
// 				noticeSj : noticeEdit.noticeSj.value,
// 				noticeCn : noticeEdit.noticeCn.value,
// 				rentBldgNo : noticeEdit.rentBldgNo.value,
// 				unityAtchmnflNo : unityAtchmnflNo
// 		}
		
		
		$.ajax({
			url: purl,
			type:'POST',
// 			contentType: "application/json;charset=UTF-8",
// 	        data: JSON.stringify(data),
			processData: false,
			contentType: false,
	        data: formData,
	        dataType: 'text',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '수정완료',
	            		   text: '수정이 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = `${pageContext.request.contextPath}/lessor/rentNotice/${notice.noticeNo}`;
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}






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

// //기존 이미지 넣기
// attachFileVO = new TbAttachFileVO();
// attachFileVO.atchmnflSn = data[i].atchmnflSn
// attachFileVO.filePath = data[i].filePath
// attachFileVO.webPath = data[i].webPath
// attachFileVO.streFileNm = data[i].streFileNm
// attachFileVO.fileSize = data[i].fileSize
// attachFileVO.fileType = data[i].fileType
// attachFileVO.regUserId = data[i].regUserId









//input file태그 찾기
// let inputFile = document.all.file;
// function filePreview() {
// 	inputFile.click();
// }

// function fUpload(target) {
// 	console.log(target.files);
// 	let formData = new FormData();
	
	
// 	for(let i =0; i < target.files.length; i++) {
// 		if(target.files[i].type.substr(0,5) == "image") {
// 			formData.append("hidden", "");
// 			formData.append("attachFile", target.files[i]);
// 		}
// 	}
	
// 	let url = `${pageContext.request.contextPath}/api/img`
// 	fetch(url, {
// 		method : "post",
// 		headers : {
// 			"Accept" : "application/json"
// 		},
// 		body : formData
// 	}).then(res => res.json())
// 	.then(data => {
// 		console.log("file",data);
// 		let divTag = document.querySelector(".eXbRxD");

		
		
// 		for(let i = 0; i < data.length; i++) {
// 			attachFileVO = new TbAttachFileVO();
// 			attachFileVO.atchmnflSn = data[i].atchmnflSn
// 			attachFileVO.filePath = data[i].filePath
// 			attachFileVO.webPath = data[i].webPath
// 			attachFileVO.streFileNm = data[i].streFileNm
// 			attachFileVO.fileSize = data[i].fileSize
// 			attachFileVO.fileType = data[i].fileType
// 			attachFileVO.regUserId = data[i].regUserId
			
			
// 	        let skDiv = document.createElement("div"); // 이미지와 버튼을 담을 박스
// 			//  버튼 생성
// 	        let btnTag = document.createElement("button");
// 	        btnTag.innerHTML="X";
// 	        btnTag.onclick = function(){      // 누르면 포함하는 skDiv를 삭젱
// 	        	this.parentElement.parentElement.removeChild(this.parentElement);
// 	        }
	        
// 			let imgTag = document.createElement("img");
// 			imgTag.src = `${pageContext.request.contextPath}` + attachFileVO.webPath;
// 			imgTag.width = 150;
// 			imgTag.height = 150;
// 			 // skDiv에 imgTag와 btnTag 담기
// 	        skDiv.appendChild(imgTag);
// 	        skDiv.appendChild(btnTag);
	        
// 	     // skDiv를 구분되도록  쪼메 표싱
// 	        skDiv.style.textAlign="center";
// 	        skDiv.style.display="inline-block";
// 	        skDiv.style.width = imgTag.width + "px";
	        
// 			divTag.appendChild(skDiv);
			
// 			//첨부파일 정보 배열에 저장
// 			file.push(attachFileVO);
// 		}
		
		
// 	})
// }


var content = "";
ClassicEditor
    .create(document.querySelector('#ckEditor'),{
        language: "ko"
    })
    .then( newEditor => {
    	content = newEditor;
	})

</script>
