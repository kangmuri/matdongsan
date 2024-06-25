<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/complaintsForm.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
.list-y7w {
	width: 89%;
}

.list-y7w th {
	padding: 16px 10px;
	font-size: 14px;
	font-weight: bold;
	color: #747474;
	text-align: left;
	border-bottom: 1px solid #e2e2e2;
	background-color: #fafafa;
}

.list-y7w tr:first-child th {
	border-top: 1px solid #e2e2e2;
}

.list-y7w td {
	padding: 16px 10px;
	font-size: 14px;
	font-weight: normal;
	color: #202020;
	border-bottom: 1px solid #e2e2e2;
	border-top: 1px solid #e2e2e2;
	text-align: left;
}

.contBox {
	margin: 10px;
}

.not-fzp .button-byj .box-7xx[data-v-33e25de6] {
	margin-left: 76.5%;
}
</style>
<form name="complaintForm">
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
					<th data-v-bd6faeac="">민원종류</th>
					<td data-v-bd6faeac=""><select data-v-ee436e2c=""
						class="option-qha pmc-input payOption z-idx0" id="cvlcpKnd"
						name="cvlcpKnd">
							<option data-v-ee436e2c="" value="">전체</option>
							<option data-v-ee436e2c="" value="COMKND01">공용 시설물 유지보수
								문의</option>
							<option data-v-ee436e2c="" value="COMKND02">시설이용 문의</option>
							<option data-v-ee436e2c="" value="COMKND03">계약정보 관련 문의</option>
							<option data-v-ee436e2c="" value="COMKND04">개별세대 시설물
								유지보수 문의</option>
							<option data-v-ee436e2c="" value="COMKND05">입주문의</option>
							<option data-v-ee436e2c="" value="COMKND06">퇴실문의</option>
							<option data-v-ee436e2c="" value="COMKND07">임대료(관리비) 문의
							</option>
					</select></td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">건물명</th>
					<td data-v-bd6faeac=""><select name="boardDong"
						class="pmc-input payOption z-idx0" id="rentBldgNo"
						name="rentBldgNo">
							<option>건물선택</option>
							<c:forEach items="${bldgList }" var="bldg">
								<option data-v-ee436e2c="" value="${bldg.rentBldg.rentBldgNo }">${bldg.rentBldg.bldgNm }</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr data-v-bd6faeac="">
					<th data-v-bd6faeac="">희망일정</th>
					<td data-v-bd6faeac=""><input type="datetime-local"
						class="pmc-input payOption z-idx0" id="cvlcpHopeDt"
						name="cvlcpHopeDt"></td>
				</tr>
			</tbody>
		</table>
		
		<!--     <div data-v-abe864cc="" class="set-6vc w84-6kv"> -->
		<!--         <div data-v-abe864cc="" class="text-ptj">공지사항 대상 선택</div> -->
		<!--         <div data-v-abe864cc="" class="tar-iiv w10-iyl mt1-zp1"> -->
		<!--             <div data-v-abe864cc="" class="select-d1v w10-iyl pd2-s9d"> -->
		<!--             	                        <div data-v-ee436e2c="" class="search-owv"> -->
		<!--                             <div data-v-ee436e2c="" class="select-4lt">민원종류</div> -->
		<!--                             <div data-v-ee436e2c="" class="select-m7h"> -->
		<!--                             	<select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha" id="cvlcpKnd" name="cvlcpKnd"> -->
		<!--                                     <option data-v-ee436e2c="" value="">전체</option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND01"> 공용 시설물 유지보수 문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND02"> 시설이용 문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND03"> 계약정보 관련 문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND04"> 개별세대 시설물 유지보수 문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND05"> 입주문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND06"> 퇴실문의 </option> -->
		<!--                                     <option data-v-ee436e2c="" value="COMKND07"> 임대료(관리비) 문의 </option> -->
		<!--                                 </select> -->
		<!--                             </div> -->
		<!--                         </div> -->
		<!--                         <div data-v-ee436e2c="" class="search-owv w26-lpx"> -->
		<!--                             <div data-v-ee436e2c="" class="select-4lt">희망일정</div> -->
		<!--                            	<input type="datetime-local" id="cvlcpHopeDt" name="cvlcpHopeDt"> -->
		<!--                         </div> -->
		<!--                         <div data-v-ee436e2c="" class="search-owv w26-lpx"> -->
		<!--                             <div data-v-ee436e2c="" class="select-4lt">건물명</div> -->
		<!--                             <div data-v-ee436e2c="" class="select-m7h"> -->
		<!-- 	                            <select data-v-ee436e2c="" class="select-xto select-bie select-7a7 option-qha" id="rentBldgNo" name="rentBldgNo"> -->
		<%-- 	                                    <c:forEach items="${bldgList }" var="bldg"> --%>
		<%-- 										   <option data-v-ee436e2c="" value="${bldg.rentBldg.rentBldgNo }">${bldg.rentBldg.bldgNm }</option> --%>
		<%-- 										</c:forEach> --%>
		<!-- 	                            </select> -->
		<!--                             </div> -->
		<!--                         </div> -->
		<!--                     </div> -->
		<!--             </div> -->
		<!--         </div> -->
		<div data-v-abe864cc="" class="mt3-sox w10-iyl">
			<div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
				<div data-v-33e25de6="" class="not-1ev">
					<div data-v-7cb2bca4="" data-v-33e25de6="">
						<textarea data-v-7cb2bca4="" placeholder="내용을 작성해주세요" id=cvlcpCn
							name="cvlcpCn">${complaints.cvlcpCn }</textarea>
					</div>
					<div data-v-33e25de6="" class="pho-to1 mt1-zp1">
					<a href="#" class="single-cat" id="speedUp"> <img
					src="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/images/categories/watch.svg"
					alt="#" width="25px" height="25px" />
				</a>
						<div data-v-33e25de6="" class="noF-onh">아래 파일첨부 버튼을 눌러 파일을
							첨부해주세요.</div>
					</div>
				</div>
				<div data-v-33e25de6=""></div>
				<div data-v-33e25de6="" class="button-byj">
					<div data-v-33e25de6="" class="box-95j">
						<div data-v-33e25de6="" class="select-rpz">
							<label data-v-33e25de6="" for="add_file"> <span
								data-v-33e25de6="">파일첨부</span></label> <input data-v-33e25de6=""
								type="file" id="fileAdd" class="input-ksl">
								
						</div>
					</div>
					<div data-v-33e25de6="" class="box-7xx">
						<button data-v-33e25de6="" class="can-499 hov-3ti hover-xn5"
							type="reset">취소</button>
						<button data-v-33e25de6="" class="sav-xz3 hov-3ti hover-xn5"
							type="submit">등록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<script>

