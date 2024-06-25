package kr.or.mat.room.exception;

/**
 * 
 * @author Seongmin Park
 *	작성내용 : 매물등록로직을 처리하기위한 커스텀 예외
 *	작성일 : 24.05.19
 */
public class RoomProcessException extends RuntimeException{
	public RoomProcessException(String message) {
        super(message);
    }

    public RoomProcessException(String message, Throwable cause) {
        super(message, cause);
    }
}
