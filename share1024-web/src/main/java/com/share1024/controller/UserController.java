package com.share1024.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author small leaf
 * Date:   2017年1月16日 下午3:17:49
 */
@RequestMapping("user")
@Controller
public class UserController {
	
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	@RequestMapping("doLogin")
	public String doLogin(String username,String password){
		logger.info("=======正在登陆==");
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()){
			logger.info("用户{}已经登录", username);
			return "redirect:/admin.jsp";
		}
		try {
			subject.login(token);
			if(subject.isAuthenticated()){
				logger.info("用户{}登录成功", username);
				return "redirect:/admin.jsp";
			}else{
				logger.info("用户{}登录失败", username);
				return "redirect:/login.jsp";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.info("=========="+e.toString());
			return "redirect:/login.jsp";
		}
	}
	
	/***
	 * 登出
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(){
		Subject subject = SecurityUtils.getSubject();
		
		if(subject.isAuthenticated()){
			logger.info("=======用户已经登录正在登出=========");
			subject.logout();
		}
		return "redirect:/login.jsp";
	}

}
