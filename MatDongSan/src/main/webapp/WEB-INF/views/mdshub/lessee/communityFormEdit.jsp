<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/complaintsForm.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<form name="communityEdit">
<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">커뮤니티 글 수정</h2>
    </div>
        <div data-v-abe864cc="" class="mt30 w100per">
			<div data-v-abe864cc="" class="mt10 w100per">
				<input type="hidden" name="pstNo" value="${commDetail.pstNo }">
				<input type="hidden" name="userNo" value="${commDetail.userNo }">
				<input data-v-abe864cc="" type="text" maxlength="30"
					class="w100per titleInput pmc-input" id="pstSj" name="pstSj" value="${commDetail.pstSj }">
			</div>
		</div>
        <div data-v-abe864cc="" class="mt3-sox w10-iyl">
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
                    <div data-v-7cb2bca4="" data-v-33e25de6="">
                    	<c:if test="${not empty commDetail.attachFileList }">
	                    	<c:forEach items="${commDetail.attachFileList }" var="file">
			                	<img src="${pageContext.request.contextPath}${file.webPath }" id="pstCnImg">
							</c:forEach>
						</c:if>
                    	<textarea data-v-7cb2bca4="" id=pstCn name="pstCn">
                    	${commDetail.pstCn }
                    	</textarea>
                    </div>
                    <div data-v-33e25de6="" class="pho-to1 mt1-zp1">
                        <div data-v-33e25de6="" class="noF-onh"> 아래 파일첨부 버튼을 눌러 파일을 첨부해주세요. </div>
                    </div>
                </div>
                <div data-v-33e25de6=""></div>
                <div data-v-33e25de6="" class="button-byj">
                    <div data-v-33e25de6="" class="box-95j">
                        <div data-v-33e25de6="" class="select-rpz">
                        <label data-v-33e25de6="" for="add_file">
                       	 <span data-v-33e25de6="">파일첨부</span>
                       	 </label> 
                       	 <input data-v-33e25de6="" type="file" id="fileAdd" class="input-ksl">
                        </div>
                    </div>
                    <div data-v-33e25de6="" class="box-7xx">
	                    <button data-v-33e25de6="" class="can-499 hov-3ti hover-xn5" onclick="location.href='${pageContext.request.contextPath}/lessee/community'" type="button">뒤로</button>
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" type="submit">등록</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>
<script>
	const communityEdit = document.communityEdit;
// 	console.log("${complaints.cvlcpNo}");
	console.log("communityEdit====>",communityEdit)
	communityEdit.onsubmit  =  function(e) {
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		let data = {
				pstNo : communityEdit.pstNo.value,
				pstSj : communityEdit.pstSj.value,
				pstCn : communityEdit.pstCn.value,
				userNo : communityEdit.userNo.value
				
		};
		console.log("data ===> ",data);
		
		let url = cPath + "/lessee/community";
		
		$.ajax({
			url: url,
			type:'PUT',
			contentType: "application/json;charset=UTF-8",
	        data: JSON.stringify(data),
	        dataType: 'text',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '수정완료',
	            		   text: '수정이 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = cPath + "/lessee/community/${pstNo}";
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}
</script>