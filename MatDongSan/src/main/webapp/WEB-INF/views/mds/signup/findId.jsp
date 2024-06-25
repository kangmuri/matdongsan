<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">아이디 찾기</h1>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-nav">
                    <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                    <li>아이디 찾기</li>
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
                    <h4 class="title">아이디 찾기</h4>
                    <form method="post">
                        <div class="form-group">
                            <label>이름</label>
                            <input name="userNm" id="userNm" type="text">
                        </div>
                        <div class="form-group">
                            <label>이메일</label>
                            <input name="userEmail" id="userEmail" type="text">
                        </div>
                        <div class="check-and-pass">
                            <div class="row align-items-center">
                                <div class="col-lg-6 col-md-6 col-12">
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <a href="${pageContext.request.contextPath}/find/pass" class="lost-pass">비밀번호를 잊으셨나요?</a>
                                </div>
                            </div>
                        </div>
                        <div class="button">
                            <button type="submit" id="idBtn" class="btn">아이디 찾기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- end login section -->
<script>
let idBtn = document.querySelector("#idBtn");
idBtn.addEventListener('click',function(e){
	e.preventDefault();
	let userNm = document.querySelector("#userNm").value;
	let userEmail = document.querySelector("#userEmail").value;
	
	let data = {
		userNm : userNm,
		userEmail : userEmail
	};
	
	let url = `\${cPath}/find/idCk`;
	
	console.log("url==>",url);
	console.log("data==>",data);
	
	fetch(url,{
		method: 'post',
		headers : {
			'Content-Type' : 'application/json'
		},
		body : JSON.stringify(data)
	})
	.then(response=>response.json())
	.then(data=>{
		console.log(data);
		if(data.userId == null){
			alert("해당 아이디가 없어요");
		}else{
			alert(`회원의 아이디는 [\${data.userId}]입니다.`);
		}
	})
	.catch(error=>{
		console.log("error=>",error);
	})
})

</script>