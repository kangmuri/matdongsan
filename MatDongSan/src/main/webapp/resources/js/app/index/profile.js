/**
 * 프로필 이미지,정보를 조회하는 스크립트
 */

//======================= 프로필 이미지, ID 출력 스크립트========================//
let profileData = { userNo : `${principal.userNo}`};
let urlSP = new URLSearchParams(profileData);
let profileUrl = `${pageContext.request.contextPath}/myAccount?`+urlSP;

async function yohan(){
    const response = await fetch(profileUrl);
    const data = await response.json();
    console.log("data=>",profileData);
    
    let authId = document.querySelector("#authId");
    let authImg = document.querySelector("#authImg");
    authId.innerHTML = "@"+data.userId;
    console.log("이미지 url==>",`${pageContext.request.contextPath}\${data.webPath}`);
    authImg.src = `${pageContext.request.contextPath}\${data.webPath}`
}
yohan();
//===================== 프로필 이미지, ID 출력 스크립트 END======================//