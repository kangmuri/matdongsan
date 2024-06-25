<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
<div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">계약서 작성</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>계약서 조회</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Dashboard Section -->
    <section class="dashboard section">
        <div class="container">
            <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                    <!-- Start Dashboard Sidebar -->
                    <div class="dashboard-sidebar">
                        <div class="user-image">
                             <img id="authImg1" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://via.placeholder.com/100x100">
                            <h3><div id="authNm1"></div>
                                <span><a href="javascript:void(0)" id="authId1"></a></span>
                            </h3>
                        </div>
                        <div class="dashboard-menu">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/mypage"><i class="lni lni-dashboard"></i> MyPage</a></li>
                                <li><a href="${pageContext.request.contextPath}/profile"><i class="lni lni-pencil-alt"></i> 내정보</a></li>
                                <li><a href="${pageContext.request.contextPath}/roomLike"><i class="lni lni-heart"></i> 찜목록</a></li>
                                <li><a href="${pageContext.request.contextPath}/myContract"><i class="lni lni-circle-plus"></i> 계약관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/myRoom"><i class="lni lni-home"></i> 매물관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/qna"><i class="lni lni-printer"></i> 1:1 문의</a></li>
                                <li><a href="${pageContext.request.contextPath}/myChatting"><i class="lni lni-envelope"></i> 채팅</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Dashboard Sidebar -->
                </div>
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
						<div class="dashboard-block mt-0" style="margin-top: 0px;">
							<h3 class="block-title">계약서 조회 및 수정</h3>
							<!-- Use simpler CSS and HTML structure if you do not want to integrate i.e. the Revision history feature. !-->
							<form id="cntrForm">
								<input type="hidden" name="delngCntrctNo" value="">
                                <table class="table table-bordered">
                                   <tr>
                                       <th colspan="5"><input type="text" name="dctClsf" class="form-control"
                                           value="" readonly></th>
                                   </tr>
                                   <tr>
                                       <th>소재지</th>
                                       <td colspan="4"><input type="text" name="dctLocplc" class="form-control"
                                           value="" readonly></td>
                                   </tr>
                                   <tr>
                                       <th>토지</th>
                                       <td>지목</td>
                                           <td><input type="text" name="dctLadLndcgr" class="form-control" value="" readonly></td>
                                       <th>면적</th>
                                       <td><input type="text" name="dctLadAr" class="form-control"
                                           value="" readonly>㎡</td>
                                   </tr>
                                   <tr>
                                       <th>건물</th>
                                       <td>구조, 용도</td>
                                       <td><input type="text" name="dctBuldRescue" class="form-control"
                                           value="" readonly></td>
                                       <th>면적</th>
                                       <td><input type="text" name="dctBuldAr" class="form-control"
                                           value="" readonly>㎡</td>
                                   </tr>
                                   <tr>
                                       <th colspan="2">임대할부분</th>
                                       <td><input type="text" name="dctRentDc" class="form-control" readonly></td>
                                       <th>면적</th>
                                       <td><input type="text" name="dctRentAr" class="form-control" value="" readonly>㎡</td>
                                   </tr>
                                   <tr>
                                       <th>보증금</th>
                                           <td colspan="4"><input type="text" name="grnteAmt" class="form-control"
                                               value="" readonly></td>
                                   </tr>
                                   <tr>
                                       <th>월세</th>
                                       <td colspan="2"><input type="text" name="mhlAmt" class="form-control" value="" readonly></td>
                                       <th>지급일</th>
                                       <td><input type="text"  name="mhlDe" class="form-control" readonly></td>
                                   </tr>
                                   <tr>
                                       <td>전세가</td>
                                       <td colspan="4"><input type="text" name="lshlAmt" class="form-control" value="" readonly></td>
                                   </tr>
                                   
                                   <tr>
                                       <td>계약금</td>
                                       <td colspan="4"><input type="text" name="downAmt" class="form-control" readonly></td>
                                   </tr>
                                   <tr>
                                       <td>중도금</td>
                                       <td colspan="2"><input type="text" name="intermAmt" class="form-control" readonly></td>
                                       <th>지급일</th>
                                       <td><input type="text" id="datepicker" name="intermDe" class="form-control" readonly></td>
                                   </tr>
                                   <tr>
                                       <td>잔금</td>
                                       <td colspan="2"><input type="text" name="surlusAmt" class="form-control" readonly></td>
                                       <th>지급일</th>
                                       <td><input type="text" id="datepicker" name="surlusDe" class="form-control" readonly></td>
                                   </tr>
                                   <tr>
                                       <td>계약기간</td>
                                       <td>시작일</td>
                                       <td><input type="text" id="datepicker" name="dctBgng" class="form-control" readonly></td>
                                       <td>종료일</td>
                                       <td><input type="text" id="datepicker" name="dctEnd" class="form-control" readonly></td>
                                   </tr>
                                   
                               </table>
								<table class="table table-bordered">
									<tr>
										<th colspan="7">계약자 정보 입력</th><input type="hidden" name="lessorUserNo" value="">
									</tr>
									<tr>
										<th colspan="2">주소</th>
										<td colspan="5"><input type="text" name="lessorAdres" class="form-control" readonly></td>
									</tr>
									<tr>
										<th colspan="2">주민등록번호</th>
										<td><input type="text" name="lessorIhidnum" class="form-control" pattern="[0-9]{6}-[0-9]{7}" readonly></td>
										<th>전화</th>
										<td><input type="text" name="lessorPhone" class="form-control" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" readonly></td>
										<th>성명</th>
										<td><input type="text" name="lessorNm"class="form-control" readonly></td>
									</tr>
									<tr>
										<th colspan="5" id="userInfo">								
											<input type="hidden" name="lesseeUserNo" value="">
										</th>
                                        <th colspan="2"><input type="hidden" name="lessorAtchmnflNo" value=""><span id="showSign">서명등록</span><div id="signPreview"></div></th>

									</tr>
								</table>
								<div id="signature-pad" class="m-signature-pad mt-3">
									<div class="m-signature-pad--body">
										<canvas></canvas>
									</div>
									<div class="m-signature-pad--footer">
										<div class="description">전자서명 입력</div>
										<button type="button" class="btn btn-secondary btn-sm"
											data-action="clear">지우기</button>
										<button type="button" class="btn btn-success btn-sm"
											style="float:right;" data-action="save">저장</button>
									</div>
								</div>
								<button class="btn btn-success" style="text-align:center" id="cntrUp">수정하기</button>
								<button class="btn btn-success" style="text-align:center" id="cntrSub">작성완료</button>
							</form>

							
						</div>
					</div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->



