<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">내정보</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>내정보</li>
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
<%--                                 <li><a href="${pageContext.request.contextPath}/roomLike"><i class="lni lni-heart"></i> 찜목록</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/myContract"><i class="lni lni-circle-plus"></i> 계약관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/myRoom"><i class="lni lni-home"></i> 매물관리</a></li>
<%--                                 <li><a href="${pageContext.request.contextPath}/roomReport"><i class="lni lni-bolt-alt"></i> 허위매물</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/qna"><i class="lni lni-printer"></i> 1:1 문의</a></li>
                                <li><a href="${pageContext.request.contextPath}/myChatting"><i class="lni lni-envelope"></i> 채팅</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Dashboard Sidebar -->
                </div>
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
                        <!-- Start Profile Settings Area -->
                        <div class="dashboard-block mt-0 profile-settings-block" style="margin-top: 0px;">
                            <h3 class="block-title">내정보</h3>
                            <div class="inner-block">
                                <div class="image">
                                    <img id="MyImg" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" 
                                                    alt="##"
                                                    style="border-radius: 20%;">
                                </div>
                                <form class="profile-setting-form" method="post" action="#">
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <div class="form-group">
                                                <label>이름</label>
                                                <input name="userNm" id="userNm" type="text" value="${principal.userNm}">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-12">
                                            <div class="form-group">
                                                <label>전화번호</label>
                                                <input name="userMbtlnum" id="userMbtlnum" type="text" value="${principal.userMbtlnum}">
                                                <div id="telError"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-12">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input name="userEmail" id="userEmail" type="email" value="${principal.userEmail}">
                                                 <div id="emailError"></div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group upload-image">
                                                <label>프로필 사진</label>
                                                <input name="unityAtchmnflNo" type="file" id="sImg" accept="image/*" id="upfile" value="" onchange="fUpload(this)">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group button mb-0">
                                                <button type="submit" id="profileBtn" class="btn ">정보변경</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- End Profile Settings Area -->
                        <!-- Start Password Change Area -->
                        <div class="dashboard-block password-change-block">
                            <h3 class="block-title">비밀번호 변경</h3>
                            <div class="inner-block">
                                <form class="default-form-style">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>현재 비밀번호</label>
                                                <input name="userPw" type="password" value="" placeholder="현재 비밀번호 입력">
                                                <div id="paCh"></div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>변경할 비밀번호</label>
                                                <input name="newUserPw" type="password" placeholder="변경할 비밀번호 입력">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>비밀번호 확인</label>
                                                <input name="newUserPwCk" type="password" placeholder="비밀번호 확인">
                                                <div id="parrCk"></div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group button mb-0">
                                                <button type="submit" id="passUpdate" class="btn">변경</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- End Password Change Area -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
<script>

/*************** 비밀번호 변경 스크립트 **************************/
let password = document.querySelector("input[name=userPw]");
let newPass = document.querySelector("input[name=newUserPw]");
let newPassCk = document.querySelector("input[name=newUserPwCk]");

let cp = "";
let PassBtn = document.querySelector("#passUpdate");
PassBtn.addEventListener('click',function(e){
    e.preventDefault();
    console.log("비밀번호 ==> ",password.value);
    console.log("바꿀 비밀번호 ==> ",newPass.value);
    console.log("바꿀 비밀번호 확인 ==> ",newPassCk.value);
	
    
    if(newPass.value == newPassCk.value){
        let data = {
            userPw : newPassCk.value,
        };
        $.ajax({
            url: `\${cPath}/profile/password`,
            method:"POST",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType:"text",
            success:function(resp){
                console.log("결과값 ==> ",resp);
                if(resp == "ok"){
                	Swal.fire({
    					title: '비밀번호 수정이 완료되었습니다.',
    					text: '',
    					icon: 'success'
    				}).then(result => {
    					location.href = cPath+"/profile";
    				});
                }
                if(resp == "fail"){
                    $("#paCh").css("color", "red");
                    $("#paCh").html("현재 비밀번호가 일치하지 않습니다.");
                }
            },
            error:function(xhr){
                console.log("에러코드 : ",xhr.status);
            }
        });
    }else{
        alert("변경할 비밀번호가 일치하지 않습니다.");
    }

})
/*************************************************************/

