<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/rentInfo.css" rel="stylesheet">    

<div data-v-0e4dda1c="" class="cont-svz att-2vx">
    <div data-v-0e4dda1c="" class="tit-5y4">
        <h2 data-v-0e4dda1c="" class="rjddo">임대현황</h2>
        <ul data-v-0e4dda1c="" class="status-oqq">
            <li data-v-0e4dda1c="" class="bui-sno">건물수 <em data-v-0e4dda1c="">${mainMap.buildingCnt}채</em></li>
            <li data-v-0e4dda1c="" class="man-plf">관리호수 <em data-v-0e4dda1c="">${mainMap.rentRoomCnt}호</em></li>
            <li data-v-0e4dda1c="" class="lea-dvi">임대중 <em data-v-0e4dda1c="">${mainMap.rstts01Cnt}호</em></li>
        </ul>
    </div>
    
    <div data-v-0e4dda1c="" class="find-lql">
        <div data-v-0e4dda1c="" class="list-arv" id="listArea">
           
        </div>
        
        
        
        
        <div id="detail-area"></div>
       
    </div>
    <div data-v-0e4dda1c="" class="loading-n8i style-f3o85" id="style-f3o85">
        <div data-v-0e4dda1c="" class="loading-r7t"></div>
    </div>
</div>

<script>
$(function(){
	const listArea = $("#listArea"); //계약 전체 리스트 조회
	const detailArea = $("#detail-area"); //계약 단건 정보 조회 
	
	const makeListContents = function(resp){
		listArea.html(resp);
	
/************************ 계약 리스트 선택 ***********************/	
	// 	const bdList = document.querySelectorAll(".list-adk .find-l6z li"); //element 하나하나를 따로따로 바인
		const rcList = $(".list-arv .find-tig li").on("click",function(){
			$(rcList).removeClass('ofppi');
			$(this).addClass('ofppi');
			const value = $(this).data("cntrctRentNo");
			const url = `\${cPath}/lessor/cntrctInfo/\${value}`;
	        $.ajax({
		        url: url,
		        type: 'GET',
		        data: value,
		        dataType: 'html',
		        success: function(resp) {
		        	detailArea.html(resp);
		        },
		        error: function(xhr, status, error) {
		            console.error('Error:', status, error);
		        }
		    });
	       
		});
	$(rcList[0]).trigger("click");
		
	}
	$.ajax({
		url : cPath + "/lessor/cntrctInfo/all",
		dataType : "html",
		success : makeListContents
		
	})


});

document.addEventListener("DOMContentLoaded", function() {
    // DOMContentLoaded 이벤트가 발생한 후에 실행될 코드
    const rentListItems = document.querySelectorAll(".rentList");
    rentListItems.forEach(function(item) {
        const bldgNo = item.getAttribute("data-bldg-no");
        console.log("data-bldg-no 속성 값:", bldgNo);
    });
});

</script>