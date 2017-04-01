package com.share1024.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.DelimiterBasedFrameDecoder;
import io.netty.handler.codec.FixedLengthFrameDecoder;
import io.netty.handler.codec.LineBasedFrameDecoder;
import io.netty.handler.codec.string.StringDecoder;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

public class EchoServer {

	public void bind(int port) throws Exception {
		//两个线程组 一个用来服务器接受客户端
		EventLoopGroup bossGroup = new NioEventLoopGroup();
		//一个用来 io请求
		EventLoopGroup workerGroup = new NioEventLoopGroup();
		try {
			// 配置服务器的NIO线程租
			ServerBootstrap b = new ServerBootstrap();
			b.group(bossGroup, workerGroup)
					.channel(NioServerSocketChannel.class)
					.option(ChannelOption.SO_BACKLOG, 1024)
					.handler(new LoggingHandler(LogLevel.INFO))
					.childHandler(new ChildChannelHandler());

			// 绑定端口，同步等待成功
			ChannelFuture f = b.bind(port).sync();
			// 等待服务端监听端口关闭
			f.channel().closeFuture().sync();
		} finally {
			// 优雅退出，释放线程池资源
			bossGroup.shutdownGracefully();
			workerGroup.shutdownGracefully();
		}
	}

	private class ChildChannelHandler extends ChannelInitializer<SocketChannel> {
		@Override
		protected void initChannel(SocketChannel arg0) throws Exception {
			System.out.println("server initChannel..");
			ByteBuf delimiter = Unpooled.copiedBuffer("$_".getBytes());
			//.pipeline().addLast(new DelimiterBasedFrameDecoder(1024,delimiter));
			arg0.pipeline().addLast(new FixedLengthFrameDecoder(5));
			arg0.pipeline().addLast(new StringDecoder());
			arg0.pipeline().addLast(new EchoServerHandler());
		}
	}

	public static void main(String[] args) throws Exception {

		new EchoServer().bind(9090);
	}
}