package com.share1024.dao;

import java.util.List;

import com.share1024.model.DataTool;

/**
 * 工具类 数据库操作
 * @author small leaf
 * Date:   2017年1月5日 下午10:30:16
 */
public interface DataToolDao {
	
	public List<DataTool> findAll();
	
	
	public int save(DataTool dataTool);
}
