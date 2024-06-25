<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/complaintsForm.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
.comTitle{
	margin-top: 50px;
    margin-bottom: -30px;
    border-bottom: 1px solid #b7b7b7;
    font-size: 15px;
}
.list-y7w{
	width: 89%;
}
.list-y7w th  { 
    padding: 16px 10px; 
    font-size: 14px; 
    font-weight: bold; 
    color: #747474; 
    text-align: left; 
    border-bottom: 1px solid #e2e2e2; 
    background-color: #fafafa;
} 
.list-y7w tr:first-child th  { 
    border-top: 1px solid #e2e2e2;
} 
.list-y7w td  { 
    padding: 16px 10px; 
    font-size: 14px; 
    font-weight: normal; 
    color: #202020; 
    border-bottom: 1px solid #e2e2e2; 
    border-top: 1px solid #e2e2e2; 
    text-align: left;
} 
.contBox{
margin : 10px;
}
.not-fzp .button-byj .box-7xx[data-v-33e25de6]{
margin-left: 76.5%;
}
</style>
<form name="communityForm" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/lessee/community">
<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">커뮤니티 글등록</h2>
    </div>
    <table data-v-bd6faeac="" class="list-y7w mt2-5ax contBox">
			<colgroup data-v-bd6faeac="">
				<col data-v-bd6faeac="" width="200">
				<col data-v-bd6faeac="" width="*">
			</colgroup>
			<tbody data-v-bd6faeac="">
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">행정동</th>
					<td data-v-bd6faeac="">
						<select name="boardDong" class="pmc-input payOption z-idx0">
								<option>행정동선택</option>
							<c:forEach items="${bldgList }" var="bldg">
								<option>${bldg}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		<div data-v-abe864cc="" class="mt30 w100per">
			<div data-v-abe864cc="" class="mt10 w100per">
				<input data-v-abe864cc="" type="text" maxlength="30"
					class="w100per titleInput pmc-input" id="pstSj" name="pstSj" placeholder="제목을 작성하시오">
			</div>
		</div>
		
		<div data-v-abe864cc="" class="mt3-sox w10-iyl">
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
                    <div data-v-7cb2bca4="" data-v-33e25de6="">
                    	<textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요" id="pstCn" name="pstCn"></textarea>
                    </div>
                    <div data-v-33e25de6="" class="pho-to1 mt1-zp1">
                        <div data-v-33e25de6="" class="noF-onh"> 아래 파일첨부 버튼을 눌러 파일을 첨부해주세요. </div>
                    </div>
                </div>
                <div data-v-33e25de6=""></div>
                <div data-v-33e25de6="" class="button-byj">
                    <div data-v-33e25de6="" class="box-95j">
                        <div data-v-33e25de6="" class="select-rpz">
                        <label data-v-33e25de6="" for="fileAdd"><span data-v-33e25de6="">파일첨부</span></label> 
                        <input data-v-33e25de6="" type="file" id="fileAdd" class="input-ksl" name="uploadFiles" accept="image/*" multiple onchange="fUpload(this)">
                        </div>
                        <div class="eXbRxD">
                        
                        </div>
                    </div>
                    <div data-v-33e25de6="" class="box-7xx">
	                    <a data-v-33e25de6="" class="can-499 hov-3ti hover-xn5" href="http://localhost/MDS/lessee/community">취소</a>
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" type="submit">등록</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>	
<script>
	function TbAttachFileVO() {
		 
		 this.atchmnflSn = null;    //첨부파일 순번    
		 this.filePath = null;      //파일경로
		 this.webPath = null;       //웹경로 
		 this.streFileNm = null;    //저장파일명  
		 this.fileSize = null;      //파일크기    
		 this.fileType = null;      //파일유형 
		 this.regUserId = null;     //등록자ID  
		  
		 
		 return this;
	}
	let file = [];
	const communityFormm = document.communityForm;
	console.log("communityForm====>",communityForm)
	communityFormm.onsubmit  =  function(e) {
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		
// 		let data = {
// 				boardDong: communityForm.boardDong.value,
// 				pstSj: communityForm.pstSj.value,
// 				pstCn: communityForm.pstCn.value,
// 				attachFileList : file
// 		};
		
	

// 		폼데이터객체 생성한다 
// 		2.프로세스데이터와 컨텐트타입은 펄스로
// 		3.폼데이터객체를 그대로 데이터로 사용한다 
		
		
		
		let url = cPath + "/lessee/community";
		let formData = new FormData(communityFormm);
		
		let  yjFiles = document.querySelector("#fileAdd").files
		
		if(!yjFiles.length){  // 파일 선택이 아예 없다명
			formData.delete("uploadFiles")			
		}
		
		$.ajax({
			url: url,
			type:'POST',
			processData: false,//ajax의 multipart/form-data로 이미지를 서버로 전송하려고 할 때 false
			contentType: false,//multipart/form-data 형식을 사용할 경우 contentType = false를 설정하면 jQuery는 Content-Type 헤더를 기본적으로 설정하지 않고, 브라우저가 자동으로 올바른 멀티파트 바운더리를 포함한 Content-Type을 설정하도록한다
	        data: formData,
	        dataType: 'text',//AJAX 요청에서 응답 데이터의 타입을 지정하는 데 사용
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '등록완료',
	            		   text: '글등록이 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = cPath + "/lessee/community";
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}
	
	//input file태그 찾기
	let inputFile = document.all.file;
	function filePreview() {
		inputFile.click();
	}
	
	function fUpload(target) {
		console.log(target.files);
		let formData = new FormData();

		for(let i =0; i < target.files.length; i++) {
			if(target.files[i].type.substr(0,5) == "image") {
				formData.append("hidden", "");
				formData.append("attachFile", target.files[i]);
			}
		}

		let url = `${pageContext.request.contextPath}/api/img`
		fetch(url, {
			method : "post",
			headers : {
				"Accept" : "application/json"
			},
			body : formData
		}).then(res => res.json())
		.then(data => {
			console.log("file",data);
			let divTag = document.querySelector(".eXbRxD");

			

			for(let i = 0; i < data.length; i++) {
				attachFileVO = new TbAttachFileVO();
				attachFileVO.atchmnflSn = data[i].atchmnflSn
				attachFileVO.filePath = data[i].filePath
				attachFileVO.webPath = data[i].webPath
				attachFileVO.streFileNm = data[i].streFileNm
				attachFileVO.fileSize = data[i].fileSize
				attachFileVO.fileType = data[i].fileType
				attachFileVO.regUserId = data[i].regUserId
				
				//첨부파일 정보 배열에 저장
				file.push(attachFileVO);
				
				let imgTag = document.createElement("img");
				imgTag.src = `${pageContext.request.contextPath}` + attachFileVO.webPath;
				imgTag.width = 150;
				imgTag.height = 100;
				divTag.appendChild(imgTag);
			}
			
			
		})
	}
</script>