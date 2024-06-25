<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">로그인</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>로그인</li>
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
                        <h4 class="title">로그인</h4>
                        <form method="post">
                            <div class="form-group">
                                <label>아이디</label>
                                <input name="userId" id="userId" type="text">
                            </div>
                            <div class="form-group">
                                <label>비밀번호</label>
                                <input name="userPw" id="userPw" type="password">
                            </div>
                            <div class="check-and-pass">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <a href="${pageContext.request.contextPath}/find/id" class="lost-pass">아이디, 비밀번호를 잊으셨나요?</a>
                                    </div>
                                </div>
                            </div>
                            <div class="button">
                                <button type="submit" id="lBtn" class="btn">로그인</button>
                            </div>
                            <p class="outer-link">계정이 없으신가요? <a href="${pageContext.request.contextPath}/signup">회원가입</a>
                            </p>
                            <p class="outer-link">
	                            <a href="#" id="lessee">임차인</a>
	                            &nbsp;
	                            <a href="#" id="lessor">임대인</a>
	                            &nbsp;
	                            <a href="#" id="admin">관리자</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
        /****************** 자동입력 이벤트 *****************/
        let lessor = document.querySelector("#lessor");
        let lessee = document.querySelector("#lessee");
        let admin = document.querySelector("#admin");
        
        let userId = document.querySelector("#userId");
        let userPw = document.querySelector("#userPw");

        lessor.addEventListener('click',function(e){
        	e.preventDefault();
        	userId.value = "suheun";
        	userPw.value = "java";
        })
        
        lessee.addEventListener('click',function(e){
        	e.preventDefault();
        	userId.value = "uhi1000";
        	userPw.value = "java";
        })
        
        admin.addEventListener('click',function(e){
        	e.preventDefault();
        	userId.value = "admin";
        	userPw.value = "admin";
        })
        
        /***********************************************/
        
        
        let lBtn = document.querySelector("#lBtn");
        
        lBtn.addEventListener('click',function(e){
            e.preventDefault();

	        let id = document.forms[0].userId.value;
    	    let password = document.forms[0].userPw.value;
    	    
    		// 비동기 방식으로 보낼때 post방식으로 보내면서 header에 토큰값을 넣어줘야할 경우
    		// let headerName = $("meta[name='_csrf_header']").attr("content");
    		// let headerValue = $("meta[name='_csrf']").attr("content");
            
            url = `\${cPath}/login`
			console.log("url==>",url);
            
            let data = {
                'userId' : id,
                'userPw' : password
            }
             
        	fetch(url,{
        		method:'post',
        		headers:{
        			'Content-Type' : "application/x-www-form-urlencoded",
        			// [headerName]:headerValue
        		},
        		body : new URLSearchParams(data)
        	})
        	.then(response=>response.text())
			.then(data=>{
				console.log(data);
				location.href=`\${cPath}/`;
			})
			.catch(error=>{
				console.log("에러코드==>",error);
			})
        })
        </script>
    </section>
    <!-- end login section -->
