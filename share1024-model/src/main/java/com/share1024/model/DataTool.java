package com.share1024.model;

import java.io.Serializable;
import java.sql.Date;

/**
 * java资料--工具大全
 * @author small leaf
 * Date:   2017年1月5日 下午10:18:49
 */
public class DataTool implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	
	private String name;
	
	private String panUrl;
	
	private String officeWebSiteUrl;
	
	/***
	 * 点击量
	 */
	private Integer toolScanNum;
	
	/**
	 * 0-- 不推荐 1--推荐
	 */
	private Integer recommendStatus;
	
	private Date createTime;
	
	private Integer isDeleted;
	
	private String toolPic;

	private Integer toolType;
	
	
	
	public Integer getToolType() {
		return toolType;
	}

	public void setToolType(Integer toolType) {
		this.toolType = toolType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPanUrl() {
		return panUrl;
	}

	public void setPanUrl(String panUrl) {
		this.panUrl = panUrl;
	}

	public String getOfficeWebSiteUrl() {
		return officeWebSiteUrl;
	}

	public void setOfficeWebSiteUrl(String officeWebSiteUrl) {
		this.officeWebSiteUrl = officeWebSiteUrl;
	}

	public Integer getToolScanNum() {
		return toolScanNum;
	}

	public void setToolScanNum(Integer toolScanNum) {
		this.toolScanNum = toolScanNum;
	}

	public Integer getRecommendStatus() {
		return recommendStatus;
	}

	public void setRecommendStatus(Integer recommendStatus) {
		this.recommendStatus = recommendStatus;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getToolPic() {
		return toolPic;
	}

	public void setToolPic(String toolPic) {
		this.toolPic = toolPic;
	}

	@Override
	public String toString() {
		return "DataTool [id=" + id + ", name=" + name + ", panUrl=" + panUrl
				+ ", officeWebSiteUrl=" + officeWebSiteUrl + ", toolScanNum="
				+ toolScanNum + ", recommendStatus=" + recommendStatus
				+ ", createTime=" + createTime + ", isDeleted=" + isDeleted
				+ ", toolPic=" + toolPic + "]";
	}
	
	
	
}
