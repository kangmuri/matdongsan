<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessee/community.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
.reportForm{
	width:30%;
    position: absolute;
    left: 30%;
    top: 40%;
    z-index: 10;
    background-color: #8f8f8f;
    padding: 27px;
    display:none;
}
.commTitle{
	display: flex;
}
</style>

<!-- 신고모달시작 -->
 <!-- Basic Modal -->
<div class="modal fade" id="basicModal" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
<!-- 				<h5 class="modal-title">게시글 신고</h5> -->
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="card-body">
				<h5 class="card-title">게시글 신고</h5>

				<!-- Floating Labels Form -->
				<form name="postingReportForm" class="row g-3">
					<div class="col-md-12">
						<div class="form-floating">
							<input type="text" name="pstRprtSj" class="form-control" id="floatingName" placeholder="신고제목"> 
								<label for="floatingName">신고제목</label>
						</div>
					</div>
					<div class="col-12">
						<div class="form-floating">
							<textarea name="pstRprtCn" class="form-control" placeholder="신고사유" id="floatingTextarea" style="height: 200px;"></textarea>
							<label for="floatingTextarea">신고사유</label>
						</div>
					</div>
					<div class="text-center">
						<input name="pstNo" type="hidden" value="${commDetail.pstNo }">
						<button type="submit" class="btn btn-primary" id="reportBtn">제출</button>
						<button type="reset" class="btn btn-secondary">초기화</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</form>
				<!-- End floating Labels Form -->

			</div>
		</div>
	</div>
</div>
<!-- 신고모달끝 -->
<!-- End Basic Modal-->
<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
<form name="communityForm">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">커뮤니티 글조회</h2>
    </div>    
    <div data-v-abe864cc="" class="set-6vc w84-6kv">
<!--         <div data-v-abe864cc="" class="text-ptj">공지사항 대상 선택</div> -->
<!--         <div data-v-abe864cc="" class="tar-iiv w10-iyl mt1-zp1"> -->
<!--             <div data-v-abe864cc="" class="select-d1v w10-iyl pd2-s9d"> -->
<!--                         <div data-v-ee436e2c="" class="search-owv w26-lpx"> -->
<%--                             <h3 data-v-ee436e2c="" class="select-4lt">${commDetail.boardDong } </h3> --%>
<!--                         </div> -->
<!--                     </div> -->
<!--             </div> -->
        </div>
		<div data-v-abe864cc="" class="mt30 w100per commTitle">
			<div data-v-abe864cc="" class="text01 pstSj">${commDetail.pstSj }</div>
			<div class="commTitleInner">
				<div data-v-abe864cc="" class="text01 userNm">${commDetail.users.userNm }&nbsp</div>
				<span>|</span>
				<div data-v-abe864cc="" class="text01 pstWrtDe">&nbsp${commDetail.pstWrtDe }&nbsp</div>
				<span>|</span>
				<div data-v-abe864cc="" class="text01 pstWrtDe">&nbsp조회수 ${commDetail.pstRdcnt }</div>
				<c:if test="${principal.userNo != commDetail.userNo}" >
				<button type="button" class="btn btn-outline-danger reportBtn" data-bs-toggle="modal" data-bs-target="#basicModal">신고</button>
				</c:if>
			</div>
		</div>
		<div data-v-abe864cc="" class="mt3-sox w10-iyl">
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
               		<pre class="textContent" style="height:100%;">
			                <c:forEach items="${commDetail.attachFileList }" var="file">
			                	<img src="${pageContext.request.contextPath}${file.webPath }" id="pstCnImg">
							</c:forEach>
