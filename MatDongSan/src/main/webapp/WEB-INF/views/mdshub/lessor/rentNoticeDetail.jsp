<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentNoticeDetail.css"
	rel="stylesheet">

   
<div data-v-bd6faeac="" class="cont-4bx att-4bh pmc-l74">
    <div data-v-bd6faeac="" class="tit-smv header-fbp">
        <h2 data-v-bd6faeac="" class="bbdno">공지관리 상세</h2>
    </div>
    <div data-v-bd6faeac="" class="set-c71 w84-5g7">
        <div data-v-bd6faeac="" class="text-7yy mb1-5qv">${notice.noticeSj }</div>
        <div data-v-bd6faeac="" class="fle-neb spa-e6h w10-z51">
            <div data-v-bd6faeac="">${notice.users.userNm} | ${notice.noticeDt} | 조회수 ${notice.noticeCnt}</div>
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
                        <div data-v-bd6faeac="" class="list-mdl"> ${notice.rentBldg.bldgNm} </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <div data-v-bd6faeac="" class="w10-z51">
            <div data-v-33e25de6="" data-v-bd6faeac="" class="not-s5c w10-z51">
                <div data-v-33e25de6="" class="not-s8e">
                    <div data-v-7cb2bca4="" data-v-33e25de6="" class="image-container">
                    <c:if test="${not empty notice.unityAtchmnflNo}">
                    <c:forEach items="${notice.attachFileList }" var="file">
		                	<img class="notice" src="${pageContext.request.contextPath}${file.webPath}">
					</c:forEach>
					</c:if>
					
					<div style="height:100%"> <br>${notice.noticeCn }</div>
                </div>
                <div data-v-33e25de6=""></div>
            </div>
            
                <div data-v-33e25de6="" class="button-svc rea-ab9">
            <button data-v-33e25de6="" class="can-i8w hov-jy7 hover-gjr" onclick="location.href='${pageContext.request.contextPath}/lessor/rentNotice'">목록으로</button>
                    <div data-v-33e25de6="" class="box-o8j">
                    <c:url value="modifyForm/${notice.noticeNo }" var="modifyForm"/>
                    	<c:if test="${principal.userNo == notice.userNo}" >
                    	<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
                    <button data-v-33e25de6="" class="can-i8w hov-jy7 hover-gjr" onclick="detBtn(this)">삭제</button>
					<button data-v-33e25de6="" class="sav-ql9 hov-jy7 hover-gjr" onclick="location.href='${modifyForm}'">수정</button>
					</c:if>
					</div>
                </div>
        </div>
    </div>
</div>


<script>
//===================== 삭제 스크립트 ========================//
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
    	noticeNo : `${notice.noticeNo}`,
        userNo : `${principal.userNo}`
    }
    let url = `\${cPath}/lessor/rentNotice/remove`;
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
                location.href = cPath+"/lessor/rentNotice";
            });
        }
    })
    .catch(error=>{
        console.log("error=>",error);
    })
}
//===================== 삭제 스크립트 END ========================//

</script>