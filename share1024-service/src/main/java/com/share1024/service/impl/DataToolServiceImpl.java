package com.share1024.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.share1024.dao.DataToolDao;
import com.share1024.model.DataTool;
import com.share1024.service.DataToolService;

/**
 * 工具类具体操作
 * @author small leaf
 * Date:   2017年1月5日 下午10:54:23
 */
@Service
public class DataToolServiceImpl implements DataToolService{

	@Autowired
	private DataToolDao dataToolDao;
	@Override
	public int saveDateTool(DataTool dataTool) {
		// TODO Auto-generated method stub
		return dataToolDao.save(dataTool);
	}
	@Override
	public List<DataTool> findAllDataTools() {
		// TODO Auto-generated method stub
		return dataToolDao.findAll();
	}

}
