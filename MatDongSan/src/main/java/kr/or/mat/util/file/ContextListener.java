package kr.or.mat.util.file;

import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
public class ContextListener {
	
	@EventListener(ContextRefreshedEvent.class)
	public void sampleListener(ContextRefreshedEvent event) {
		//현재 이벤트 발생 타겟
		WebApplicationContext applicationContext = (WebApplicationContext) event.getApplicationContext();
		
		//이벤트가 발생한 위치를 찾기
		
		//하위 컨데이너에서 파일업로드 이벤트가 발생하면 디렉토리 생성 클래스 생성해주기
		
	}
}
