package com.share1024.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * 系统管理
 * @author small leaf
 * Date:   2017年1月5日 下午5:43:14
 */
@Controller
@RequestMapping("admin")
public class AdminController {
	/***
	 * 编辑工具
	 * @return
	 */
	@RequestMapping("viewTool")
	public ModelAndView editLearnData(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editLearnData/viewDataTool");
		return mav;
	}
	
	/**
	 * 添加工具
	 * @return
	 */
	@RequestMapping("addDataTool")
	public String addDataTool(){
		return "editLearnData/addDataTool";
	}
	/**
	 * 缓存管理
	 * @return
	 */
	@RequestMapping("cache")
	public String queryCache(){
		return "admin/cache/cacheManage";
	}
	

}