//================= 자동입력 이벤트 ===================//
var cvlcpCn = document.querySelector("#cvlcpCn");

var speedUp = document.querySelector("#speedUp");
speedUp.addEventListener('click',function(e){
	e.preventDefault();
	
	cvlcpCn.value = `
	민원드립니다. 최근 위층에서 발생하는 층간 소음으로 인해 많은 주민들이 불편을 겪고 있습니다. 
	특히 밤늦은 시간에 큰 소음이 발생해 수면에 지장을 초래하고 있습니다. 
	층간 소음을 줄이기 위한 방안을 마련해 주시기 바랍니다. 
	소음 방지 매트 설치나 층간 소음 방지 캠페인을 통해 주민들의 이해와 협조를 구하는 것도 좋은 방법이 될 수 있습니다. 
	또한, 관리 사무소에서 층간 소음 문제를 중재해 줄 수 있는 시스템을 도입해 주시기 바랍니다.`;
})
//=================================================//
	const complaintsForm = document.complaintForm;
	console.log("complaintsForm====>",complaintsForm)
	complaintsForm.onsubmit  =  function(e) {
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		
		
		function yjToCal(pDate,pSep){

            let year = pDate.getFullYear();
            let month = pDate.getMonth()+1;
            if(month < 10){
                month = "0" + month;
            }
            let date = pDate.getDate();
            if(date < 10){
                date = "0" + date;
            }

            return `\${year}\${pSep}\${month}\${pSep}\${date}`;

        }
		
		let data = {
				cvlcpCn: complaintsForm.cvlcpCn.value,
				cvlcpKnd: complaintsForm.cvlcpKnd.value,
				cvlcpHopeDt: complaintsForm.cvlcpHopeDt.value,
				rentBldgNo: complaintsForm.rentBldgNo.value
		};
		
		
		console.log("data ===> ",data);
		
		let url = cPath + "/lessee/complaints";
		
		$.ajax({
			url: url,
			type:'POST',
			contentType: "application/json;charset=UTF-8",
	        data: JSON.stringify(data),
	        dataType: 'text',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '등록완료',
	            		   text: '민원등록이 완료되었습니다.',
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