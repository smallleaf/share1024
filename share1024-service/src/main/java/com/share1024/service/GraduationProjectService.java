package com.share1024.service;

import java.util.List;


import com.share1024.model.GraduationProject;

/***
 * Title:毕业系统业务实现类.
 * Author:yes
 * Date:Nov 15, 2016-4:21:56 PM
 *
 */
/**
 * 
 * ClassName: GraduationProjectService <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON(可选). <br/>
 * date: 2017年1月2日 上午12:37:32 <br/>
 *
 * @author small leaf
 * @version 
 * @since JDK 1.6
 */
public interface GraduationProjectService {
	
	/**
	 * 查找所有毕业设计.
	 * @return
	 */
	public  List<GraduationProject> getAllProject();
	
	/***
	 * 保存毕业设计.
	 * @param graduationProject
	 * @return
	 */
	public int saveProject(GraduationProject graduationProject);
	
	/***
	 * 通过毕设类型查找所有的毕设.
	 * @param type
	 * @return
	 */
	public List<GraduationProject> getProjectByType(Long type);
	
	/**
	 * 查找推荐毕业设计.
	 * @param type
	 * @return
	 */
	public List<GraduationProject> getRecommentProject(Long type);
	
	/***
	 * 
	 * getGraduationProject:(这里用一句话描述这个方法的作用). <br/>
	 * TODO(这里描述这个方法适用条件 – 可选).<br/>
	 * TODO(这里描述这个方法的执行流程 – 可选).<br/>
	 * TODO(这里描述这个方法的使用方法 – 可选).<br/>
	 * TODO(这里描述这个方法的注意事项 – 可选).<br/>
	 *
	 * @author small leaf
	 * @param id
	 * @return
	 * @since JDK 1.6
	 */
	GraduationProject getGraduationProject(Integer id);
}
