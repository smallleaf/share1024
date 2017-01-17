package com.share1024.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户类
 * @author small leaf
 * Date:   2017年1月12日 下午5:41:30
 */
public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	
	private String username;
	
	private String password;
	
	private String salt;
	
	private Integer lock;
	
	private Date createTime;
	
	private Date updateTime;
	
	private Integer isDeleted;
	
	private Integer userType;
	
	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	 public String getCredentialsSalt() {
	        return username + salt;
	    }
	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	

	public Integer getLock() {
		return lock;
	}

	public void setLock(Integer lock) {
		this.lock = lock;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", salt=" + salt + ", lock=" + lock
				+ ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", isDeleted=" + isDeleted + "]";
	}
	
	
	
	
}
