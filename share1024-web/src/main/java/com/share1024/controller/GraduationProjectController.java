package com.share1024.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.sql.visitor.functions.If;
import com.google.common.base.Charsets;
import com.google.common.io.Resources;
import com.share1024.dao.ShareFileDao;
import com.share1024.model.GraduationProject;
import com.share1024.service.GraduationProjectService;

/***
 * 毕业设计控制器 Title: Author:yes Date:Nov 16, 2016-10:15:23 PM
 *
 */
@Controller
@RequestMapping("project")
public class GraduationProjectController {
	private Logger logger = LoggerFactory
			.getLogger(GraduationProjectController.class);

	@Autowired
	private GraduationProjectService graduationProjectService;
	@Autowired
	private ShareFileDao shareFileDao;

	/***
	 * 查找所有的毕业设计
	 * 
	 * @return
	 */
	@RequestMapping("get/{typeId}/{page}")
	public ModelAndView getAllProject(@PathVariable("typeId") Long typeId,@PathVariable("page") Long page) {
		ModelAndView mav = new ModelAndView("javaProject/javaProject");
		if (typeId == null) {
			logger.info("缺少参数:typeId");
			return mav;
		}
		if(typeId>3){
			return new ModelAndView("404/404");
		}
		
		logger.info("正在查找毕设，类型id为:{}", typeId);
		List<GraduationProject> projects = graduationProjectService
				.getRecommentProject(typeId);
		List<GraduationProject> projectsAll = graduationProjectService.getProjectByType(typeId);
		int pageSize = projectsAll.size()/9;
		long activePage=page;
		long startPage=1;
		if(pageSize>9){
			if(pageSize-page<=5){
				startPage=pageSize-9;
			}else if(page>5){
				startPage=page-4;
			}
		}
		long endPage=startPage+8;
		if(endPage>pageSize){
			endPage=pageSize;
		}
		mav.addObject("type", typeId);
		mav.addObject("projectList", projects);
		int end = (int) ((page*9>projectsAll.size())?projectsAll.size():page*9);
		mav.addObject("projectsAll", projectsAll.subList((int) (9*(page-1)), end));
		mav.addObject("activePage", activePage);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		return mav;
	}
	
	
	@RequestMapping("save")
	public String saveProject(String projectName, String projectDesc,
			String projectType, String projectMoney, String contentUuid,
			String projectPic, String recommend) {
		if (StringUtils.isBlank(projectName)
				|| StringUtils.isBlank(projectDesc)
				|| StringUtils.isBlank(projectType)
				|| StringUtils.isBlank(projectMoney)
				|| StringUtils.isBlank(contentUuid)
				|| StringUtils.isBlank(projectPic)
				|| StringUtils.isBlank(recommend)) {
			logger.info("缺少参数：projectName，projectDesc，projectType,projectMoney,contentUuid,projectPic,recommend");
			return "addBishe";
		}
		
		GraduationProject graduationProject = new GraduationProject();
		graduationProject.setContentUuid(contentUuid);
		graduationProject.setProjectName(projectName);
		graduationProject.setProjectDesc(projectDesc);
		graduationProject.setProjectType(Integer.valueOf(projectType));
		graduationProject.setMoney(Float.valueOf(projectMoney));
		graduationProject.setProjectPic(projectPic);
		graduationProject.setRecommendStatus(Integer.valueOf(recommend));
		int result=graduationProjectService.saveProject(graduationProject);
		if(result==0){
			return "addBishe";
		}
		return "redirect:/admin.jsp";
	}
	
	/***
	 * 查找毕业设计信息
	 * @param uuid
	 * @return
	 */
	@RequestMapping("{projectId}/{uuid}")
	public ModelAndView findProjectContent(@PathVariable("uuid") String uuid,@PathVariable("projectId") String projectId){
		if(StringUtils.isBlank(uuid)){
			logger.info("uuid为空，查找毕业设计具体信息失败，请检查uuid");
		}
		
		logger.info("正在查找id为：{},uuid为:{}",projectId,uuid);
		ModelAndView mav = new ModelAndView("projectDetail");
		try {
//			String content = new String(shareFileDao.findByUUid(uuid).getContent(), "utf-8");
			mav.addObject("graduateProject", graduationProjectService.getGraduationProject(Integer.valueOf(projectId)));
			mav.addObject("uuid", uuid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("getContent/content")
	@ResponseBody
	public String test(String uuid){
		try {
			String content = new String(shareFileDao.findByUUid(uuid).getContent(), "utf-8");
			return content;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
