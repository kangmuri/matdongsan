<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/complaintsForm.css" rel="stylesheet">
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
<form name="complaintsDetail">
<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">민원상세조회</h2>
    </div>
    <table data-v-bd6faeac="" class="list-y7w mt2-5ax contBox">
			<colgroup data-v-bd6faeac="">
				<col data-v-bd6faeac="" width="200">
				<col data-v-bd6faeac="" width="*">
			</colgroup>
			<tbody data-v-bd6faeac="">
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">건물정보</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${complaintsDetail.rentBldg.bldgNm}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">임차인정보</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${complaintsDetail.users.userNm}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">처리희망일시</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">
							${complaintsDetail.cvlcpHopeDt}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">민원종류</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">${complaintsDetail.cvlcpKnd}</div>
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">처리상태</th>
					<td data-v-bd6faeac="">
						<div data-v-bd6faeac="" class="list-mdl">${complaintsDetail.cvlcpStts}</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		
		
		
        <div data-v-abe864cc="" class="mt3-sox w10-iyl">
<!--             <div data-v-abe864cc="" class="main-qon w10-iyl"> -->
<!--                 <div data-v-abe864cc="" class="text-ptj" ></div> -->
<!--             </div> -->
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
                    <div data-v-7cb2bca4="" data-v-33e25de6="">
                    	<textarea data-v-7cb2bca4="" readonly="readonly" name="cvlcpCn">${complaintsDetail.cvlcpCn }</textarea>
                    </div>
                </div>
                <div data-v-33e25de6="" class="button-byj">
                    <div data-v-33e25de6="" class="box-7xx">
	                    <a data-v-33e25de6="" class="can-499 hov-3ti hover-xn5" href="${pageContext.request.contextPath}/lessee/complaints">뒤로가기</a> 
	                    <c:url value="modifyForm/${complaintsDetail.cvlcpNo }" var="modifyForm"/>
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" id="updateBtn" type="button" onclick="location.href='${modifyForm}'">수정</button>
	                    <input type="hidden" value="${complaintsDetail.cvlcpNo }" name="cvlcpNo">
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" id="deleteBtn" type="submit">삭제</button>
                    </div>  
                </div>
                <div data-v-abe864cc="" class="mt1-zp1 w10-iyl">
                <c:if test="${not empty complaintsDetail.cvlcpAns}">
	                <h3>답변</h3>
	            		<input data-v-abe864cc="" type="text" class="w10-iyl title-lbz" name="cvlcpAns" value="${complaintsDetail.cvlcpAns } " readonly="readonly">
		            </div>
	            </c:if>
                <c:if test="${empty complaintsDetail.cvlcpAns}">
	                <h3>답변</h3>
	            		<input data-v-abe864cc="" type="text" class="w10-iyl title-lbz" name="cvlcpAns" placeholder="답변이 없습니다." readonly="readonly">
		            </div>
	            </c:if>
	            
                <div data-v-33e25de6=""></div>
                
            </div>
        </div>
</form>
<script>
	const complaintsForm = document.complaintsDetail;
	console.log("complaintsForm===>", complaintsForm);
	
	complaintsForm.onsubmit = function(e){
		e.preventDefault();
		
		let data = {
				cvlcpNo: complaintsForm.cvlcpNo.value
		};
		
		console.log("data===>",data);
		
		let url = cPath + "/lessee/complaints";
		
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
	            	location.href = cPath + "/lessee/complaints";
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}
	
</script>