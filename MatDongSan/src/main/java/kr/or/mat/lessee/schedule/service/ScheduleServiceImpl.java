package kr.or.mat.lessee.schedule.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.lessee.schedule.mapper.ScheduleMapper;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class ScheduleServiceImpl implements ScheduleService{
	
	private final ScheduleMapper mapper;
	
	@Override
	public int createSchedule(ScheduleVO schedule) {
		String userNo = schedule.getUsers().getUserNo();
		List<ScheduleVO> payDataList = mapper.selectPayDataLessorList(userNo);
		
//		 int totalInserted = 0;
//		 for (ScheduleVO payData : payDataList) {
//		        // 원래 스케줄 객체를 복사하거나 필요한 데이터를 설정
//		        ScheduleVO newSchedule = new ScheduleVO();
//		        newSchedule.setUserNo(payData.getUserNo());
//		        newSchedule.setSchdulSj(payData.getUsers().getCntrctList().get(0).getLesseeNo());
//		        newSchedule.setSchdulCn(payData.getUsers().getCntrctList().get(0).getLesseeNo());
//		        newSchedule.setSchdulBgnde(payData.getUsers().getCntrctList().get(0).getLesseeNo());
//		        newSchedule.setSchdulEndde(payData.getUsers().getCntrctList().get(0).getLesseeNo());
//		        newSchedule.setPayNo(payData.getUsers().getCntrctList().get(0).getPayDataList().get(0).getPayNo());
//
//		        // 스케줄 삽입
//		        totalInserted += cnt;
//		    }
//		 int cnt = mapper.insertSchedule(payDataList);
		return 1;
	}

	
	@Override
	public List<ScheduleVO> retriveScheduleList(String userNo) {
		// TODO Auto-generated method stub
		return mapper.selectScheduleList(userNo);
	}

	@Override
	public List<ScheduleVO> retriveScheduleLessorList(String userNo) {//임대인userNo
		List<ScheduleVO> payDataList = mapper.selectPayDataLessorList(userNo);//일정에 넣어줄 정보

		int cnt = 0;
         for (int i = 0; i < payDataList.size(); i++) {
        	 log.info("이거 확인{}", payDataList);
        	 ScheduleVO newSchedule = payDataList.get(i);
        	 log.info("로그인포영 {}", newSchedule);
        	 int check = mapper.selectPayDataCheck(newSchedule.getPayNo());
//        	 for (int j = 0; j < payDataList.get(i).getUsers().getCntrctList().size(); j++) {
        	 // payNo이 있을경우 insert x 중복체크
        	 if(check == 0) {
//        	 newSchedule.setPayNo(payDataList.get(i).getPayNo());
//        	 newSchedule.setSchdulSj(payDataList.get(i).getUsers().getCntrctList().get(j).getPayDataList().get(i).getBlNm());
//	         newSchedule.setSchdulCn(payDataList.get(i).getUsers().getCntrctList().get(j).getPayDataList().get(i).getBlNm());
//	         newSchedule.setSchdulBgnde(payDataList.get(i).getUsers().getCntrctList().get(j).getPayDataList().get(i).getDedtDe());
//	         newSchedule.setSchdulEndde(payDataList.get(i).getUsers().getCntrctList().get(j).getPayDataList().get(i).getDedtDe());
//	         newSchedule.setUserNo(payDataList.get(i).getUsers().getCntrctList().get(j).getLesseeNo());

//        	 log.info("날짜 확인 {}",payDataList.get(i).getUsers().getCntrctList().get(j).getPayDataList().get(i).getDedtDe());
        	 // 스케줄 데이터 삽입
        	 cnt = mapper.insertSchedule(newSchedule);
        	 //스케줄제목에 유저아이디랑 스케줄 제목을 합쳐서 보여주깅 
        	 }
//        	 }
        	 
         }
         
		
		log.info("갱무리를 찾습니다.{}", cnt);
		
		return mapper.selectScheduleLessorList(userNo);
	}

}
