package com.test.mappers;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.share1024.dao.DataToolDao;
import com.share1024.model.DataTool;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class DataToolTest {
	
	@Autowired
	private DataToolDao dataToolDao;
	
	@Test
	public void testFindAll(){
		System.out.println(dataToolDao.findAll().toString());
	}
	
	//@Test
	public void testSave(){
		DataTool dataTool = new DataTool();
		dataTool.setName("测试");
		dataTool.setPanUrl("http://localhost:9090/share1024-web/");
		dataTool.setOfficeWebSiteUrl("http://localhost:9090/share1024-web/");
		dataTool.setRecommendStatus(0);
		dataTool.setToolPic("test");
		
		int result = dataToolDao.save(dataTool);
		Assert.assertEquals(1, result);
		System.out.println(result);
	}
}
