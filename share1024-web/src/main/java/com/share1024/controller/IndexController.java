package com.share1024.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页直接跳转
 * @author small leaf
 * Date:   2017年1月11日 下午4:15:01
 */
@Controller
public class IndexController {
	
	@RequestMapping("index")
	public String index(){
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("admin")
	public String admin(){
		return "redirect:/admin.jsp";
	}
	
	@RequestMapping("login")
	public String login(){
		return "redirect:/login.jsp";
	}
	
}
