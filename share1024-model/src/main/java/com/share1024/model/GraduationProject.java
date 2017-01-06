package com.share1024.model;

import java.sql.Date;

/**
 * Title:毕业设计实体类.
 * Author:yes
 * Date:Nov 13, 2016-11:20:41 AM
 *
 */
public class GraduationProject {	
	/***
	 * id
	 */
	private Integer id;
	
	/**
	 * 毕设等级 0-初级 1-中级 2-高级
	 */
	private Integer projectType;
	
	private String projectName;
	
	/**
	 * 项目的补充说明
	 */
	private String projectDesc;
	
	/***
	 * 毕业设计显示 等级这个是代表热度
	 */
	private Integer projectGrade;
	
	/***
	 * 点击量
	 */
	private Integer projectScanNum;
	
	private Float money;
	
	private String contentUuid;
	
	/**
	 * 0-- 不推荐 1--推荐
	 */
	private Integer recommendStatus;
	
	private Date createTime;
	
	private Integer isDeleted;
	
	private String projectPic;
	
	

	public String getProjectPic() {
		return projectPic;
	}

	public void setProjectPic(String projectPic) {
		this.projectPic = projectPic;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProjectType() {
		return projectType;
	}

	public void setProjectType(Integer projectType) {
		this.projectType = projectType;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectDesc() {
		return projectDesc;
	}

	public void setProjectDesc(String projectDesc) {
		this.projectDesc = projectDesc;
	}

	public Integer getProjectGrade() {
		return projectGrade;
	}

	public void setProjectGrade(Integer projectGrade) {
		this.projectGrade = projectGrade;
	}

	public Integer getProjectScanNum() {
		return projectScanNum;
	}

	public void setProjectScanNum(Integer projectScanNum) {
		this.projectScanNum = projectScanNum;
	}

	public Float getMoney() {
		return money;
	}

	public void setMoney(Float money) {
		this.money = money;
	}

	public String getContentUuid() {
		return contentUuid;
	}

	public void setContentUuid(String contentUuid) {
		this.contentUuid = contentUuid;
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

	@Override
	public String toString() {
		return "GraduationProject [id=" + id + ", projectType=" + projectType
				+ ", projectName=" + projectName + ", projectDesc="
				+ projectDesc + ", projectGrade=" + projectGrade
				+ ", projectScanNum=" + projectScanNum + ", money=" + money
				+ ", contentUuid=" + contentUuid + ", recommendStatus="
				+ recommendStatus + ", createTime=" + createTime
				+ ", isDeleted=" + isDeleted + "]";
	}

	
	
	
}
