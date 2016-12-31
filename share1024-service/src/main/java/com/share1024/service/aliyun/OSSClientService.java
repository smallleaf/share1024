package com.share1024.service.aliyun;

import java.io.InputStream;
import java.util.UUID;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.share1024.aliyun.OSSClientUtil;
import com.share1024.response.ResponseUtil;



/***
 * 
 * Title:阿里云OSS操作
 * Author:small leaf
 * Date:2016年12月27日-下午11:07:26
 *
 */
@Service
public class OSSClientService {
	
	private static final String BUCKET_SHARE="share1024";
	
	private static final String OBJECT_SHARE_IMAGE_BISHE="images/bishe/";
	
	private static final String END_POINT="http://oss-cn-qingdao.aliyuncs.com";
	private static final String ACCESS_KEY_ID="LTAIoazhqHMG3qGI";
	private static final String SECRET_ACCESS_KEY="hWryeelTCq8F24NbmkErxd1uBCOAgB";
	
	private static final String OSS_URL_HEADER="Http://store.share1024.com/";
	/***
	 * 上传毕设图片
	 * @param inputStream
	 * @param fileName
	 */
	public Object upLoadBiSheImage(InputStream inputStream,String fileName){
		//获取后缀
		String suffix = fileName.substring(fileName.lastIndexOf(".")+1);
		String uuid = UUID.randomUUID().toString()+"."+suffix;
		String key = OBJECT_SHARE_IMAGE_BISHE+uuid;
		OSSClientUtil.upLoadFile(END_POINT, ACCESS_KEY_ID, SECRET_ACCESS_KEY, BUCKET_SHARE,key, inputStream);
		return ResponseUtil.getSuccessResult("url", OSS_URL_HEADER+key);
	}
}
