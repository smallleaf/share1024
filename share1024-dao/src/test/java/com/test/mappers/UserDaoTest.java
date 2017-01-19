package com.test.mappers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.share1024.dao.UserDao;
import com.share1024.model.User;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserDaoTest {
	@Autowired
	UserDao userDao;
	
	@Test
	public void getUserByUserName(){
		User user = userDao.getUserByUserName("yesheng");
		System.out.println("=="+user.toString());
	}
}
