package com.share1024.aliyun;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.aliyun.oss.OSSClient;

/**
 * 
 * Title:阿里云对象存储操作
 * Author:small leaf 
 * Date:2016年12月27日-下午10:49:02
 *
 */
public class OSSClientUtil {

	/***
	 * 
	 * @param endpoint 访问域名
	 * @param accessKeyId 访问密钥Id
	 * @param secretAccessKey 访问密钥Key
	 * @param bucketName 存储空间名称
	 * @param fileName 文件名称
	 * @param inputStream 输入流
	 */
	public static void upLoadFile(String endpoint, String accessKeyId,
			String secretAccessKey, String bucketName, String fileName,
			InputStream inputStream) {
		OSSClient client = getOSSClient(endpoint, accessKeyId, secretAccessKey);
		client.putObject(bucketName, fileName, inputStream);
	}
	
	
	private static OSSClient getOSSClient(String endpoint, String accessKeyId,
			String secretAccessKey){
		return new OSSClient(endpoint, accessKeyId,secretAccessKey);
	}
	
	public static void main(String[] args) {
		
		String endpoint ="http://oss-cn-qingdao.aliyuncs.com";
		String accessKeyId="LTAIoazhqHMG3qGI";
		String secretAccessKey="hWryeelTCq8F24NbmkErxd1uBCOAgB";
		
		String content ="test";
		upLoadFile(endpoint, accessKeyId, secretAccessKey, "share1024", "images/bishe/测试.txt", new ByteArrayInputStream(content.getBytes()));
	}
}
