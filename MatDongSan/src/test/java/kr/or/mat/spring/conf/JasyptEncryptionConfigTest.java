package kr.or.mat.spring.conf;

import java.util.Properties;

import javax.annotation.Resource;

import org.jasypt.encryption.pbe.PBEStringEncryptor;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;

class JasyptEncryptionConfigTest extends AbstractRootContextTest{

	@Autowired
	PBEStringEncryptor enctyptor;
	
	@Resource(name="dbInfo")
	Properties dbInfo;
	
	@Test
	void test() {
		dbInfo.keySet().forEach(k->{
			String key = k.toString();
			String value =dbInfo.getProperty(key);
			System.out.printf("%s=%s",key,value);
			String encrypted = enctyptor.encrypt(value);
			System.out.printf("%s=ENC(%s)\n", key, encrypted);
		});
	}

}
