package com.share1024.service;

import java.io.File;

import com.share1024.model.ShareFile;

/***
 * 
 * Title: 分享文件业务操作类
 * Author:yes
 * Date:Nov 18, 2016-6:07:58 PM
 *
 */
public interface ShareFileService {
	
	/**
	 * 保存文件
	 * @param file
	 * @return 保存信息
	 */
	public Object saveFile(String fileName,byte[] content,Long size) ;
	
	
	/***
	 * 通过uuid查找文件具体信息
	 * @param uuid
	 * @return
	 */
	public String findShareFileByUuid(String uuid);
}

