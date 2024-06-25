/*
Template Name: ClassiGrids - Classified Ads and Listing Website Template.
Author: GrayGrids
*/

(function () {

	"use strict";

	//===== Prealoder

	window.onload = function() {
		window.setTimeout(fadeout, 200);
	}


	function fadeout() {
		document.querySelector('.preloader').style.opacity = '0';
		document.querySelector('.preloader').style.display = 'none';
	}
//
//
//    /*=====================================
//    Sticky
//    ======================================= */
//    window.onscroll = function () {
//        var header_navbar = document.querySelector(".navbar-area");
//        var sticky = header_navbar.offsetTop;
//
//        if (window.pageYOffset > sticky) {
//            header_navbar.classList.add("sticky");
//        } else {
//            header_navbar.classList.remove("sticky");
//        }
//
//        // show or hide the back-top-top button
//        var backToTo = document.querySelector(".scroll-top");
//        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
//            backToTo.style.display = "flex";
//        } else {
//            backToTo.style.display = "none";
//        }
//    };
//
//    //===== Mobile-menu-btn
//	let navbarToggler = document.querySelector(".mobile-menu-btn");
//	navbarToggler.addEventListener('click', function () {
//		navbarToggler.classList.toggle("active");
//	});
//    
//    // WOW active
//    new WOW().init();


    
})();


// ===header의 마이페이지 드롭다운 -요한- === //
var dropdown = document.querySelector(".dropdown_bar");
var dropdownContent = document.querySelector(".dropdown_content");
var drop_icon1 = document.querySelector(".drop_icon1");
var drop_icon2 = document.querySelector(".drop_icon2");

//console.log("drop_icon1==>",drop_icon1);
//console.log("drop_icon2==>",drop_icon2);

dropdown.addEventListener("click", function() {
  if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
      drop_icon1.style.display = "inline-flex";
      drop_icon2.style.display = "none";
  } else {
      dropdownContent.style.display = "block";
      drop_icon1.style.display = "none";
      drop_icon2.style.display = "inline-flex";
  }
});

// ===header의 마이페이지 드롭다운 END -요한- === //


// === 로그아웃 스크립트 === //
function dorpdownLogout(){
	console.log("클릭됫다.");
	Swal.fire({
        title: '로그아웃 하시겠습니까?',
        text: '',
        icon: 'warning',
        showCancelButton: true, 
        confirmButtonColor: '#6528b5', 
        confirmButtonText: '로그아웃', 
        cancelButtonText: '취소',
    })
    .then(result => {
        if (result.isConfirmed) { 
			location.href=`${cPath}/logout`;
        }
    });
}

// === 마이 페이지 스크립트 === //
function dorpdownMypage(){
	
	(async () => {
    const { value: getPass } = await Swal.fire({
        title: '비밀번호를 입력하세요.',
        text: '',
        input: 'password',
        inputPlaceholder: '비밀번호 입력...'
    })

    // 이후 처리되는 내용.
    if (getPass) {
        //Swal.fire(`들어온 패스워드 값: ${getPass}`)
		//console.log(`${getPass}`);
		
		let url = `${cPath}/mypage/passCk`;
		
		console.log("url==>",url);
		data = {
			userPw : `${getPass}`
		}
		
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
			if(data == "fail"){
				Swal.fire({
					title: '비밀번호가 일치하지 않습니다.',
					text: '',
					icon: 'success',
					confirmButtonColor: '#6528b5'
				}).then(result => {
					location.href = cPath+"/index";
				});
			}
			if(data == "ok"){
				location.href = cPath+"/mypage";
			}
		})
    }
})()
}
// === 마이 페이지 스크립트 END === //


