/*package com.share1024.service.aliyun;



import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.core.io.ClassPathResource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:ehcache.xml","classpath:spring-mybatis.xml","classpath:spring-mybatis.xml","classpath:spring-service.xml"})
public class OSSClientServiceTest {
	
	@Resource
	private OSSClientService ossClientService;
	
	@Test
	public void uploadImageBishe() throws IOException{
		 InputStream  inputStream=	new ClassPathResource("testFile/test.png").getInputStream();
		 ossClientService.upLoadBiSheImage(inputStream, "测试.jpg");
	}
	
	
}
*/