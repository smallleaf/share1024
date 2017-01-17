package com.share1024.service;

import com.share1024.model.User;

/***
 * 用户操作
 * @author small leaf
 * Date:   2017年1月16日 下午2:22:26
 */
public interface UserService {
	
	public User getUserByUserName(String userName);
	
	public int createUser(User user);
}
