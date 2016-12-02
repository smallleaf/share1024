package com.share1024.model;

import java.sql.Blob;
import java.sql.Date;

/**
 * 
 * Title:分享的文件
 * Author:yes
 * Date:Nov 18, 2016-5:16:03 PM
 *
 */
public class ShareFile {
	
	private Integer id;
	/***
	 * 文件的唯一标志
	 */
	private String contentUuid;
	
	private byte[] content;
	
	private String name;
	
	private Long size;
	
	private Date createTime;
	
	private Integer fileStatus;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContentUuid() {
		return contentUuid;
	}

	public void setContentUuid(String contentUuid) {
		this.contentUuid = contentUuid;
	}

	

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getFileStatus() {
		return fileStatus;
	}

	public void setFileStatus(Integer fileStatus) {
		this.fileStatus = fileStatus;
	}
	
	
	
}
