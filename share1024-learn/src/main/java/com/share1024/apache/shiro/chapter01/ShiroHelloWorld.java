package com.share1024.apache.shiro.chapter01;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;

/***
 * shiro权限框架学习
 * @author small leaf
 * Date:   2017年1月12日 下午12:05:28
 */
public class ShiroHelloWorld {
	
	@Test
	public void test(){
		
		Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:apache/shiro/chapter01/shiro.ini");
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
		Assert.assertEquals(true, subject.isAuthenticated());
		subject.logout();
	}
	@Test
	public void testMyRealm(){
		Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:apache/shiro/chapter01/shiro-realm.ini");
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
		Assert.assertEquals(true, subject.isAuthenticated());
		subject.logout();
	}
	@Test
	public void testMultiMyRealm(){
		Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:apache/shiro/chapter01/shiro-multi-realm.ini");
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
		Assert.assertEquals(true, subject.isAuthenticated());
		subject.logout();
	}
}
