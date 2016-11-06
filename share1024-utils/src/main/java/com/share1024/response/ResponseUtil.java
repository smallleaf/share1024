package com.share1024.response;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

/**
 * 响应工具类
 * @author yes
 *code 是响应标志 0--失败 1--成功
 *msg 是用来放提示信息的，成功的返回数据不能放
 */
public class ResponseUtil {
	private static Map<String, Object> map ;
	
	
	private ResponseUtil(int code,String msg,String key,Object value) {
		// TODO Auto-generated constructor stub
		map = new HashMap<String, Object>();
		map.put("code", code);
		if(StringUtils.isNotBlank(msg)){
			map.put("message", msg);
		}
		if(StringUtils.isNotBlank(key)){
			map.put(key, value);
		}
	}
	
	private static Map<String, Object> returnMap(int code,String msg,String key,Object value){
		ResponseUtil responseUtil = new ResponseUtil(code, msg, key, value);
		return responseUtil.getMap();
	}
	
	public static Map<String, Object> getSuccessResult(){
		return returnMap(1, null, null, null);
	}
	public static Map<String, Object> getSuccessResult(String msg){
		return returnMap(1, msg, null, null);
	}
	
	public static Map<String, Object> getSuccessResult(String key,Object value){
		return returnMap(1, null, key, value);
	}
	public static Map<String, Object> getSuccessResult(String msg,String key,Object value){
		return returnMap(1, msg, key, value);
	}
	
	public static Map<String, Object> getFailResult(String msg){
		return returnMap(0, msg, null, null);
	}
 	
	public  Map<String, Object> getMap() {
		return map;
	}
	
	public void setMap(String key,Object value){
		if(StringUtils.isNotBlank(key)){
			map.put(key, value);
		}
	}
	public void setMap(Map<String, Object> map){
		this.map.putAll(map);
	}
	
}
