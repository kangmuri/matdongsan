package kr.or.mat.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.chat.service.ChatService;
import kr.or.mat.chat.vo.ChatMessage;
import kr.or.mat.chat.vo.ChattingRoomVO;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;
import kr.or.mat.login.vo.UserVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ChatController {
	
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	
	@Autowired
	private ChatService service;
	
	@GetMapping("/chatTest") 
	public String enterChatRoom() {
		return "mds/ChatTest";
	}
	
    @PostMapping("/requestChat")
    @ResponseBody
    public ChattingRoomVO requestChat(@RequestBody ChattingRoomVO chattingRoomVO, Authentication authentication) {
    	log.info("roomVo : {}",chattingRoomVO);
    	//로그인한 사용자 가져오기
    	UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
    	String userNo = userVOWrapper.getRealUser().getUserNo();
    	
    	chattingRoomVO.setHostNo(userNo);
    	
    	ChattingRoomVO chattingRoom = service.createChattingRoom(chattingRoomVO);
    	
       
        // 상담 요청을 받은 사용자에게 채팅방 ID를 전달
        messagingTemplate.convertAndSendToUser(chattingRoom.getGuestNo(), "/queue/chatRequest", chattingRoom);
        return chattingRoom;
    }
    
    @GetMapping("/requestList")
    @ResponseBody
    public List<ChattingRoomVO> requestList(Authentication authentication) {
    	UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
    	String userNo = userVOWrapper.getRealUser().getUserNo();
    	log.info("userId : {}", userNo);
    	ChattingRoomVO chattingRoomVO = new ChattingRoomVO();
    	chattingRoomVO.setHostNo(userNo);
    	List<ChattingRoomVO> chattingRoomList = service.retrieveChattingRoomList(chattingRoomVO);
    	
    	return chattingRoomList;
    	
    }
    
    @PostMapping("/requestVisit")
    @ResponseBody
    public Map<String, String> createVistitSchedue(@ModelAttribute ScheduleVO scheduleVO, Authentication authentication) {
    	Map<String, String> result = new HashMap<String, String>();
    	UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
    	String userNo = userVOWrapper.getRealUser().getUserNo();
    	
    	if(userNo.isEmpty() || userNo == null) {
    		result.put("success", "fail");
    		return result;
    	}
    	scheduleVO.setUserNo(userNo);
    	
    	log.info("{}", scheduleVO);
    	int cnt = service.createVisitSchedule(scheduleVO);    	
    	if(cnt > 0) {
    		result.put("success", "success");
    		return result;
    	}
    	else {
    		result.put("success", "fail");
    		return result;
    	}
    }
	
	@MessageMapping("/chat/{roomId}")
    public ChatMessage sendMessage(@DestinationVariable("roomId") String roomId, ChatMessage chatMessage) {
    	log.info("message : {}", chatMessage);
    	log.info("roomId : {}", roomId);
    	
    	messagingTemplate.convertAndSend("/chat/" + roomId, chatMessage);
        return chatMessage;
    }
    
    @MessageMapping("/chat/addUser")
    @SendTo("/user/queue/reply")
    public ChatMessage addUser(ChatMessage chatMessage) {
        chatMessage.setType(ChatMessage.MessageType.JOIN);
        chatMessage.setRoomid(UUID.randomUUID().toString());
        return chatMessage;
    }
    
    
}