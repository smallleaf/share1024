package com.share1024.thread.notsafe;

import com.sun.org.apache.bcel.internal.generic.ALOAD;

/**
 * Created by yesheng on 2017/4/1.
 * 非线程安全 一般是抢夺一个资源,没有进行同步操作
 */
public class LoginServlet {

    private static String usernamef;

    private static String passwordf;


    public  static void doPost(String username,String password){
        usernamef = username;
        passwordf = password;
        if("a".equals(username)){
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        System.out.println("username:"+usernamef+"---password:"+password);

    }


    public static void main(String[] args) {

        //username :a
        ALogin aLogin = new ALogin();
        aLogin.start();

        //在停止的5秒内 b线程把 username更新为b了
        BLogin bLogin = new BLogin();
        bLogin.start();
    }
}

class ALogin extends Thread{

    @Override
    public void run() {
        super.run();
        LoginServlet.doPost("a","aa");
    }
}
class BLogin extends Thread{

    @Override
    public void run() {
        super.run();
        LoginServlet.doPost("b","bb");
    }
}
