/**
 * 채팅 서비스 스크립트
 */

    var stompClient = null;
    let currentChat = null;
	let roomNo = [];
    //let roomId = null;
    function connect() {
    	
        var socket = new SockJS(`${cPath}/ws`);
        stompClient = Stomp.over(socket);

        stompClient.connect({}, function (frame) {
            console.log('Connected: ' + frame);
                
            // 채팅방 구독 요청 받는 주소
            stompClient.subscribe('/user/queue/chatRequest', function (message) {
                
                roomId = message.body.chttRoomNo;
                console.log('Chat room ID received: ' + roomId);
				// 중복된 채팅방 구독을 방지하기 위해 roomNo 배열에 roomId가 없는 경우에만 추가
            	if (!roomNo.includes(roomId)) {
                	roomNo.push(roomId);
                
	                // 해당 채팅방 구독
	                stompClient.subscribe('/chat/' + roomId, function (message) {
	                    showMessage(JSON.parse(message.body));
	                });
            	}
			});
        });
    }

    function requestChat(userNo) {
        return new Promise((resolve, reject) => {
            var receiver = userNo;
            let roomId = null;
            console.log(userNo);
            let data = {guestNo : receiver};
        
    
            $.ajax({
                url : `${cPath}/requestChat`,
                type : 'POST',
                async: false ,
                dataType : 'json',
                contentType: "application/json;charset=UTF-8",
                data : JSON.stringify(data),
                success : function(data) {

                    console.log(data)
                    
                    roomId = data.chttRoomNo;
                    console.log('Chat room ID created: ' + roomId);
					// 중복된 채팅방 구독을 방지하기 위해 roomNo 배열에 roomId가 없는 경우에만 추가
					if (!roomNo.includes(roomId)) {
                		roomNo.push(roomId);
						// 채팅방 구독
	                    stompClient.subscribe('/chat/' + roomId, function (message) {
	                        showMessage(JSON.parse(message.body));
	                    });
					}
                    

                    resolve(roomId);
                },
                error : function(error) {
                    reject(error);
                }
            });

        });
        
    }

   // 메시지 보내기
    function sendMessage() {

        var content = $("input[name=reply]").val();
        var receiver =  $('.main-content').data("guestId");
        var roomId = $('.chat').data('roomId');
    
        console.log("send Room ID ==> ", roomId);
        if (content && stompClient) {
            var chatMessage = {
                roomId : roomId,
                receiver: receiver,
                content: content,
                type: 'CHAT'
            };
            stompClient.send("/send/chat/" + roomId, {}, JSON.stringify(chatMessage));
            $("input[name=reply]").val('');
        }
    }

    //메시지 보여주기
    function showMessage(message) {
        let today = new Date();
        let liClass = null;

        if(message.receiver == $('.main-content').data("guestId")) liClass = "left";
        else liClass = "right";

        var messageLi = $('<li>').addClass(liClass);
        var messageP = $('<p>').addClass("text").text(message.content);
        var messageSpan = $('<span>').addClass('time').text(today.getHours() + ':' + today.getMinutes());
        

        messageP.append(messageSpan);
        messageLi.append(messageP);

        $('.single-chat-head').append(messageLi);

 		// 새 메시지로 포커스를 이동
	    messageLi[0].scrollIntoView({ behavior: 'smooth', block: 'end' });

		let chatLog = $('.chat-list>ul').html();
        localStorage.setItem($('.chat').data('roomId'), chatLog);
    }


    //상담일정 예약 
    function requestVisitSchedule() {
        let dataInput = document.forms['visitForm'].schdulBgnde;

        flatpickr(dataInput, {
            dateFormat: 'Y-m-d H:i',
            enableTime: true,
             minDate: 'today',
            defaultDate: 'today',
            locale: 'ko',
            onChange: handleDateChange, // 날짜 선택 이벤트 핸들러 등록
        });
    }

    function handleDateChange(selectedDates, dateStr, instance) {
    }

    function visitSub() {
        let inputForm = document.forms['visitForm'];
        inputForm.chttRoomNo.value = $('.chat').data('roomId');
        let form = new FormData(inputForm);
        let url = `${cPath}/requestVisit`;
        $.ajax({
            url : url,
            type : "post",
            data : form,
            dataType : 'json',
            contentType: false, 
            processData: false,
            success : function(data) {
                if(data.success == 'success') {
                    Swal.fire({
                        title: "등록완료",
                        text: "일정등록이 완료되었습니다.",
                        icon: "success"
                    }).then(function(result) {
                        if(result) {
                            $(".btn-close").click();
                        }
                    })
                }else {
                    Swal.fire({
                        title: "등록실패",
                        text: "일정등록에 실패했습니다.",
                        icon: "error"
                    }).then(function(result) {
                        if(result) {
                            $(".btn-close").click();
                        }
                    })
                }
            },
            error : function(error) {
                Swal.fire({
                    title: "등록실패",
                    text: "일정등록에 실패했습니다.",
                    icon: "error"
                }).then(function(result) {
                    if(result) {
                        $(".btn-close").click();
                    }
                })
            }

        })
    }


    $(function () {
        $("form").on('submit', function (e) {
            e.preventDefault();
        });
        //$("#connect").click(function() { connect(); });
        //DM받는 채널 구독
        connect();
        //$("#requestChat").click(function() { requestChat(); });
        $(".reply-btn").click(function() { sendMessage(); });
    });