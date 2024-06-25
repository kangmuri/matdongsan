<%@ page language="java" contentType="text/html; charset=UTF-8" buffer="20kb"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>맛동산Hub | 관리를 한번에! 임대관리시스템</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <tiles:insertAttribute name="preScript" />
  
  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 7 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body data-context-path="${pageContext.request.contextPath }">
<script type="text/javascript">
	var cPath = "${pageContext.request.contextPath}";
</script>
  <!-- ======= Header ======= -->
  
  <tiles:insertAttribute name="header" />
  
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  
  <tiles:insertAttribute name="leftMenu" />
  
  <!-- End Sidebar-->

  <main id="main" class="main">
	
	<tiles:insertAttribute name="content" />
 
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  	
  	<tiles:insertAttribute name="footer" />
  
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <tiles:insertAttribute name="postScript" />
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
	
	async function yohan(){
	    const response = await fetch(profileUrl);
	    const data = await response.json();
		
	    console.log("data ==>",data);
	    imgbackup = data.unityAtchmnflNo;
	    
	    //헤더 프로필
	    let authId = document.querySelector("#authId");
	    let authImg = document.querySelector("#authImg");
	    authId.innerHTML = data.userId;
	    
	    //이미지가 존재할 경우에만 이미지 삽입
		if(data.webPath && authImg != null){
			authImg.src = `${pageContext.request.contextPath}\${data.webPath}`
		}
	}
	yohan();
})
//===================== 프로필 이미지, ID 출력 스크립트 END======================//
</script>
</html>