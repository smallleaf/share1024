package com.share1024.thread;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.junit.Test;

public class ThreadPoolLearn {

	
	@Test
	public void testThreadPool(){
		ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 10, 20, TimeUnit.MINUTES, new LinkedBlockingDeque());
		final CountDownLatch count = new CountDownLatch(40);
		List<String> datas = new ArrayList<String>();
		System.out.println("=======主线程正在执行====");
		for(int num=0;num<40;num++){
			executor.execute(new MyThread2(count, num,datas));
		}
		executor.shutdown();
		try {
			count.await();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("=========主线程执行结束====="+datas.size());
		
	}
	

public class MyThread2 implements Runnable{
	private CountDownLatch count;
	private int num ;
	private Integer sum;
	List<String> datas;
	
	public MyThread2(CountDownLatch count,int num,List<String> datas){
		this.count = count;
		this.num = num;
		this.datas = datas;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("==正在执行任务==="+num);
		if(num%5==0)
		{
			try {
				int i = 1/0;
			} catch (Exception e) {
				// TODO: handle exception
				datas.add(num+"");
				count.countDown();
				return ;
			}
			
		}
		System.out.println("=======232323======="+num);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		count.countDown();
		
	}
	
}
}

