package kr.or.mat.spring.conf;

import org.jasypt.encryption.pbe.PBEStringEncryptor;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.encryption.pbe.config.PBEConfig;
import org.jasypt.encryption.pbe.config.SimplePBEConfig;
import org.jasypt.spring31.xml.encryption.EncryptablePropertiesFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

@Configuration
public class JasyptEncryptionConfig {
	
	@Bean
	public PBEConfig pbeConfig() {
		SimplePBEConfig config = new SimplePBEConfig();
		config.setAlgorithm("PBEWithMD5AndDES");
		config.setPassword("spring_board");
		return config;
	}
	
	@Bean
	public PBEStringEncryptor pbeEncryptor(PBEConfig pbeConfig) {
		StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
		encryptor.setConfig(pbeConfig);
		return encryptor;
	}
	
	@Bean("dbInfo")
	public EncryptablePropertiesFactoryBean dbInfo(
			@Value("classpath:kr/or/mat/db/DbInfo.properties") Resource location, 
			PBEStringEncryptor encryptor
	) {
		EncryptablePropertiesFactoryBean factoryBean =
							new EncryptablePropertiesFactoryBean();
		
		factoryBean.setLocation(location);
		factoryBean.setEncryptor(encryptor);
		return factoryBean;
	}
}
