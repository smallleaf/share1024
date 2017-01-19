package com.share1024.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 首页直接跳转
 * @author small leaf
 * Date:   2017年1月11日 下午4:15:01
 */
@Controller
public class IndexController {
	private Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping("index")
	public String index(){
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("admin")
	public String admin(){
		logger.info("===正在请求系统页面==");
		return "admin";
	}
	
	@RequestMapping(value="login")
	public ModelAndView doLogin(String username,String password,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		logger.info("=======正在登陆==");
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()){
			logger.info("用户{}已经登录", subject.getPrincipal());
			mav.setViewName("redirect:/admin");
			return mav;
		}
		if(StringUtils.isBlank(username)){
			mav.setViewName("login");
			return mav;
		}
		StringUtils.trim(username);
		StringUtils.trim(password);
		
		//进行验证码判断
		String exceptionClassName = (String)request.getAttribute("shiroLoginFailure");
		if("jCaptcha.error".equals(exceptionClassName)){
			mav.addObject("error", "验证码错误");
			mav.setViewName("login");
			return mav;
		}
		try {
			subject.login(token);
			if(subject.isAuthenticated()){
				logger.info("用户{}登录成功", username);
				mav.setViewName("redirect:/admin");
				return mav;
			}else{
				logger.info("用户{}登录失败", username);
				mav.addObject("error", "用户名/密码错误");
				mav.addObject("username", username);
				mav.setViewName("login");
				return mav;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.info("=========="+e.toString());
			mav.addObject("error", "用户名/密码错误");
			mav.addObject("username", username);
			mav.setViewName("login");
			return mav;
		}
	}
	
}
