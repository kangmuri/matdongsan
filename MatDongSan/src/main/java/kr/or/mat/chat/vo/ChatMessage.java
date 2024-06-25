package kr.or.mat.chat.vo;

import lombok.Data;

@Data
public class ChatMessage {
    private String roomid;
    private String sender;
    private String receiver;
    private String content;
    private MessageType type;
    
    public enum MessageType {
        CHAT,
        JOIN,
        LEAVE
    }

}
