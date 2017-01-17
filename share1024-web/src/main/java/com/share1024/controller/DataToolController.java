package com.share1024.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.share1024.model.DataTool;
import com.share1024.service.DataToolService;

@Controller
@RequestMapping("dataTool")
public class DataToolController {
	private Logger logger = LoggerFactory.getLogger(DataToolController.class);
	@Autowired
	private DataToolService dataToolservice;
	/**
	 * 
	 * @param dataTool
	 */
	@RequestMapping("save")
	public String saveDataTool(DataTool dataTool){
		if(dataTool==null){
			logger.info("参数有误");
			return "editLearnData/addDataTool";
		}
		int result = dataToolservice.saveDateTool(dataTool);
		if(result<0){
			return "editLearnData/addDataTool";
		}else{
			return "editLearnData/viewDataTool";
		}
	}
	
	/***
	 * 
	 * @return
	 */
	@RequestMapping("findAll")
	public ModelAndView findAllDataTool(){
		logger.info("正在查找所有的工具");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("javaMaterial/javaTool");
		List<DataTool> dataTools = dataToolservice.findAllDataTools();
		mav.addObject("dataTools", dataTools);
		return mav;
	}
}
