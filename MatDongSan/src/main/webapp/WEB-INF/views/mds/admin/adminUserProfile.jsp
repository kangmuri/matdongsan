<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Profile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4" style="width: 273px;">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
				<c:if test="${empty userVO.webPath}">
	              <img src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="Profile" class="rounded-circle">
				</c:if>
				<c:if test="${not empty userVO.webPath}">
	              <img src="${pageContext.request.contextPath}${userVO.webPath}" alt="Profile" class="rounded-circle">
				</c:if>
              <h2>${userVO.userNm}</h2>
              <h3>@${userVO.userId}</h3>
              <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>

        </div>

        <div class="col-xl-8" style="width: 700px;">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">기본정보</button>
                </li>

<!--                 <li class="nav-item"> -->
<!--                   <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button> -->
<!--                 </li> -->

<!--                 <li class="nav-item"> -->
<!--                   <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Settings</button> -->
<!--                 </li> -->

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">회원 탈퇴</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title">About</h5>
                  <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>

                  <h5 class="card-title">Profile Details</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Full Name</div>
                    <div class="col-lg-9 col-md-8">${userVO.userNm}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">UserId</div>
                    <div class="col-lg-9 col-md-8">${userVO.userId}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Email</div>
                    <div class="col-lg-9 col-md-8">${userVO.userEmail}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Gender</div>
                    <div class="col-lg-9 col-md-8">${userVO.userSexdstn}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Bir</div>
                    <div class="col-lg-9 col-md-8">${userVO.userBir}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Phone</div>
                    <div class="col-lg-9 col-md-8">${userVO.userMbtlnum}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">가입일자</div>
                    <div class="col-lg-9 col-md-8">${userVO.userCreatOn}</div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                </div>
                <div class="tab-pane fade pt-3" id="profile-change-password">
                  <!-- Change Password Form -->
                  <form>
                    <div class="text-center">
                      <button type="submit" id="delBtn" class="btn btn-danger" style=" width: 159px;">회원 탈퇴</button>
                    </div>
                  </form><!-- End Change Password Form -->
                </div>
              </div><!-- End Bordered Tabs -->
            </div>
          </div>
        </div>
      </div>
    </section>
</main>
<script>
let dBtn = document.querySelector("#delBtn");
dBtn.addEventListener('click',function(e){
	e.preventDefault();
	Swal.fire({
		title: '정말 삭제하시겠습니까?',
		text: '',
		icon: 'warning',
		showCancelButton: true, 
		confirmButtonColor: '#6528b5', 
		confirmButtonText: '삭제', 
		cancelButtonText: '취소',
	})
	.then(result => {
		if (result.isConfirmed) { 
			console.log("삭제가 완료되었습니다.");
			fDel();
		}
	});
})

function fDel(){
	let data = {
		userNo : `${userVO.userNo}`
	}
	console.log("userNo==>",data);
	let url = `\${cPath}/adminUser/delete`;
	console.log("url==>",url);
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
				title: '삭제가 완료되었습니다.',
				text: '',
				icon: 'success',
				confirmButtonColor: '#6528b5'
			}).then(result => {
				console.log("삭제완료 알림.");
				location.href = cPath+"/adminUser";
			});
		}
	})
	.catch(error=>{
		console.log("error=>",error);
	})
}
</script>