<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/buildingInfo.css"
	rel="stylesheet">



<div data-v-3a1dceac="" class="cont-3q9 att-r77"
	data-bldg-no="${rentBldgNo }">
	<div data-v-3a1dceac="" class="tit-8rd">

		<h2 data-v-3a1dceac="" class="amisj">
			건물정보 <a data-v-3a1dceac="" data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"
				class="btn-t37 kefcc btn-sqe"> 건물등록 </a>
		</h2>


		<div class="offcanvas offcanvas-end w-65" tabindex="-1"
			id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
			<div class="offcanvas-header">
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<div class="offcanvas-body"></div>
		</div>

	</div>
	<div id="reg-ztv" class="find-4hf" data-v-3a1dceac="">
		<div class="list-adk" data-v-3a1dceac="" id="listArea"></div>
		<div id="detail-area"></div>
	</div>
</div>

<!-- 자식 offcanvas -->
<div class="offcanvas offcanvas-end w-65" tabindex="-1"
	id="offcanvasNested" aria-labelledby="offcanvasNestedLabel">
<!-- 	aria-modal="true" role="dialog"> -->
	<div class="offcanvas-header">
		<button type="button" class="btn-close2" data-bs-dismiss="offcanvas"
			aria-label="Close2"></button>
	</div>
	<div class="offcanvas-body2">
	
	
	
	
	</div>
</div>

<script>
$(function(){
	const listArea = $("#listArea"); //건물 전체 리스트 조회
	const detailArea = $("#detail-area"); //건물 단건 정보 조회 
	const offcanvasRightEL = $("#offcanvasRight"); //방 단건 상세 조회
	const offcanvasNestedEL = $("#offcanvasNested"); //방 단건 상세 조회
	const offcanvasBody = offcanvasRightEL.find(".offcanvas-body");
	const offcanvasBody2 = offcanvasNestedEL.find(".offcanvas-body2"); //계약모달바디
	const offCanvas = new bootstrap.Offcanvas(offcanvasRightEL.get(0));
	const offCanvas2 = new bootstrap.Offcanvas(offcanvasNestedEL.get(0));
	const newRoom = $('.att-r77').data("bldg-no");
	
	offcanvasRightEL.on('hidden.bs.offcanvas', event => {
		offcanvasBody.empty();
	})
	detailArea.on("click",".roomInfo",function(){
		
		const roomNo = $(this).data("roomNo");
		const roomUrl = `\${cPath}/lessor/roomInfo/\${roomNo}`
		$.ajax({
			url : roomUrl,
			dataType : "html",
			success : function(resp){
				offcanvasBody.html(resp);
				offCanvas.show();
			}
		})
	});
	
	const makeListContents = function(resp){
		listArea.html(resp);
	
/************************ 건물 리스트 선택 ***********************/	
	// 	const bdList = document.querySelectorAll(".list-adk .find-l6z li"); //element 하나하나를 따로따로 바인
		const bdList = $(".list-adk .find-l6z li").on("click",function(){
			$(bdList).removeClass('on');
			$(this).addClass('on');
			const value = $(this).data("bldgNo");
			const url = `\${cPath}/lessor/buildingInfo/\${value}`;
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
		
		let previousNo = "${rentBldgNo }";
		if(previousNo){
			bdList.filter((idx,li)=>li.dataset.bldgNo==previousNo).trigger("click");
		}else{
			$(bdList[0]).trigger("click")
		}
	}
	
	$.ajax({
		url : cPath + "/lessor/buildingInfo/all",
		dataType : "html",
		success : makeListContents
		
	})

/******************** 건물 등록 모달 ***********************/
$(".btn-t37.kefcc.btn-sqe").on("click", function() {
	const fmbUrl = `\${cPath}/lessor/buildingInfo/addB`
	$.ajax({
		url : fmbUrl,
		dataType : "html",
		success : function(resp){
			offcanvasBody.html(resp);
			offCanvas.show();
		}
	})
})

$("#addcbtn").on("click", function() {
	const cmbUrl = `\${cPath}/lessor/cntrctInfo/addC`
		$.ajax({
			url : cmbUrl,
			dataType : "html",
			success : function(resp){
				offcanvasBody2.html(resp);
				offCanvas2.show();
			}
		})
	})
	
/******************** 방 등록 모달 ***********************/
// function fMROpen(element) {
// 	let bldgNo = roomButton.dataset.bldgNo
// 	console.log("button",roomButton)
// 	console.log("dd",bldgNo)
	
//  	location.href= `\${cPath}/lessor/roomInfo/addR/\${bldgNo}`;

$(document).on("click",".upp-jh2.typ-i2q",function(){
   var rentBldgNo = $(this).data('bldg-no');
   console.log(rentBldgNo)
      var fmrUrl = `\${cPath}/lessor/roomInfo/addR/\${rentBldgNo}`;
      $.ajax({
          url: fmrUrl,
          dataType: "html",
          success: function(resp) {
          	offcanvasBody.html(resp);
          	offCanvas.show();
          }
      });
}) 
  
// 	  var rentBldgNo = $(element).data('bldg-no');
// 	    var fmrUrl = `\${cPath}/lessor/roomInfo/addR/\${rentBldgNo}`;
// 	    $.ajax({
// 	        url: fmrUrl,
// 	        dataType: "html",
// 	        success: function(resp) {
// 	        	offcanvasBody.html(resp);
// 				offCanvas.show();
// 	        }
// 	    });

$(document).on("click","#addcbtn", function() {
	console.log("dddd")
	const rentRoomNo = this.dataset.roomNo;
	const cmbUrl = cPath + "/lessor/cntrctInfo/addC/" + rentRoomNo;
		$.ajax({
			url : cmbUrl,
			dataType : "html",
			success : function(resp){
				console.log(resp);
				offcanvasBody2.html(resp);
			}
		})
	})


})



</script>