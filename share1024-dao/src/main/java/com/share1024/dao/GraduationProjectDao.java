package com.share1024.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import com.share1024.model.GraduationProject;

/**
 * 
 * Title:毕业设计数据库操作
 * Author:yes
 * Date:Nov 13, 2016-11:35:23 AM
 *
 */
public interface GraduationProjectDao {
	
	public List<GraduationProject> findAll();
	
	public int save(GraduationProject graduationProject);
	
	/***
	 * 通过类型查找所有的毕设
	 * @param type
	 * @return
	 */
	public List<GraduationProject> findByType(Long type);
	
	/***
	 * 查找指定类型推荐的毕业设计
	 * @param type
	 * @return
	 */
	public List<GraduationProject> findByTypeAndRecomment(Long type);
	
	/***
	 * 根据id查找毕业设计
	 * @param id
	 * @return
	 */
	public GraduationProject findById(Integer id);
}
