package kr.or.mat.rentContract.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.or.mat.rentContract.mapper.RentContractMapper;
import kr.or.mat.rentPayData.mapper.RentPayDataMapper;

@Component
public class ContractScheduling {
	@Autowired
	private RentContractMapper mapper;
	
	@Autowired
	private RentPayDataMapper mapper2;

		@Scheduled(cron = "0 0 0 * * *")
		public void printJob() {
			mapper.updateRentContractStts();
			System.out.println("임대관리 계약상태 기간에 따라 상태값 전체 수정하는 스케줄실행완료(매일 자정)");
		}
		@Scheduled(cron = "0 0 0 * * *")
		public void printJob2() {
			mapper2.updateRentpayStts();
			System.out.println("임대관리 계약상태 기간에 따라 상태값 전체 수정하는 스케줄실행완료(매일 자정)");
		}

}
