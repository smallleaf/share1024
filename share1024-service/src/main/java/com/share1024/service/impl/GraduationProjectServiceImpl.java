package com.share1024.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.share1024.dao.GraduationProjectDao;
import com.share1024.model.GraduationProject;
import com.share1024.response.ResponseUtil;
import com.share1024.service.GraduationProjectService;

@Service
public class GraduationProjectServiceImpl implements GraduationProjectService{
	
	public static final String GET_ALL_PROJECT="getAllProject";
	@Autowired
	private GraduationProjectDao graduationProjectDao;
	
	
	@Override
	@Cacheable(value="projectCache",key="#root.target.GET_ALL_PROJECT")
	public List<GraduationProject> getAllProject() {
		// TODO Auto-generated method stub
		return graduationProjectDao.findAll();
	}
	
	@Override
	public int saveProject(GraduationProject graduationProject) {
		// TODO Auto-generated method stub
		
		int result = graduationProjectDao.save(graduationProject);
		return result;
	}

	@Override
	public List<GraduationProject> getProjectByType(Long type) {
		// TODO Auto-generated method stub
		return graduationProjectDao.findByType(type);
	}

	@Override
	@Cacheable(value="projectCache",key="#type")
	public List<GraduationProject> getRecommentProject(Long type) {
		// TODO Auto-generated method stub
		return graduationProjectDao.findByTypeAndRecomment(type);
	}

	@Override
	@Cacheable(value="projectCache",key="#id")
	public GraduationProject getGraduationProject(Integer id) {
		// TODO Auto-generated method stub
		return graduationProjectDao.findById(id);
	}

}
