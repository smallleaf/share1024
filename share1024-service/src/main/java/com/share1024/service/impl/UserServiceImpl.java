package com.share1024.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.share1024.dao.UserDao;
import com.share1024.model.User;
import com.share1024.service.UserService;
import com.share1024.service.shiro.service.PasswordHelper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Autowired
	private PasswordHelper passwordHelper;
	
	@Override
	public User getUserByUserName(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserByUserName(username);
	}

	@Override
	public int createUser(User user) {
		// TODO Auto-generated method stub
		passwordHelper.encryptPassword(user);
		return userDao.createUser(user);
	}

}
