package com.share1024.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.share1024.response.ResponseUtil;
import com.share1024.service.cache.CacheService;

/**
 * 缓存管理
 * @author small leaf
 * Date:   2017年1月10日 下午1:22:27
 */
@Controller
@RequestMapping("admin/cache")
public class CacheController {
	@Autowired
	private CacheService cacheService;
	
	@RequestMapping("clearProjectCache")
	@ResponseBody
	public Object clearProjectCache(){
		cacheService.removeProjectCache();
		return ResponseUtil.getSuccessResult();
	}
	@RequestMapping("removeAllCache")
	@ResponseBody
	public Object removeAllCache(){
		cacheService.removeAllCache();
		return ResponseUtil.getSuccessResult();
	}
}
