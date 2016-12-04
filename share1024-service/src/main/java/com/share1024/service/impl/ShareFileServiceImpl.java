package com.share1024.service.impl;

import java.io.File;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.share1024.dao.ShareFileDao;
import com.share1024.model.ShareFile;
import com.share1024.response.ResponseUtil;
import com.share1024.service.ShareFileService;

@Service
public class ShareFileServiceImpl implements ShareFileService{

	private Logger logger  = LoggerFactory.getLogger(ShareFileServiceImpl.class);
	
	@Autowired
	private ShareFileDao shareFileDao;
	
	@Override
	public Object saveFile(String fileName,byte[] content,Long size) {
		// TODO Auto-generated method stub
		try {
			ShareFile shareFile = new ShareFile();
			shareFile.setContent(content);
			String uuid = UUID.randomUUID().toString();
			shareFile.setName(fileName);
			shareFile.setSize(size);
			shareFile.setContentUuid(uuid);
			int result = shareFileDao.save(shareFile);
			if(result>0){
				logger.info("=====保存文件成功返回uuid为:{}",uuid);
				return ResponseUtil.getSuccessResult("uuid", uuid);
			}
			logger.info("=====保存文件失败");
			return ResponseUtil.getFailResult("保存文件失败");
		} catch (Exception e) {
			// TODO: handle exception
			logger.info("======保存文件异常：{}",e.toString());
			return ResponseUtil.getFailResult("保存文件异常："+e.toString());
		}
		
	}

	@Override
	@Cacheable(value="projectCache",key="#uuid")
	public String findShareFileByUuid(String uuid) {
		// TODO Auto-generated method stub
		ShareFile shareFile =shareFileDao.findByUUid(uuid);
		if(shareFile==null){
			return "### 没有找到文件信息";
		}
		return shareFile.getContentUuid();
	}

}
