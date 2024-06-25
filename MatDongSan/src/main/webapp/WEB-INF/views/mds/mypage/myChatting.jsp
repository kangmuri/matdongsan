<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>

    
    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs" style="height: 204px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">채팅</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li>채팅</li>
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
                <div class="col-lg-3 col-md-4 col-12">
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
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="main-content">
                        <div class="dashboard-block mt-0 pb-0">
                            <h3 class="block-title mb-0">채팅</h3>
                            <!-- Start Messages Body -->
                            <div class="messages-body">
                                <div class="row">
                                    <div class="col-lg-5 col-12">
                                        <!-- Start User List -->
                                        <div class="user-list">
                                            <ul>
                
                                            </ul>
                                        </div>
                                        <!-- End User List -->
                                    </div>
                                    <div class="col-lg-7 col-12 chat">
                                        <!-- Start Chat List -->
                                        <div class="chat-list">
                                            <ul class="single-chat-head">

                                            </ul>
                                            <div class="reply-block">
                                                <ul class="add-media-list">
                                                    <li><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#schedule"><i class="lni lni-pencil-alt"></i></a></li>    
                                                </ul>
                                                <input name="reply" type="text" placeholder="메세지를 입력해주세요...">
                                                <button class="reply-btn"><img
                                                        src="${pageContext.request.contextPath}\resources\classigrids-full\Template Main\assets\images\messages\send.svg" alt="#"></button>
                                            </div>
                                        </div>
                                        <!-- End Chat List -->
                                    </div>
                                </div>
                            </div>
                            <!-- End Messages Body -->
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="schedule" tabindex="-1" aria-labelledby="schedule" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title">방문 예약</h5>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                          <form id="visitForm">
                            <div class="mb-3">
                                <label for="datepicker" class="form-label">방문 일</label>
                                <input type="text" id="datepicker" name="schdulBgnde" placeholder="날짜 선택" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label for="schdulSj" class="form-label">방문 목적</label>
                                <input type="text" id="schdulSj" name="schdulSj" placeholder="방문 목적" class="form-control">
                            </div>
                            <input type="hidden" name="chttRoomNo" value="">
                          </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                          <button type="button" class="btn btn-primary" id="visitSub">방문예약 신청</button>
                        </div>
                      </div>
                    </div>
                  </div>

            </div>
        </div>
    </section>
    <!-- End Dashboard Section -->
    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script> -->
<!-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script> -->
<%--     <script src="${pageContext.request.contextPath }/resources/js/app/chat/chat.js"></script> --%>

    <script>
    	$(function() {

            //상담일정 달력
            requestVisitSchedule();
            $('#visitSub').on('click', visitSub);

            
    		//채팅방 불러오기
    		getChatList();
    		let guest = null;
            let guestId = null;
            let chatDiv = $('.chat');

            //채팅방 리스트 셀렉팅
            let userListEl = $('.user-list>ul').on('click', 'li',function() {
                guestId = $(this).data('guestId');
                console.log("ㅎㅇㅎㅇ", $(this))
                console.log("ㅇㅎㅇㅎㅇㅎㅇㅎ",guestId);
                requestChat(guestId).then(roomId => {
                    console.log(roomId)
                    if(chatDiv.data('roomId') != roomId) {
                        //방 아이디 저장
                        chatDiv.data('roomId',roomId);
                    }
                    console.log( chatDiv.data('roomId'));
                    //상대 저장
                    $('.main-content').data('guestId',guestId);
                    //채팅방 만들기
                    newChat(roomId);
                    }).catch(error => {
                        console.log(error)
                        Swal.fire({
                            icon: 'error',
                            title: '채팅방 만들기 실패!.',
                            text: "로그인 해주세요"
                        })
                    });
                });
            
    		function getChatList() {
    			let url = `\${cPath }/requestList`;
    			$.ajax({
    				url : url,
    				type : 'get',
    				dataType : 'json',
    				success : function(res) {
    					
    					
                        let userId = `${principal.userNo}`;
                        let src = 'https://via.placeholder.com/300x300';
                        for(let data of res) {
                            
                            if(userId != data.guestNo) {
                            	guestId = data.guestNo;
                            	guest = data.guestNm;
                                if(data.guestWebPath) src = `\${cPath}\${data.guestWebPath}`;
                            }
                            else {
                            	guestId = data.hostNo;
                            	guest = data.hostNm;
                                if(data.hostWebPath) src = `\${cPath}\${data.hostWebPath}`;
                            }

							
                            let $li = $('<li></li>');
                            $li.data('guestId',guestId);
                            let $a = $('<a></a>').attr('href', 'javascript:void(0)');
                            let $div = $('<div></div>').addClass('image');
                            let $img = $('<img>').attr({
                                src: src,
                                alt: '#'
                            });
                            let $username = $('<span></span>').addClass('username').text(guest);
                            
                            
                            // 엘리먼트 넣기
                            $div.append($img);

                            $a.append($div).append($username);
                            $li.append($a);

                            userListEl.append($li);

                            
                        }
                        
    				},
    				error : function(error) {
    					console.log(error);
    				}
    				
    			})
    		}


            function newChat(roomId) {
                // 현재 채팅방 로그를 로컬 스토리지에 저장
                if (currentChat) {
                    let chatLog = $('.chat-list>ul').html();
                    localStorage.setItem(currentChat, chatLog);
                }

                // 새로운 채팅방을 초기화
                currentChat = roomId;
                //$('.main-content').data('guest',guest);

                // 로컬 스토리지에서 채팅 로그 불러오기
                const savedLog = localStorage.getItem(currentChat);
                if (savedLog) {
                    $('.chat-list>ul').html(savedLog);
                } else {
                    $('.chat-list>ul').empty();
                }
            }      
    	});

    

        
        

    </script>
</body>

</html>