package com.share1024.io.bio;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.junit.Test;

/**
 * BIO 客户端
 * @author small leaf
 * Date:   2017年1月3日 下午9:59:22
 */
public class BIOClient {
	public static void main(String[] args) throws UnknownHostException, IOException {
		Socket client = new Socket("localhost", 8080);
		OutputStream outputStream = client.getOutputStream();
		outputStream.write("fuck".getBytes());
		outputStream.close();
		client.close();
	}
	
	
	/**
	 * 测试并发 结合NIO Server
	 */
	@Test
	public void testBinFa(){
		
		ThreadPoolExecutor executor = new ThreadPoolExecutor(200, 500, 200, TimeUnit.MINUTES, new LinkedBlockingDeque<Runnable>());
		final CountDownLatch countDownLatch = new CountDownLatch(2000);
		for(int i=0;i<2000;i++){
			executor.execute(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					try{
						Socket client = new Socket("localhost", 8080);
						OutputStream outputStream = client.getOutputStream();
						outputStream.write(("232332"+countDownLatch.getCount()).getBytes());
						outputStream.close();
						client.close();
						countDownLatch.countDown();
					}catch(Exception e){
						
					}
				}
			});
		}
		executor.shutdown();
		try {
			countDownLatch.await();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
