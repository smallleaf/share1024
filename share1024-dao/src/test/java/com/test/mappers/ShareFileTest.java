package com.test.mappers;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.share1024.dao.ShareFileDao;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class ShareFileTest {
	
	@Autowired
	private ShareFileDao shareFileDao;
	@Test
	public void test() throws Exception{
//		ShareFile shareFile = new ShareFile();
//		String uuid = UUID.randomUUID().toString();
//		shareFile.setContentUuid(uuid);
//		shareFile.setContent( Resources.toByteArray(Resources.getResource("test.md")));
//		shareFile.setName("test.md");
//		shareFile.setSize(12121L);
//		System.out.println(shareFileDao.save(shareFile));
		
	}
}
