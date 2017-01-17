package com.share1024.dao;

import com.share1024.model.User;


/***
 * 用户操作
 * @author small leaf
 * Date:   2017年1月12日 下午5:45:52
 */
public interface UserDao {

	public User getUserByUserName(String username);
	
	public int createUser(User user);
}
