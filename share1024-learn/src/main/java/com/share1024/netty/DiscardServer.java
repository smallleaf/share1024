package com.share1024.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;

/**
 * jetty 来创建服务器
 * @author small leaf
 * Date:   2017年2月7日 下午3:54:40
 */
public class DiscardServer {
	
	public void run(int port){
		System.out.println("服务器正在启动");
		EventLoopGroup boosGroup = new NioEventLoopGroup();
		EventLoopGroup workerGroup = new NioEventLoopGroup();
		try {
			ServerBootstrap b = new ServerBootstrap();
			b.group(boosGroup, workerGroup)
				.channel(NioServerSocketChannel.class)
				.childHandler(new ChannelInitializer<Channel>() {

					
					@Override
					protected void initChannel(Channel ch) throws Exception {
						// TODO Auto-generated method stub
						ch.pipeline().addLast(new TimeServerHandler());
					}
				})
				.option(ChannelOption.SO_BACKLOG, 1024)
				.childOption(ChannelOption.SO_KEEPALIVE, true);
			
				ChannelFuture cf = b.bind(port).sync();
				cf.channel().closeFuture().sync();
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			System.out.println("服务器已经关闭");
			workerGroup.shutdownGracefully();
			boosGroup.shutdownGracefully();
		}
	}
	
	public static void main(String[] args) {
		new DiscardServer().run(8081);
	}
}
