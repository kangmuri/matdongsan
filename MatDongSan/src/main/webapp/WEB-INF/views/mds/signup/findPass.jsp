<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">비밀번호 찾기</h1>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-nav">
                    <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                    <li>비밀번호 찾기</li>
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
                    <h4 class="title">비밀번호 찾기</h4>
                    <form method="post">
                        <div class="form-group">
                            <label>이름</label>
                            <input name="userNm" id="userNm" type="text">
                        </div>
                        <div class="form-group">
                            <label>아이디</label>
                            <input name="userId" id="userId" type="text">
                        </div>


                        <!-- <div class="form-group" style="width: 257px;">
                            <label>이메일</label>
                            <input name="userEmail" id="userEmail" type="email">
                            <div class="button" style="width: 156px;">
                                <button type="submit" id="codeBtn" class="btn">인증번호 발송</button>
                            </div>
                        </div> -->


                        <div class="form-group">
                            <label>이메일</label>
                            <div style="display: flex;" class="button">
                                <input name="userEmail" id="userEmail" type="email" style="flex: 1; margin: 0px 10px 0px 0px;">
                                <button type="submit" id="codeBtn" class="btn" style="width: 35%;">인증번호 발송</button>
                            </div>
                        </div>


                        <div class="form-group" id="codeInput" style="display: none;">
                            <label>인증코드 입력</label>
                            <input name="userCode" id="userCode" type="text">
                        </div>
                        <div class="button" id="passInput" style="display: none;">
                            <button type="submit" id="passBtn" class="btn">비밀번호 찾기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- end login section -->
<script>
	
let passCode = "";
let userNoData = "";
// ==================== 인증코드 발송 스크립트 ==================== //
    let cBtn = document.querySelector("#codeBtn");
    
    cBtn.addEventListener('click',function(e){
        e.preventDefault();

        let uNm = document.querySelector("#userNm").value;
        let uId = document.querySelector("#userId").value;
        let uEmail = document.querySelector("#userEmail").value;
        
        console.log("uNm==>",uNm);
        console.log("uId==>",uId);
        console.log("uEmail==>",uEmail);
    
        let data = {
            userNm : uNm,
            userId : uId,
            userEmail : uEmail
        }
    
        let url = `\${cPath}/find/pass`;
    
        fetch(url,{
        	method: 'post',
        	headers : {
        		'Content-Type' : 'application/json'
        	},
        	body : JSON.stringify(data)
        })
        .then(response=>response.json())
        .then(data=>{
        	console.log("data==>",data.result);
            userNoData = data.userNo;
        	console.log("userNoData==>",userNoData);
            if(data.result == "ok"){
                Swal.fire({
        			title: '임시 비밀번호가 발송되었습니다.',
        			text: '',
        			icon: 'success',
        			confirmButtonColor: '#6528b5'
        		}).then(result => {
        			document.querySelector("#codeInput").style.display = 'block';
        			document.querySelector("#passInput").style.display = 'block';
                    console.log("넘어온 data==>",data);
                    passCode = data.code;
        		});
            }else{
                Swal.fire({
        			title: '아이디, 비밀번호, 이메일이 맞지 않습니다.',
        			text: '',
        			icon: 'success',
        			confirmButtonColor: '#6528b5'
        		}).then(result => {
        			location.href = `#`;
        		});
            }
        })
        .catch(error=>{
        	console.log("error=>",error);
        })
    })
// ==================== 인증코드 발송 스크립트 END ==================== //

// ==================== 비밀번호 변경 JSP 이동 ==================== //
let pBtn = document.querySelector("#passBtn");
pBtn.addEventListener('click',function(e){
    e.preventDefault();
    let inputCode = document.querySelector("#userCode").value;
    
    console.log("inputCode==>",inputCode);
    console.log("passCode==>",passCode);

    if(inputCode == passCode){
        console.log("같은 값 들어옴");
        location.href = `\${cPath}/find/updatePass/`+userNoData;
    }else{
        Swal.fire({
        			title: '입력된 인증코드와 일치하지 않습니다.',
        			text: '',
        			icon: 'success',
        			confirmButtonColor: '#6528b5'
        		}).then(result => {
        			location.href = `#`;
        		});
    }
})
// ==================== 비밀번호 변경 JSP 이동 END ==================== //


</script>