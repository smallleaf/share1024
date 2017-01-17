package com.share1024.apache.shiro.role;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;

public class RoleTest {
	
	@Test
	public void test(){
		Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:apache/shiro/role/shiro-role.ini");
		SecurityManager securityManager = factory.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject =SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");
		try {
			subject.login(token);
		} catch (AuthenticationException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(subject.isAuthenticated()){
			System.out.println("恭喜登录成功!");
		}
		if(subject.hasRole("role1")){
			System.out.println("该用户有role1角色");
		}
		Assert.assertEquals(true, subject.isAuthenticated());
		subject.logout();
	}
	
}
