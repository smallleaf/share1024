package com.share1024.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.junit.Test;

/***
 * 资源操作
 * @author small leaf
 * Date:   2017年1月12日 下午12:12:10
 */
public class ResourceUtil {
	
	@Test
	public void getResourceStreamByClassPath(){
		
		ClassLoader classLoader = ResourceUtil.class.getClassLoader();
		
		InputStream inputStream = classLoader.getResourceAsStream("util/test.txt");
		
		System.out.println("=="+inputStreamToString(inputStream));
	}
	
	
	public String inputStreamToString(InputStream inputStream){
		
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
		StringBuffer sb = new StringBuffer();
		String line = null;
		try {
			while((line = bufferedReader.readLine())!=null){
				sb.append(line).append("\n");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally{
			try {
				inputStream.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return sb.toString();	
	}
}
