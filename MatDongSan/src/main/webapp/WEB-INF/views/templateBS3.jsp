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
</head>

<body>
<script type="text/javascript">
	var cPath = "${pageContext.request.contextPath}";
</script>
  <main>
  <!-- ======= Header ======= -->

  <tiles:insertAttribute name="header3" />
  
  <!-- End Header -->

  
  
  <!-- End Sidebar-->

 
	
	<tiles:insertAttribute name="content" />
<%-- 	<tiles:insertAttribute name="chatting" /> --%>
 
  

  </main>
  <!-- ======= Footer ======= -->
  	
  	<tiles:insertAttribute name="footer3" />
  

  <tiles:insertAttribute name="postScript3" />
</body>
<script>
//======================= 프로필 이미지, ID 출력 스크립트========================//
let imgbackup = "";
$(function(){
	let profileData = { 
		userNo : `${principal.userNo}`,
		unityAtchmnflNo : `${principal.unityAtchmnflNo}`
  	};
	let urlSP = new URLSearchParams(profileData);
	let profileUrl = `${pageContext.request.contextPath}/myAccount?`+urlSP;
	
	async function yohan(){
	    const response = await fetch(profileUrl);
	    const data = await response.json();

	    imgbackup = data.unityAtchmnflNo;
	    
	    //헤더 프로필
	    let authId = document.querySelector("#authId");
	    let authImg = document.querySelector("#authImg");
	    authId.innerHTML = data.userId;
	    
	    //사이드바 프로필
	    let authImg1 = document.querySelector("#authImg1");
	    let authId1 = document.querySelector("#authId1");
	    let authNm1 = document.querySelector("#authNm1");
		if(authImg1 && authNm1){
		    authId1.innerHTML = "@"+data.userId;
		    authNm1.innerHTML = data.userNm;
		}

	    //마이페이지 프로필
	    let MyImg = document.querySelector("#MyImg");
	    let userNm = document.querySelector("#userNm");
	    let userMbtlnum = document.querySelector("#userMbtlnum");
	    let userEmail = document.querySelector("#userEmail");
		if(userMbtlnum && userMbtlnum && userEmail){
			userNm.value = data.userNm;
			userMbtlnum.value = data.userMbtlnum;
			userEmail.value = data.userEmail;
		}
	    
	    //이미지가 존재할 경우에만 이미지 삽입
		if(data.webPath && authImg != null){
			authImg.src = `${pageContext.request.contextPath}\${data.webPath}`
		}
		if(data.webPath && authImg1 != null){
			authImg1.src = `${pageContext.request.contextPath}\${data.webPath}`
		}
		if(data.webPath && MyImg != null){
	   		MyImg.src = `${pageContext.request.contextPath}\${data.webPath}`
		}
	}
	yohan();
})
//===================== 프로필 이미지, ID 출력 스크립트 END======================//
</script>
</html>