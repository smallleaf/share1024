package com.test.mappers;


import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.share1024.dao.GraduationProjectDao;
import com.share1024.model.GraduationProject;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class GraduationProjectTest {
	
	@Autowired
	private GraduationProjectDao graduationProjectDao;
	@Test
	public void test(){
		System.out.println(graduationProjectDao.findAll().toString());
	}
	
//	@Test
//	public void testSave(){
//		GraduationProject graduationProject = new GraduationProject();
//		graduationProject.setContentUuid("sdsds");
//		graduationProject.setMoney(20.2f);
//		graduationProject.setProjectDesc("lalal");
//		graduationProject.setProjectName("就是这个");
//		graduationProject.setProjectType(2);
//		graduationProject.setRecommendStatus(0);
//		graduationProject.setProjectPic("http:///wwqw");
//		int result = graduationProjectDao.save(graduationProject);
//		Assert.assertEquals(1, result);
//	}
	
	@Test
	public void testFindByType(){
		System.out.println(graduationProjectDao.findByType(2L).toString());
	}
}
