<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Community details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Community</li>
          <li class="breadcrumb-item active">신고글 상세조회</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section profile">
      <div class="row">
        <div class="col-xl-8">
          <div class="card" style="height: 470px;">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <div class="tab-content pt-2">
                <div class="tab-pane fade show active profile-overview" id="profile-overview" role="tabpanel">
                  <h5 class="card-title" style="padding : 0px;">신고글상세정보 <a id="delBtn"><i class="bi bi-x-circle" style="color: red;"></i></a></h5>
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
                  <h5 class="card-title" style="padding : 0px;">댓글</h5>
	                  <hr>
	                  	<c:if test="${not empty replyVOList}">
		                  <c:forEach items="${replyVOList}" var="replyVO">
		                  	<div>
		                  		<input type="hidden" value="${replyVO.cmntNo}">
		                  		<h5 class="card-title" style="font-size: 25px;">${replyVO.userNm}</h5>
			                  	<a onclick="delReply(this)"><i class="bx bx-x-circle" style="float: right; font-size: 25px;"></i></a>
		                  		<p>${replyVO.cmntCn}</p>
		                  	</div>
		                  </c:forEach>
	                  	</c:if>
	                  	<c:if test="${empty replyVOList}">
	                  		<h5 class="card-title">등록된 댓글이 없습니다.</h5>
	                  	</c:if>
	                  <hr>
                </div>
              </div><!-- End Bordered Tabs -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
<script>
// ================ 게시글 삭제 스크립트 ================ //
let delBtn = document.querySelector("#delBtn");

delBtn.addEventListener('click',function(e){
	e.preventDefault();
	
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
			(async () => {
			    const { value: getName } = await Swal.fire({
			        title: '삭제사유.',
			        text: '',
			        input: 'text',
			        inputPlaceholder: '삭제 사유를 입력하세요.'
			    })
			    // 이후 처리되는 내용.
			    if (getName) {
			        Swal.fire(`적은 내용 : \${getName}`)
			        console.log("getName==>",`\${getName}`);
			        fDel(`\${getName}`);
			    }
			})()
		}
	});
	

})

function fDel(content){
	
	data = {
		pstNo : `\${postVO.pstNo}`,
		returnReason : content
	}
	console.log("data==>",data);
	 
	 
	
	url = `\${cPath}/adminCommunity/remove/?`+data;
	console.log("url ==>",url);
// 	fetch(url,{
// 		method : 'get'
// 	}) 
// 	.then(resp => resp.text())
// 	.then(data =>{
// 		console.log("넘어온 data==>",data);
// 		if(data == "ok"){
// 			Swal.fire({
// 				title: '삭제가 완료되었습니다.',
// 				text: '',
// 				icon: 'success',
// 				confirmButtonColor: '#6528b5'
// 			}).then(result => {
// 				location.href = cPath+"/adminCommunity";
// 			});
// 		}
// 	})
// 	.catch(error=>{
// 		console.log("error",error);
// 	})
}

</script>