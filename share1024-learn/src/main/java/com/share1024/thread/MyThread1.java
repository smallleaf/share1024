package com.share1024.thread;

import org.junit.Test;

/**
 * Created by yesheng on 2017/3/31.
 */
public class MyThread1 {
    public static void main(String[] args) {
        NewThread newThread = new NewThread();
        newThread.start();
    }

    @Test
    public void thread2(){

        try {
            Thread2 thread2 = new Thread2();
            thread2.setName("thread2");
            thread2.start();
            for(int i = 0; i < 10; i++){
                int time = (int)(Math.random() * 1000);
                Thread.sleep(time);
                System.out.println("main: "+Thread.currentThread().getName());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}

class NewThread extends Thread{

    @Override
    public void run() {
        super.run();
        System.out.println("newThread");
    }
}

class Thread2 extends  Thread{
    @Override
    public void run() {
        super.run();
        try {
            for(int i = 0; i < 10; i++){
                int time = (int)(Math.random()*1000);
                Thread.sleep(time);
                System.out.println("thread2 : "+Thread.currentThread().getName());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
