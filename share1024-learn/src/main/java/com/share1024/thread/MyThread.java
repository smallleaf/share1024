package com.share1024.thread;

import java.util.List;
import java.util.concurrent.CountDownLatch;

public class MyThread implements Runnable{
	private CountDownLatch count;
	private int num ;
	private Integer sum;
	List<String> datas;
	
	public MyThread(CountDownLatch count,int num,List<String> datas){
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
			System.out.println("==============");
			try {
				int i = 1/0;
			} catch (Exception e) {
				// TODO: handle exception
				datas.add(num+"");
				e.printStackTrace();
				
			}
		}
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		count.countDown();
	}
	
}