${commDetail.pstCn }
               		</pre>
                </div>
                <div data-v-33e25de6=""></div>
                <div data-v-33e25de6="" class="button-byj">
                    <div data-v-33e25de6="" class="box-7xx">
                    	<c:url value="modifyForm/${commDetail.pstNo }" var="modifyForm"/>
                    	<c:if test="${principal.userNo == commDetail.userNo}" >
	                    <button data-v-33e25de6="" class="can-499 hov-3ti hover-xn5 modifyBtn" type="button" onclick="location.href='${modifyForm}'">수정</button> <!-- form안에 submit버튼이 두개로 될경우 누구 하나가 클릭되었을때 스크립트에서 서브밋 이벤트 만들어준게 실행됨 이런 상황이 발생하지않게 버튼에 명확히 구분을 줘야함 -->
	                    <input type="hidden" name="pstNo" value="${commDetail.pstNo}">
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" type="submit">삭제</button>
	                    </c:if>
                    </div>
                </div>
            </div>
        </div>
 </form>
         
   <!-- 댓글 입력   -->
  	<div>
    <form style="margin: 0" name="commentForm">
        <div class="p-14k w-3r4 overflow-pjd mt-3et rounded-hsp box-hea h-inq lgh-wz1 rel-8mn bg-h-n5o commentInput">
        	<input name="pstNo" type="hidden" value="${commDetail.pstNo }">
        	<input name="userNo" type="hidden" value="${principal.userNo }">
            <div class="box-hea fle-ijc col-pj4 justify-siw h-jxo gap-y-93t"><label class="text-amh" for="text">댓글</label>
            <textarea placeholder="댓글을 입력하세요" class="border-yko resize-wrw p-jrf pr-4ok h-jxo overflow-x-84m overflow-y-ipo text-k6d box-hea outline-czl bg-h-n5o" name="cmntCn"></textarea>
                <div class="fle-ijc item-fkw justify-n3q">
                    <div class="fle-ijc item-fkw gap-x-xm6">
						<button id="commBtn">등록</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- 댓글 츌력   -->
   	<form name="commentList">
			<div id="com-d3x">
				<ol class="fle-ijc gap-y-cg1 mt-3et col-wla">
					<li class="fle-ijc col-pj4 gap-y-cg1 border-pxo border-s5a border-h-6zi pb-mjo">
						<c:forEach items="${commentList }" var="comment">
						<div class="fle-ijc col-pj4 gap-y-sip rel-8mn bef-tij beforeh-[calc(100%-rpq beforetop-iml beforebg-h-vrj">
							<div>
								<div class="fle-ijc item-ybm gap-x-xm6">
									<div class="commCont">
										<div class="text-k6d font-a5z text-mbd [&amp;_-91f">
											<a href="https://dinae.tistory.com">${comment.user.userId }&nbsp&nbsp </a>
										</div>
										<div class="text-e86 text-hc5">
											&nbsp${comment.cmntWrtDt } &nbsp&nbsp&nbsp
										</div>
										<c:if test="${comment.userNoCmnt != principal.userNo }">
										<a class="commReportBtn">신고&nbsp&nbsp</a>
										</c:if>
										<c:if test="${comment.userNoCmnt == principal.userNo }">
											<a class="commUpBtn">수정&nbsp&nbsp</a>
											<a class="commDelBtn">삭제</a>
										</c:if>
									</div>
								</div>
							</div>
							<input type="hidden" name="cmntNo" value="${comment.cmntNo }">
							<input type="text" class="pl-54y leading-lxl text-k6d text-g9n commRead" name="cmntCn" value="${comment.cmntCn }" readonly="readonly" ></input>
							<div class="pl-54y fle-ijc gap-x-6vs text-e86 text-hc5">
								<c:if test="${comment.userNoCmnt == principal.userNo }">
									<a class="commRegBtn" style="display:none;">등록</a>
								</c:if>
							</div>
						</div>
						</c:forEach>
					</li>
				</ol>
			</div>
	</form>
	 </div>
			<!--  댓글끝  -->

			
</div>
  
<script>
//게시글 삭제 스크립트
const communityForm = document.communityForm;
console.log("communityForm====>",communityForm);
communityForm.onsubmit  =  function(e) {
	console.log("ㅎㅇ")
	e.preventDefault(); 
	
	let data = {
			pstNo : communityForm.pstNo.value
	};
	
	console.log("data ===> ",data);
	
	let url = cPath + "/lessee/community";
	
	$.ajax({
		url: url,
		type:'DELETE',
		contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(data),
        dataType: 'text',
        success: function(resp) {
            console.log('반환값 ===>', resp);
            if(resp =="success"){
            	Swal.fire({
       				   title: '삭제완료',
            		   text: '삭제가 완료되었습니다.',
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

//게시글 신고 스크팁트
const postingReportForm = document.postingReportForm;
console.log("postingReportForm====>",postingReportForm);

postingReportForm.onsubmit = function(e){
	e.preventDefault();
	
	let data = {
		pstNo: postingReportForm.pstNo.value
		,pstRprtSj:postingReportForm.pstRprtSj.value
		,pstRprtCn:postingReportForm.pstRprtCn.value
	};
	console.log("data ===> ",data);
	
	let url = cPath + "/lessee/community/report";
	
	$.ajax({
		url:url,
		type:'POST',
		contentType: "application/json;charset=UTF-8",
        data: JSON.stringify(data),
        dataType: 'text',
		success: function(resp){
			 if(resp =="success"){
            	Swal.fire({
       				   title: '신고완료',
            		   text: '신고가 완료되었습니다.',
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
	
//	댓글 등록 스크립트
	const commentForm = document.commentForm;
	commentForm.onsubmit = function(e){
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		let data = {
				userNo : commentForm.userNo.value,
				pstNo : commentForm.pstNo.value,
				cmntCn : commentForm.cmntCn.value
		}
		
		if(data.cmntCn == ""){
			alert("내용을 입력하시오");
			return;
		}
		console.log("data ===> ",data.pstNo);
		let url = cPath + "/lessee/community/comment"
		
		$.ajax({
			url: url,
			type: 'POST',
			contentType: "application/json;charset=UTF-8",
	        data: JSON.stringify(data),
	        dataType: 'text',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '등록완료',
	            		   text: '댓글등록이 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = cPath + "/lessee/community/"+data.pstNo;
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
		
	}
	//댓글 수정 하다가 맘 
// 	const commentListForm = document.commentListForm;
	
	
// 	document.addEventListener('DOMContentLoaded', function(){
// 		var commUpBtn = document.querySelector('.commUpBtn');
// 		var commRegBtn = document.querySelector('.commRegBtn');
		
// 		commUpBtn.addEventListener('click', function(e){
// 			e.preventDefault();
// 			  $(commentListForm.cmntCn).prop("readonly", false);
// 			  commRegBtn.style.display = block;
// // 			let data = {
// // 					cmntCn : commentListForm.cmntCn.value
// // 			};
// 			alert("gg");
// 		})
// 	})

	
	
	
</script>