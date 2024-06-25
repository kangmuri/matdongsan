package kr.or.mat.spring.conf;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;

import kr.or.mat.util.file.AttachFileUtill;

@Configuration
@ComponentScan
public class FileConfig {
	
	@Bean(initMethod = "init")
	@Lazy
	public AttachFileUtill attachFileUtill() {
		AttachFileUtill attachFileUtill = new AttachFileUtill();
		return attachFileUtill;
	}
}
