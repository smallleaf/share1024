/*package com.share1024.service;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.share1024.model.GraduationProject;
import com.share1024.service.impl.GraduationProjectServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:ehcache.xml","classpath:spring-mybatis.xml","classpath:spring-cache.xml"})
public class GraduationProjectServiceTest {
	@Resource
	private GraduationProjectService graduationProjectServiceImpl;
	
	@Test
	public void test(){
		List<GraduationProject> graduationProjects= graduationProjectServiceImpl.getAllProject();
		Assert.assertNotNull(graduationProjects);
		System.out.println("第一次==========================结束");
		graduationProjectServiceImpl.getAllProject();
		System.out.println("第二次==========================结束");
	}
	
	@Test
	public void testProjectById(){
		System.out.println("第一次===================开始");
		graduationProjectServiceImpl.getGraduationProject(20);
		System.out.println("第二次===================开始");
		graduationProjectServiceImpl.getGraduationProject(20);
	}
}
*/