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
.pmc-input{
	width: 193px;
}
</style>
<form name="compDetailEdit">
<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">민원등록</h2>
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
					<input type="datetime-local" id="cvlcpHopeDt" name="cvlcpHopeDt" class="pmc-input">
					</td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">민원종류</th>
					<td data-v-bd6faeac="">
						<select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha pmc-input" id="cvlcpKnd" name="cvlcpKnd">
                             <option data-v-ee436e2c="" value="">전체</option>
                             <option data-v-ee436e2c="" value="COMKND01"> 공용 시설물 유지보수 문의 </option>
                             <option data-v-ee436e2c="" value="COMKND02"> 시설이용 문의 </option>
                             <option data-v-ee436e2c="" value="COMKND03"> 계약정보 관련 문의 </option>
                             <option data-v-ee436e2c="" value="COMKND04"> 개별세대 시설물 유지보수 문의 </option>
                             <option data-v-ee436e2c="" value="COMKND05"> 입주문의 </option>
                             <option data-v-ee436e2c="" value="COMKND06"> 퇴실문의 </option>
                             <option data-v-ee436e2c="" value="COMKND07"> 임대료(관리비) 문의 </option>
                         </select>
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
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
                    <div data-v-7cb2bca4="" data-v-33e25de6="">
                    	<input type="hidden" value="${complaintsDetail.cvlcpNo}" name="cvlcpNo">
                    	<textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요" id=cvlcpCn name="cvlcpCn">${complaintsDetail.cvlcpCn }</textarea>
                    </div>
                    <div data-v-33e25de6="" class="pho-to1 mt1-zp1">
                        <div data-v-33e25de6="" class="noF-onh"> 아래 파일첨부 버튼을 눌러 파일을 첨부해주세요. </div>
                    </div>
                </div>
                <div data-v-33e25de6=""></div>
                <div data-v-33e25de6="" class="button-byj">
                    <div data-v-33e25de6="" class="box-95j">
                        <div data-v-33e25de6="" class="select-rpz"><label data-v-33e25de6="" for="add_file">
                       	 <span data-v-33e25de6="">파일첨부</span></label> <input data-v-33e25de6="" type="file" id="fileAdd" class="input-ksl">
                        </div>
                    </div>
                    <div data-v-33e25de6="" class="box-7xx">
	                    <button data-v-33e25de6="" class="can-499 hov-3ti hover-xn5" type="reset">취소</button>
	                    <button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5" type="submit">등록</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>
<script>
	$('[name="cvlcpHopeDt"]').val('${complaintsDetail.cvlcpHopeDt }')
	$('[name="cvlcpKnd"]').val('${complaintsDetail.cvlcpKnd }')

	const complaintsForm = document.compDetailEdit;
	console.log("${complaints.cvlcpNo}");
	console.log("complaintsForm====>",complaintsForm)
	complaintsForm.onsubmit  =  function(e) {
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		let data = {
				cvlcpCn: complaintsForm.cvlcpCn.value,
				cvlcpNo: complaintsForm.cvlcpNo.value,
				cvlcpHopeDt: complaintsForm.cvlcpHopeDt.value,
				cvlcpKnd: complaintsForm.cvlcpKnd.value
		};
		console.log("data ===> ",data);
		
		let url = cPath + "/lessee/complaints";
		
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