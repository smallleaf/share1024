package com.share1024.io.bio;

import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;

/***
 * BIO 服务.
 * @author small leaf
 * Date:   2017年1月3日 下午9:49:29
 */
public class BIOServer {
	
	ServerSocket serverSocket;
	
	/***
	 * 
	 * @param port 端口
	 */
	public BIOServer(int port){
		
		try {
			serverSocket = new ServerSocket(port);
			System.out.println("BIO 服务以及启动，监听的端口是:"+port);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void listener() throws IOException{
		while(true){
			Socket client = serverSocket.accept();
			InputStream is = client.getInputStream();
			byte[] buffer = new byte[1024];
			int len =is.read(buffer);
			if(len>0){
				String msg = new String(buffer,0,len);
				System.out.println("接收到客户端发来的消息:"+msg);
			}
		}
	}
	
	public static void main(String[] args) throws IOException {
		new BIOServer(8080).listener();
	}
}