<script src="${pageContext.request.contextPath }/resources/js/app/signature_pad/signature_pad.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/app/signature_pad/app.js"></script>

<script>
	

	document.addEventListener("DOMContentLoaded", () => {
		let cntrSubBtn = $('#cntrSub');
		cntrSubBtn.css('display', 'none');
		let showSignSpan = $('#showSign');
		showSignSpan.css('display', 'none');

		let dataParam = {};
		//form찾기
		let form = document.forms['cntrForm'];

		let attachFileList = [];
		let file = null;
		/**********계약 정보 가져오기************/
		let curUrl = window.location.href;
        let cntrNo = curUrl.match(/\/([^\/]+)\/?$/)[1];
		let lessorSignPreview = $('#signPreview');
            
            let url = `\${cPath}/contract/cntrInfo/\${cntrNo}`;
            $.ajax({
                url : url,
                type : 'get',
                dataType : 'json',
                success : function(data) {
                    console.log(data);
                    $.each(form.elements, function(i, element) {
                        if (element.name) {
                            if(element.name == 'intermDe' || element.name == 'surlusDe' || element.name == 'dctBgng' || element.name == 'dctEnd') {
                                element.value = data.cntrctDealingVO[element.name].split(" ")[0];
                            }else {
                                element.value = data.cntrctDealingVO[element.name];
                            }
                            
                        }
				    });
					let lesseeUserNo = data.cntrctDealingVO.lesseeUserNo;
					findLessor(lesseeUserNo);
					lessorSignPreview.html(`<img src='\${cPath}\${data.cntrctDealingVO.lessorSignPath}'/>`)

                },
                error : function(error) {

                }
            })

		
		
		$('#cntrUp').on('click', function() {
			$(this).css('display', 'none');
			cntrSubBtn.css('display', 'block');
			showSignSpan.css('display', 'block');
			updateChange();
		})
		
		function updateChange() {
			//날짜선택 기능
			requestCntrSchedule();
			$.each(form.elements, function(i, element) {
				if(element.name == 'dctClsf' || element.name == 'dctLocplc' || element.name == 'dctLadLndcgr' || element.name == 'dctLadAr' || element.name == 'dctBuldRescue' || element.name == 'dctBuldAr') return true;
				$(element).attr('readonly', false);
			});
		}
		
		//작성완료
		$('#cntrSub').on('click', function() {

			$.each(form.elements, function(i, element) {
				if(element.name == 'dctClsf' || element.name == 'dctLocplc' || element.name == 'dctLadLndcgr' || element.name == 'dctLadAr' || element.name == 'dctBuldRescue' || element.name == 'dctBuldAr') return true;
				if (element.name) {
					dataParam[element.name] = element.value;
				}
			});

			attachFileList.push(file);

			dataParam.tbAttachFileList = attachFileList;

			console.log(dataParam);
			let url = window.location.href;
			$.ajax({
				url : url,
				type : 'post',
				data : JSON.stringify(dataParam),
				contentType : 'application/json;charset=utf-8',
				dataType : 'json',
				success : function(res) {
					if(res.success == 'success') {
						Swal.fire({
							icon : "success",
							title : "입력 성공",
							text : "계약서 수정에 성공했습니다."
						}).then(result => {
							if(result) {
								location.href = `\${cPath}/myContract`;
							}
						})
					}
				},
				error : function(error) {
					console.log(error);
					Swal.fire({
						icon : "error",
						title : "입력 실패",
						text : "계약서 수정에 실패했습니다."
					})
				}
			})

		})

		$('#showSign').hover(function() {
			$(this).css('background', '#6DF6EA')
		}, function() {
			$(this).css('background', 'white')
		})
		//서명 칸 처음에 안보이게하기
		let signPad = $('#signature-pad');
		signPad.css("display","none");

		//서명칸 보이게하는 이벤트
		$('#showSign').on('click', function() {
			signPad.css("display","block");
			signPad.trigger('resize');
		})
		//모달 닫을때 값 초기화
		$('#findUser').on("hide.bs.modal", function() {
			$('#userDiv').empty();
			$('#user').val('');
		});

		let userInfoTh = $('#userInfo');
		$(document).on('dblclick', '.uli', function(e) {
			let userNo = $(e.currentTarget).data('userNo');

			form.lesseeUserNo.value = userNo;
			$(userInfoTh).children('div').remove();
			$(userInfoTh).append(e.currentTarget);
			$(".btn-close").click();
		})
		
		
		//유저 찾기 버튼 이벤트 등록
		function findLessor(lesseeUserNo) {
			let userUrl = `\${cPath}/contract/user?userNo=` + lesseeUserNo;
            $.ajax({
                url : userUrl,
                type : "get",
                dataType : "json",
                success : function(data) {
                    console.log(data.myProfileVO);
                    if(Object.keys(data).length == 0) {
                        $(userInfoTh).html("<div>사용자정보 없음</div>");
                    }else {
                        let userInfo = `
                                            <div class="uli" data-user-no="\${data.myProfileVO.userNo}">
                                                <img src="\${cPath}\${data.myProfileVO.tbAttachFileVO.webPath}" alt="프로필 이미지" style="width: 100px; height: 100px;">
                                                <p>아이디: \${data.myProfileVO.userId}</p>
                                                <p>이름: \${data.myProfileVO.userNm}</p>
                                                
                                            </div>`;
						$(userInfoTh).html(userInfo);
                    }
                },
                error : function(error) {
                    console.log(error);
                }
                
            })
		}
		
//	    var emplPw = document.querySelector('input[name="emplPw"]').value;
	   var canvas = $("#signature-pad canvas")[0];
	   var sign = new SignaturePad(canvas, {
	      minWidth: 1,
	      maxWidth: 5,
	      penColor: "rgb(0, 0, 0)"
	   });
	   $("[data-action]").on("click", function(){
	      if ( $(this).data("action")=="clear" ){
	         sign.clear();         
	      }
	      else if ( $(this).data("action")=="save" ){
	         if (sign.isEmpty()) {
	             Swal.fire({
	                 text: "서명을 입력해 주세요",
	                 icon: "error",
	                 buttonsStyling: false,
	                 confirmButtonText: "확인",
	                 customClass: {
	                     confirmButton: "btn btn-primary"
	                 }
	             });
	         } else {
	            const signURL = sign.toDataURL("image/png");
				// 데이터 URL을 Blob으로 변환
				fetch(signURL)
                .then(res => res.blob())
                .then(blob => {
                    let formData = new FormData();
					formData.append('hidden', '');
                    formData.append('attachFile', blob, 'signature.png');

                    // Blob 데이터를 멀티파트 형식으로 서버로 전송
                    fetch(`\${cPath}/api/img`, {
                        method: 'POST',
                        body: formData,
						headers : {
							'accept' : 'application/json' 
						}
                    })
                    .then(response => response.json())
                    .then(data => {
						file = data[0];
						Swal.fire({
	                       text: "정상 처리되었습니다.",
	                       icon: "success",
	                       buttonsStyling: false,
	                       confirmButtonText: "확인",
	                       customClass: {
	                           confirmButton: "btn btn-primary"
	                       }
	                   }).then(result => {
							if(result) {
								$('#signPreview').html(`<img src='\${cPath}\${file.webPath}'/>`)
								signPad.css("display","none");
							}
					   })
	                  sign.clear();
                    })
                    .catch(error => {
                        console.error('Error:', error);
                    });
                });
	         }
	      }
	   })
	   function resizeCanvas(){
	      var canvas = $("#signature-pad canvas")[0];
	      var ratio = Math.max(window.devicePixelRatio || 1, 1);
	      canvas.width = canvas.offsetWidth * ratio;
	      canvas.height = canvas.offsetHeight * ratio;
	      canvas.getContext("2d").scale(ratio, ratio);
	   }
	   $(window).on("resize", function(){
	      resizeCanvas();
	   });
	   resizeCanvas();
	})
	
	//계약기간설정 
    function requestCntrSchedule() {
        let bgngInput = document.forms['cntrForm'].dctBgng;
        let endInput = document.forms['cntrForm'].dctEnd;
		let intermInput = document.forms['cntrForm'].intermDe;
		let surlusDeInput = document.forms['cntrForm'].surlusDe;

        flatpickr(bgngInput, {
            dateFormat: 'Y-m-d',
            minDate: 'today',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });
        
        flatpickr(endInput, {
            dateFormat: 'Y-m-d',
            minDate: 'today',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });
		flatpickr(intermInput, {
            dateFormat: 'Y-m-d',
            minDate: 'today',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });
		flatpickr(surlusDeInput, {
            dateFormat: 'Y-m-d',
            minDate: 'today',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });

    }
	function handleDateChange(selectedDates, dateStr, instance) {
    }
</script>
