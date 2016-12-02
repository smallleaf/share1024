package com.share1024.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.share1024.dao.GraduationProjectDao;
import com.share1024.model.GraduationProject;
import com.share1024.service.impl.GraduationProjectServiceImpl;

/***
 * 
 * Title:毕业系统业务实现类
 * Author:yes
 * Date:Nov 15, 2016-4:21:56 PM
 *
 */

public interface GraduationProjectService {
	
	/***
	 * 
	 */
	public  List<GraduationProject> getAllProject();
	
	/***
	 * 保存毕业设计
	 * @param graduationProject
	 * @return
	 */
	public int saveProject(GraduationProject graduationProject);
	
	/***
	 * 通过毕设类型查找所有的毕设
	 * @param type
	 * @return
	 */
	public List<GraduationProject> getProjectByType(Long type);
	
	/**
	 * 查找推荐毕业设计
	 * @param type
	 * @return
	 */
	public List<GraduationProject> getRecommentProject(Long type);
	
	/**
	 * 查找毕业设计
	 * @param id
	 * @return
	 */
	public GraduationProject getGraduationProject(Integer id);
}
