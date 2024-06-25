package kr.or.mat.advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

import lombok.extern.slf4j.Slf4j;

/**
 * before : target 메소드 호출 전에 위빙
 * after : target 메소드 호출 이후 위빙
 * around : 
 *
 */
@Slf4j
public class LoggingAdvice {
	
	public void beforeAdvice(JoinPoint point){
		Object target = point.getTarget();
		String targetName = target.getClass().getName();
		String methodName = point.getSignature().getName();
		Object args = point.getArgs();
		log.info("{}.{}({}) 호출 전 위빙",targetName, methodName, args);
	}
	
	public void afterAdvice(JoinPoint point, Object retValue){
		Object target = point.getTarget();
		String targetName = target.getClass().getName();
		String methodName = point.getSignature().getName();
		Object args = point.getArgs();
		log.info("{}.{}({}) 호출 이후 위빙",targetName, methodName, retValue);
	}
	
	public Object aroundAdvice(ProceedingJoinPoint point) throws Throwable {
		Object target = point.getTarget();
		String targetName = target.getClass().getName();
		String methodName = point.getSignature().getName();
		Object[] args = point.getArgs();
		log.info("호출 전 위빙 {}.{}({})",targetName, methodName, args);
		long start = System.currentTimeMillis();
		Object retValue = point.proceed(args);
		long end = System.currentTimeMillis();
		log.info(" 호출 이후 위빙, 소요시간 : {}ms, {}.{}({})", (end-start), targetName, methodName, retValue);
		return retValue;
	}
}
