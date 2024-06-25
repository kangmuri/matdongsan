<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>WebSocket Chat</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/animate.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/classigrids-full/Template Main/assets/css/dummy.css" />
    <style>
        .allUsersList{
  width: 300px;
  margin: 20px;
}
.allUsersList .card-header{
  background: #683db8;
  color: #FFF;
  padding: 10px;
}
.allUsersList .image img{
  border-radius: 16px;
}
.usersChatList{
  position: absolute;
  width: 250px;
  bottom: 0;
  margin-bottom: 0;
  right: 360px;
}
.show{
  display: block;
}
.thumb-user-list{
  display: none;
}
.thumb-user-list .image img{
  border-radius: 30px;
}
.usersChatList .card-header{
  background: #683db8;
  font-size: 13px;
}
.chatBox{
  position: absolute;
  bottom: 0;
  right: 0;
  width: 300px;
  margin: 40px;
  margin-bottom: 0;
  font-size: 13px;
}
.chat-content{
  overflow: auto;
  height: 300px;
}
.chatBox .card{
  border-radius: 4px;
}
.chatBox .card-header{
  background: #683db8;
}
.header-title{
  height: 50px;
}
.card-header-title i{
  font-size: 10px;
  color: #32e4cd;
  margin-right: 6px;
}
.card-header .card-header-title{
  color: #FFF;
}
.chat-content small{
  margin: 0;
}
.chat-content p{
  background: #ecf1f8;
  padding: 10px;
  border-radius: 8px;
  margin-bottom: 0;
}
.my-content .media-content{
  width: 80%;
}
.my-content .message{
  float: right;
  background: #683db8;
  color: #FFF;
  text-align: right;
  padding: 10px;
  margin-bottom: 4px;
  font-size: 13px;
}
.my-content .chat-content small{
  float: right;
}
.my-content small{
  display: block;
  float: right;
  width: 100%;
  text-align: right;
}
.chat-textarea{
  font-size: 14px;
  padding: 8px;
  height: 40px;
  width: 100%;
  border: none;
  overflow: auto;
  outline: none;

  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  resize: none;
}
.chat-message-group{
  
}
.chat-message-group .chat-thumb{
  float: left;
  width: 20%;
}
.chat-message-group .chat-messages{
  float: left;
  width: 80%;
  margin-bottom: 20px;
}
.chat-message-group .message{
  float: left;
  padding: 10px;
  background: #ecf1f8;
  font-size: 13px;
  border-radius: 5px;
  margin-bottom: 3px;
}
.chat-messages .from{
  float: left;
  display: block;
  width: 100%;
  text-align: left;
  font-size: 11px;
}
.chat-thumb img{
  border-radius: 40px;
}
.writer-user .chat-messages{
  float: right;
  width: 100%;
}
.writer-user .chat-messages .message{
  float: right;
  background: #683db8;
  color: #FFF;
}
.writer-user .chat-messages .from{
  float: left;
  display: block;
  width: 100%;
  text-align: right;
}
.chat-message-group .typing{
  float: left;
}
.chatBox .card-header-icon i{
  color: #FFF;
  font-size: 13px;
}
/* CSSS */
.outside-box{
  height: 100px;
  background: #F8C;
  width: 200px;
  margin: 20px;
  overflow: auto;
}
.outside-box .content-insider{
  height: 300px;
  background: #C9C;
}
/* CSS Spinner */
.spinner {
  margin: 0 30px;
  width: 70px;
  text-align: center;
}

.spinner > div {
  width: 4px;
  height: 4px;
  background-color: #888;

  border-radius: 100%;
  display: inline-block;
  -webkit-animation: sk-bouncedelay 1.4s infinite ease-in-out both;
  animation: sk-bouncedelay 1.4s infinite ease-in-out both;
}

.spinner .bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}

.spinner .bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}

@-webkit-keyframes sk-bouncedelay {
  0%, 80%, 100% { -webkit-transform: scale(0) }
  40% { -webkit-transform: scale(1.0) }
}

@keyframes sk-bouncedelay {
  0%, 80%, 100% { 
    -webkit-transform: scale(0);
    transform: scale(0);
  } 40% { 
    -webkit-transform: scale(1.0);
    transform: scale(1.0);
  }
}
/* EmojiBox */
.emojiBox{
  width: 150px;
  margin: 30px;
}
.emojiBox .box{
  height: 100px;
  padding: 4px;
}
/* */
.card-header-title img{
  border-radius: 40px;
}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        var stompClient = null;
        let roomId = null;
        function connect() {
        	
            var socket = new SockJS(`${pageContext.request.contextPath}/ws`);
            stompClient = Stomp.over(socket);

            stompClient.connect({}, function (frame) {
                console.log('Connected: ' + frame);
                    
                // 채팅방 구독 요청 받는 주소
                stompClient.subscribe('/user/queue/chatRequest', function (message) {
                    
                    roomId = message.body;
                    console.log('Chat room ID received: ' + roomId);

                    // 해당 채팅방 구독
                    stompClient.subscribe('/chat/' + roomId, function (message) {
                        showMessage(JSON.parse(message.body));
                    });
                });
            });
        }

        function requestChat() {
            var sender = $("#name").val();
            var receiver = $("#receiver").val();

            $.ajax({
                url : `${pageContext.request.contextPath}/requestChat`,
                method : 'post',
                dataType : 'json',
                data : { sender: sender, receiver: receiver },
                success : function(data) {
                    roomId = data;
                    console.log('Chat room ID created: ' + roomId);

                    // 채팅방 구독
                    stompClient.subscribe('/chat/' + roomId, function (message) {
                        showMessage(JSON.parse(message.body));
                    });
                }
            });
        }

       // 메시지 보내기
        function sendMessage() {
            var name = $("#name").val();
            var content = $("#message").val();
            var receiver = $("#receiver").val();
            var messageContent = $('#message').val();
        
            console.log("send Room ID ==> ", roomId);
            if (messageContent && stompClient) {
                var chatMessage = {
                    roomId : roomId,
                    sender: name,
                    receiver: receiver,
                    content: messageContent,
                    type: 'CHAT'
                };
                stompClient.send("/send/chat/" + roomId, {}, JSON.stringify(chatMessage));
                $('#message').val('');
            }
        }

        //메시지 보여주기
        function showMessage(message) {
            var messageElement = $('<li>').text(message.sender + ": " + message.content);
            $('#messages').append(messageElement);
        }

        $(function () {
            $("form").on('submit', function (e) {
                e.preventDefault();
            });
            $("#connect").click(function() { connect(); });
            $("#requestChat").click(function() { requestChat(); });
            $("#send").click(function() { sendMessage(); });
        });

    </script>
</head>
<body>
	${sessionScope }
     <form>
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" autocomplete="off"/>
        </div>
        <div>
            <label for="receiver">Receiver:</label>
            <input type="text" id="receiver" name="receiver" autocomplete="off"/>
        </div>
        <div>
            <label for="message">Message:</label>
            <input type="text" id="message" name="message" autocomplete="off"/>
        </div>
        <button id="connect">Connect</button>
        <button id="requestChat">requestChat</button>
        <button id="send">Send</button>
    </form>
    <table id="messages">
        <tr>
            <th>Messages</th>
        </tr>
    </table>
    
   
</body>
</html>