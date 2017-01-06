package com.share1024.service;

import java.util.List;

import com.share1024.model.DataTool;

public interface DataToolService {
	
	public int saveDateTool(DataTool dataTool);
	
	public List<DataTool> findAllDataTools();
}
