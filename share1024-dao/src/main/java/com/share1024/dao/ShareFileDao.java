package com.share1024.dao;

import com.share1024.model.ShareFile;

/***
 * 
 * Title:分享的文件操作
 * Author:yes
 * Date:Nov 18, 2016-5:20:54 PM
 *
 */
public interface ShareFileDao {
	
	public int save(ShareFile shareFile);
	
	public ShareFile findByUUid(String uuid);
}