/*************** 현재 비밀번호 체크 스크립트 **************************/
function nowPwCk(){
	$("input[name='userPw']").keyup(function() {
	    console.log("현재 비밀번호==>",password.value);
	    let nPass = password.value;
	    let data = {
	    	userPw : nPass,
	    	userNo : `${principal.userNo}`
	    };
	    $.ajax({
	        url: `\${cPath}/profile/ckPassword`,
	        method:"POST",
	        data: JSON.stringify(data),
	        contentType: "application/json",
	        dataType:"text",
	        success:function(resp){
	            console.log("결과값 ==> ",resp);
	            if(resp == "ok"){
	                $("#paCh").css("color", "green");
	                $("#paCh").html("현재 비밀번호가 일치합니다.");
	                // let val = document.querySelector("input[name=userPw]").value
	                // console.log("담긴 값 ==>",val);
	            }
	            if(resp == "fail"){
	                $("#paCh").css("color", "red");
	                $("#paCh").html("현재 비밀번호가 일치하지 않습니다.");
	            }
	            if(nPass == ""){
	                $("#paCh").html("");
	            }
	        },
	        error:function(xhr){
	            console.log("에러코드 : ",xhr.status);
	        }
	    });
	})
} 
nowPwCk();
/*************************************************************/


/*************** 비밀번호 수정 확인체크 스크립트 **************/
$("input[name='newUserPwCk']").keyup(function() {
    // console.log("바꿀 비밀번호 ==> ",newPass.value);
    // console.log("바꿀 비밀번호 확인 ==> ",newPassCk.value);
    if (newPass.value == newPassCk.value) {
        $("#parrCk").css("color", "green");
        $("#parrCk").html("비밀번호가 일치합니다.");
    } 
    if(newPass.value != newPassCk.value){
        $("#parrCk").css("color", "red");
        $("#parrCk").html("비밀번호가 일치하지 않습니다.");
    }
    if(newPassCk.value == ""){
        $("#parrCk").html("");
    }
});
/***********************************************************/


/************* 회원정보 수정 스크립트 *************/
$("#profileBtn").on('click',function(e){
    e.preventDefault();
    let form = document.forms[0];

    //유효성 검사
    let emailRegex = /[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]/;
    let telRegex = /[0-9]{3}-[0-9]{4}-[0-9]{4}/;
    
    let email = document.querySelector("#userEmail").value;
    let tel = document.querySelector("#userMbtlnum").value;
    
	if (!telRegex.test(tel)) {
		$("#telError").css("color", "red");
		$("#telError").html("전화번호 형식이 잘못되었습니다. ex)000-0000-0000");
		Swal.fire({
			title: '전화번호 형식이 잘못되었습니다.',
			text: '',
			icon: 'error'
		 });
		return;
	}
	
    if (!emailRegex.test(email)) {
		$("#emailError").css("color", "red");
		$("#emailError").html("이메일 형식이 잘못되었습니다.");
		Swal.fire({
			title: '이메일 형식이 잘못되었습니다.',
			text: '',
			icon: 'error'
		 });
		return;
	}
    
    console.log("스크립트상 마지막으로 저장된 이미지 파일==>",imgbackup);
	let myprofilevo = {
		userNm : form.userNm.value,
		userMbtlnum :form.userMbtlnum.value,
		userEmail :form.userEmail.value,
		unityAtchmnflNo : `${principal.unityAtchmnflNo}`,
		tbAttachFileVO : profileImg
    }
		
    let profileImgNo = `${principal.unityAtchmnflNo}`;
    console.log("현재 로그인 정보에서 가져온 프로필 사진유무 ==> ",profileImgNo);
    
    if(profileImgNo === ""){
    	console.log("이쪽으로 왔다는건 아직 principal에 프로필사진이 저장되어 있지않다는것....");
		myprofilevo = {
			userNm : form.userNm.value,
			userMbtlnum :form.userMbtlnum.value,
			userEmail :form.userEmail.value,
			unityAtchmnflNo : imgbackup,
			tbAttachFileVO : profileImg
	    }
		console.log("저장된 vo ==>",myprofilevo);
    }

    $.ajax({
        url : cPath+"/profile",
        method : 'POST',
        data : JSON.stringify(myprofilevo),
        contentType : "application/json",
        dataType : 'text',
        success:function(resp){
            console.log(resp);
            if(resp == "ok"){
            	Swal.fire({
					title: '회원정보 수정이 완료되었습니다.',
					text: '',
					icon: 'success'
				}).then(result => {
					location.href = cPath+"/profile";
				});
            }
            
        },
        error:function(xhr){
            console.log("에러코드 : ",xhr.status);
        }
    })
    
    
    
    
})
/***************************************************/


