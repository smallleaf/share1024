package com.share1024.netty;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;

public class TimeClient {
	
	public void connect(String host,int port){
		EventLoopGroup workerGroup = new NioEventLoopGroup();
		
		try {
			Bootstrap bs = new Bootstrap();
			bs.group(workerGroup);
			bs.channel(NioSocketChannel.class);
			bs.option(ChannelOption.SO_KEEPALIVE, true);
			bs.handler(new ChannelInitializer<SocketChannel>() {
				@Override
				protected void initChannel(SocketChannel ch) throws Exception {
					// TODO Auto-generated method stub
					ch.pipeline().addLast(new TimeClientHander());
				}
			});
			ChannelFuture cf = bs.connect(host, port).sync();
			cf.channel().closeFuture().sync();
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			workerGroup.shutdownGracefully();
		}
	}
	
	public static void main(String[] args) {
		new TimeClient().connect("127.0.0.1", 8081);
	}
}
