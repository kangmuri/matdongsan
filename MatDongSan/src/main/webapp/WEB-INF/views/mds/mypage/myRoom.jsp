<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">매물관리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>매물관리</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Dashboard Section -->
    <section class="dashboard section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12 col-12">
                    <!-- Start Dashboard Sidebar -->
                    <div class="dashboard-sidebar">
                        <div class="user-image">
                            <img id="authImg1" src="https://api.dicebear.com/8.x/miniavs/svg?seed=Bailey" alt="https://via.placeholder.com/100x100">
                            <h3><div id="authNm1"></div>
                                <span><a href="javascript:void(0)" id="authId1"></a></span>
                            </h3>
                        </div>
                        <div class="dashboard-menu">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/mypage"><i class="lni lni-dashboard"></i> MyPage</a></li>
                                <li><a href="${pageContext.request.contextPath}/profile"><i class="lni lni-pencil-alt"></i> 내정보</a></li>
<%--                                 <li><a href="${pageContext.request.contextPath}/roomLike"><i class="lni lni-heart"></i> 찜목록</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/myContract"><i class="lni lni-circle-plus"></i> 계약관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/myRoom"><i class="lni lni-home"></i> 매물관리</a></li>
<%--                                 <li><a href="${pageContext.request.contextPath}/roomReport"><i class="lni lni-bolt-alt"></i> 허위매물</a></li> --%>
                                <li><a href="${pageContext.request.contextPath}/qna"><i class="lni lni-printer"></i> 1:1 문의</a></li>
                                <li><a href="${pageContext.request.contextPath}/myChatting"><i class="lni lni-envelope"></i> 채팅</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Dashboard Sidebar -->
                </div>
                <div class="col-lg-9 col-md-12 col-12">
                    <div class="main-content">
                        <div class="dashboard-block mt-0" style="margin-top: 0px;">
                            <h3 class="block-title">매물관리</h3>
                            <!-- Start Items Area -->
                            <div class="my-items">
                                <!-- Start List Title -->
                                <div class="item-list-title">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <p>매물정보</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12">
                                            <p>등록상태</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>등록일자</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12 align-right">
                                            <p>Action</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Title -->
                                <!-- Start Single List -->
                                <div id="roomListForm"></div>
                                <!-- End Single List -->
                                
                                <!-- Pagination & searchUI -->
                            <div style="display: flex; justify-content: space-between; margin: 10px;">
                               <div id="Qpaging"></div>
                                 
                           <div id="searchUI">
                                 <select name="searchType">
                                    <option value>전체</option>
                                    <option value="roomDetailDcSj">제목</option>
                                 </select>
                                 <input type="text" name="searchWord"/>
                              <button id="searchBtn">검색</button>
                           </div>
                         </div>
                         <!-- END Pagination & searchUI-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<form action="<c:url value='/qna'/>" id="searchForm">
   <input type="hidden" name="roomDetailDcSj"/>
   <input type="hidden" name="searchWord" />
   <input type="hidden" name="currentPage" />
</form>
<script>
   const paging = document.querySelector("#Qpaging");
//     let userNo = document.querySelector("#userNo").value;
   //====================== 페이징,검색 스크립트======================//
    $(function(){
      
//        페이징버튼을 클릭하면 클릭한 페이징 정보가 저장된후 searchForm을 submit하는 스크립트
      $(document).on("click", "[data-page]", function(){
         let page = $(this).data('page');
         searchForm.currentPage.value = page;
//          console.log("눌러서 저장된 페이지값==>",searchForm.currentPage.value);
         $searchForm.submit();
      });
      
//       searchForm이 submit이 되면 해당 이벤트를 중지시키고 페이징 정보를 비동기로 요청하는 스크립트
      const $searchForm = $("#searchForm").on('submit',function(e){
         e.preventDefault();
            var searchType = $("select[name='searchType']").val();
            var searchWord = $("input[name='searchWord']").val();
          
            // let data = searchForm.currentPage.value;

          let formData = new FormData();

            formData.append("currentPage",searchForm.currentPage.value);
            formData.append("searchType",searchType);
            formData.append("searchWord",searchWord);

            let params = new URLSearchParams(formData);
          
         // let url = cPath+"/qna?currentPage="+data;
            
         let url = cPath+"/myRoom?"+params;
//          console.log("url==>",url);
         
          fetch(url,{
              method:'get',
              headers:{
                  'Accept': 'application/json'
              }
          })
          .then(resp=>resp.json())
          .then(resp=>{
              items.innerHTML = "";
              resp.roomList.forEach(list => {
               items.innerHTML += gen(list);
              });
             paging.innerHTML = resp.pagingHTML;
          })
      });
      
      // searchBtn 을 클릭하면, searchUI 가 가진 모든 입력값을 searchForm 으로 복사하고, searchForm을 전송
       $("#searchBtn").on("click", function(event){
           // 검색 유형과 검색어를 가져옵니다.
          $searchForm.submit();
       });
       
       $("[name='pstSj']").val("${detailConditions.pstSj}");
    });   
   //==================== 페이징,검색 스크립트 END ====================//
    
//  console.log("url값===>",`\${cPath}/qna/update`);

    let items = document.querySelector("#roomListForm");
    const gen = (vo) =>{
        let date = vo.roomDelngDe.substr(0,10);
       console.log("vo값==>",vo);
        let divStr = "";
        divStr += ` <div class="single-item-list">
                     <div class="row align-items-center">
                        <div class="col-lg-5 col-md-5 col-12">
                            <div class="item-image">
                                <img src="${pageContext.request.contextPath}\${vo.webPath}" alt="#">
                                <div class="content">
                                    <h3 class="title"><a href="#">\${vo.roomDetailDcSj}</a></h3>
                                    <span class="price">\${vo.region1depthNm} \${vo.region2depthNm} \${vo.region3depthNm}</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-12">
                            <p>\${vo.roomDealingStts}</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>\${date}</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12 align-right">
                            <ul class="action-btn">`;
                                    if(vo.roomDealingStts == '검수완료') {
                                        divStr += `<li><a href="\${cPath}/contract/create/\${vo.roomDelngNo}"><i class="lni lni-pencil-alt"></i></a></li>`
                                    }
                                    
                                    
                                    divStr +=  `
                                <li><a href="${pageContext.request.contextPath}/myRoom/\${vo.roomDelngNo}"><i class="lni lni-eye"></i></a></li>
                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>`;
            
        return divStr;
    }
    
    let url = cPath+`/myRoom`;
    console.log("url==>",url);

    fetch(url,{
        method:'get',
        headers:{
            'Accept': 'application/json'
        }
    })
    .then(resp=>resp.json())
    .then(resp=>{
        // 방법1
//      items.innerHTML = resp.qnaVOList.map(gen).join("\n");
        // 방법2
        if(resp.roomList == ""){
        	items.innerHTML += `<p style="margin: 63px 63px 63px 300px; font-size: 25px;">등록된 매물이 없습니다.</P>`;
        }
        resp.roomList.forEach(list => {
//      여기에서 함수를 하나 생성해서 div태그로 값들을 생성해준다.
//       console.log("list값==>",list);
         items.innerHTML += gen(list);
        });
       paging.innerHTML = resp.pagingHTML;
    })
</script>
