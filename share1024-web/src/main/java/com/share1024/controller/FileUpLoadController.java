package com.share1024.controller;

import java.io.File;
import java.io.IOException;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.share1024.response.ResponseUtil;
import com.share1024.service.ShareFileService;
import com.share1024.service.impl.ShareFileServiceImpl;

/***
 * 文件上传
 * Title:
 * Author:yes
 * Date:Nov 18, 2016-2:27:46 PM
 *
 */
@Controller
@RequestMapping("upload")
public class FileUpLoadController {
	
	private Logger logger = LoggerFactory.getLogger(FileUpLoadController.class);
	
	@Autowired
	private ShareFileService ShareFileService;
	
	@RequestMapping("project")
	@ResponseBody
	public Object uploadFile(MultipartFile projectFile){
		if(projectFile.isEmpty()){
			logger.info("文件上传为空");
			return ResponseUtil.getFailResult("文件上传为空");
		}
		byte[] content = null ;
		try {
			content = projectFile.getBytes();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("====获取文件内容异常:{}",e.toString());
			return  ResponseUtil.getFailResult("====获取文件内容异常"+e.toString());
		}
		String fileName = projectFile.getOriginalFilename() ;
		long size = projectFile.getSize();
		logger.info("正在上传毕业设计文件，名称为：{}",fileName);
		return ShareFileService.saveFile(fileName,content,size);
	}
}
