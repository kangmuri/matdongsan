/**
 * 회원가입 form 스크립트파일
 * 
 */
const yhForm = document.forms[0];
	yhForm.onsubmit =  function(e) {
		e.preventDefault(); 
		let data = {
			userNm : yhForm.userNm.value,
			userId : yhForm.userId.value,
			userPw : yhForm.userPw.value,
			userEmail : yhForm.userEmail.value,
			userMbtlnum : yhForm.userMbtlnum.value,
			userBir : yhForm.userAge.value,
			userSexdstn : yhForm.userSexdstn.value
		}
		console.log("data ===> ",data);
		
		// 동기 방식으로 보낼때 form태그 안쪽에 토큰을 넣을경우
		$("meta[name='_csrf_parameter']").attr("content") ;

		// 비동기 방식으로 보낼때 post방식으로 보내면서 header에 토큰값을 넣어줘야할 경우
		let headerName = $("meta[name='_csrf_header']").attr("content");
		let headerValue = $("meta[name='_csrf']").attr("content");
		
		let url = cPath+"/signup";
		$.ajax({
			url: url,
			type: 'POST',
			headers : { 
				[headerName]:headerValue
			},
			contentType:"application/json",
			data: JSON.stringify(data),
			dataType: 'text',
			success: function(resp) {
				console.log("반환값 ===> ",resp);
				// location.href = cPath+"/index";
				if(resp == "success"){
					Swal.fire({
						title: '회원가입이 완료되었습니다.',
						text: '',
						icon: 'success'
					 }).then(result => {
						location.href = cPath+"/login";
					 });
				}
				if(resp == "PKDUPLICATED"){
					alert("중복된 ID입니다.");
					location.href = cPath+"/signup";
				}
				if(resp == "fail"){
					alert("중복된 ID입니다.");
					location.href = cPath+"/signup";
				}
			},
			error: function(xhr){
				console.log("오류 코드 : ",xhr.status);
			}
		});
	};

	/********* 비동기 id 중복체크 여부판단 이벤트 *********/
	let id = document.querySelector("#userId");
	$("input[name='userId']").keyup(function(){
		checkId(id.value);
	})

	function checkId(id){
		// console.log("들어온 id값",id); // 확인
		let userID = { userId : id};

		// 비동기 방식으로 보낼때 post방식으로 보내면서 header에 토큰값을 넣어줘야할 경우
		let headerName = $("meta[name='_csrf_header']").attr("content");
		let headerValue = $("meta[name='_csrf']").attr("content");

		$.ajax({
			url : cPath+'/signup/idcheck',
			method: 'post',
			headers : {
				[headerName]:headerValue
			},
			data : JSON.stringify(userID),
			contentType : "application/json;charset=UTF-8",
			success:function(resp){
				if(resp == "ok"){
					$("#idCk").css("color", "green");
					$("#idCk").html("사용 가능한 ID입니다.");
				}
				if(resp == "fail"){
					$("#idCk").css("color", "red");
					$("#idCk").html("중복된 ID입니다.");
				}
				// console.log(resp);
			},
			error:function(xhr){
				console.log("오류코드 : ",xhr.status);
			},
			dataType:'text'
		})
	}
	/******************************************************/


	/********* 비동기 비밀번호 정규식 이벤트 *********/
	$("input[name='userPw']").keyup(function() {
		const passRegex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
		const passValue = $(this).val();
		console.log("정규식 검사결과 : ",passRegex.test(passValue));
		if (passRegex.test(passValue)) {
			$("#pwError").css("color", "green");
			$("#pwError").html("사용 가능한 비밀번호입니다.");
		}else {
			$("#pwError").css("color", "red");
			$("#pwError").html("비밀번호 형식이 잘못되었습니다. ex)영문 숫자 특수기호 조합 8자리 이상");
		}
		if(passValue == ""){
			$("#pwError").html("");
		}
	});
	/****************************************/
	
	
	/********* 비동기 이메일 정규식 이벤트 *********/
	$("input[name='userEmail']").keyup(function() {
		const emailRegex = /[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]/;
		const emailValue = $(this).val();
		console.log("정규식 검사결과 : ",emailRegex.test(emailValue));
		if (emailRegex.test(emailValue)) {
			$("#emailError").css("color", "green");
			$("#emailError").html("사용 가능한 이메일입니다.");
		} else {
			$("#emailError").css("color", "red");
			$("#emailError").html("이메일 형식이 잘못되었습니다.");
		}
		if(emailValue == ""){
			$("#emailError").html("");
		}
	});
	/****************************************/


	/********** 비동기 전화번호 정규식 이벤트 ***************/
	$("input[name='userMbtlnum']").keyup(function() {
		const telRegex = /[0-9]{3}-[0-9]{4}-[0-9]{4}/;
		const telValue = $(this).val();
		if (telRegex.test(telValue)) {
			$("#telError").css("color", "green");
			$("#telError").html("사용 가능한 전화번호 입니다.");
		} else {
			$("#telError").css("color", "red");
			$("#telError").html("전화번호 형식이 잘못되었습니다. ex)000-0000-0000");
		}
		if(telValue == ""){
			$("#telError").html("");
		}
	});
	/***********************************************/
	
	
	/****************** 자동입력 이벤트 *****************/
	let userNm = document.querySelector("#userNm");
	let userId = document.querySelector("#userId");
	let userPw = document.querySelector("#userPw");
	let userEmail = document.querySelector("#userEmail");
	let userMbtlnum = document.querySelector("#userMbtlnum");
	let userAge = document.querySelector("#userAge");
	console.log("userNm ==>",userNm);
	
	let speedUp = document.querySelector("#speedUp");
	speedUp.addEventListener('click',function(e){
		e.preventDefault();
		console.log("a태그 ==>",speedUp);
		
		userNm.value = "황정민";
		userId.value = "jungmin12";
		userPw.value = "*Hyh123456";
		userEmail.value = "fmfmfmgk@naver.com";
		userMbtlnum.value = "010-4978-2267";
		userAge.value = "2002-10-11";
	})
	/***********************************************/



