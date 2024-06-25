<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Inquiry details inquiry</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">문의글 상세조회</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section profile">
      <div class="row">
        <div class="col-xl-8">
          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <div class="tab-content pt-2">
                <div class="tab-pane fade show active profile-overview" id="profile-overview" role="tabpanel">
                  <h5 class="card-title" style="padding : 0px;">문의 상세정보</h5>
                    <hr>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">제목</div>
                    <div class="col-lg-9 col-md-8" >${postVO.pstSj}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">작성자ID</div>
                    <div class="col-lg-9 col-md-8">${postVO.userId}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">작성일시</div>
                    <div class="col-lg-9 col-md-8">${postVO.pstWrtDe}</div>
                  </div>
                  <div class="row" style="display: block;">
                    <div class="col-lg-3 col-md-4 label">본문</div>
                    <div class="col-lg-9 col-md-8" style="margin: 20px 0px 0px 0px;">${postVO.pstCn} </div>
                  </div>
                </div>
              </div><!-- End Bordered Tabs -->
            </div>
          </div>
        </div>
      </div>
    </section>

<section class="section profile">
      <div class="row">
        <div class="col-xl-8">
          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <div class="tab-content pt-2">
                <div class="tab-pane fade show active profile-overview" id="profile-overview" role="tabpanel">
                  <h5 class="card-title" style="padding : 0px;">문의 답변</h5>
	                  <hr>
	                  	<c:if test="${not empty replyVOList}">
		                  <c:forEach items="${replyVOList}" var="replyVO">
		                  	<div style=" margin : 20px; height: 87px;" class="rpId">
		                  		<input type="hidden" value="${replyVO.cmntNo}">
		                  		<div style="float: left;">
									<h5 class="card-title" style="font-size: 25px;">${replyVO.userNm}</h5>
									<p>${replyVO.cmntCn}</p>
								</div>
								<div style="float: right; display: flex; align-items: center; margin: 7px;">
									<a id="upBtn" >수정</a>
									<a onclick="delReply(this)"><i class="bx bx-x-circle" style="float: right; font-size: 25px; margin: 10px;"></i></a>
								</div>
							</div>
							<hr>
		                  </c:forEach>
	                  	</c:if>
	                  	<c:if test="${empty replyVOList}">
	                  		<h5 class="card-title">등록된 답변이 없습니다.</h5>
	                  	</c:if>
                  <textarea id="commentCt" class="form-control" style="height: 100px"></textarea>
                  <div style="text-align: right;">
                  	<button id="replyBtn" type="button" class="btn btn-primary" style="margin: 10px;">답변등록</button>
                  </div>
	               	<a href="#" class="single-cat" id="speedUp">
						<img src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg" alt="#" width="25px" height="25px"/>
					</a>
                </div>
              </div><!-- End Bordered Tabs -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
<script>
/****************** 자동입력 이벤트 *****************/
let commentCt = document.querySelector("#commentCt");

let speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	commentCt.value = `보증보험 청구는 계약만료일 보증금이 반환되지 않을 경우 임차권등기를 신청하고 청구가 가능합니다.`;
})
/***********************************************/



let upData = {};
// ================ 답변(댓글)수정 스크립트 ================ //
$(document).on('click', '[id^=upBtn]', function(e) {
	const clickedElement = e.target;
	if (clickedElement.id.startsWith('upBtn')) {

		let parentDiv = this.closest('.rpId');
		console.log("부모노드==>",parentDiv);
		
		let input = parentDiv.querySelector("input[type='hidden']");
		let inputValue = input.value;
	
		let h5Element = parentDiv.querySelector("h5");
		let h5Content = h5Element.textContent;
	
		let pElement = parentDiv.querySelector("p");
		let content = pElement.textContent;
	
		console.log("숨겨진 입력값:", inputValue);
		console.log("h5 내용:", h5Content);
		console.log("p 내용:", content);
		
		upData = {
			cmntNo : inputValue,
			userNm : h5Content, 
			cmntCn : content
		}
	
		while (parentDiv.firstChild) {
			parentDiv.removeChild(parentDiv.firstChild);
		}
		let pdiv = document.createElement('p');
		pdiv.style = ``;
		
		pdiv.innerHTML= `
						<div style="margin: 10px 0px 10px;"><span style="font-size: 25px;">\${h5Content}</span></div>
						<input type='hidden' value='\${inputValue}'>
						<textarea id='upCt' class='form-control' style='height: 61px; width: 75%; float: left;'>\${content}</textarea>
						<button type='submit' class='upBtn2 btn btn-outline-secondary' style='margin: 10px; width: 85px; margin: 24px 0px 10px 10px;'>수정</button>
						`;
						 
		parentDiv.appendChild(pdiv);
	}
});

$(document).on('click','.upBtn2',function(event){
	event.preventDefault();
	console.log("upData==>",upData);

	let upContent = document.querySelector("#upCt").value;
	console.log("upContent==>",upContent);
	
	let url = `\${cPath}/adminQna/update`;
	console.log("url==>",url);
	console.log("upData==>",upData.cmntNo);

	data = {
		cmntCn : upContent,
		cmntNo : upData.cmntNo
	};

	fetch(url,{
		method: 'put',
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
				title: '수정이 완료되었습니다.',
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

})

// ================ 답변(댓글)수정 스크립트 END ================ //


// ================ 답변(댓글)등록 스크립트 ================ //
let rBtn = document.querySelector("#replyBtn");

rBtn.addEventListener('click',function(e){
	e.preventDefault();
	let cmt = document.querySelector("#commentCt").value;
 	console.log("입력된 댓글 정보==>",cmt);

	let url = `\${cPath}/adminQna/create`;
 	console.log("url값=>",url);

	let data = {
		cmntCn : cmt,
		pstNo : `${postVO.pstNo}`,
		userNoCmnt : `${principal.userNo}`
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
				title: '문의 답변이 등록되었습니다.',
				text: '',
				icon: 'success'
			}).then(result => {
				 location.reload(true);
			});
		}
	})
});

// ================ 답변(댓글)등록 스크립트 END ================ //

// ===================== 댓글 삭제 스크립트 ===================== //
function delReply(e){
	let rDiv = e.parentNode;

	let parentDiv = e.closest('.rpId');
	let cmntNo = parentDiv.querySelector("input[type='hidden']").value;
	console.log("inputValue==>",cmntNo);
	
	let url = `\${cPath}/adminQna/remove`;
	let data = {
		cmntNo : cmntNo
	};
	console.log("url==>",url);
	console.log("data==>",data);
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
				title: '문의 답변이 삭제되었습니다.',
				text: '',
				icon: 'success'
			}).then(result => {
				 location.reload(true);
			});
		}
	})
}
// =================== 댓글 조회 스크립트 EMD =================== //

</script>