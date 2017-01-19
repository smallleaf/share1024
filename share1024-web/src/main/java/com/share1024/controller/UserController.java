package com.share1024.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author small leaf
 * Date:   2017年1月16日 下午3:17:49
 */
@RequestMapping("user")
@Controller
public class UserController {
	
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	@Deprecated
	public String doLogin3(HttpServletRequest request,Model model){
		String exceptionClassName = (String)request.getAttribute("shiroLoginFailure");
        String error = null;
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if("jCaptcha.error".equals(exceptionClassName)) {
            error = "验证码错误";
        } else if(exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        model.addAttribute("error", error);
        return "login";
    }
	
	@RequestMapping(value="login")
	public ModelAndView doLogin(String username,String password,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		logger.info("=======正在登陆==");
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()){
			logger.info("用户{}已经登录", subject.getPrincipal());
			mav.setViewName("admin");
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
				mav.setViewName("admin");
				return mav;
			}else{
				logger.info("用户{}登录失败", username);
				mav.addObject("error", "用户名/密码错误");
				mav.setViewName("login");
				return mav;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			logger.info("=========="+e.toString());
			mav.addObject("error", "用户名/密码错误");
			mav.setViewName("login");
			return mav;
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
		return "redirect:/jsp/login.jsp";
	}

}