/************* 회원정보(프로필 이미지) 수정 스크립트 *************/

// 불러온 이미지 파일정보를 저장할 객체
let profileImg = {};

// console.log("전역 profileImg==>",profileImg);
const myImg = document.querySelector("#MyImg");
function fUpload(target) {
    // console.log(target.files[0].name);
    let formData = new FormData();

    if(target.files[0].type.substr(0,5) == "image") {
        formData.append("hidden", "");
        formData.append("attachFile", target.files[0]);
    }

    let url = cPath+"/api/img";
    fetch(url, {
        method : "post",
        headers : {
            "Accept" : "application/json"
        },
        body : formData
    }).then(res =>  res.json())
    .then(data => {
        console.log("data==>" , data);
        console.log("userId값==>",`${principal.userId}`);
        
       	let oneData = data[0];
       	let attachFileVO = {
            unityAtchmnflNo : `${principal.unityAtchmnflNo}`,
       		atchmnflSn: oneData.atchmnflSn,
       		filePath: oneData.filePath,
       		webPath: oneData.webPath,
       		streFileNm: oneData.streFileNm,
       		fileSize: oneData.fileSize,
       		fileType: oneData.fileType,
       		regUserId: `${principal.userNo}`
       	}
       	console.log("attachFileVO==>",attachFileVO);
       	
       	profileImg = attachFileVO;
        
       	console.log("profileImg==>",profileImg);
        
        let webUrl = data[0].webPath;
        myImg.src = `${pageContext.request.contextPath}` + webUrl;
    })
}

/**************************************************************/

/********* 비동기 이메일 정규식 이벤트 *********/
$("input[name='userEmail']").keyup(function() {
	let emailRegex = /[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]/;
	let emailValue = $(this).val();
	console.log("정규식 검사결과 : ",emailRegex.test(emailValue));
	if (emailRegex.test(emailValue)) {
		$("#emailError").css("color", "green");
		$("#emailError").html("사용 가능한 ID입니다.");
	} else {
		$("#emailError").css("color", "red");
		$("#emailError").html("이메일 형식이 잘못되었습니다.");
	}
});
/****************************************/


/********** 비동기 전화번호 정규식 이벤트 ***************/
$("input[name='userMbtlnum']").keyup(function() {
	let telRegex = /[0-9]{3}-[0-9]{4}-[0-9]{4}/;
	let telValue = $(this).val();
	if (telRegex.test(telValue)) {
		$("#telError").css("color", "green");
		$("#telError").html("사용 가능한 전화번호 입니다.");
	} else {
		$("#telError").css("color", "red");
		$("#telError").html("전화번호 형식이 잘못되었습니다. ex)000-0000-0000");
	}
});
/***********************************************/

</script>