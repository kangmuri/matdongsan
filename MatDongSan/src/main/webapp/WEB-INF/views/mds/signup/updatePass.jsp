<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">비밀번호 변경</h1>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-nav">
                    <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                    <li>비밀번호 변경</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- start login section -->
<section class="login section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                <div class="form-head">
                    <h4 class="title">비밀번호 변경</h4>
                    <form method="post">
                        <div class="form-group">
                            <label>비밀번호</label>
                            <input name="userPw" id="userPw" type="password">
                        </div>
                        <div class="form-group">
                            <label>비밀번호 재입력</label>
                            <input name="userPwCk" id="userPwCk" type="password">
                        </div>
                        <div id="passCk"></div>
                        <div class="button" id="passInput">
                        	<input type="hidden" value="${userNo}">
                            <button type="submit" id="passBtn" class="btn">비밀번호 변경</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- end login section -->
<script>
let userNo = document.querySelector('input[type=hidden]').value;
console.log("넘어온 userNo==>",userNo);
let userPw = document.querySelector("input[name=userPw]");
let userPwCk = document.querySelector("input[name=userPwCk]");
// ====================== 비밀번호 변경 스크립트 ====================== //
let passBtn = document.querySelector("#passBtn");
passBtn.addEventListener('click',function(e){
    e.preventDefault();
	Swal.fire({
		title: '변경 하시겠습니까?',
		text: '',
		icon: 'warning',
		showCancelButton: true, 
		confirmButtonColor: '#6528b5', 
		confirmButtonText: '변경', 
		cancelButtonText: '취소',
	})
	.then(result => {
		if (result.isConfirmed) { 
            upPass();
		}
	});
})

function upPass(){
    let userPw = document.querySelector("#userPw").value;
    let userPwCk = document.querySelector("#userPwCk").value;
	console.log("userPw==>",userPw);
	console.log("userPwCk==>",userPwCk);
	
	let data = {
        userNo : userNo,
        userPw : userPw
    }
    let url = `\${cPath}/find/updatePassword`;
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
                title: '비밀번호 변경이 완료되었습니다.',
                text: '다시 로그인 하세요.',
                icon: 'success',
                confirmButtonColor: '#6528b5'
            }).then(result => {
                location.href = cPath+"/";
            });
        }
    })
    .catch(error=>{
        console.log("error=>",error);
    })
}

// ==================== 비밀번호 변경 스크립트 END ==================== //

/*************** 비밀번호 수정 확인체크 스크립트 **************/
$("input[name='userPwCk']").keyup(function() {
    if (userPw.value == userPwCk.value) {
        $("#passCk").css("color", "green");
        $("#passCk").html("비밀번호가 일치합니다.");
    } 
    if(userPw.value != userPwCk.value){
        $("#passCk").css("color", "red");
        $("#passCk").html("비밀번호가 일치하지 않습니다.");
    }
    if(userPwCk.value == ""){
        $("#passCk").html("");
    }
});
/***********************************************************/

</script>