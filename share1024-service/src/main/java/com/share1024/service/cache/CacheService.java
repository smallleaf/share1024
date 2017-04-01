package com.share1024.service.cache;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

/**
 * 缓存管理
 * @author small leaf
 * Date:   2017年1月10日 下午1:11:58
 */
@Service
public class CacheService {

	private Logger logger = LoggerFactory.getLogger(CacheService.class);
	/***
	 * 清除毕业设计缓存
	 */
	@CacheEvict(value="projectCache",allEntries=true)

	public void removeProjectCache(){
		logger.info("===========清除projectCache缓存==============");
	}
	
	/**
	 * 清除所有缓存
	 */
	@CacheEvict(value={"projectCache"},allEntries=true)
	public void removeAllCache(){
		logger.info("===========清除所有缓存==============");
	}
}
