//package com.share1024.service;
//
//import java.io.File;
//
//import javax.annotation.Resource;
//
//import org.apache.commons.io.FileUtils;
//import org.apache.commons.io.IOUtils;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.google.common.io.Resources;
//import com.share1024.service.impl.ShareFileServiceImpl;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration({"classpath:spring-service.xml","classpath:spring-mybatis.xml"})
//public class ShareFileServiceTest {
//	
//	private Logger logger = LoggerFactory.getLogger(ShareFileServiceTest.class);
//	@Resource
//	private ShareFileServiceImpl shareFileServiceImpl;
//	
////	@Test
////	public void test(){
////		File file = FileUtils.toFile(Resources.getResource("test.md"));
////		logger.info(shareFileServiceImpl.saveFile(file).toString());
////	}
//}
