<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>부동산 필수 시스템 맛동산</title>



  <tiles:insertAttribute name="preScript3" />
  
  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 7 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
 
</head>

<body>
<script type="text/javascript">
	var cPath = "${pageContext.request.contextPath}";
</script>
  <main>
  <!-- ======= Header ======= -->

  <tiles:insertAttribute name="header3" />
  
  <!-- End Header -->
  <tiles:insertAttribute name="searchFilter"/>
  
  
  <!-- End Sidebar-->

 
	
	<tiles:insertAttribute name="content" />
<%-- 	<tiles:insertAttribute name="chatting" /> --%>
 
  

  </main>

  <tiles:insertAttribute name="postScript3" />
</body>
<script>
//======================= 프로필 이미지, ID 출력 스크립트========================//
$(function(){
// 	console.log(`${principal}`);
	let profileData = { 
			userNo : `${principal.userNo}`,
			unityAtchmnflNo : `${principal.unityAtchmnflNo}`
	};
	let urlSP = new URLSearchParams(profileData);
	let profileUrl = `${pageContext.request.contextPath}/myAccount?`+urlSP;
// 	console.log(urlSP);
// 	console.log("profileUrl=>",profileUrl);
	
	async function yohan(){
	    const response = await fetch(profileUrl);
	    const data = await response.json();
// 	    console.log("data=>",data);
// 	    console.log("data=>",data.userNm);
	    
	    //헤더 프로필
	    let authId = document.querySelector("#authId");
// 	    console.log("authId==>",authId);
	    let authImg = document.querySelector("#authImg");
// 	    let authNm3 = document.querySelector("#authNm3");
	    authId.innerHTML = data.userId;
// 	    authNm3.innerHTML = data.userNm;
	    
// 	    //사이드바 프로필
// 	    let authId1 = document.querySelector("#authId1");
// 	    let authImg1 = document.querySelector("#authImg1");
// 	    let authNm1 = document.querySelector("#authNm1");
// // 	    console.log("authNm1==>",authNm1);
// 		if(authImg1 && authNm1){
// 		    authId1.innerHTML = "@"+data.userId;
// 		    authNm1.innerHTML = data.userNm;
// 		}

// 	    //마이페이지 프로필
// 	    let MyImg = document.querySelector("#MyImg");
// 	    let userNm = document.querySelector("#userNm");
// 	    let userMbtlnum = document.querySelector("#userMbtlnum");
// 	    let userEmail = document.querySelector("#userEmail");
// // 	    console.log("MyImg==>",MyImg);
// 		if(userMbtlnum && userMbtlnum && userEmail){
// 			userNm.value = data.userNm;
// 			userMbtlnum.value = data.userMbtlnum;
// 			userEmail.value = data.userEmail;
// 		}
	    
// 	    console.log(data.webPath);
	    //이미지가 존재할 경우에만 이미지 삽입
		if(data.webPath){
			authImg.src = `${pageContext.request.contextPath}\${data.webPath}`
// 			authImg1.src = `${pageContext.request.contextPath}\${data.webPath}`
// 	   		MyImg.src = `${pageContext.request.contextPath}\${data.webPath}`
		}
	}
	yohan();
})
//===================== 프로필 이미지, ID 출력 스크립트 END======================//
</script>
</html>